program ws2812;

uses
  delay, ws2812_bitbang, ws2812_config;

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
  {$if defined(CPUAVRTINY)}
  CCP := $D8;
  CLKPSR := 0;
  {$elseif defined(CPUAVR25)}
  CLKPR := 1 shl CLKPCE;
  CLKPR := 0;
  {$endif}

  DDRB := 1 shl LEDpin;  // Set PB0 to output

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

