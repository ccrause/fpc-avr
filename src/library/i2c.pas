unit i2c;

interface

type
  { TI2CMaster }
  TI2CMaster = object
    retVal: byte;
    procedure init(bitRate: byte);
    // Address should be right adjusted 7-bit value
    function start(address: byte; readTransaction: boolean): boolean;
    function readByte(out data: byte; ack: boolean): boolean;
    function writeByte(data: byte): boolean;
    function stop: boolean;
  end;

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

  // F_CPU dependent calc, use prescalar value of 1, or TWPS1:0 = 0
  I2C_100kHz_TWBR = ((F_CPU div 100000) - 16) div 2;
  I2C_400kHz_TWBR = ((F_CPU div 400000) - 16) div 2;

implementation

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
      TWDR := (address shl 1) or 1
    else
      TWDR := address shl 1;

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

end.

