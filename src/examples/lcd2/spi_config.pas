unit spi_config;

interface

const
  USE_SPI_SOFTWARE = 1;  // Must be set to either 0 (use SPI hardware) or 1 (use software)

  SPI_CLK_PIN = 5;
  SPI_MOSI_PIN = 3;

  // Optional for one way SPI  communication, MISO pin is under SPI control in master mode anyway
  // Use for software SPI?
  SPI_MISO_PIN = 4;  // If slave communication not required, set same as MOSI

  // Missing from ATmega328P file for now, to be added to ATmega328P.pp
  SPR0 = 0;
  SPR1 = 1;

var
  SPI_PORT: byte absolute PORTB;
  SPI_DDR: byte absolute DDRB;
  SPI_PIN: byte absolute PINB;

implementation

end.

