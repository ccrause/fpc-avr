program blink;

uses delay;

const
  PB5 = 1 shl 5;

var
  pinport: byte absolute byte(@PORTB);
  pindir: byte absolute byte(@DDRB);

begin
  pindir := pindir or PB5;
  while True do
  begin
     pinport := pinport or PB5;  // Start LED on
     delay_ms(1000);
     pinport := pinport and not PB5;
     delay_ms(1000);
  end;
end.

