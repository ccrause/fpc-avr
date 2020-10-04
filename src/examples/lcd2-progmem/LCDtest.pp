program LCDtest;

uses
  lcd_pcd8544, spi, spi_config, lcd_config,
  delay, progmem;

const
  msg: shortstring = 'FPC-AVR'; section '.progmem';
  clr: shortstring = '        '; section '.progmem';

var
  x: int8 = 0;
  y: int8 = 0;
  x_inc: int8 = 1;
  y_inc: int8 = 1;
  x_switch: boolean = false;
  i, j: byte;
  len: byte;
  //rightArrowGlyph: array[0..6] of byte = (8, 8, 8, 42, 28, 8, 0);
  //leftArrowGlyph:  array[0..6] of byte = (8, 28, 42, 8, 8, 8, 0);
  //downArrowGlyph:  array[0..6] of byte = (0, 16, 32, 127, 32, 16, 0);
  //upArrowGlyph:    array[0..6] of byte = (0, 4, 2, 127, 2, 4, 0);
  smileyGlyph:     array[0..6] of byte = (19, 35, 64, 92, 64, 35, 19); section '.progmem';

  Img: array[0..4, 0..40] of byte =
    (($00, $00, $00, $00, $00, $00, $00, $00, $00, $C0, $F0, $C0, $C0, $80, $80, $00, $00, $00, $40, $E0, $FE, $F8, $F8, $E0, $E0, $C0, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00),
     ($00, $00, $00, $00, $00, $00, $00, $00, $3C, $FF, $FF, $FF, $FF, $FF, $FF, $FC, $F0, $60, $00, $0C, $1F, $7F, $7F, $7F, $7F, $3F, $3F, $0E, $00, $00, $00, $00, $00, $E0, $F0, $F8, $FF, $FC, $F0, $C0, $00),
     ($00, $7C, $F0, $F0, $F0, $F0, $F0, $E0, $C0, $C0, $80, $01, $01, $01, $01, $01, $00, $00, $80, $80, $C0, $C0, $E0, $E0, $E0, $E0, $C0, $C0, $80, $00, $00, $1E, $1F, $3F, $3F, $3F, $3F, $3F, $1F, $0F, $00),
     ($00, $00, $03, $07, $0F, $1F, $1F, $1F, $1F, $1F, $1F, $0F, $00, $00, $00, $80, $E0, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FC, $FC, $F8, $F8, $F8, $F0, $00, $00, $00, $00),
     ($00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $1F, $3F, $3F, $7F, $7F, $7F, $7F, $7F, $3F, $3F, $3F, $3F, $3F, $3F, $1F, $1F, $1F, $0F, $0F, $0F, $07, $03, $01, $00, $00, $00, $00)); section '.progmem';

begin
  lcd_init();
  lcd_clrscr;

  // Copy bitmap to LCD
  for i := 0 to length(Img)-1 do
  begin
    lcd_gotoxy(0, i);
    for j := 0 to length(Img[x])-1 do
      lcd_data_P(Img[i, j]);
  end;
  delay_ms(2000);

  // Slide some text around
  len := length(msg);
  len := progmemByte(@msg[0]);
  repeat
    if (x_inc > 0) and (x >= (screen_width_char - len - 1)) then
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

    lcd_gotoxy(x, y);
    if x_inc > 0 then
    begin
      lcd_printString_P(msg);
      lcd_glyph_P(@smileyGlyph[0], length(smileyGlyph));
    end
    else
    begin
      lcd_printStringInv_P(msg);
      lcd_glyphInv_P(@smileyGlyph[0], length(smileyGlyph));
    end;

    delay_ms(500);
    lcd_gotoxy(x, y);
    lcd_printString_P(clr);
  until false;
end.

