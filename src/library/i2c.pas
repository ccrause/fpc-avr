unit i2c;

interface

type
  { TI2CMaster }
  TI2CMaster = object
    retVal: byte;
    procedure init(bitRate: byte);
    // Low level functions
    // Address should be left adjusted 7-bit value
    function start(address: byte; readTransaction: boolean): boolean;
    function readByte(out data: byte; ack: boolean): boolean;
    function writeByte(data: byte): boolean;
    function stop: boolean;

    // Higher level implementation
    function ReadByteFromReg(i2caddress, regAddress: byte; out data: byte): boolean; overload;
    function ReadBytesFromReg(i2caddress, regAddress: byte; data: PByte; size: byte): boolean; overload;

    function WriteByteToReg(i2caddress, regAddress: byte; const data: byte): boolean; overload;
    function WriteBytesToReg(i2caddress, regAddress: byte; data: PByte; size: byte
      ): boolean; overload;
    function WriteBytes(address: byte; const data: PByte; size: byte): boolean;

    // data pointer should be pointer to flash memory
    function WriteBytesToReg_P(i2caddress, regAddress: byte; data: PByte; size: byte
      ): boolean;

    function clearStalledBus: boolean;
  end;

  // atmega4809 default TWI pins
{$if defined(CPUAVRXMEGA3)}
  {$define SCLpin := 3}
  {$define SCLpin_bm := (1 shl SCLpin)}
  {$define SCLport := PORTA}
  {$define SDApin := 2}
  {$define SDApin_bm := (1 shl SDApin)}
  {$define SDAport := PORTA}
{$elseif defined(FPC_MCU_ATMEGA328P)}
  {$define SCLpin := 5}
  {$define SDApin := 4}
  {$define SDApin_bm := (1 shl SDApin)}
  {$define SCLpin_bm := (1 shl SCLpin)}
  {$define I2Cport := PORTC}
  {$define I2CDDR := DDRC}
  {$define I2CPins := PINC}
{$else}
  {$error 'MCU is not an XMEGA3 or atmega328p'}
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
  I2C_50kHz  = ((F_CPU div  50000) - 16) div 2;
  I2C_100kHz = ((F_CPU div 100000) - 16) div 2;
  I2C_400kHz = ((F_CPU div 400000) - 16) div 2;
  {$endif}

implementation

uses
  delay;

const
  // This value is checked for 0 after a dec
  timeoutvalue =
  {$if (F_CPU > 8000000)}
    65535
  {$elseif (F_CPU > 1000000}
    40000  // 25 ms @ 1 MHz clock
  {$else}
    10000
  {$endif};

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
  // SCK freq = F_CPU / (16 + 2*bitRate)
  // bitRate = (F_CPU / SCK - 16) div 2
  TWBR := bitRate;
end;

function TI2CMaster.start(address: byte; readTransaction: boolean): boolean;
var
  timeout: uint16;
begin
  TWCR := (1 shl TWINT) or (1 shl TWSTA) or (1 shl TWEN);

  timeout := timeoutvalue;
  repeat
    dec(timeout);
  until (TWCR and (1 shl TWINT) <> 0) or ( timeout = 0);
  retVal := TWSR and $F8;
  result := (retVal = I2C_START) or (retVal = I2C_REPSTART);

  if Result then
  begin
    if readTransaction then
      TWDR := address or 1
    else
      TWDR := address;

    TWCR := (1 shl TWINT) or (1 shl TWEN);
    timeout := timeoutvalue;
    repeat
      dec(timeout);
    until (TWCR and (1 shl TWINT) <> 0) or ( timeout = 0);
    retVal := (TWSR and $F8);

    result := (retVal = I2C_SLAR_ACK) or (retVal = I2C_SLAW_ACK);
  end;
end;

function TI2CMaster.readByte(out data: byte; ack: boolean): boolean;
var
  timeout: uint16;
begin
  if ack then
    TWCR := (1 shl TWINT) or (1 shl TWEN) or (1 shl TWEA)
  else
    TWCR := (1 shl TWINT) or (1 shl TWEN);

  timeout := timeoutvalue;
  repeat
    dec(timeout);
  until (TWCR and (1 shl TWINT) <> 0) or ( timeout = 0);
  retVal := (TWSR and $F8);
  result := (retVal = I2C_DATA_READ_ACK) or (retVal = I2C_DATA_READ_NACK);
  data := TWDR;
end;

function TI2CMaster.writeByte(data: byte): boolean;
var
  timeout: uint16 = 0;
begin
  TWDR := data;
  TWCR := (1 shl TWINT) or (1 shl TWEN);
  timeout := timeoutvalue;
  repeat
    dec(timeout);
  until (TWCR and (1 shl TWINT) <> 0) or (timeout = 0);

  retVal := (TWSR and $F8);
  result := retVal = I2C_DATA_WRITE_ACK;
end;

function TI2CMaster.stop: boolean;
var
  timeout: uint16;
begin
  TWCR := (1 shl TWINT) or (1 shl TWEN) or (1 shl TWSTO);
  timeout := timeoutvalue;
  repeat
    dec(timeout);
  until (TWCR and (1 shl TWSTO) = 0) or (timeout = 0);
  result := TWCR and (1 shl TWSTO) = 0;
end;

function TI2CMaster.ReadByteFromReg(i2caddress, regAddress: byte; out data: byte
  ): boolean;
begin
  result := ReadBytesFromReg(i2caddress, regAddress, @data, 1);
end;

//function TI2CMaster.ReadByteFromReg(i2caddress: byte; regAddress: uint16; out
//  data: byte): boolean;
//begin
//  result := ReadBytesFromReg(i2caddress, regAddress, @data, 1);
//end;

function TI2CMaster.ReadBytesFromReg(i2caddress, regAddress: byte; data: PByte;
  size: byte): boolean;
var
  b: byte;
  readOK: boolean;
begin
  // start
  if not start(i2caddress, I2C_WriteMode) then
    exit(false);

  // send address
  if not writeByte(regAddress) then
    exit(false);

  // Stop {for troubleshooting hung bus}
  //if not stop then
  //  exit(false);

  // {-Repeated-} start
  if not start(i2caddress, I2C_ReadMode) then
    exit(false);

  readOK := true;
  while (size > 1) and readOK do
  begin
    readOK := readByte(b, true);
    data^ := b;
    inc(data);
    dec(size);
  end;
  if readOK then
  begin
    readOK := readByte(b, false);
    data^ := b;
  end;

  result := stop and readOK;
end;

function TI2CMaster.WriteByteToReg(i2caddress, regAddress: byte;
  const data: byte): boolean;
var
  temp: array[0..1] of byte;
begin
  temp[0] := regAddress;
  temp[1] := data;
  result := WriteBytes(i2caddress, @temp[0], length(temp));
end;

function TI2CMaster.WriteBytesToReg(i2caddress, regAddress: byte; data: PByte;
  size: byte): boolean;
var
  pb: PByte;
  writeOK: boolean;
begin
  if not start(i2caddress, I2C_WriteMode) then
    exit(false);

  writeOK := writebyte(regAddress);
  pb := data;
  while (size > 0) and writeOK do
  begin
    writeOK := writeByte(pb^);
    inc(pb);
    dec(size);
  end;

  result := stop and writeOK;
end;

function TI2CMaster.WriteBytes(address: byte; const data: PByte; size: byte
  ): boolean;
var
  pb: PByte;
  writeOK: boolean;
begin
  if not start(address, I2C_WriteMode) then
    exit(false);

  writeOK := true;
  pb := data;
  while (size > 0) and writeOK do
  begin
    writeOK := writeByte(pb^);
    inc(pb);
    dec(size);
  end;

  result := stop and writeOK;
end;

// Needs to think about handling ELPM & RAMPZ to cover larger address space
// although linker script seems to place .progmem just after init so it is likely in first 64kB
// avr35 should also be marked with LPM, since it is available as optional (at least for tiny1617)
function read_progmem_byte(constref v: byte): byte;  assembler;  nostackframe;
asm
  movw ZL, r24
  lpm r24, Z
end;

function TI2CMaster.WriteBytesToReg_P(i2caddress, regAddress: byte;
  data: PByte; size: byte): boolean;
var
  b: byte;
  writeOK: boolean;
begin
  if not start(i2caddress, I2C_WriteMode) then
    exit(false);

  writeOK := writebyte(regAddress);
  while (size > 0) and writeOK do
  begin
    b := read_progmem_byte(data^);
    writeOK := writeByte(b);
    inc(data);
    dec(size);
  end;

  result := stop and writeOK;
end;

function TI2CMaster.clearStalledBus: boolean;
var
  SCLpulses, clockStretchTimeout: byte;
begin
  stop;
  // Make SDA & SCL inputs to check state
  I2CDDR := I2CDDR and not (SDApin_bm or SCLpin_bm);
  // Clear SDA & SCL pullups (just in case)
  I2Cport := I2Cport and not (SDApin_bm or SCLpin_bm);
  delay_us(100);
  // Check if SCL is stuck low
  // This is fatal, exit if true
  if (I2CPins and SCLpin_bm) = 0 then
  begin
    exit(false);
  end;

  SCLpulses := 10;
  while SCLpulses > 0 do
  begin
    // Output low
    I2CDDR := I2CDDR or (SCLpin_bm);
    delay_us(100);
    I2CDDR := I2CDDR and not (SCLpin_bm);
    // Check for clock stretching by slave
    clockStretchTimeout := 255;
    while ((I2CPins and SCLpin_bm) = 0) or (clockStretchTimeout > 0) do
    begin
      dec(clockStretchTimeout);
      delay_us(10);
    end;
    dec(SCLpulses);
  end;

  stop;
  result := (I2CPins and (SDApin_bm or SCLpin_bm)) = (SDApin_bm or SCLpin_bm);
end;

{$endif CPUAVRXMEGA3}

end.

