unit i2cslave_unit;

{
  This code was inspired by and loosely based on the following two references:

  Blog post: Transforming your AVR Microcontroller to the I2C or TWI Slave I/O Expander Project
  URL = http://www.ermicro.com/blog/?p=1239

  and

  avr-i2c-slave project
  URL = https://github.com/thegouger/avr-i2c-slave/tree/master
}

interface

type
  // Non-terminal bytes in multi-byte tranmission should set ACK=true,
  // The terminal byte should set ACK=false (all driven from master side).
  // If ACK = false then the callback handler should reset its state, if required.
  TDataReceivedHandler = procedure(data: byte; ACK: boolean);

  // If last byte of transaction is transmitted, ACK=false
  // else ACK=true
  TDataRequestHandler = procedure(out data: byte; out ACK: boolean);

  // Reset state state machine, or do nothing
  // In case of bus error, or end of transaction
  TResetCallback = procedure;

  procedure i2cslave_listen(const address: byte;          // Left adjusted address, set bit 0 to react to general call address
                   ReceiveHandler: TDataReceivedHandler;
                   TransmitHandler: TDataRequestHandler;
                   ResetHandler: TResetCallback);        // Can be set to nil if no state reset is required
  procedure i2cslave_stop;

const
  I2C_SR_SLA_ACK             = $60;
  I2C_SR_ARB_LOST_SR_SLA_ACK = $68;
  I2C_SR_GCALL_ACK           = $70;
  I2C_SR_ARB_LOST_GCALL_ACK  = $78;
  I2C_SR_DATA_ACK            = $80;
  I2C_SR_DATA_NACK           = $88;
  I2C_SR_GCALL_DATA_ACK      = $90;
  I2C_SR_GCALL_DATA_NACK     = $98;
  I2C_SR_STOP                = $A0;  // Or repeated start

  I2C_ST_SLA_ACK             = $A8;
  I2C_ST_ARB_LOST_SLA_ACK    = $B0;
  I2C_ST_DATA_ACK            = $B8;
  I2C_ST_DATA_NACK           = $C0;
  I2C_ST_LAST_DATA           = $C8;

  I2C_NO_INFO                = $F8;
  I2C_BUS_ERROR              = $00;

implementation

uses
  intrinsics;

var
  fReceiveHandler: TDataReceivedHandler;
  fTransmitHandler: TDataRequestHandler;
  fResetHandler: TResetCallback;
  fOldSREG: byte;

{$if declared(TWCR)}  // Check if this is a clasic style AVR I2C peripheral
const
  // Interrupt enabled, clear interrupt flag, enabled ACK, enable transceiver
  I2C_SLAVE_SETUP_ACK  = (1 shl TWIE) or (1 shl TWINT) or (1 shl TWEA) or (1 shl TWEN);
  // Interrupt enabled, clear interrupt flag, disabled ACK, enable transceiver
  I2C_SLAVE_SETUP_NACK = (1 shl TWIE) or (1 shl TWINT) or (0 shl TWEA) or (1 shl TWEN);
  // Set non-status bits of of status register to zero
  I2C_STATUS_MASK = $F8;

procedure TWISlaveInterrupt; interrupt; public name 'TWI_ISR';
var
  data: byte;
  ack: boolean;
begin
  case (TWSR and I2C_STATUS_MASK) of
    I2C_SR_DATA_ACK:
    begin
      fReceiveHandler(TWDR, true);
      TWCR := I2C_SLAVE_SETUP_ACK;
    end;

    I2C_SR_DATA_NACK,
    I2C_SR_GCALL_DATA_NACK:
    begin
      fReceiveHandler(TWDR, false);
      TWCR := I2C_SLAVE_SETUP_ACK;
    end;

    I2C_SR_STOP:
    begin
      //if Assigned(fResetHandler) then
      //  fResetHandler();
      TWCR := I2C_SLAVE_SETUP_ACK;
    end;

    I2C_ST_SLA_ACK,
    I2C_ST_ARB_LOST_SLA_ACK,
    I2C_ST_DATA_ACK:
    begin
      // master is requesting data, call the transmit callback
      // The callback has to determine whether ACK should be set
      fTransmitHandler(data, ack);
      TWDR := data;
      if ack then
        TWCR := I2C_SLAVE_SETUP_ACK
      else
        TWCR := I2C_SLAVE_SETUP_NACK;
    end;

    I2C_ST_DATA_NACK,
    I2C_ST_LAST_DATA,
    I2C_BUS_ERROR:
    begin
      TWCR := 0;
      if Assigned(fResetHandler) then
        fResetHandler();
      TWCR := I2C_SLAVE_SETUP_ACK;
    end;

  else
    TWCR := I2C_SLAVE_SETUP_ACK;
  end;
end;

procedure i2cslave_listen(const address: byte;
  ReceiveHandler: TDataReceivedHandler;
  TransmitHandler: TDataRequestHandler; ResetHandler: TResetCallback);
begin
  fReceiveHandler := ReceiveHandler;
  fTransmitHandler := TransmitHandler;
  fResetHandler := ResetHandler;
  TWAR := address;
  TWCR := (1 shl TWINT) or // Clear interrupt flag
          (1 shl TWEA) or  // Enable acknowledge bit
          (1 shl TWEN) or  // Enable TWI peripheral
          (1 shl TWIE);    // Interrupt enable
  fOldSREG := SREG;
  avr_sei;
end;

procedure i2cslave_stop;
begin
  avr_cli;
  TWCR := 0;
  TWAR := 0;
  SREG := fOldSREG;
end;
{$elseif declared(TWI0)}  // Check if this is an AVRXMEGA3 style I2C peripheral

// This interrupt can be triggered by either an address, data or stop condition
procedure TWISlaveInterrupt; interrupt; public name 'TWI0_TWIS_ISR';
var
  status, data: byte;
  ack: boolean;
begin
  status := TWI0.SSTATUS;
  if (status and TTWI.DIFbm) = TTWI.DIFbm then    // Data interrupt
  begin
    if (status and TTWI.DIRbm) = 0 then     // Master write operation
    begin
      data := TWI0.SDATA;
      ack := (status and TTWI.RXACKbm) > 0;
      fReceiveHandler(data, ack);
    end
    else                                    // Master read operation
    begin
      fTransmitHandler(data, ack);
      TWI0.SDATA := data;
    end;

    if ack then
      // Acknowledge & respond
      TWI0.SCTRLB := TTWI.ACKACT_ACK or TTWI.SCMD_RESPONSE
    else
      // End of transaction
      TWI0.SCTRLB := TTWI.SCMD_COMPTRANS;
  end
  else if (status and TTWI.APIFbm) = TTWI.APIFbm then  // Address/stop received
  begin
    if (status and TTWI.APmask) = TTWI.AP_ADR then     // Address received
      // Acknowledge & respond
      TWI0.SCTRLB := TTWI.ACKACT_ACK or TTWI.SCMD_RESPONSE
    else                                               // Stop received
    begin
      TWI0.SSTATUS := TTWI.APIFbm;  // Clear AP flag
      // Stop received, reset state
      if Assigned(fResetHandler) then
        fResetHandler();
    end;
  end;
end;

procedure i2cslave_listen(const address: byte;
  ReceiveHandler: TDataReceivedHandler;
  TransmitHandler: TDataRequestHandler; ResetHandler: TResetCallback);
begin
  fReceiveHandler := ReceiveHandler;
  fTransmitHandler := TransmitHandler;
  fResetHandler := ResetHandler;
  TWI0.SADDR := address;
  TWI0.SCTRLA := TTWI.DIENbm or  // Data interrupt enabled
                 TTWI.APIENbm or // Address or stop interrupt enabled
                 TTWI.PIENbm or  // Stop interrupt enabled
                 TTWI.ENABLEbm;  // Slave enabled
  fOldSREG := CPU.SREG;
  avr_sei;
end;

procedure i2cslave_stop;
begin
  avr_cli;
  TWI0.SCTRLA := 0;
  TWI0.SADDR := 0;
  CPU.SREG := fOldSREG;
end;
{$else}
  {$error 'No hardware I2C support detected for MCU'}
{$endif}

end.

