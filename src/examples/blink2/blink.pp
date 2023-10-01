program blink;

uses
  intrinsics;

const
  {$if defined(FPC_MCU_ATMEGA328P)}
  // Assume Uno layout
  LEDpin = 1 shl 5;
  {$elseif defined(FPC_MCU_ATMEGA32U4)}
  // Assume Pro Micro layout
  LEDpin = 1;
  {$elseif defined(FPC_MCU_ATMEGA2560)}
  // Assume Mega layout
  LEDpin = 1 shl 7;
  {$else}
  LEDpin = 1 shl 3;
  {$endif}

  CS00msk = 1 shl 0;
  CS01msk = 1 shl 1;
  CS02msk = 1 shl 2;

  TOIE0msk =
  {$ifdef FPC_MCU_ATTINY45}
   1 shl 1;
  {$else}
  1;
  {$endif}

var
  countsPerSecond: byte;
  LEDport: byte absolute PORTB;
  LEDdir: byte absolute DDRB;
  i: byte = 1;

procedure Timer0Overflow; alias: 'TIMER0_OVF_ISR'; interrupt;
begin
  inc(i);
  if i > countsPerSecond then
  begin
    LEDport := LEDport xor LEDpin;
    i := 0;
  end;
end;

procedure init;
begin
  LEDdir := LEDdir or LEDpin;  // Set pin to output
  LEDport := LEDport or LEDpin; // Set LED high
end;

begin
  init;
  countsPerSecond := (((F_CPU div 1024) + 128) div 256 div 3) ;  // ~1 Hz
  LEDdir := LEDdir or LEDpin;  // Set pin to output
  LEDport := LEDport or LEDpin; // Set LED high

  TCNT0 := 0;
  TCCR0A := 0;
  TCCR0B := CS02msk or CS00msk;  // clock prescaler = 1024
  // enable timer1 overflow interrupt
  {$ifdef FPC_MCU_ATTINY45}
  TIMSK
  {$else} // defaults to atmega328p
  TIMSK0
  {$endif}
  := TOIE0msk;

  avr_sei;
  while True do;
end.

