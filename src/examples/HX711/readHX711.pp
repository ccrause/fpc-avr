program readHX711;

{$PackEnum 1}
{$inline on}

uses
  intrinsics, delay, uart;

type
  TConvSetting = (csChannelAGain128=0, csChannelBGain32, csChannelAGain64);

var
  HX711Port: byte absolute PORTB;
  HX711Dir: byte absolute DDRB;
  HX711Pins: byte absolute PINB;

const
  DOpinMask  = 1 shl 0;  // PortB pin 0 pin mask
  SCKpinMask = 1 shl 1;  // PortB pin 1 pin mask

procedure initHX711;
begin
  // Set SCK and DO to input
  HX711Dir := (HX711Dir or SCKpinMask) and not (DOpinMask);
  // Pull SCK low and disable pullup on DO
  HX711Port := HX711Port and not (SCKpinMask or DOpinMask);
end;

procedure Min200nsDelay; inline;
begin
  avr_nop;
  {$if F_CPU > 2000000}avr_nop;{$endif}
  {$if F_CPU > 4000000}avr_nop;{$endif}
  {$if F_CPU > 8000000}avr_nop;{$endif}
  {$if F_CPU > 16000000}avr_nop;{$endif}
end;

function readByteHX711: byte;
var
  i: byte;
begin
  Result := 0;
  for i := 0 to 7 do
  begin
    HX711Port := HX711Port or SCKpinMask;
    Result := Result shl 1;
    Min200nsDelay;
    HX711Port := HX711Port and not SCKpinMask;
    if (HX711Pins and DOpinMask) <> 0 then
      Result := Result or 1;
    Min200nsDelay
  end;
end;

function readValue(nextConvSetting: TConvSetting): int32;
type
  TInt32ByteRecord = packed record
    b0, b1, b2, b3: byte;
  end;
var
  retries, i: byte;
begin
  retries := 0;
  repeat
    inc(retries);
  until ((HX711Pins and DOpinMask) = 0) or (retries = 0);
  if retries = 0 then
  begin
    uart_transmit('TIMEOUT waiting for DO to go low before read.');
    exit(0);
  end;

  // Data arrives MSB first
  TInt32ByteRecord(Result).b2 := readByteHX711;
  TInt32ByteRecord(Result).b1 := readByteHX711;
  TInt32ByteRecord(Result).b0 := readByteHX711;

  // Now bang out the next conversion setting
  for i := 0 to ord(nextConvSetting) do
  begin
    HX711Port := HX711Port or SCKpinMask;
    Min200nsDelay;
    HX711Port := HX711Port and not SCKpinMask;
    Min200nsDelay;
  end;

  // Check that DO pin is high here
  if (HX711Pins and DOpinMask) = 0 then
    uart_transmit('ERROR: DO pin is LOW after read is finished.'#10);

  // Perform sign extension from 24 bit => 32 bit
  if TInt32ByteRecord(Result).b2 > 128 then
    TInt32ByteRecord(Result).b3 := $FF
  else
    TInt32ByteRecord(Result).b3 := 0;
end;

var
  val: int32;

begin
  uart_init1(115200, true);
  uart_transmit('initHX711'#10);
  initHX711;

  while True do
  begin
    val := readValue(csChannelAGain128);
    uart_transmit('Value = ');
    uart_transmit_asstring(val);
    uart_transmit(10);
    delay_ms(500);
  end;
end.

