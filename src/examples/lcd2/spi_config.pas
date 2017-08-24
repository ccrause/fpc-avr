unit spi_config;

interface

const
  SPI_CLK_PIN = 5;
  SPI_MOSI_PIN = 3;

  // Optional, MISO pin is under SPI control in master mode anyway
  // Use for software SPI?
  //SPI_MISO_PIN = 3;  // If slave communication not required, set same as MOSI

  // Missing from ATmega328P file for now, to be added to ATmega328P.pp
  SPR0 = 0;
  SPR1 = 1;

var
  SPI_PORT: byte absolute byte(@PORTB);
  SPI_DDR: byte absolute byte(@DDRB);


implementation

end.

