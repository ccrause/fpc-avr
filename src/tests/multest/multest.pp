program multest;

var
  successes: byte = 0;

function Test_mul_byte_special_short: boolean;
var
  ans, x, d: byte;
  successes: word = 0;
begin
  d := 13;
  x := 11;
  ans := x * d;
  if (ans = 143) then
    inc(successes);

  Result := successes = 1;
end;

//function Test_mul_word_special_short: boolean;
//var
//  ans, x, d: word;
//  successes: word = 0;
//begin
//  d := 100;
//  x := 160;
//  ans := x * d;
//  if (ans = 16000) then
//    inc(successes);
//
//  Result := successes = 1;
//end;

begin
  Test_mul_byte_special_short;
  //Test_mul_word_special_short;
  repeat until false;
end.
