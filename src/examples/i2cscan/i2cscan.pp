program i2cscan;

uses
  uart, i2c, delay;

var
  i2c_master: TI2CMaster;

const
  BAUD_Rate = 115200;
  // For x2 mode
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
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
  uart_transmit('I2C scanning right adjusted addresses $00 - $7f'#13#10);
  uart_transmit('   00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F'#13#10);
  for i := 0 to 7 do
  begin
    uart_transmit_hex(i shl 4);
    uart_transmit(' ');
    for j := 0 to 15 do
    begin
      addr := (i shl 4) or j;
      if i2c_master.start(addr shl 1, false) then
      begin
        uart_transmit_hex(addr);
        uart_transmit(' ');
      end
      else
        uart_transmit('-- ');
      i2c_master.stop;
    end;
    uart_transmit(#13#10);
  end;
end;

begin
  uart.uart_init(BAUD_SETTING);
  {$ifdef CPUAVRXMEGA3}
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode
  {$endif}

  repeat
    i2c_scan;
    delay_ms(5000);
    uart_transmit(#13#10);
  until false;
end.

