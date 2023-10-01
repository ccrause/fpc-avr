program LCDtest_i2c;

uses
  lcd_hd44780_i2c, delay, uart;

var
  x: int8 = 0;
  y: int8 = 0;
  x_inc: int8 = 1;
  y_inc: int8 = 1;
  x_switch: boolean = false;
  i: byte;

const
  msg: shortstring = 'FPC-AVR';
  BAUD_Rate = 115200;
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU * 64 + 8 *BAUD_Rate) div (16 * BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}
  degreeSymbol: TCharMap = ($00, $0C, $12, $12, $0C, $00, $00, $00);
  box1: TCharMap         = ($1F, $11, $11, $11, $11, $11, $11, $1F);
  box2: TCharMap         = ($00, $1F, $11, $11, $11, $11, $1F, $0);
  box3: TCharMap         = ($00, $00, $1F, $11, $11, $1F, $00, $00);
  box4: TCharMap         = ($00, $00, $00, $1F, $1F, $00, $00, $00);

begin
  DDRB := DDRB or (1 shl 5);
  uart_init(BAUD_SETTING);
  delay_ms(100);
  uart_transmit('lcd_init: ');
  if lcd_init(lcd_displayOnCursorOff, $7E) then // Left adjusted address
    uart_transmit('OK'#13#10)
  else
    uart_transmit('ERR'#13#10);

  // Blink backlight
  delay_ms(500);
  lcd_backlight(true);
  delay_ms(500);
  lcd_backlight(false);
  delay_ms(500);
  lcd_backlight(true);

  lcd_setCustomChar(0, degreeSymbol);
  lcd_home;
  lcd_printString('Degree: '#0);
  delay_ms(3000);
  //lcd_setCustomChar(1, box1);
  //lcd_setCustomChar(2, box2);
  //lcd_setCustomChar(3, box3);
  //lcd_setCustomChar(4, box4);
  //
  //lcd_home;
  //for i := 0 to 255 do
  //begin
  //  // Action on every line
  //  if (i and 31) = 0 then
  //  begin
  //    lcd_home;
  //    if i > 31 then
  //      delay_ms(3000);
  //  end
  //  else if (i and 15) = 0 then
  //    lcd_gotoxy(0, 1);
  //  lcd_printChar(char(i));
  //end;

  repeat
    if not lcd_gotoxy(x, y) then
      uart_transmit('lcd_gotoxy ERR'#13#10);

    if not lcd_puts(msg) then // fixed length of 10 characters assumed below
      uart_transmit('lcd_puts ERR'#13#10);

    delay_ms(400);
    if not lcd_clrscr() then
      uart_transmit('lcd_clrscr ERR'#13#10);

    if (x_inc > 0) and (x >= (lcd_displayLength - length(msg))) then
    begin
      x_switch := true;
      x_inc := -1;
    end
    else if (x_inc < 0) and (x <= 0) then
    begin
      x_switch := true;
      x_inc := 1;
    end;

    if x_switch then
    begin
      if (y_inc > 0) and (y >= (lcd_lines - 1)) then
        y_inc := -1
      else if (y_inc < 0) and (y <= 0) then
        y_inc := 1;

      y := y + y_inc;
      x_switch := false;
    end
    else
      x := x + x_inc;
  until false;
end.

