program intmathtest;

uses
  integermath;

var
  a,b,c,d: dword;

begin
  a := 115200;
  b := F_CPU + 8*a;
  c := b shr 4;
  d := fpc_div_dword(c, a);
  repeat until false;
end.

