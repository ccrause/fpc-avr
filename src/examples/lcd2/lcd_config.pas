unit lcd_config;

interface

const
  // Pin connections
  LCD_DC_PIN        = 1;        // Data/command select pin
  // Optional, in case control pins are not tied to ground
  LCD_SS_PIN        = 2;        // Select LCD display, could be tied to ground
  LCD_RST_PIN       = 0;        // Could be tied to MCU reset

var
  LCD_DC_PORT: byte absolute byte(@PORTB);
  LCD_SS_PORT: byte absolute byte(@PORTB);
  LCD_RST_PORT: byte absolute byte(@PORTB);

  //  DDR ports, automatically formed from PORT declarations above
  LCD_DC_DDR: byte absolute byte(@LCD_DC_PORT - 1);
  LCD_SS_DDR: byte absolute byte(@LCD_SS_PORT - 1);
  LCD_RST_DDR: byte absolute byte(@LCD_RST_PORT - 1);

implementation

end.

