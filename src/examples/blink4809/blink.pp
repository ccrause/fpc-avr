program blink4809;

uses delay, simavrinfo;

begin
  PORTF.DIRSET := Pin5bm;
  PORTF.OUT_ := Pin5bm;
  while True do
  begin
     PORTF.OUTTGL := Pin5bm;
     delay_ms(100);    // delay 0.1 second
  end;
end.

