program LCDtest;

uses lcd_config, lcd_hd44780, delay;

var
  i: byte;

begin
  DDRB := DDRB or (1 shl 5);

  lcd_init(lcd_displayOnCursorOff);

  repeat
    //lcd_home();
    for i := 0 to 5 do
    begin
      lcd_gotoxy(i, 0);
      lcd_puts('Hello world');
      delay_ms(500);
      lcd_clrscr();
    end;

    for i := 4 downto 1 do
    begin
      lcd_gotoxy(i, 0);
      lcd_puts('Hello world');
      delay_ms(500);
      lcd_clrscr();
    end;

    //lcd_puts('Hello world');
    //PORTB := PORTB and not (1 shl 5);
    //lcd_gotoxy(15, 1);
    //lcd_putc('#');
    //delay_ms(1000);
    //
    //lcd_clrscr();
    //PORTB := PORTB or (1 shl 5);
    //delay_ms(1000);
  until false;
end.

