unit ws2812_bitbang;

{ This WS2812 code is based on the timing analysis of Josh Levine
  https://wp.josh.com/2014/05/13/ws2812-neopixels-are-not-so-finicky-once-you-get-to-know-them/

  Timing values relies on a clock of either 8 or 16 MHz.
  To use this unit, provide a ws2812_config.pas unit that declare LEDpin
  and LEDPort to indicate the output pin.  The main program needs to set the
  LEDPort direction to output. }

interface

// Latch data, ~ 250 us delay
procedure dataLatch;
procedure sendPixel(r, g, b: byte);

implementation

uses
  ws2812_config;

const
  // Remap data space to I/O space
  LEDPort_ = {$ifdef CPUAVRTINY}byte(@LEDPort){$else}byte(@LEDPort - $20){$endif};

// Latch data, ~ 250 us delay while LED pin is low
procedure dataLatch; nostackframe; assembler;
const
  count = ((F_CPU div 1000000) * 250) div 4;
label
  loop;
asm
  ldi r24, lo8(count);
  ldi r25, hi8(count);

  loop:
    subi r24, 1
    sbci r25, 0
    brcc loop
end;

procedure transmitByte(b: byte); nostackframe; assembler;
label
  loopstart, T0H, T1H;
asm
  // 8 MHz, 1 clock = 0.125 us
  // r24 is byte to transmit
  // r25 - bit index mask

  ldi r25, 0x80          // Clock cycles per instruction
  loopstart:
    // MSB first
    lsl r24              // 1
    // Pin high
    sbi LEDPort_, LEDpin // 1
    brcc T0H             // 1 or 2 (branch)
  T1H:
    rjmp .L1             // 2
    .L1:
    rjmp .L2             // 2
    .L2:
  {$if F_CPU = 16000000}
    rjmp .L11            // 2
    .L11:
    rjmp .L12            // 2
    .L12:
  {$endif}
  T0H:
  {$if F_CPU = 16000000}
    rjmp .L13            // 2
    .L13:
  {$endif}
    cbi LEDPort_, LEDpin // 1
    rjmp .L3             // 2
    .L3:
    rjmp .L4             // 2
    .L4:
  {$if F_CPU = 16000000}
    rjmp .L14            // 2
    .L14:
    rjmp .L15            // 2
    .L15:
  {$endif}
    // Done?
    lsr r25              // 1
    brcc loopstart       // 1 or 2 (branch)
end;

procedure sendPixel(r, g, b: byte);
begin
  // The WS2812 sends colour data in the sequence Green-Red-Blue
  transmitByte(g);
  transmitByte(r);
  transmitByte(b);
end;

end.

