program readHX711;

{$PackEnum 1}
{$inline on}

{ $define UseSPI}

uses
  intrinsics, delay, uart, spi, spi_config;

type
  TConvSetting = (csInvalid=0, csChannelAGain128, csChannelBGain32, csChannelAGain64);

const
  DOpinMask  = 1 shl SPI_MISO_PIN;  // PortB pin 0 pin mask
  SCKpinMask = 1 shl SPI_CLK_PIN;   // PortB pin 1 pin mask

procedure initHX711;
begin
{$ifdef UseSPI}
  spi_init(SPI_MSB, SPI_MODE_1, SPI_DIV_16);
  SPI_DDR := SPI_DDR or (1 shl 2);  // Set SS as output to prevent accidentally switching off SPI master mode.
  SPI_PORT := SPI_PORT or (1 shl 2);
{$else}
  // Set SCK and DO to input
  SPI_DDR := (SPI_DDR or SCKpinMask) and not (DOpinMask);
  // Pull SCK low and disable pullup on DO
  SPI_PORT := SPI_PORT and not (SCKpinMask or DOpinMask);
{$endif}
end;

procedure Min500nsDelay; inline;
begin
  {$if F_CPU >  1000000}avr_nop; avr_nop;{$endif}
  {$if F_CPU >  2000000}avr_nop; avr_nop;{$endif}
  {$if F_CPU >  4000000}avr_nop; avr_nop;{$endif}
  {$if F_CPU >  8000000}avr_nop; avr_nop;{$endif}
  {$if F_CPU > 16000000}avr_nop; avr_nop;{$endif}
end;

function readByteHX711: byte;
{$ifdef UseSPI}
begin
  // Doesn't matter what data gets sent, there is no a MOSI connection
  Result := spi_transfer(0);
end;
{$else}
var
  i: byte;
begin
  Result := 0;
  for i := 0 to 7 do
  begin
    SPI_PORT := SPI_PORT or SCKpinMask;
    Result := Result shl 1;
    Min500nsDelay;
    SPI_PORT := SPI_PORT and not SCKpinMask;
    if (SPI_PIN and DOpinMask) <> 0 then
      Result := Result or 1;
    Min500nsDelay
  end;
end;
{$endif}

function readValue(nextConvSetting: TConvSetting): int32;
type
  TInt32ByteRecord = packed record
    b0, b1, b2, b3: byte;
  end;
var
  retries: byte;
begin
  {$ifdef UseSPI}enableSPI;{$endif}
  retries := 1;
  while ((SPI_PIN and DOpinMask) <> 0) and (retries > 0) do
  begin
    inc(retries);
    delay_us(100);
  end;

  if retries = 0 then
  begin
    uart_transmit('TIMEOUT waiting for DO to go low before read.');
    exit(0);
  end;

  // Data arrives MSB first
  TInt32ByteRecord(Result).b2 := readByteHX711;
  TInt32ByteRecord(Result).b1 := readByteHX711;
  TInt32ByteRecord(Result).b0 := readByteHX711;

{$ifdef USESPI}
  // Disable SPI peripheral to get control over SCK pin
  disableSPI;
  SPI_DDR := SPI_DDR or SCKpinMask;
{$endif}
  // Now bang out the next conversion setting
  while nextConvSetting > csInvalid do
  begin
    SPI_PORT := SPI_PORT or SCKpinMask;
    Min500nsDelay;
    SPI_PORT := SPI_PORT and not SCKpinMask;
    Min500nsDelay;
    dec(nextConvSetting);
  end;

  // Check that DO pin is high here
  if (SPI_PIN and DOpinMask) = 0 then
    uart_transmit('ERROR: DO pin is LOW after read is finished.'#10);

  // Perform sign extension from 24 bit => 32 bit
  if TInt32ByteRecord(Result).b2 >= 128 then
    TInt32ByteRecord(Result).b3 := $FF
  else
    TInt32ByteRecord(Result).b3 := 0;
end;

procedure resetHX711;
begin
  SPI_PORT := SPI_PORT or SCKpinMask;
  delay_us(100);
  SPI_PORT := SPI_PORT and not SCKpinMask;
  delay_ms(1000);
end;

var
  val: int32;

begin
  uart_init1(115200, true);
  uart_transmit('initHX711'#10);
  initHX711;
  resetHX711;

  while True do
  begin
    val := readValue(csChannelAGain64);
    uart_transmit('Value = ');
    uart_transmit_asstring(val);
    uart_transmit(10);
    delay_ms(500);
  end;
end.

