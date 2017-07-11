program intmathtest;

uses
  integermath;

var
  a8, b8: byte;

begin
  a8 := 250;
  b8 := 0;

  b8 := fpc_div_byte(a8, b8);
  repeat until false;
end.

