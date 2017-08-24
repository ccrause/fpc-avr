program LCDtest;

uses
  lcd_config, lcd_pcd8544, spi, spi_config,
  delay;

const
  msg: shortstring = 'FPC-AVR';

var
  x: int8 = 0;
  y: int8 = 0;
  x_inc: int8 = 1;
  y_inc: int8 = 1;
  x_switch: boolean = false;


begin
  lcd_init(60);  // Default Vop makes background of test LCD too dark.

  lcd_printChar('#');

  //repeat
  //until false;

  repeat
    lcd_gotoxy(x, y);
    lcd_printString(msg);
    delay_ms(300);
    lcd_clrscr();

    if (x_inc > 0) and (x >= (screen_width_char - length(msg))) then
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
      if (y_inc > 0) and (y >= (screen_height_char - 1)) then
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

