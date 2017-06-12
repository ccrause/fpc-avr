program blink;

uses delay;

const
  PB5 = 1 shl 5;

var
  pinport: byte absolute byte(@PORTB);
  pindir: byte absolute byte(@DDRB);
  i: byte;

begin
  pindir := pindir or PB5;
  while True do
  begin
     pinport := pinport or PB5;  // LED on
     delay_ms(1000);    // delay 1 second

     pinport := pinport and not PB5;  // LED off
     for i := 0 to 19 do       // delay 20 x 50 ms = 1 second
       delay_us(50000);
  end;
end.

