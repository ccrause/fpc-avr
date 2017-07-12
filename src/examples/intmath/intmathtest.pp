program intmathtest;

uses
  integermath;

var
  a8, b8: byte;
  a16, b16: word;
  a32, b32: dword;

begin
  //a16 := 60000;
  //b16 := 0;
  //
  //b16 := fpc_div_word(a16, b16);
  //
  //a8 := 254;
  //b8 := fpc_div_byte(a8, byte(b16));

  a32 := 323;
  b32 := 7;
  b32 := fpc_div_dword(a32, b32);
  repeat until false;
end.

