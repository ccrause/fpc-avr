unit lcd_hd44780_i2c;

{$inline on}

interface

{ Pin mapping of I2C backpack:
  I2C     LCD
  P0 o--o RS         (Register Select: 0 = Instruction, 1 = Data)
  P1 o--o RW         (Read/not write: 0 = write, 1 = read)
  P2 o--o E          (Starts data transfer = 1)
  P3 o--o Backlight  (0 = off, 1 = on)
  P4 o--o D4         \
  P5 o--o D5          |
  P6 o--o D5          | Data nibble
  P7 o--o D7         /
}

const
  // LCD configuration
  lcd_lines         = 2;     // number of visible lines of the display
  lcd_displayLength = 16;    // visibles characters per line of the display

const
  lcd_displayOff                   = 8;  // %00001000;
  lcd_displayOnCursorOff           = 12; // %00001100;
  lcd_displayOnCursorOn            = 14; // %00001110;
  lcd_displayOnCursorOnCursorBlink = 15; // %00001111;

// i2cAddress is the left adjusted address
procedure lcd_init(const settings_mask: byte; const i2cAddress: byte);

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
  delay, i2c;

const
  DDRAM_mask = (1 shl 7); // used to set DDRAM address
  displayControl_mask = (1 shl 3);

  Line1Start = 0;
  Line2Start = 64; // $40
  Line3Start = 20; // $14
  Line4Start = 84; // $54

// Control lines
  RS_ = 0;
  RW_ = 1;
  E_ = 2;
  BackLight_ = 3;
// Masks for easy use
  RS_DataMask = 1 shl RS_;
  RW_ReadMask = 1 shl RW_;
  E_Mask      = 1 shl E_;
  BL_Mask     = 1 shl BackLight_;

  RS_DATA     = RS_DataMask;
  RS_INSTR    = 0;

var
  i2cMaster: TI2CMaster;
  fi2cAddress: byte;

procedure set_dataNibble(nibble: byte);
begin
  nibble := nibble or E_Mask;
  i2cMaster.writeBytes(fi2cAddress, @nibble, 1);
  delay_us(1);

  nibble := nibble and ($FF - E_Mask);
  i2cMaster.WriteBytes(fi2cAddress, @nibble, 1);
  delay_us(1);
end;

// Note: RS should be passed as 0 or RS_DataMask
procedure lcd_write(rs, data: byte);
var
  b: byte;
begin
  b := (data and $F0) or rs or BL_Mask;
  set_dataNibble(b);

  b := (data shl 4) or rs or BL_Mask;
  set_dataNibble(b);

  // delay to allow LCD to process instruction
  if (data and %00000011) > 0 then   // long delay for clear display and return home commands
    delay_us(1520)
  else
    delay_us(41);
end;

procedure lcd_init(const settings_mask: byte; const i2cAddress: byte);
begin
  i2cMaster.init(I2C_100kHz);
  fi2cAddress := i2cAddress;
  delay_ms(15);  // Hitachi datasheet says 15ms after Vcc > 4.5V

  // set pins 0&1 high
  set_dataNibble(%0011);
  delay_us(4100);  // Hitachi datasheet
  set_dataNibble(%0011);
  delay_us(100);  // Hitachi datasheet
  set_dataNibble(%0011);
  delay_us(100);  // Hitachi datasheet

  // set interface to 4 bit mode
  set_dataNibble(%0010);

  // Function set: Set data width (8/4 bit), display lines (2/1) and font option (5x10 / 5x8)
  lcd_write(RS_INSTR, %00101000);

  // Display off
  lcd_write(RS_INSTR, lcd_displayOff); //%00001000);

  // Display clear
  lcd_write(RS_INSTR, %00000001);

  // Set entry mode
  lcd_write(RS_INSTR, %00000110);  // increment, no shift

  // Display on
  lcd_write(RS_INSTR, settings_mask);  //%00001100);
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
  lcd_write(RS_INSTR, %00000001);
end;

procedure lcd_home;
begin
  lcd_write(RS_INSTR, %00000010);
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
  lcd_write(RS_DATA, ord(c));
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
  lcd_write(RS_INSTR, displayControl_mask or (byte(displayOn) shl 2) or (byte(cursorOn) shl 1) or byte(cursorBlink));
end;

procedure lcd_displayControl(const settings_mask: byte);
begin
  lcd_write(RS_INSTR, settings_mask);
end;

procedure lcd_command(const cmd: byte); inline;
begin
  lcd_write(RS_INSTR, cmd);
end;

procedure lcd_data(const data: byte); inline;
begin
  lcd_write(RS_DATA, data);
end;

end.

