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
function lcd_init(const settings_mask: byte; const i2cAddress: byte): boolean;

function lcd_printChar(const c:char): boolean;
function lcd_printString(const s: shortstring): boolean;
function lcd_putc(const c:char): boolean;
function lcd_puts(const s: shortstring): boolean;

function lcd_clrscr: boolean;
function lcd_home: boolean;
function lcd_gotoxy(const x, y: byte): boolean;

// Generate more code but maybe clearer
function lcd_displayControl(const displayOn, cursorOn, cursorBlink: boolean): boolean; overload;
// Generate +_ 20 bytes less code
function lcd_displayControl(const settings_mask: byte): boolean; overload;

function lcd_backlight(lightOn: boolean): boolean;

function lcd_command(const cmd: byte): boolean;
function lcd_data(const data: byte): boolean;

type
  TCharMap = array[0..7] of byte; // 5 columns of 8 vertical bits, (0, 0) is top right hand side

// Supports 5x8 character maps
// Index ranges from 0 - 7
function lcd_setCustomChar(index: byte; CharMap: TCharMap): boolean;

implementation

uses
  delay, i2c;

const
  DDRAM_mask = (1 shl 7); // used to set DDRAM address
  CGRAM_mask = (1 shl 6); // used to set CGRAM address
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

  cmdFunctionSet8bit = %00110000;
  cmdFunctionSet4bit = %00100000;

var
  i2cMaster: TI2CMaster;
  fi2cAddress: byte;
  backlightState: byte;

function set_dataNibble(nibble: byte): boolean;
begin
  nibble := nibble or E_Mask;
  Result := i2cMaster.writeByte(nibble);
  nibble := nibble and ($FF - E_Mask);
  Result := Result and i2cMaster.WriteByte(nibble);
end;

// Note: RS should be passed as 0 or RS_DataMask
function lcd_write(rs, data: byte): boolean;
var
  b: byte;
begin
  b := (data and $F0) or rs or backlightState;
  i2cMaster.start(fi2cAddress, false);
  Result := set_dataNibble(b);

  b := (data shl 4) or rs or backlightState;
  Result := Result and set_dataNibble(b);
  i2cMaster.stop;

  // delay to allow LCD to process instruction
  if (data and %00000011) > 0 then   // long delay for clear display and return home commands
    delay_us(1600) // Hitachi datasheet 1520 us
  else
    delay_us(50); // Hitachi datasheet 37 us
end;

function lcd_init(const settings_mask: byte; const i2cAddress: byte): boolean;
begin
  i2cMaster.init(I2C_100kHz);
  fi2cAddress := i2cAddress;
  // Default backlight to off
  backlightState := 0;

  delay_ms(50);  // Hitachi datasheet says 15ms after Vcc > 4.5V

  // set pins 0&1 high
  i2cMaster.start(fi2cAddress, false);
  Result := set_dataNibble(cmdFunctionSet8bit);
  i2cMaster.stop();
  delay_ms(5);  // Hitachi datasheet 4.1 ms

  i2cMaster.start(fi2cAddress, false);
  Result := Result and set_dataNibble(cmdFunctionSet8bit);
  i2cMaster.stop();
  delay_us(200);  // Hitachi datasheet 100 us

  i2cMaster.start(fi2cAddress, false);
  Result := Result and set_dataNibble(cmdFunctionSet8bit);
  i2cMaster.stop();
  delay_us(200);  // Hitachi datasheet 100 us

  i2cMaster.start(fi2cAddress, false);
  Result := Result and set_dataNibble(cmdFunctionSet8bit);
  i2cMaster.stop();
  delay_us(200);  // Hitachi datasheet 100 us

  // set interface to 4 bit mode
  i2cMaster.start(fi2cAddress, false);
  Result := Result and set_dataNibble(cmdFunctionSet4bit);
  i2cMaster.stop();
  delay_us(50);  // Hitachi datasheet 37 us

  // Function set: 001DNFxx
  // Data width: 1 = 8 bit, 0 = 4 bit
  // Number of display lines: 1 = 2 lines, 0 = 1 line
  // Font option: 1 = 5x10, 0 = 5x8 (2 line display can only use a 5x8 font)
  Result := Result and lcd_command(%00101000);
  //delay_us(50);  // Hitachi datasheet 37 us

  // Display on
  Result := Result and lcd_command(settings_mask);//lcd_displayOnCursorOff); //%00001000);

  // Display clear
  Result := Result and lcd_command(%00000001);

  // Set entry mode
  Result := Result and lcd_command(%00000110);  // increment, no shift
end;

function lcd_putc(const c: char): boolean; inline;
begin
  Result := lcd_printChar(c);
end;

function lcd_puts(const s: shortstring): boolean; inline;
begin
  Result := lcd_printString(s);
end;

function lcd_clrscr: boolean;
begin
  Result := lcd_command(%00000001);
end;

function lcd_home: boolean;
begin
  Result := lcd_command(%00000010);
end;

// x, y are zero based indexes
function lcd_gotoxy(const x, y: byte): boolean;
begin
  case lcd_lines of
    1: Result := lcd_command(DDRAM_mask or (Line1Start + x));

    2: if y = 0 then
         Result := lcd_command(DDRAM_mask or (Line1Start + x))
       else
         Result := lcd_command(DDRAM_mask or (Line2Start + x));

    4: if y = 0 then
         Result := lcd_command(DDRAM_mask or (Line1Start + x))
       else if y = 1 then
         Result := lcd_command(DDRAM_mask or (Line2Start + x))
       else if y = 3 then
         Result := lcd_command(DDRAM_mask or (Line3Start + x))
       else
         Result := lcd_command(DDRAM_mask or (Line4Start + x));
  end;
end;

function lcd_printChar(const c: char): boolean; inline;
begin
  Result := lcd_data(ord(c));
end;

function lcd_printString(const s: shortstring): boolean; inline;
var
  i:byte;
begin
  Result := true;
  for i := 1 to byte(s[0]) do
    Result := Result and lcd_printChar(s[i]);
end;

function lcd_displayControl(const displayOn, cursorOn, cursorBlink: boolean): boolean;
begin
  Result := lcd_command(displayControl_mask or (byte(displayOn) shl 2) or (byte(cursorOn) shl 1) or byte(cursorBlink));
end;

function lcd_displayControl(const settings_mask: byte): boolean;
begin
  Result := lcd_command(settings_mask);
end;

function lcd_backlight(lightOn: boolean): boolean;
begin
  if lightOn then
    backlightState := BL_Mask
  else
    backlightState := 0;

  // Just set backlight line on/off, no other data is sent
  i2cMaster.start(fi2cAddress, false);
  if lightOn then
    i2cMaster.writeByte(8)
  else
    i2cMaster.writeByte(0);
  Result := i2cMaster.stop;
end;

function lcd_command(const cmd: byte): boolean; inline;
begin
  Result := lcd_write(RS_INSTR, cmd);
end;

function lcd_data(const data: byte): boolean; inline;
begin
  Result := lcd_write(RS_DATA, data);
end;

function lcd_setCustomChar(index: byte; CharMap: TCharMap): boolean;
var
  i: byte;
begin
  index := (index and 7) shl 3; // Truncate to valid range, then shift to appropriate CGRAM location
  // Set CGRAM address
  Result := lcd_command(CGRAM_mask or index);
  //Write character map to CGRAM
  for i := 0 to high(CharMap) do
    Result := Result and lcd_data(CharMap[i]);
end;

end.

