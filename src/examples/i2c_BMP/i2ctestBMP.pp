program i2ctestBMP;

// Simple program to read values from a BMP085 or BMP180 pressure sensor over I2C

uses
  uart, delay, simplemath, bmp085_180;

const
  BAUD_Rate = 115200;
  // Calculate baud rate setting for x2 mode
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}

  sErr = 'ERROR'#10;
  LEDPin = 1 shl 5;

var
  ID: byte;
  T, dT, P: int32;

begin
  uart.uart_init(BAUD_SETTING);
  {$ifdef CPUAVRXMEGA3}
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode
  {$endif}

  if not bmp_init then
  begin
    uart_transmit('Error initializing BMP sensor.');
    Halt(1);
  end;

  uart_transmit('BMP ID: $');
  if bmp085_180.readID(ID) then
    uart_transmit_hex(ID)
  else
    uart_transmit(sErr);
  uart_transmit(#13#10);

  repeat
    if bmp085_180.readTP(T, P) then
    begin
      uart_transmit('T = ');
      if T < 0 then
      begin
        uart_transmit('-');
        T := -T;
      end;
      divmod10(uint32(T), uint32(dT));
      uart_transmit_asstring(T); uart_transmit('.');
      uart_transmit_asstring(dT); uart_transmit(' degC'#13#10);
      uart_transmit('P = '); uart_transmit_asstring(P); uart_transmit(' Pa'#13#10);
    end
    else
      uart_transmit('Error reading BMP sensor'#13#10);

    uart_transmit(#13#10);
    delay_ms(5000);
  until false;
end.

