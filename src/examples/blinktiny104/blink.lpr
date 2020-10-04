program blink;

uses
  intrinsics;

// Note: default CPU clock is internal 8 MHz oscillator
// Note: default prescaler is 8, so F_CPU by default = 1 MHz

// To load with mdb:
// sh /opt/microchip/mplabx/v5.25/mplab_platform/bin/mdb.sh
// device attiny104
// set communication.protocol tpi
// hwtool edbg
// cd /home/christo/fpc/fpc-avr/src/examples/blinktiny104
// program blink.elf

const
  LEDpin = 1 shl 5;   // Also output of OC0B
  CS00msk = 1 shl CS00;
  CS01msk = 1 shl CS01;
  CS02msk = 1 shl CS02;
  TOIE0msk = 1 shl TOIE0;
  countsPerSecond = (F_CPU div 65536);  // 15 Hz

var
  LEDport: byte absolute PORTA;
  LEDdir: byte absolute DDRA;
  i: byte = 0;

procedure Timer0Overflow; alias: 'TIM0_OVF_ISR'; interrupt;
begin
  inc(i);
  if i > countsPerSecond then
  begin
    LEDport := LEDport xor LEDpin;
    i := 0;
  end;
end;

begin
  LEDdir := LEDdir or LEDpin;  // Set pin to output

  // Timer interrupt
  TCNT0 := 0;
  TCCR0A := 0;
  TCCR0B := CS00msk;  // clock prescaler = 1
  TIMSK0 := TOIE0msk;
  avr_sei;

  repeat until false;
end.

