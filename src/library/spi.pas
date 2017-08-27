unit spi;

interface

uses
  spi_config;

procedure spi_init;
function spi_transfer(data: byte): byte;
procedure spi_transmit(data: byte);

implementation

{$if declared(USE_SPI_SOFTWARE) AND (USE_SPI_SOFTWARE=1)}
uses
  delay;

procedure spi_init;
begin
  SPI_DDR := SPI_DDR or (1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN);
  SPI_PORT := SPI_PORT and not((1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN));
end;

function spi_transfer(data: byte): byte;
var
  i: byte;
begin
  result := 0;
  for i := 0 to 7 do
  begin
    if (data and (1 shl 7) > 0) then
      SPI_PORT := SPI_PORT or (1 shl SPI_MOSI_PIN)
    else
      SPI_PORT := SPI_PORT and not(1 shl SPI_MOSI_PIN);

    data := data shl 1;

    SPI_PORT := SPI_PORT and not(1 shl SPI_CLK_PIN);
    result := result shl 1;
    if (SPI_PORT and (1 shl SPI_MISO_PIN) > 0) then
      result := result and 1;
    //delay_us(1);
    SPI_PORT := SPI_PORT or (1 shl SPI_CLK_PIN);
  end;
end;

procedure spi_transmit(data: byte);
var
  i: byte;
begin
  for i := 0 to 7 do
  begin
    if (data and (1 shl 7) > 0) then
      SPI_PORT := SPI_PORT or (1 shl SPI_MOSI_PIN)
    else
      SPI_PORT := SPI_PORT and not(1 shl SPI_MOSI_PIN);

    data := data shl 1;

    SPI_PORT := SPI_PORT and not(1 shl SPI_CLK_PIN);
    delay_us(1);
    SPI_PORT := SPI_PORT or (1 shl SPI_CLK_PIN);
  end;
end;

{$elseif}
{ Keep in mind the following note about SS pin in Master mode (ATmega 328P manual p. 18.3.2:

When the SPI is configured as a Master (MSTR in SPCR is set), the user can determine the
direction of the SS pin.

If SS is configured as an output, the pin is a general output pin which does not affect the SPI
system. Typically, the pin will be driving the SS pin of the SPI Slave.

If SS is configured as an input, it must be held high to ensure Master SPI operation. If the SS pin
is driven low by peripheral circuitry when the SPI is configured as a Master with the SS pin
defined as an input, the SPI system interprets this as another master selecting the SPI as a
slave and starting to send data to it. To avoid bus contention, the SPI system takes the following
actions:
1. The MSTR bit in SPCR is cleared and the SPI system becomes a Slave. As a result of
the SPI becoming a Slave, the MOSI and SCK pins become inputs.
2. The SPIF Flag in SPSR is set, and if the SPI interrupt is enabled, and the I-bit in SREG is
set, the interrupt routine will be executed.

Thus, when interrupt-driven SPI transmission is used in Master mode, and there exists a possi-
bility that SS is driven low, the interrupt should always check that the MSTR bit is still set. If the
MSTR bit has been cleared by a slave select, it must be set by the user to re-enable SPI Master
mode.}

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
{$EndIf}


end.

