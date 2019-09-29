program blink4809;

uses delay, simavrinfo;

begin
  PORTF.DIRSET := 1 shl 5;
  PORTF.OUT_ := 1 shl 5;
  while True do
  begin
     PORTF.OUTTGL := 1 shl 5;
     delay_ms(100);    // delay 0.1 second
  end;
end.

