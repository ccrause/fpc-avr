program i2cscan;

uses
  uart, i2c;

const
  HexChars: array[0..15] of char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');

procedure writeString(s: shortstring);
var
  i: byte;
begin
  for i := 1 to length(s) do
    uart.uart_transmit(ord(s[i]));
end;

procedure writeHex(b: byte);
begin
  uart.uart_transmit(ord(HexChars[b shr 4]));
  uart.uart_transmit(ord(HexChars[b and 15]));
end;

var
  i2c_master: TI2CMaster;

const
  BAUD_Rate = 115200;
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU * 64 + 8 *BAUD_Rate) div (16 * BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}

  sOK = 'OK'#10;
  sErr = 'ERROR'#10;

procedure i2c_scan;
var
  i, j, addr: byte;
begin
  i2c_master.init(I2C_100kHz);
  writeString('Starting scanning right adjusted addresses $00 - $7f.'#13#10);
  writeString(#13#10);
  writeString('   00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F'#13#10);
  for i := 0 to 7 do
  begin
    writeHex(i);
    writeString('0 ');
    for j := 0 to 15 do
    begin
      addr := (i shl 4) or j;
      if i2c_master.start(addr shl 1, true) then
      begin
        writeHex(addr);
        writeString(' ');
      end
      else
        writeString('.. ');
      i2c_master.stop;
    end;
    writeString(#13#10);
  end;
end;

begin
  uart.uart_init(BAUD_SETTING);
  i2c_scan;
  repeat
  until false;
end.

