program uart1;

// Simple uart echo example,
// written for Arduino Uno board LED

uses
  uart;

const
  baud = 115200;
  LEDPin = 1 shl 5;

var
  c: byte;
  {$ifdef CPUAVRXMEGA3}
  LEDport: byte absolute VPORTF.OUT_;
  LEDdir: byte absolute VPORTF.DIR;
  {$else}
  LEDport: byte absolute PORTB;
  LEDdir: byte absolute DDRB;
  {$endif}

procedure LEDtoggle; inline;
begin
  LEDport := LEDport xor LEDpin;
end;

begin
  // Switch LED pin to output
  LEDdir := LEDPin;
  uart_init1(BAUD, true);

  uart_transmit('Starting up...'#13);

  repeat
    c := uart_receive();    // blocking
    LEDtoggle;
    uart_transmit(c);
  until false;
end.

