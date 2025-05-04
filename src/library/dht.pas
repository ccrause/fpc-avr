unit dht;

{ Interfaces with DHT11/21/22 and compatible (AM2301/2, HM2301/3)
  humidity and temperature sensors communicating with a custom
  1 wire protocol.

  The port and pin connected to the DHT data pin needs to be specified in an
  application provided dht_config.inc file.

  This library uses timer1 to measure bit durations during the read process.
  Therefore any previous timer1 functionality is suspended during a call to one
  of the DHT read procedures and restored at the end of the call.

  Interrupts are disabled during sensitive timing measurements. }

interface

type
  TDHTResult = (DHT_OK, DHT_CHECKSUM, DHT_TIMEOUT);
  TDHTtype = (DHT_Unknown, DHT_11, DHT_22);

// Reads the ensor and guess sensor model to convert from raw data to readings
function DHTRead(out humidity: word; out temperature: int16): TDHTtype;
// Read and identify sensor based on interpretation of return data
function DHTidentify: TDHTtype;

// Call these functions if the type of sensor is known
function DHT11Read(out humidity: byte; out temperature: byte): TDHTResult;
function DHT22Read(out humidity: word; out temperature: int16): TDHTResult;

// Global data array
var
  data: array[0..4] of byte;

implementation

uses
  delay, intrinsics;

{$include dht_config.inc}
{$define PinMask := (1 shl dhtPin)}

  // Timeout settings
{$if (F_CPU >= 8000000)}
  {$define TicksFor_48us_Timeout  := ((F_CPU*48) div 1000000) shr 3}
  {$define TicksFor_100us_Timeout := ((F_CPU*100) div 1000000) shr 3}
  {$define TicksFor_140us_Timeout := ((F_CPU*140) div 1000000) shr 3}
{$else}
  {$if (F_CPU >= 1000000)}
    {$define TicksFor_48us_Timeout  := (F_CPU*48) div 1000000}
    {$define TicksFor_100us_Timeout := (F_CPU*100) div 1000000}
    {$define TicksFor_140us_Timeout := (F_CPU*140) div 1000000}
    {$else}
    {$error F_CPU too low for accurate timing calculations}
  {$endif}
{$endif}

{ Communication protocol for DHT 1 wire:
  Data line should idle high. This means a pullup resistor required. This code
  enables the internal pullup resistor, but an external pullup with a lower
  resistance (~ 4 - 10 kOhm) may be required for better noise immunity.
  1. Controller initiates communication by pulling pin low for 0.8 - 18 ms
  2. Controller drives pin high for short period (optional, ~20 us)
  3. Controller switch pin mode to input
  4. Wait for sensor to pull pin low (typically within 40 us)
  5. Sensor keeps pin low for ~ 80 us
  6. Sensor pulls pin high for 80 us.  Data transmission now starts:
  7a A bit starts with 50 us low then a high. The length of the high signal
     determines the bit:
  7b 26 - 28 us = 0
     70 us = 1
  8. The data is transmmitted as big endian, 40 bits total, as follows:
     HH: Humidity high byte
     HL: Humidity low byte
     TH: Temperature high bute
     TL: Temperature low byte
     CS: checksum byte

  For DHT11 the low bytes are always 0, HH is humidity in % and TH is temperature in degC
  For other sensors, The high and low bytes give the humidity and temperature x10

  Communication time ~ 20000 + 40 + 80 + 80 + 40*(50 + (27 + 70)/2)
                     = 24140 us on average (range = 23280 to 25000)
}

{$ifdef CPUAVRXMEGA3}
{$if (F_CPU >= 8000000)}
  {$define PRESCALE_MASK := TTCA_SINGLE.SINGLE_CLKSEL_DIV8 or TTCA_SINGLE.ENABLEbm}  // 1/8 prescaler
{$else}
  {$if (F_CPU >= 1000000)}
    {$define PRESCALE_MASK := TTCA_SINGLE.SINGLE_CLKSEL_DIV1 or TTCA_SINGLE.ENABLEbm}  // 1/8 prescaler
    {$else}
    {$error F_CPU too low for accurate timing calculations}
  {$endif}
{$endif}

function DHT_read_sensor: TDHTResult;
var
  cnt: byte = 7;
  idx: byte = 0;
  i, checksum: byte;

  // Variables used to save state of modified registers
  SREG, _CTRLA, _CTRLB, _CTRLD, _INTCTRL: byte;
begin
  for i := 0 to length(data)-1 do
    data[i] := 0;

  pinControl := TPort.PULLUPENbm;       // Enable pullup
  VPORT.DIR := VPORT.DIR or pinMask;    // Enable output on pin
  VPort.OUT_ := VPort.OUT_ or pinMask;  // Drive pin high

  // Save timer settings
  _INTCTRL := timerCA.INTCTRL;
  _CTRLD := timerCA.CTRLD;
  _CTRLB := timerCA.CTRLB;
  _CTRLA := timerCA.CTRLA;

  // Configure and start timer
  timerCA.INTCTRL := 0;
  timerCA.CTRLD := 0;
  timerCA.CTRLB := 0;
  timerCA.CTRLA := PRESCALE_MASK;

  // Initiate sample request
  // 1. Pull pin low
  VPort.OUT_ := VPort.OUT_ and not(pinMask);
  delay_ms(20);  // >18 ms for DHT11, >0.8 ms for AM2302
  // 2. Pull pin high
  VPort.OUT_ := VPort.OUT_ or pinMask;
  delay_us(20);  // Drive data line high 20 - 200 us

  // Save current interrupt status
  SREG := avr_save;

  // 3. Switch pin to input
  VPORT.DIR := VPORT.DIR and not(pinMask);  // Pin now input

  // 4. Wait until sensor pulls data low
  timerCA.CNT := 0;
  while (VPORT.IN_ and pinMask = pinMask) do
    if timerCA.CNT >= TicksFor_140us_Timeout then
      exit(DHT_TIMEOUT);

  // 5. Wait for sensor acknowledge = pin low for ~ 80 us
  timerCA.CNT:= 0;
  while (VPORT.IN_ and pinMask = 0) do
    if timerCA.CNT >= TicksFor_140uS_Timeout then
      exit(DHT_TIMEOUT);

  // 6. Second part of ACK: high for 80 us
  timerCA.CNT := 0;
  while (VPORT.IN_ and pinMask = pinMask) do
    if timerCA.CNT >= TicksFor_140uS_Timeout then
      exit(DHT_TIMEOUT);

  // 8. Read 5 data output bytes => 40 pairs of low + high levels
  for i := 0 to 39 do
  begin
    data[idx] := data[idx] shl 1;
    timerCA.CNT := 0;
    // 7a Start of bit indicated by low for 50us,
    while (VPORT.IN_ and pinMask = 0) do
      if timerCA.CNT >= TicksFor_100uS_Timeout then
        exit(DHT_TIMEOUT);

    timerCA.CNT := 0;
    // 7b Max high time is 70 us
    while (VPORT.IN_ and pinMask = pinMask) do
      if timerCA.CNT >= TicksFor_140uS_Timeout then
        exit(DHT_TIMEOUT);

    // Use cutoff time halfway between time for "0" and "1"
    if timerCA.CNT > TicksFor_48us_Timeout then
      data[idx] := data[idx] or 1;

    if cnt = 0 then // next byte
    begin
      cnt := 7;    // restart bit counter
      inc(idx);    // move to next data byte
    end
    else
      dec(cnt);
  end;

  CPU.SREG := SREG; // Restore previous interrupt status
  // Restore previous state of timer
  timerCA.INTCTRL := _INTCTRL;
  timerCA.CTRLD   := _CTRLD;
  timerCA.CTRLB   := _CTRLB;
  timerCA.CTRLA   := _CTRLA;

  checksum := data[0]+ data[1] + data[2]+ data[3];
  if (data[4] <> checksum) then
    Result := DHT_CHECKSUM
  else
    Result := DHT_OK;
end;

{$else CPUAVRXMEGA3}

{$if (F_CPU >= 8000000)}
  {$define TCCR1B_MASK := (2 shl CS1)}  // 1/8 prescaler
{$else}
  {$if (F_CPU >= 1000000)}
    {$define TCCR1B_MASK := (1 shl CS1)}  // 1 prescaler
    {$else}
    {$error F_CPU too low for accurate timing calculations}
  {$endif}
{$endif}

function DHT_read_sensor: TDHTResult;
var
  cnt: byte = 7;
  idx: byte = 0;
  i, checksum: byte;

  // Variables used to save state of modified registers
  SREG, _TCCR1A, _TCCR1B, _TIMSK: byte;
  {$if declared(TCCR1C)}_TCCR1C: byte;{$endif}
  {$if declared(SFIOR)}_SFIOR: byte;{$endif}
begin
  {$if declared(SFIOR)}
  _SFIOR := SFIOR;
  // Ensure PUD (pullup disabled) is cleared
  SFIOR := 0;
  {$endif}

  for i := 0 to length(data)-1 do
    data[i] := 0;

  // Set pin to output high
  dataDDR := dataDDR or pinMask;
  dataPORT := dataPORT or pinMask;

  // Save timer settings
  _TCCR1A := TCCR1A;
  _TCCR1B := TCCR1B;
  {$if declared (TCCR1C)}
  _TCCR1C := TCCR1C;
  {$endif}

  // Start timer
  TCCR1A := 0;
  TCCR1B := TCCR1B_MASK;
  {$if declared (TCCR1C)}
  TCCR1C := 0;
  {$endif}
  TCNT1 := 0;

  // Disable input capture, timer overflow interrupts
  {$if declared(TIMSK)}
  _TIMSK := TIMSK;
  TIMSK := TIMSK and not((1 shl TICIE1) or (1 shl TOIE1));
  {$else}
  _TIMSK := TIMSK1;
  TIMSK1 := TIMSK1 and not((1 shl ICIE1) or (1 shl TOIE1));
  {$endif}
  SREG := avr_save; // Save current interrupt status and disable interrupts

  // Initiate sample request
  // 1. Pull pin low
  dataPORT := dataPORT and not(pinMask);
  delay_ms(20);  // >18 ms from DHT11 datasheet, >0.8 ms for AM2302

  // 2. Pull pin high
  dataPORT := dataPORT or pinMask;
  delay_us(20);  // Drive data line high 20 - 200 us

  // 3. Switch pin to input mode
  dataDDR := dataDDR and not(pinMask);  // Pin now input with pullup enabled

  // 4. Wait until sensor pulls data low
  TCNT1 := 0;
  while (dataPIN and pinMask > 0) do
    if TCNT1 >= TicksFor_140us_Timeout then
      exit(DHT_TIMEOUT);

  // 5. Wait for acknowledge = pin low for ~ 80 us
  TCNT1 := 0;
  while (dataPIN and pinMask = 0) do
    if TCNT1 >= TicksFor_140uS_Timeout then
      exit(DHT_TIMEOUT);

  // 6. Second part of ACK: high for 80 us
  TCNT1 := 0;
  while (dataPIN and pinMask > 0) do
    if TCNT1 >= TicksFor_140uS_Timeout then
      exit(DHT_TIMEOUT);

  // 8. Read 5 data output bytes => 40 pairs of low + high levels
  for i := 0 to 39 do
  begin
    data[idx] := data[idx] shl 1;
    // 7a Start of bit indicated by low for 50us,
    TCNT1 := 0;
    while (dataPIN and pinMask = 0) do
      if TCNT1 >= TicksFor_100uS_Timeout then
        exit(DHT_TIMEOUT);

    // 7b Max high time is 70 us
    TCNT1 := 0;
    while (dataPIN and pinMask > 0) do
      if TCNT1 >= TicksFor_140uS_Timeout then
        exit(DHT_TIMEOUT);
    // Use cutoff time halfway between time for "0" and "1"
    if TCNT1 > TicksFor_48us_Timeout then
      data[idx] := data[idx] or 1;

    if cnt = 0 then // next byte
    begin
      cnt := 7;    // restart bit counter
      inc(idx);    // move to next data byte
    end
    else
      dec(cnt);
  end;

  avr_restore(SREG); // Restore previous interrupt status
  // Restore previous state of timer1
  TCCR1A := _TCCR1A;
  TCCR1B := _TCCR1B;
  {$if declared(TIMSK)}
  TIMSK := _TIMSK;
  {$else}
  TIMSK1 := _TIMSK;
  {$endif}
  {$if declared(TCCR1C)}
  TCCR1C := _TCCR1C;
  {$endif}
  {$if declared(SFIOR)}
  SFIOR := _SFIOR;
  {$endif}

  checksum := data[0]+ data[1] + data[2]+ data[3];
  if (data[4] <> checksum) then
    Result := DHT_CHECKSUM
  else
    Result := DHT_OK;
end;
{$endif CPUAVRXMEGA3}

function DHTRead(out humidity: word; out temperature: int16): TDHTtype;
begin
  Result := DHTidentify;
  if Result = DHT_11 then
  begin
    humidity := data[0];
    temperature := data[2];
  end
  else if Result = DHT_22 then
  begin
    humidity := (word(data[0]) shl 8) or data[1];

    // Negative value?
    if data[2] >= $80 then
      temperature := -1 * (((word(data[2]) and $7F) shl 8) or data[3])
    else
      temperature := (word(data[2]) shl 8) or data[3];
  end
  else
  begin
    humidity := 0;
    temperature := 0;
  end
end;

function DHT11Read(out humidity: byte; out temperature: byte): TDHTResult;
begin
  Result := DHT_read_sensor;
  if Result = DHT_OK then
  begin
    humidity := data[0];
    temperature := data[2];
  end
  else
  begin
    humidity := 0;
    temperature := 0;
  end
end;

function DHT22Read(out humidity: word; out temperature: int16): TDHTResult;
begin
  Result := DHT_read_sensor;
  if Result = DHT_OK then
  begin
    humidity := (word(data[0]) shl 8) or data[1];

    // Negative value?
    if data[2] >= $80 then
      temperature := -1 * (((word(data[2]) and $7F) shl 8) or data[3])
    else
      temperature := (word(data[2]) shl 8) or data[3];
  end
  else
  begin
    humidity := 0;
    temperature := 0;
  end
end;

function DHTidentify: TDHTtype;
var
  r: TDHTResult;
begin
  r := DHT_read_sensor;
  if not (r = DHT_OK) then
    exit(DHT_Unknown);

  // Cannot distinguish between DHT11 values of 0/1/2/3 & DHT21/22 values of 0.0/25.6/51.2/76.8
  // Chance of hitting these for DHT11 is (4/100)^2 = 16/10000
  // Chance of hitting these for DHT21/22 is (4/1000)^2 = 16/1000000
  // So chance that a DHT22 is mistaken for a DHT11 is 1000/1000000 = 0.1%
  if (data[1] = 0) and (data[3] = 0) and // any decimal part means not DHT11
     (data[2] and $80 = 0) then         // high bit of T means negative value, not DHT11
    Result := DHT_11
  else
    Result := DHT_22;
end;

end.

