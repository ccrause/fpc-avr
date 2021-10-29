unit spi;

{$PackEnum 1}

interface

uses
  spi_config;

type
  TSpiDataOrder = (SPI_MSB=0, SPI_LSB);
  TSpiMode = (SPI_MODE_0,   // Clock idle low, sample on leading clock edge
              SPI_MODE_1,   // Clock idle high, sample on leading clock edge
              SPI_MODE_2,   // Clock idle low, sample on trailing clock edge
              SPI_MODE_3);  // Clock idle high, sample on trailing clock edge
  TSpiDivisor = (SPI_DIV_2, SPI_DIV_4, SPI_DIV_8, SPI_DIV_16, SPI_DIV_32,
                 SPI_DIV_64, SPI_DIV_128);

procedure spi_init; overload;
procedure spi_init(dataOrder: TSpiDataOrder; mode: TSpiMode; divisor: TSpiDivisor); overload;
function spi_transfer(data: byte): byte;
procedure spi_transmit(data: byte);
procedure enableSPI;
procedure disableSPI;

implementation

{$if declared(USE_SPI_SOFTWARE) and (USE_SPI_SOFTWARE = 1)}
uses
  delay;

var
  _DataOrderMSB: boolean;
  _mode: TSpiMode;

procedure spi_init;
begin
  _DataOrderMSB := true;
  _mode := SPI_MODE_0;
  SPI_DDR := SPI_DDR or (1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN);
  if _mode in [SPI_MODE_0, SPI_MODE_1] then
    SPI_PORT := SPI_PORT and not((1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN))
  else
    SPI_PORT := (SPI_PORT or (1 shl SPI_CLK_PIN)) and not (1 shl SPI_MOSI_PIN);
end;

procedure spi_init(dataOrder: TSpiDataOrder; mode: TSpiMode;
  divisor: TSpiDivisor);
begin
  _DataOrderMSB := dataOrder = SPI_MSB;
  _mode := mode;
  SPI_DDR := SPI_DDR or (1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN);
  if _mode in [SPI_MODE_0, SPI_MODE_1] then
    SPI_PORT := SPI_PORT and not((1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN))
  else
    SPI_PORT := (SPI_PORT or (1 shl SPI_CLK_PIN)) and not (1 shl SPI_MOSI_PIN);
end;

function spi_transfer_mode0_2(data: byte): byte;
var
  i: byte;
begin
  result := 0;
  for i := 0 to 7 do
  begin
    if _DataOrderMSB then
    begin
      if (data and (1 shl 7) > 0) then
        SPI_PORT := SPI_PORT or (1 shl SPI_MOSI_PIN)
      else
        SPI_PORT := SPI_PORT and not(1 shl SPI_MOSI_PIN);
      data := data shl 1;
    end
    else
    begin
      if (data and 1 > 0) then
        SPI_PORT := SPI_PORT or (1 shl SPI_MOSI_PIN)
      else
        SPI_PORT := SPI_PORT and not(1 shl SPI_MOSI_PIN);
      data := data shr 1;
    end;

    if _mode = SPI_MODE_2 then
      SPI_PORT := SPI_PORT and not(1 shl SPI_CLK_PIN)
    else
      SPI_PORT := SPI_PORT or (1 shl SPI_CLK_PIN);

    if _DataOrderMSB then
      result := result shl 1
    else
      result := result shr 1;

    if (SPI_PIN and (1 shl SPI_MISO_PIN) > 0) then
      if _DataOrderMSB then
        result := result or 1
      else
        result := result or $80;

    if _mode = SPI_MODE_2 then
      SPI_PORT := SPI_PORT or (1 shl SPI_CLK_PIN)
    else
      SPI_PORT := SPI_PORT and not(1 shl SPI_CLK_PIN);
  end;
end;

function spi_transfer_mode1_3(data: byte): byte;
var
  i: byte;
begin
  result := 0;
  for i := 0 to 7 do
  begin
    if _mode = SPI_MODE_3 then
      SPI_PORT := SPI_PORT and not(1 shl SPI_CLK_PIN)
    else
      SPI_PORT := SPI_PORT or (1 shl SPI_CLK_PIN);

    if _DataOrderMSB then
    begin
      if (data and (1 shl 7) > 0) then
        SPI_PORT := SPI_PORT or (1 shl SPI_MOSI_PIN)
      else
        SPI_PORT := SPI_PORT and not(1 shl SPI_MOSI_PIN);
      data := data shl 1;
    end
    else
    begin
      if (data and 1 > 0) then
        SPI_PORT := SPI_PORT or (1 shl SPI_MOSI_PIN)
      else
        SPI_PORT := SPI_PORT and not(1 shl SPI_MOSI_PIN);
      data := data shr 1;
    end;

    if _DataOrderMSB then
      result := result shl 1
    else
      result := result shr 1;

    if _mode = SPI_MODE_3 then
      SPI_PORT := SPI_PORT or (1 shl SPI_CLK_PIN)
    else
      SPI_PORT := SPI_PORT and not(1 shl SPI_CLK_PIN);

    if (SPI_PIN and (1 shl SPI_MISO_PIN) > 0) then
      if _DataOrderMSB then
        result := result or 1
      else
        result := result or $80;
  end;
end;

function spi_transfer(data: byte): byte;
begin
  if _mode in [SPI_MODE_0,SPI_MODE_2] then
    result := spi_transfer_mode0_2(data)
  else
    result := spi_transfer_mode1_3(data);
end;

procedure spi_transmit(data: byte);
begin
  if _mode in [SPI_MODE_0,SPI_MODE_2] then
    spi_transfer_mode0_2(data)
  else
    spi_transfer_mode1_3(data);
end;

procedure enableSPI;
begin
  SPI_DDR := SPI_DDR or (1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN);
  if _mode in [SPI_MODE_0, SPI_MODE_1] then
    SPI_PORT := SPI_PORT and not((1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN))
  else
    SPI_PORT := (SPI_PORT or (1 shl SPI_CLK_PIN)) and not (1 shl SPI_MOSI_PIN);
end;

procedure disableSPI;
begin
  // Nothing to do
end;

{$else}

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

procedure spi_init(dataOrder: TSpiDataOrder; mode: TSpiMode;
  divisor: TSpiDivisor);
var
  config: byte;
begin
  case divisor of
    SPI_DIV_2, SPI_DIV_4  : config := 0;
    SPI_DIV_8, SPI_DIV_16 : config := 1;
    SPI_DIV_32, SPI_DIV_64: config := 2;
    SPI_DIV_128           : config := 3;
  end;
  if divisor in [SPI_DIV_2, SPI_DIV_8, SPI_DIV_32] then
    SPSR := 1
  else
    SPSR := 0;

  SPI_DDR := (SPI_DDR or (1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN)) and not (1 shl SPI_MISO_PIN);
  SPI_PORT := SPI_PORT and not((1 shl SPI_MOSI_PIN) or (1 shl SPI_CLK_PIN));

  // Prescaler = 64 so for F_CPU = 16MHz f_spi = 250 kHz
  case dataOrder of
    SPI_MSB: config := config or (1 shl SPE) or (1 shl MSTR);
    SPI_LSB: config := config or (1 shl SPE) or (1 shl DORD) or (1 shl MSTR);
  end;

  case mode of
    SPI_MODE_0: SPCR := config;
    SPI_MODE_1: SPCR := config or (1 shl CPHA);
    SPI_MODE_2: SPCR := config or (1 shl CPOL);
    SPI_MODE_3: SPCR := config or (1 shl CPOL) or (1 shl CPHA);
  end;
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

procedure enableSPI;
begin
  SPCR := SPCR or (1 shl SPE);
end;

procedure disableSPI;
begin
  SPCR := SPCR and not (1 shl SPE);
end;
{$endif}

end.

