unit spi;

interface

uses
  spi_config;

procedure spi_init;
function spi_transfer(data: byte): byte;
procedure spi_transmit(data: byte);

implementation

procedure spi_init;
begin
  SPI_DDR := SPI_DDR or (1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN);
  SPI_PORT := SPI_PORT and not((1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN));

  // Prescaler = 64 so for F_CPU = 16MHz f_spi = 250 kHz
  SPCR := (1 shl SPE) or (1 shl MSTR) or (1 shl SPR1) or (1 shl SPR0);
  SPSR := 0;
end;

function spi_transfer(data: byte): byte;
begin
  SPDR := data;
  repeat
  until((SPSR and (1 shl SPIF)) > 0);
  Result := SPDR;
end;

procedure spi_transmit(data: byte);
begin
  SPDR := data;
  repeat
  until((SPSR and (1 shl SPIF)) > 0);
end;


end.

