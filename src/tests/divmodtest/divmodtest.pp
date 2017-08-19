program divmodtest;


var
  successes: byte = 0;

function Test_div_mod_byte: boolean;
const testcount = 255*255 - 127*255;
var
  ans, x, d, rem, temp: byte;
  successes: word = 0;
begin
  // Loop performs 255
  for d := 1 to 255 do
  for x := d to 255 do
  begin
    ans := x div d;
    rem := x mod d;
    temp := d*ans + rem;
    if (temp = x) then
      inc(successes)
  end;

  Result := successes = testcount;
end;

function Test_div_mod_byte_special: boolean;
var
  ans, x, d, rem, temp: byte;
  successes: word = 0;
begin
  d := 1;
  x := 127;
  ans := x div d;
  rem := x mod d;
  if (ans = 127) and (rem = 0) then
    inc(successes);

  d := 0;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 255) and (rem = 0) then
    inc(successes);

  d := 1;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 127;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 7;
  x := 123;
  ans := x div d;
  rem := x mod d;
  if (ans = 17) and (rem = 4) then
    inc(successes);

  Result := successes = 5;
end;

function Test_div_mod_word_special: boolean;
var
  ans, x, d, rem, temp: word;
  successes: dword = 0;
begin
  d := 1;
  x := 127;
  ans := x div d;
  rem := x mod d;
  if ans = 127 then
    inc(successes);

  d := 0;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 65535) and (rem = 0) then
    inc(successes);

  d := 1;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 127;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 7;
  x := 23456;
  ans := x div d;
  rem := x mod d;
  if (ans = 3350) and (rem = 6) then
    inc(successes);

  Result := successes = 5;
end;

function Test_div_mod_dword_special: boolean;
var
  ans, x, d, rem, temp: dword;
  successes: dword = 0;
begin
  d := 1;
  x := 127;
  ans := x div d;
  rem := x mod d;
  if ans = 127 then
    inc(successes);

  d := 0;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 4294967295) and (rem = 0) then
    inc(successes);

  d := 1;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 127;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 127;
  x := 1;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 1) then
    inc(successes);

  d := 7;
  x := 3272356035;
  ans := x div d;
  rem := x mod d;
  if (ans = 467479433) and (rem = 4) then
    inc(successes);

  Result := successes = 6;
end;

function Test_div_mod_qword_special: boolean;
var
  ans, x, d, rem: qword;
  successes: dword = 0;
begin
  d := 1;
  x := 127;
  ans := x div d;
  rem := x mod d;
  if (ans = 127) and (rem = 0) then
    inc(successes);

  d := 0;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 18446744073709551615) and (rem = 0) then
    inc(successes);

  d := 1;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 127;
  x := 0;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 0) then
    inc(successes);

  d := 127;
  x := 1;
  ans := x div d;
  rem := x mod d;
  if (ans = 0) and (rem = 1) then
    inc(successes);

  d := 13;
  x := 714682557999;
  ans := x div d;
  rem := x mod d;
  if (ans = 54975581384) and (rem = 7) then
    inc(successes);

  Result := successes = 6;
end;

begin
  Test_div_mod_byte;
  Test_div_mod_byte_special;
  Test_div_mod_word_special;
  Test_div_mod_dword_special;
  Test_div_mod_qword_special;
  repeat until false;
end.

