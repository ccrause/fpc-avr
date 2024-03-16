program blink;

const
  LEDmask = 1 shl 0; // PB0 is connected to OC0A

// Note: default CPU clock is internal 8 MHz oscillator with div 8 prescaler

begin
  DDRB := LEDmask;  // Set PB0 to output
  // Configure Timer0 for mode 4 CTC, top = OCR0A
  // clock prescaler = 64, 1000000/64 = 15625 Hz
  // WGM mode 4, div 64
  TCCR0A := (1 shl COM0A);
  TCCR0B := (1 shl 3) or (3 shl CS0);
  OCR0A := 7813;

  repeat until false;
end.

// avrdude -p t10 -c usbasp -U flash:w:blink.hex:i
//
// USBASP connections
//  ICSP        attiny10        ICSP
//                 __
//  MOSI ---- PB0 |o | RST ---- RST
//  GND  ---- GND |  | Vcc ---- Vcc
//  SCK  ---- PB1 |__| PB2
//

