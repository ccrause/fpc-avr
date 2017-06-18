unit lcd_config;

interface

const
  // LCD configuration
  lcd_lines         = 2;     // number of visible lines of the display
  lcd_displayLength = 16;    // visibles characters per line of the display

  // Pin connections
  lcd_dataPin4      = 0;         // pin for 4bit data bit 0
  lcd_dataPin5      = 1;         // pin for 4bit data bit 1
  lcd_dataPin6      = 2;         // pin for 4bit data bit 2
  lcd_dataPin7      = 3;         // pin for 4bit data bit 3
  LCD_RS_PIN        = 5;            // pin  for RS line
  LCD_RW_PIN        = 6;            // pin  for RW line
  LCD_E_PIN         = 7;            // pin  for Enable line

var
  LCD_DATA4_PORT: byte absolute byte(@PORTB);     // port for 4bit data bit 0
  LCD_DATA5_PORT: byte absolute byte(@PORTB);     // port for 4bit data bit 1
  LCD_DATA6_PORT: byte absolute byte(@PORTB);     // port for 4bit data bit 2
  LCD_DATA7_PORT: byte absolute byte(@PORTB);     // port for 4bit data bit 3
  LCD_RS_PORT: byte absolute byte(@PORTD);        // port for RS line
  LCD_RW_PORT: byte absolute byte(@PORTD);        // port for RW line
  LCD_E_PORT: byte absolute byte(@PORTD);         // port for Enable line

  //  DDR ports, automatically formed from PORT declarations above
  LCD_DATA4_DDR: byte absolute byte(@LCD_DATA4_PORT-1);     // port for 4bit data bit 0
  LCD_DATA5_DDR: byte absolute byte(@LCD_DATA5_PORT-1);     // port for 4bit data bit 1
  LCD_DATA6_DDR: byte absolute byte(@LCD_DATA6_PORT-1);     // port for 4bit data bit 2
  LCD_DATA7_DDR: byte absolute byte(@LCD_DATA7_PORT-1);     // port for 4bit data bit 3
  LCD_RS_DDR: byte absolute byte(@LCD_RS_PORT-1);          // port for RS line
  LCD_RW_DDR: byte absolute byte(@LCD_RW_PORT-1);          // port for RS line
  LCD_E_DDR: byte absolute byte(@LCD_E_PORT -1);            // port for RS line

implementation

end.

