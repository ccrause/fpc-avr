program i2ctest;

uses
  uart, i2c;

procedure writeString(s: string);
var
  i: byte;
begin
  for i := 1 to length(s) do
    uart.uart_transmit(ord(s[i]));
end;

procedure writeHex(b: byte);
begin
  uart.uart_transmit((b shr 4) + ord('0'));
  uart.uart_transmit((b and 7) + ord('0'));
end;

var
  i2c_master: TI2CMaster;
  x: byte;

const
  //DS1307 = $68;
  BMPxxx = $77;  // Address of BMP085/180/280* pressure sensor (* if SDO is high)

begin
  // 115200 baud for x2 @ 16 MHz = 16
  uart.uart_init(16);

  i2c_master.init(I2C_100kHz_TWBR);
  if not i2c_master.start(BMPxxx, false) then // start in write mode
    writeHex(i2c_master.retVal);
  if not i2c_master.writeByte($D0) then // set register to ID register
    writeHex(i2c_master.retVal);
  if not i2c_master.start(BMPxxx, true) then // start in read mode
    writeHex(i2c_master.retVal);
  if not i2c_master.readByte(x, false) then    // read ID
    writeHex(i2c_master.retVal);
  i2c_master.stop;

  // Write ID
  writeString('BMP ID: $');
  writeHex(x);
  uart_transmit(10);

  repeat
  until false;
end.

