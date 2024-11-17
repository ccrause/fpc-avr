program blink;

uses
  delay;

const
  {$if defined(FPC_MCU_ATMEGA328P) or defined(FPC_MCU_ATTINY104) or defined(FPC_MCU_ATMEGA8)}
  // Assume Uno or attiny104 Xplained Nano layout
  LEDpin = 1 shl 5;
  {$elseif defined(FPC_MCU_ATMEGA32U4)}
  // Assume Leonardo layout
  LEDpin = 1 shl 7;
  {$elseif defined(FPC_MCU_ATMEGA2560)}
  // Assume Mega layout
  LEDpin = 1 shl 7;
  {$else}
  LEDpin = 1 shl 2;
  {$endif}
var
{$if defined(FPC_MCU_ATTINY104)}
  LEDport: byte absolute PORTA;
  LEDdir: byte absolute DDRA;
{$elseif defined(FPC_MCU_ATMEGA32U4)}
  LEDport: byte absolute PORTC;
  LEDdir: byte absolute DDRC;
{$else}
  LEDport: byte absolute PORTB;
  LEDdir: byte absolute DDRB;
{$endif}

procedure blinkOn; inline;
begin
  LEDport := LEDport or LEDpin;
end;

procedure blinkOff; inline;
begin
  LEDport := LEDport and not(LEDpin);
end;

begin
  LEDdir := LEDpin;
  blinkOff;

  while True do
  begin
     blinkOn;
     delay_ms(500);
     blinkOff;
     delay_ms(500);
  end;
end.

