unit lcd_hd44780;

{$inline on}

interface

uses
  lcd_config;

const
  lcd_displayOff                   = 8;  // %00001000;
  lcd_displayOnCursorOff           = 12; // %00001100;
  lcd_displayOnCursorOn            = 14; // %00001110;
  lcd_displayOnCursorOnCursorBlink = 15; // %00001111;

procedure lcd_init(const settings_mask: byte);

procedure lcd_printChar(const c:char);
procedure lcd_printString(const s: shortstring);
procedure lcd_putc(const c:char);
procedure lcd_puts(const s: shortstring);

procedure lcd_clrscr;
procedure lcd_home;
procedure lcd_gotoxy(const x, y: byte);

// Generate more code but maybe clearer
procedure lcd_displayControl(const displayOn, cursorOn, cursorBlink: boolean); overload;
// Generate +_ 20 bytes less code
procedure lcd_displayControl(const settings_mask: byte); overload;

procedure lcd_command(const cmd: byte);
procedure lcd_data(const data: byte);

implementation

uses
  delay;

const
  DDRAM_mask = (1 shl 7); // used to set DDRAM address
  displayControl_mask = (1 shl 3);
  dataPinMask = (1 shl lcd_dataPin4) or (1 shl lcd_dataPin5) or (1 shl lcd_dataPin6) or (1 shl lcd_dataPin7);

  Line1Start = 0;
  Line2Start = 64; // $40
  Line3Start = 20; // $14
  Line4Start = 84; // $54

  singleDataPort = (@LCD_DATA4_PORT = @LCD_DATA5_PORT) and (@LCD_DATA5_PORT = @LCD_DATA6_PORT) and (@LCD_DATA6_PORT = @LCD_DATA7_PORT);
  consecutiveDataPins = ((lcd_dataPin5 + lcd_dataPin6 + lcd_dataPin7 - 3*lcd_dataPin4) = 6) and
                        (lcd_dataPin4 < lcd_dataPin5) and
                        (lcd_dataPin5 < lcd_dataPin6) and
                        (lcd_dataPin6 < lcd_dataPin7);

procedure set_controlPinsOutput(); inline;
begin
  LCD_RS_DDR := LCD_RS_DDR or (1 shl LCD_RS_PIN);
  {$if declared(LCD_RW_PORT)}
  LCD_RW_DDR := LCD_RW_DDR or (1 shl LCD_RW_PIN);
  {$endif}
  LCD_E_DDR  := LCD_E_DDR  or (1 shl LCD_E_PIN);
end;

procedure lcd_rs_low(); inline;
begin
  LCD_RS_PORT := LCD_RS_PORT and not (1 shl LCD_RS_PIN);
end;

procedure lcd_rs_high(); inline;
begin
  LCD_RS_PORT := LCD_RS_PORT or (1 shl LCD_RS_PIN);
end;

procedure lcd_rw_low(); inline;
begin
  {$if declared(LCD_RW_PORT)}
  LCD_RW_PORT := LCD_RW_PORT and not (1 shl LCD_RW_PIN);
  {$endif}
end;

procedure lcd_rw_high(); inline;
begin
  {$if declared(LCD_RW_PORT)}
  LCD_RW_PORT := LCD_RW_PORT or (1 shl LCD_RW_PIN);
  {$endif}
end;

procedure lcd_e_low(); inline;
begin
  LCD_E_PORT := LCD_E_PORT and not (1 shl LCD_E_PIN);
end;

procedure lcd_e_high(); inline;
begin
  LCD_E_PORT := LCD_E_PORT or (1 shl LCD_E_PIN);
end;

procedure Toggle_e(); inline;
begin
  lcd_e_high();
  delay_us(1);   // PW_EH, should be 0.23us min
  lcd_e_low();
  delay_us(1);  // t_h, should be 10us min
end;

procedure set_dataOutput();
begin
  if singleDataPort then
    LCD_DATA4_DDR := LCD_DATA4_DDR or dataPinMask
  else
  begin
    LCD_DATA4_DDR := LCD_DATA4_DDR or (1 shl lcd_dataPin4);
    LCD_DATA5_DDR := LCD_DATA5_DDR or (1 shl lcd_dataPin5);
    LCD_DATA6_DDR := LCD_DATA6_DDR or (1 shl lcd_dataPin6);
    LCD_DATA7_DDR := LCD_DATA7_DDR or (1 shl lcd_dataPin7);
  end;
end;

procedure set_dataLow();
begin
  if singleDataPort then
    LCD_DATA4_PORT := LCD_DATA4_PORT and not dataPinMask
  else
  begin
    LCD_DATA4_PORT := LCD_DATA4_PORT and not (1 shl lcd_dataPin4);
    LCD_DATA5_PORT := LCD_DATA5_PORT and not (1 shl lcd_dataPin5);
    LCD_DATA6_PORT := LCD_DATA6_PORT and not (1 shl lcd_dataPin6);
    LCD_DATA7_PORT := LCD_DATA7_PORT and not (1 shl lcd_dataPin7);
  end;
end;

procedure set_dataHigh();
begin
  if singleDataPort then
    LCD_DATA4_PORT := LCD_DATA4_PORT or dataPinMask
  else
  begin
    LCD_DATA4_PORT := LCD_DATA4_PORT or (1 shl lcd_dataPin4);
    LCD_DATA5_PORT := LCD_DATA5_PORT or (1 shl lcd_dataPin5);
    LCD_DATA6_PORT := LCD_DATA6_PORT or (1 shl lcd_dataPin6);
    LCD_DATA7_PORT := LCD_DATA7_PORT or (1 shl lcd_dataPin7);
  end;
end;

procedure set_dataNibble(const nibble: byte);
begin
  set_dataLow();
  if singleDataPort and consecutiveDataPins then
    LCD_DATA4_PORT := LCD_DATA4_PORT or ((nibble and $0F) shl lcd_dataPin4)
  else
  begin
    LCD_DATA4_PORT := LCD_DATA4_PORT or ((nibble and 1) shl lcd_dataPin4);
    LCD_DATA5_PORT := LCD_DATA5_PORT or ((nibble and 2) shl lcd_dataPin5);
    LCD_DATA6_PORT := LCD_DATA6_PORT or ((nibble and 4) shl lcd_dataPin6);
    LCD_DATA7_PORT := LCD_DATA7_PORT or ((nibble and 8) shl lcd_dataPin7);
  end;
end;

procedure lcd_write(rs, data: byte);
begin
  if rs = 1 then
    lcd_rs_high()
  else
    lcd_rs_low();

  // high nibble
  set_dataNibble(data shr 4);
  Toggle_e();

  // low nibble
  set_dataNibble(data);
  Toggle_e();

  lcd_rs_low();
  set_dataHigh(); // inactive high

  // delay to allow LCD to process instruction
  if (data and %00000011) > 0 then   // long delay for clear display and return home commands
    delay_us(1520)
  else
    delay_us(41);
end;

procedure lcd_init(const settings_mask: byte);
begin
  // Set data port pins
  set_DataOutput();
  set_dataHigh();

  // Control pins
  set_controlPinsOutput();
  // Default low value
  lcd_rs_low();
  lcd_rw_low();
  lcd_e_low();

  delay_ms(15);  // Hitachi datasheet says 15ms after Vcc > 4.5V

  // set pins 0&1 high
  set_dataNibble(%0011);

  Toggle_e();
  delay_us(4100); // Hitachi datasheet
  Toggle_e();
  delay_us(100);  // Hitachi datasheet
  Toggle_e();
  delay_us(100);  // Hitachi datasheet

  // set interface to 4 bit mode
  set_dataNibble(%0010);

  Toggle_e();

  // Function set: Set data width (8/4 bit), display lines (2/1) and font option (5x10 / 5x8)
  lcd_write(0, %00101000);

  // Display off
  lcd_write(0, lcd_displayOff); //%00001000);

  // Display clear
  lcd_write(0, %00000001);

  // Set entry mode
  lcd_write(0, %00000110);  // increment, no shift

  // Display on
  lcd_write(0, settings_mask);  //%00001100);
end;

procedure lcd_putc(const c: char); inline;
begin
  lcd_printChar(c);
end;

procedure lcd_puts(const s: shortstring); inline;
begin
  lcd_printString(s);
end;

procedure lcd_clrscr;
begin
  lcd_write(0, %00000001);
end;

procedure lcd_home;
begin
  lcd_write(0, %00000010);
end;

// x, y are zero based indexes
procedure lcd_gotoxy(const x, y: byte);
begin
  case lcd_lines of
    1: lcd_command(DDRAM_mask or (Line1Start + x));

    2: if y = 0 then
         lcd_command(DDRAM_mask or (Line1Start + x))
       else
         lcd_command(DDRAM_mask or (Line2Start + x));

    4: if y = 0 then
         lcd_command(DDRAM_mask or (Line1Start + x))
       else if y = 1 then
         lcd_command(DDRAM_mask or (Line2Start + x))
       else if y = 3 then
         lcd_command(DDRAM_mask or (Line3Start + x))
       else
         lcd_command(DDRAM_mask or (Line4Start + x));
  end;
end;

procedure lcd_printChar(const c: char); inline;
begin
  lcd_write(1, ord(c));
end;

procedure lcd_printString(const s: shortstring); inline;
var
  i:byte;
begin
  for i := 1 to byte(s[0]) do
    lcd_printChar(s[i]);
end;

procedure lcd_displayControl(const displayOn, cursorOn, cursorBlink: boolean);
begin
  lcd_write(0, displayControl_mask or (byte(displayOn) shl 2) or (byte(cursorOn) shl 1) or byte(cursorBlink));
end;

procedure lcd_displayControl(const settings_mask: byte);
begin
  lcd_write(0, settings_mask);
end;

procedure lcd_command(const cmd: byte); inline;
begin
  lcd_write(0, cmd);
end;

procedure lcd_data(const data: byte); inline;
begin
  lcd_write(1, data);
end;

end.

