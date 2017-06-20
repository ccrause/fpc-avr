program LCDtest;

uses lcd_config, lcd_hd44780, delay;

var
  x: int8 = 0;
  y: int8 = 0;
  x_inc: int8 = 1;
  y_inc: int8 = 1;
  x_switch: boolean = false;

const
  msg: shortstring = 'FPC-AVR';

begin
  DDRB := DDRB or (1 shl 5);

  lcd_init(lcd_displayOnCursorOff);

  repeat
    lcd_gotoxy(x, y);
    lcd_puts(msg); // fixed length of 10 characters assumed below
    delay_ms(300);
    lcd_clrscr();

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

