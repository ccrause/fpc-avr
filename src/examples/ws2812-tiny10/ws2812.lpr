program ws2812;

// The WS2812 code is based on the timing analysis of Josh Levine
// https://wp.josh.com/2014/05/13/ws2812-neopixels-are-not-so-finicky-once-you-get-to-know-them/

uses
  delay;

const
  LEDpin  = 0;
  LEDmask = 1 shl LEDpin;
  // Remap data space to I/O space
  PORTB_ = {$ifdef CPUAVRTINY}byte(@PORTB){$else}byte(@PORTB - $20){$endif};

// Latch data
// Aim for 250 us delay
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
    sbi PORTB_, LEDpin   // 1
    brcc T0H             // 1 or 2 (branch)
  T1H:
    rjmp .L1             // 2
    .L1:
    rjmp .L2             // 2
    .L2:
  T0H:
    cbi PORTB_, LEDpin   // 1
    rjmp .L3             // 2
    .L3:
    rjmp .L4             // 2
    .L4:
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

const
  NumLEDs = 30;
  // colourShift is used to shift the increments to span close to 255
  {$if NumLEDs shr 1 = 0}
  colourShift = 7;
  {$elseif NumLEDs shr 2 = 0}
  colourShift = 6;
  {$elseif NumLEDs shr 3 = 0}
  colourShift = 5;
  {$elseif NumLEDs shr 4 = 0}
  colourShift = 4;
  {$elseif NumLEDs shr 5 = 0}
  colourShift = 3;
  {$elseif NumLEDs shr 6 = 0}
  colourShift = 2;
  {$elseif NumLEDs shr 7 = 0}
  colourShift = 1;
  {$else}
  colourShift = 0;
  {$endif}

var
  i, j, g, r, b: byte;

begin
  // Change clock to internal 8 MHz osc., prescaler 1
  {$ifdef CPUAVRTINY}
  CCP := $D8;
  CLKPSR := 0;
  {$else}
  CLKPR := 1 shl CLKPCE;
  CLKPR := 0;
  {$endif}

  DDRB := LEDmask;  // Set PB0 to output

  repeat
    for i := 0 to NumLEDs do
    begin
      for j := 0 to NumLeds do
      begin
        r := j shl colourShift;
        g := i shl colourShift;
        b := (g + r) shr 1;
        sendPixel(r, g, b);
      end;
      // Slow down transitions else it looks like flickering
      delay_ms(25);
      //dataLatch;
    end;
    for i := NumLEDs downto 0 do
    begin
      for j := NumLeds downto 0 do
      begin
        r := j shl colourShift;
        g := i shl colourShift;
        b := (g + r) shr 1;
        sendPixel(r, g, b);
      end;
      // Slow down transitions else it looks like flickering
      delay_ms(12);
      //dataLatch;
    end;
  until false;
end.

// avrdude -p t10 -c usbasp -U flash:w:ws2812.hex:i
//
// USBASP connections
//  ICSP        attiny10        ICSP
//                 __
//  MOSI ---- PB0 |o | RST ---- RST
//  GND  ---- GND |  | Vcc ---- Vcc
//  SCK  ---- PB1 |__| PB2
//

