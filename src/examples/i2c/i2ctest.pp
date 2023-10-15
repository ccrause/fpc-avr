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
  c: char;

const
  DS1307 = $68 shl 1;
  BMPxxx = $77 shl 1;  // Address of BMP085/180/280* pressure sensor (* if SDO is high)
  BAUD_Rate = 115200;
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU * 64 + 8 *BAUD_Rate) div (16 * BAUD_Rate);
  {$else}
  BAUD_SETTING = ((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate;
  {$endif}

  sOK = 'OK'#10;
  sErr = 'ERROR'#10;

// Start clock if high bit of seconds is set
function maybeStartDS1307Clock(): boolean;
var
  s: byte;
begin
  result := false;
  i2c_master.init(I2C_100kHz);

  if not i2c_master.start(DS1307, I2C_WriteMode) then exit;
  // set register address pointer to 0
  if not i2c_master.writeByte(0) then exit;
  if not i2c_master.start(DS1307, I2C_ReadMode) then exit;
  if not i2c_master.readByte(s, false) then exit;

  // High bit of seconds indicate if oscillator is halted (=1)
  if (s and $80) = $80 then
  begin
    // Clear high bit
    s := s and $7F;
    if not i2c_master.start(DS1307, I2C_WriteMode) then exit;
    if not i2c_master.writeByte(0) then exit;
    if not i2c_master.writeByte(s) then exit;
  end;

  i2c_master.stop;
  result := true;
end;

// Stop clock by setting high bit of seconds to 1
function haltDS1307Clock(): boolean;
var
  s: byte;
begin
  result := false;
  i2c_master.init(I2C_100kHz);

  if not i2c_master.start(DS1307, I2C_WriteMode) then exit;
  // set register address pointer to 0
  if not i2c_master.writeByte(0) then exit;
  if not i2c_master.start(DS1307, I2C_ReadMode) then exit;
  if not i2c_master.readByte(s, false) then exit;

  // High bit of seconds indicate if oscillator is halted (=1)
  if (s and $80) = 0 then
  begin
    // Clear high bit
    s := s or $80;
    if not i2c_master.start(DS1307, I2C_WriteMode) then exit;
    if not i2c_master.writeByte(0) then exit;
    if not i2c_master.writeByte(s) then exit;
  end;

  i2c_master.stop;
  result := true;
end;

function printDS1307Time(): boolean;
var
  s, m, h: byte;
begin
  result := false;
  i2c_master.init(I2C_100kHz);
  if not i2c_master.start(DS1307, I2C_WriteMode) then exit;
  // set register to # 0
  if not i2c_master.writeByte(0) then exit;
  if not i2c_master.start(DS1307, I2C_ReadMode) then exit;
  if not i2c_master.readByte(s, true) then exit;
  if not i2c_master.readByte(m, true) then exit;
  if not i2c_master.readByte(h, false) then exit;
  i2c_master.stop;

  result := true;
  uart.uart_transmit((h shr 4) and $03 + ord('0'));
  uart.uart_transmit(h and $0F + ord('0'));
  uart.uart_transmit(ord(':'));

  uart.uart_transmit((m shr 4) and $07 + ord('0'));
  uart.uart_transmit(m and $0F + ord('0'));
  uart.uart_transmit(ord(':'));

  uart.uart_transmit((s shr 4) and $07 + ord('0'));
  uart.uart_transmit(s and $0F + ord('0'));
  uart.uart_transmit(10);
end;


begin
  uart.uart_init(BAUD_SETTING);

  repeat
    i2c_master.init(I2C_100kHz);
    maybeStartDS1307Clock();

    repeat
      writestring('Enter char to proceed [R] to restart'#10);
      c := char(uart_receive());

      if c = 'h' then
      begin
        writeString('HALT'#10);
        haltDS1307Clock()
      end
      else if c = 'r' then
      begin
        writeString('START'#10);
        maybeStartDS1307Clock()
      end
      else
      begin
        if not printDS1307Time() then
        writeString(sErr);
      end;
    until c = 'R'; // restart i2c
  until false;

// read BMPxxx ID
{  repeat
    writeString('Init I2C @ 100 kHz'#10);
    i2c_master.init(I2C_100kHz);

    writeString('Start: ');
    if i2c_master.start(BMPxxx, false) then // start in write mode
      writeString(sOK)
    else
      writeString(sErr);

    uart_receive();
    writeString('writeByte: ');
    if i2c_master.writeByte($D0) then // set register to ID register
      writeString(sOK)
    else
      writeString(sErr);

    uart_receive();
    writeString('Start: ');
    if i2c_master.start(BMPxxx, true) then // start in read mode
      writeString(sOK)
    else
      writeString(sErr);

    uart_receive();
    writeString('readByte: ');
    if i2c_master.readByte(x, false) then    // read ID
      writeString(sOK)
    else
      writeString(sErr);

    uart_receive();
    writeString('Stop');
    i2c_master.stop;

    // Write ID
    writeString('BMP ID: $');
    writeHex(x);
    uart_transmit(10);

    writeString(#10#10'[R]estart...'#10);
    repeat
    until uart.uart_receive() = ord('R');
  until false;
}
end.

