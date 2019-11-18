unit i2c;

interface

type
  { TI2CMaster }
  TI2CMaster = object
    retVal: byte;
    procedure init(bitRate: byte);
    // Address should be left adjusted 7-bit value
    function start(address: byte; readTransaction: boolean): boolean;
    function readByte(out data: byte; ack: boolean): boolean;
    function writeByte(data: byte): boolean;
    function stop: boolean;
  end;


  // atmega4809 default TWI pins
{$ifdef CPUAVRXMEGA3}
  {$define SCLpin := 3}
  {$define SCLpin_bm := 1 shl SCLpin}
  {$define SCLport := PORTA} // PC5
  {$define SDApin := 2}
  {$define SDApin_bm := 1 shl SDApin}
  {$define SDAport := PORTA} // PC5
{$endif}

const
  I2C_START             = $08;
  I2C_REPSTART          = $10;
  I2C_SLAW_ACK          = $18;
  I2C_SLAW_NACK         = $20;
  I2C_DATA_WRITE_ACK    = $28;
  I2C_DATA_WRITE_NACK   = $30;
  I2C_LOST_ARBITRATION  = $38;
  I2C_SLAR_ACK          = $40;
  I2C_SLAR_NACK         = $48;
  I2C_DATA_READ_ACK     = $50;
  I2C_DATA_READ_NACK    = $58;
  I2C_WriteMode         = false;
  I2C_ReadMode          = true;

  {$ifdef CPUAVRXMEGA3}
  // 10 + 2BAUD + F_CPU.Trise = F_CPU/F_SCL
  // BAUD = (F_CPU/F_SCL - 10 - F_CPU.Trise)/2
  // Max rise times according to spec:
  // Trise: 1000 ns @ 100kHz, 300 ns @ 400kHz
  I2C_100kHz = ((F_CPU div 100000) - 10 - (F_CPU div 1000000)) div 2;
  I2C_400kHz = ((F_CPU div 400000) - 10 - ((F_CPU * 300) div 1000) div 1000000) div 2;
  {$else}
  // F_CPU dependent calc, use prescalar value of 1, or TWPS1:0 = 0
  I2C_100kHz = ((F_CPU div 75000) - 16) div 2;
  I2C_400kHz = ((F_CPU div 400000) - 16) div 2;
  {$endif}

implementation

{$ifdef CPUAVRXMEGA3}
procedure TI2CMaster.init(bitRate: byte);
begin
  TWI0.MCTRLA := TTWI.ENABLEbm;		      // TWI Enabled
  TWI0.MCTRLB := TTWI.FLUSHbm;
  TWI0.MBAUD := bitRate;
  TWI0.MSTATUS := TTWI.BUSSTATE_IDLE or       // Set the BUS state to idle
                  TTWI.RIFbm or TTWI.WIFbm or // Clear interrupt flags
                  TTWI.BUSERRbm;              // Clear bus error flag
end;

function TI2CMaster.start(address: byte; readTransaction: boolean): boolean;
begin
  result := (TWI0.MSTATUS and TTWI.BUSSTATEmask) <> TTWI.BUSSTATE_BUSY;

  TWI0.MSTATUS := TWI0.MSTATUS or (TTWI.WIFbm or TTWI.RIFbm); // clear interrupt flags

  if result then
  begin
    if readTransaction then
    begin
      TWI0.MADDR := address or 1;
      repeat until (TWI0.MSTATUS and TTWI.RIFbm) <> 0;
    end
    else
    begin
      TWI0.MADDR := address;
      repeat until (TWI0.MSTATUS and TTWI.WIFbm) <> 0;
    end;

    result := (TWI0.MSTATUS and TTWI.RXACKbm) = 0;
    result := result and ((TWI0.MSTATUS and TTWI.BUSERRbm) = 0);
  end;
end;

function TI2CMaster.readByte(out data: byte; ack: boolean): boolean;
begin
  result := (TWI0.MSTATUS and TTWI.BUSSTATEmask) = TTWI.BUSSTATE_OWNER;
  if result then
  begin
    repeat until (TWI0.MSTATUS and TTWI.RIFbm > 0);
    if ack then
      TWI0.MCTRLB := TWI0.MCTRLB and not(TTWI.ACKACT_NACK)
    else
      TWI0.MCTRLB := TWI0.MCTRLB or TTWI.ACKACT_NACK;

    // Check for errors during read: bus or arbitration error, or NACK from slave
    result := (TWI0.MSTATUS and (TTWI.BUSERRbm or TTWI.ARBLOSTbm or TTWI.RXACKbm) = 0); // Arbitration lost
    if result then
    begin
      data := TWI0.MDATA;
      TWI0.MCTRLB := TWI0.MCTRLB or TTWI.MCMD_RECVTRANS; // ACK, more data to be read
    end;
  end;
end;

function TI2CMaster.writeByte(data: byte): boolean;
begin
  result := (TWI0.MSTATUS and TTWI.BUSSTATEmask) = TTWI.BUSSTATE_OWNER;
  if result then
  begin
    TWI0.MDATA := data;
    repeat until (TWI0.MSTATUS and TTWI.WIFbm > 0);// or (TWI0.MSTATUS and TTWI.RXACKbm > 0); // NACK test?
    // Check for errors during write
    result := (TWI0.MSTATUS and TTWI.BUSERRbm) = 0;
  end;
end;

function TI2CMaster.stop: boolean;
begin
  TWI0.MCTRLB := TTWI.MCMD_STOP;
  //TWI0.MCTRLA := 0; // disable TWI module
  result := true;
end;

{$else}

procedure TI2CMaster.init(bitRate: byte);
begin
  // Default prescaler value = 1
  TWBR := bitRate;
end;

function TI2CMaster.start(address: byte; readTransaction: boolean): boolean;
begin
  TWCR := (1 shl TWINT) or (1 shl TWSTA) or (1 shl TWEN);
  repeat until TWCR and (1 shl TWINT) <> 0;
  retVal := TWSR and $F8;
  result := (retVal = I2C_START) or (retVal = I2C_REPSTART);

  if Result then
  begin
    if readTransaction then
      TWDR := address or 1
    else
      TWDR := address;

    TWCR := (1 shl TWINT) or (1 shl TWEN);
    repeat until TWCR and (1 shl TWINT) <> 0;
    retVal := (TWSR and $F8);

    result := (retVal = I2C_SLAR_ACK) or (retVal = I2C_SLAW_ACK);
  end;
end;

function TI2CMaster.readByte(out data: byte; ack: boolean): boolean;
begin
  if ack then
    TWCR := (1 shl TWINT) or (1 shl TWEN) or (1 shl TWEA)
  else
    TWCR := (1 shl TWINT) or (1 shl TWEN);

  repeat until TWCR and (1 shl TWINT) <> 0;
  retVal := (TWSR and $F8);
  result := (retVal = I2C_DATA_READ_ACK) or (retVal = I2C_DATA_READ_NACK);
  data := TWDR;
end;

function TI2CMaster.writeByte(data: byte): boolean;
begin
  TWDR := data;
  TWCR := (1 shl TWINT) or (1 shl TWEN);
  repeat until TWCR and (1 shl TWINT) <> 0;

  retVal := (TWSR and $F8);
  result := retVal = I2C_DATA_WRITE_ACK;
end;

function TI2CMaster.stop: boolean;
begin
  TWCR := (1 shl TWINT) or (1 shl TWEN) or (1 shl TWSTO);
  result := true;
end;
{$endif CPUAVRXMEGA3}

end.

