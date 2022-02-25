program light_tracker;

uses
  intrinsics;

{$ifndef F_CPU}
  {$error The clock frequencey of the controller is required for basic timer calculations}
  {$error Please specify controller clock frequency: add "-Sm -dF_CPU:=xxxx" to compiler options}
{$endif F_CPU}

{  Front view of sensor
                          /\  180 deg = back
          C | B           ||
          --+--          tilt  90 deg = vertical
          D | A           ||
                          \/    0 deg = front
  0 deg  <-pan-> 180 deg

  Empirically determined PWM settings for tested SG90 servo:
     0 degree =  520 us  (nominally 500 us)
   180 degree = 2440 us  (nominally 2500 us)
  Note: different from the SG90 datasheet 1 - 2 ms range! }

const
  ICRCount20ms = (((F_CPU + 4) div 8) + 25) div 50;
  MaxPos = (ICRCount20ms * 2440) div 20000;
  MinPos = (ICRCount20ms *  520) div 20000;
  MidPos = (MaxPos + MinPos) div 2;
  { Dead band is the threshold below which no adjustment is made.
    This helps to eliminate control jitter when there is a bit
    of noise on the ADC inputs. }
  DeadBand = 16;

procedure ConfigTimer1Mode14;
begin
  ICR1 := ICRCount20ms - 1;
  { Starting position of each servo = 90 degrees. }
  OCR1A := MidPos;
  OCR1B := MidPos;

  { Clear OC1A/B on match, timer mode 14, clock/8. }
  TCCR1A := (2 shl COM1A) or (2 shl COM1B) or (2 shl WGM1);
  TCCR1B := (3 shl 3) or (2 shl CS1);
  { Enable overflow interrupt. }
  TIMSK1 := 1 shl TOIE1;
  { Set PWM Pins as output. }
  DDRA := DDRA or (1 shl 6) or (1 shl 5);
end;

procedure initADC;
begin
  { Vcc as ADC reference. }
  ADMUX := 0;
  { Enable ADC, set divisor to 16.
    For 8 MHz clock, this results in a sample period
    of 8000000/16/13 = 26 us }
  ADCSRA := (1 shl ADEN) or (4 shl ADPS);
  ADCSRB := 0;
  { Disable digital input on ADC pins. }
  DIDR0 := $FF;
end;

function readAdcChannel(const channel: byte): word;
begin
  ADMUX := channel;
  ADCSRA := ADCSRA or (1 shl ADSC);
  while (ADCSRA and (1 shl ADSC)) > 0 do;
  Result := ADC;
end;

procedure ExponentialAverageAdd(var averageValue: int16; const newValue: word);
begin
  averageValue := (averageValue + 3*newValue) div 4;
end;

var
  tilt, pan: int16;

procedure Timer1Overflow; interrupt; alias: 'TIM1_OVF_ISR';
var
  temp: int16;
begin
  temp := OCR1A;
  temp := temp + pan;
  if temp > MaxPos then
    temp := MaxPos
  else if temp < MinPos then
    temp := MinPos;
  OCR1A := temp;

  temp := OCR1B;
  temp := temp + tilt;
  if temp > MaxPos then
    temp := MaxPos
  else if temp < MinPos then
    temp := MinPos;
  OCR1B := temp;
end;

var
  a, b, c, d: int16;

begin
  initADC;
  ConfigTimer1Mode14;
  repeat
    { Update sensor values with a bit of smoothing. }
    ExponentialAverageAdd(a, readAdcChannel(0));
    ExponentialAverageAdd(b, readAdcChannel(1));
    ExponentialAverageAdd(c, readAdcChannel(2));
    ExponentialAverageAdd(d, readAdcChannel(3));

    { Atomically update pan & tilt variables,
      since they are accessed in the timer interrupt. }
    avr_cli;
    pan := ((a + b) - (c + d)) div DeadBand;
    tilt := ((b + c) - (a + d)) div DeadBand;
    avr_sei;
  until false;
end.
