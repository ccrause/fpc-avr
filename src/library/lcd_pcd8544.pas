unit lcd_pcd8544;

interface

{$PACKENUM 1}
type
  // TODO: could further limit lower value to something like 50
  // Not sure what a safe lower (and upper) value would be for different bias values...
  TVopRange = 0 .. 127;
  TTCControlValue = (tcZero, tcOne, tcTwo, tcThree, tcFour);
  TBiasValue = (bvZero, bvOne, bvTwo, bvThree, bvFour, bvFive, bvSix, bvSeven);

const
  screen_width_char = (84 div 7);
  screen_height_char = 6;

  // Command values
  LCD_FUNC_SET = 1 shl 5;
    LCD_FUNC_PD = 1 shl 2;          // Power down mode if set
    LCD_FUNC_V = 1 shl 1;           // Vertical addressing mode
    LCD_FUNC_EXT_Instr = 1;         // Extended instruction set
    LCD_FUNC_NORMAL = 0;            // Normal instruction set

  // Normal mode commands
  LCD_DISP_CONF = 1 shl 3;
    LCD_DISP_BLANK = 0;
    LCD_DISP_NORMAL = 4;
    LCD_DISP_ALL_SEG_ON = 1;
    LCD_DISP_INV = 5;

  LCD_SET_Y_ADDR = 1 shl 6;         // Set Y address, should be 0 <= Y <= 5, Y in 8 pixel increments
  LCD_SET_X_ADDR = 1 shl 7;         // Set X address, should be 0 <= X <= 83, X in pixel increments

  // Extended mode commands
  LCD_TEMP_COEF = 1 shl 2;          // Set temperature coef for display, use TTCControlValue type
  LCD_BIAS = 1 shl 4;               // Set bias value, use TBaisValue type
  LCD_VOP = 1 shl 7;                // Set temperature coefficient for display, use TVopRange type

procedure lcd_init(Vop: TVopRange = 60; Tcoef: TTCControlValue = tcOne; Bias: TBiasValue = bvThree);

procedure lcd_printChar(const character: char);
procedure lcd_printString(const s: ShortString);

// Compiler passes address to progmem in R24:25?
procedure lcd_printString_P(const s_progmem: ShortString);
procedure lcd_data_P(constref data: byte);

procedure lcd_putc(const c:char);
procedure lcd_puts(const s: shortstring);

procedure lcd_clrscr;
procedure lcd_home;
procedure lcd_gotoxy(x, y: byte);

procedure lcd_glyph(glyph: PByte; count: byte);
procedure lcd_glyph_P(glyph: PByte; count: byte);

// Inverted display of text
procedure lcd_printCharInv(const character: char);
procedure lcd_printStringInv(const s: ShortString);
procedure lcd_glyphInv(glyph: PByte; count: byte);

procedure lcd_printStringInv_P(const s: ShortString);
procedure lcd_glyphInv_P(glyph: PByte; count: byte);

procedure lcd_command(const cmd: byte);
procedure lcd_data(const data: byte);

implementation

uses
  progmem, lcd_config, spi;

const
  LCD_MODE_CMD = 0;
  LCD_MODE_DATA = 1;

  // A character consists of 8 bits vertical x 7 bits horizontal
  // A space before and after the character is assumed
  // Vertical spacing is included in character bitmap
  // By convention this space is the last (bottom) pixel
  // A character is defined as 8 bits high x 7 bits wide, but stored as 8 x 5 bits,
  // because the horizontal space is added in the character drawing procedure
  char_width = 7;
  char_height = 8;
  ASCII_CHARSET: array[0..(127-32), 0..char_width-3] of byte = (
  ($00, $00, $00, $00, $00), // 20
  ($00, $00, $5f, $00, $00), // 21 !
  ($00, $07, $00, $07, $00), // 22 "
  ($14, $7f, $14, $7f, $14), // 23 #
  ($24, $2a, $7f, $2a, $12), // 24 $
  ($23, $13, $08, $64, $62), // 25 %
  ($36, $49, $55, $22, $50), // 26 &
  ($00, $05, $03, $00, $00), // 27 '
  ($00, $1c, $22, $41, $00), // 28 (
  ($00, $41, $22, $1c, $00), // 29 )
  ($14, $08, $3e, $08, $14), // 2a *
  ($08, $08, $3e, $08, $08), // 2b +
  ($00, $50, $30, $00, $00), // 2c ,
  ($08, $08, $08, $08, $08), // 2d -
  ($00, $60, $60, $00, $00), // 2e .
  ($20, $10, $08, $04, $02), // 2f /
  ($3e, $51, $49, $45, $3e), // 30 0
  ($00, $42, $7f, $40, $00), // 31 1
  ($42, $61, $51, $49, $46), // 32 2
  ($21, $41, $45, $4b, $31), // 33 3
  ($18, $14, $12, $7f, $10), // 34 4
  ($27, $45, $45, $45, $39), // 35 5
  ($3c, $4a, $49, $49, $30), // 36 6
  ($01, $71, $09, $05, $03), // 37 7
  ($36, $49, $49, $49, $36), // 38 8
  ($06, $49, $49, $29, $1e), // 39 9
  ($00, $36, $36, $00, $00), // 3a :
  ($00, $56, $36, $00, $00), // 3b ;
  ($08, $14, $22, $41, $00), // 3c <
  ($14, $14, $14, $14, $14), // 3d =
  ($00, $41, $22, $14, $08), // 3e >
  ($02, $01, $51, $09, $06), // 3f ?
  ($32, $49, $79, $41, $3e), // 40 @
  ($7e, $11, $11, $11, $7e), // 41 A
  ($7f, $49, $49, $49, $36), // 42 B
  ($3e, $41, $41, $41, $22), // 43 C
  ($7f, $41, $41, $22, $1c), // 44 D
  ($7f, $49, $49, $49, $41), // 45 E
  ($7f, $09, $09, $09, $01), // 46 F
  ($3e, $41, $49, $49, $7a), // 47 G
  ($7f, $08, $08, $08, $7f), // 48 H
  ($00, $41, $7f, $41, $00), // 49 I
  ($20, $40, $41, $3f, $01), // 4a J
  ($7f, $08, $14, $22, $41), // 4b K
  ($7f, $40, $40, $40, $40), // 4c L
  ($7f, $02, $0c, $02, $7f), // 4d M
  ($7f, $04, $08, $10, $7f), // 4e N
  ($3e, $41, $41, $41, $3e), // 4f O
  ($7f, $09, $09, $09, $06), // 50 P
  ($3e, $41, $51, $21, $5e), // 51 Q
  ($7f, $09, $19, $29, $46), // 52 R
  ($46, $49, $49, $49, $31), // 53 S
  ($01, $01, $7f, $01, $01), // 54 T
  ($3f, $40, $40, $40, $3f), // 55 U
  ($1f, $20, $40, $20, $1f), // 56 V
  ($3f, $40, $38, $40, $3f), // 57 W
  ($63, $14, $08, $14, $63), // 58 X
  ($07, $08, $70, $08, $07), // 59 Y
  ($61, $51, $49, $45, $43), // 5a Z
  ($00, $7f, $41, $41, $00), // 5b [
  ($02, $04, $08, $10, $20), // 5c \
  ($00, $41, $41, $7f, $00), // 5d ]
  ($04, $02, $01, $02, $04), // 5e ^
  ($40, $40, $40, $40, $40), // 5f _
  ($00, $01, $02, $04, $00), // 60 `
  ($20, $54, $54, $54, $78), // 61 a
  ($7f, $48, $44, $44, $38), // 62 b
  ($38, $44, $44, $44, $20), // 63 c
  ($38, $44, $44, $48, $7f), // 64 d
  ($38, $54, $54, $54, $18), // 65 e
  ($08, $7e, $09, $01, $02), // 66 f
  ($0c, $52, $52, $52, $3e), // 67 g
  ($7f, $08, $04, $04, $78), // 68 h
  ($00, $44, $7d, $40, $00), // 69 i
  ($20, $40, $44, $3d, $00), // 6a j
  ($7f, $10, $28, $44, $00), // 6b k
  ($00, $41, $7f, $40, $00), // 6c l
  ($7c, $04, $18, $04, $78), // 6d m
  ($7c, $08, $04, $04, $78), // 6e n
  ($38, $44, $44, $44, $38), // 6f o
  ($7c, $14, $14, $14, $08), // 70 p
  ($08, $14, $14, $18, $7c), // 71 q
  ($7c, $08, $04, $04, $08), // 72 r
  ($48, $54, $54, $54, $20), // 73 s
  ($04, $3f, $44, $40, $20), // 74 t
  ($3c, $40, $40, $20, $7c), // 75 u
  ($1c, $20, $40, $20, $1c), // 76 v
  ($3c, $40, $30, $40, $3c), // 77 w
  ($44, $28, $10, $28, $44), // 78 x
  ($0c, $50, $50, $50, $3c), // 79 y
  ($44, $64, $54, $4c, $44), // 7a z
  ($00, $08, $36, $41, $00), // 7b {
  ($00, $00, $7f, $00, $00), // 7c |
  ($00, $41, $36, $08, $00), // 7d }
  ($10, $08, $08, $10, $08), // 7e ~
  ($78, $46, $41, $46, $78)  // 7f DELTA
  ); section '.progmem';

procedure lcd_write(const mode, data: byte);
begin
  {$if declared(LCD_SS_PORT)}
  LCD_SS_PORT := LCD_SS_PORT and not(1 shl LCD_SS_PIN);
  {$endif}

  if mode = LCD_MODE_CMD then
    LCD_DC_PORT := LCD_DC_PORT and not(1 shl LCD_DC_PIN)
  else
    LCD_DC_PORT := LCD_DC_PORT or (1 shl LCD_DC_PIN);

  spi_transmit(data);
  {$if declared(LCD_SS_PORT)}
  LCD_SS_PORT := LCD_SS_PORT or (1 shl LCD_SS_PIN);
  {$endif}
end;

procedure lcd_printStringInv_P(const s: ShortString);
var
  len, i: byte;
begin
  len := progmemByte(@s[0]);
  for i := 1 to len do
    lcd_printCharInv(progmemChar(@s[i]));
end;

procedure lcd_glyphInv_P(glyph: PByte; count: byte);
var
  i: byte;
begin
  // Writes columns of 8 pixels, so array of 8 bytes will fill character space
  for i := 0 to count-1 do
    lcd_data($FF - progmemByte(@glyph[i]));
end;

procedure lcd_command(const cmd: byte);
begin
  lcd_write(LCD_MODE_CMD, cmd);
end;

procedure lcd_data(const data: byte);
begin
  lcd_write(LCD_MODE_DATA, data);
end;

procedure lcd_init(Vop: TVopRange = 60; Tcoef: TTCControlValue = tcOne; Bias: TBiasValue = bvThree);
begin
  LCD_RST_DDR := LCD_RST_DDR or (1 shl LCD_RST_PIN);
  LCD_RST_PORT := LCD_RST_PORT and not (1 shl LCD_RST_PIN);

  LCD_DC_DDR := LCD_DC_DDR or (1 shl LCD_DC_PIN);
  LCD_DC_PORT := LCD_DC_PORT or (1 shl LCD_DC_PIN);

  {$if declared(LCD_SS_PORT)}
  LCD_SS_DDR := LCD_SS_DDR or (1 shl LCD_SS_PIN);
  LCD_SS_PORT := LCD_SS_PORT or (1 shl LCD_SS_PIN);
  {$endif}

  spi_init;

  //Release reset, pull high
  LCD_RST_PORT := LCD_RST_PORT or (1 shl LCD_RST_PIN);

  lcd_command(LCD_FUNC_SET or LCD_FUNC_EXT_Instr);  // LCD Extended Commands mode
  lcd_command(LCD_VOP or Vop);                      // Set LCD Vop (Contrast).  Datasheet suggest a Vop of above 6.06V for a MUX 0f 1:48, so 50 (0x32) is minimum setting
  lcd_command(LCD_TEMP_COEF or ord(Tcoef));         // Set Temp coefficent. //0x04, 0 is OK at low temp (5 - 20C), fades at >25C, try 1 next
  lcd_command(LCD_BIAS or ord(Bias));               // LCD bias mode 1:48.
  lcd_command(LCD_FUNC_SET or LCD_FUNC_NORMAL);     // Basic commands mode
  lcd_command(LCD_DISP_CONF or LCD_DISP_NORMAL);    // LCD in normal mode.  //0xC = normal, 0xD = inverse
end;

procedure lcd_gotoxy(x, y: byte);
begin
  lcd_command($80 or (x*char_width));    // column in chars
  lcd_command($40 or y);		 // row in chars
end;

procedure lcd_glyph(glyph: PByte; count: byte);
var
  i: byte;
begin
  // Writes columns of 8 pixels, so array of 8 bytes will fill character space
  for i := 0 to count-1 do
    lcd_data(glyph[i]);
end;

procedure lcd_glyph_P(glyph: PByte; count: byte);
var
  i: byte;
begin
  // Writes columns of 8 pixels, so array of 8 bytes will fill character space
  for i := 0 to count-1 do
    lcd_data(progmemByte(@glyph[i]));
end;

procedure lcd_printCharInv(const character: char);
var
  i, b: byte;
begin
  lcd_data($FF);  // empty column of pixels

  if( (ord(character) < $20) or (ord(character) > $7F)) then  // write black square
    for i := 0 to char_width - 3 do
      lcd_data($FF - $7E)
  else
    for i := 0 to char_width - 3 do
    begin
      //lcd_data($FF - ASCII_CHARSET[ord(character) - $20][i]);
      b := progmemByte(@ASCII_CHARSET[ord(character) - $20][i]);
      lcd_data($FF - b);
    end;

  lcd_data($FF);  // empty column of pixels
end;

procedure lcd_printStringInv(const s: ShortString);
var
  i: byte;
begin
  for i := 1 to length(s) do
    lcd_printCharInv(s[i]);
end;

procedure lcd_glyphInv(glyph: PByte; count: byte);
var
  i: byte;
begin
  // Writes columns of 8 pixels, so array of 8 bytes will fill character space
  for i := 0 to count-1 do
    lcd_data($FF - glyph[i]);
end;

procedure lcd_printChar(const character: char);
var
  i: byte;
begin
  lcd_data(0);  // empty column of pixels

  if( (ord(character) < $20) or (ord(character) > $7F)) then  // write black square
    for i := 0 to char_width - 3 do
      lcd_data($7E)
  else
    for i := 0 to char_width - 3 do
    begin
      //lcd_data(ASCII_CHARSET[ord(character) - $20][i]);
      lcd_data_P(ASCII_CHARSET[ord(character) - $20][i]);
    end;

  lcd_data(0);  // empty column of pixels
end;

procedure lcd_printString(const s: ShortString);
var
  i: byte;
begin
  for i := 1 to length(s) do
    lcd_printChar(s[i]);
end;

procedure lcd_printString_P(const s_progmem: ShortString);
var
  len, i: byte;
begin
  len := progmemByte(@s_progmem[0]);
  for i := 1 to len do
    lcd_printChar(progmemChar(@s_progmem[i]));
end;

procedure lcd_data_P(constref data: byte);
var
  b: byte;
begin
  b := progmemByte(@data);
  lcd_write(LCD_MODE_DATA, b);
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
var
  i: byte;
begin
  // Address counter wraps around, so no need to position cursor at any specific location
  for i := 0 to screen_width_char*screen_height_char-1 do
    lcd_printChar(' ');
end;

procedure lcd_home;
begin
  lcd_gotoxy(0, 0);
end;

end.

