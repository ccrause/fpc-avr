program test;

type
  TUintRecord = packed record
    l:byte;
    h:byte;
  end;

procedure delayloop2(const counter: word); assembler;
asm
  mov XH, TUintRecord(counter).h
  mov XL, TUintRecord(counter).l
end;

var
  t: word;//TUintRecord;

begin
   //t.l := 1;
   //t.h := 0;
  t := 2;
  delayloop2(t);
end.
