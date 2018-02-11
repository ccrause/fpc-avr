program test;
type
  TUINT16record = packed record
    l:byte;
    h:byte;
  end;

{$IFDEF CPUAVR}
procedure delayloop(const counter: uint16); assembler;
asm
  mov XH, TUINT16record(counter).h
end;

procedure delayloop2(const counter: TUINT16record); assembler;
asm
  mov XH, counter.h
end;

{$endif}
var
  a: TUINT16record;

begin
  a.l := 1;
  a.h := 0;
  delayloop2(a);
end.
