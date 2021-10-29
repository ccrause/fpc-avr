unit simplemath;

// Simple math routines designed to be more compact that general routines for special cases.
// Also avoid runtime errors which add a sizable chunk of overheads.

interface

// Basic Jones's algorithm
// Reference: https://homepage.divms.uiowa.edu/~jones/bcd/divide.html

// Parameter a is value to divide, returns a = a div 10, r = a mod 10
procedure divmod10(var a: byte; out r: byte);
procedure divmod10(var a: word; out r: word);
procedure divmod10(var a: dword; out r: dword);

// Parameter a is value to divide, returns a = a div 10^n, r = a mod 10^n
procedure decimalDivMod(var a: byte; out r: byte; n: byte);
procedure decimalDivMod(var a: word; out r: word; n: byte);
procedure decimalDivMod(var a: dword; out r: dword; n: byte);

// Binary algorithm described on wiki:
// https://en.wikipedia.org/wiki/Integer_square_root#Using_bitwise_operations
// Code ported from:
// https://web.archive.org/web/20120306040058/http://medialab.freaknet.org/martin/src/sqrt/sqrt.c
function integerSqrt(n: uint16): uint16;
function integerSqrt(n: uint32): uint32;

implementation

procedure divmod10(var a: byte; out r: byte);
begin
  r := a;
  a := ((word(a) * word($CD)) shr 11);
  r := r - a*10;
end;

procedure divmod10(var a: word; out r: word);
begin
  r := a;
  a := ((dword(a) * dword($CCCD)) shr 19);
  r := r - a*10;
end;

procedure divmod10(var a: dword; out r: dword);
begin
  r := a;
  a := ((qword(a) * qword($CCCCCCCD)) shr 35);
  r := r - a*10;
end;

procedure decimalDivMod(var a: byte; out r: byte; n: byte);
var
  rr, dd: byte;
begin
  r := a;
  dd := 1;
  while n > 0 do
  begin
    divmod10(a, rr);
    dec(n);
    dd := dd * 10;
  end;
  r := r - a*dd;
end;

procedure decimalDivMod(var a: word; out r: word; n: byte);
var
  rr, dd: word;
begin
  r := a;
  dd := 1;
  while n > 0 do
  begin
    divmod10(a, rr);
    dec(n);
    dd := dd * 10;
  end;
  r := r - a*dd;
end;

procedure decimalDivMod(var a: dword; out r: dword; n: byte);
var
  rr, dd: dword;
begin
  r := a;
  dd := 1;
  while n > 0 do
  begin
    divmod10(a, rr);
    dec(n);
    dd := dd * 10;
  end;
  r := r - a*dd;
end;

function integerSqrt(n: uint16): uint16;
var
  op, one: int16;
begin
  op := n;
  result := 0;

  // "one" starts at the highest power of four <= than the argument.
  one := 1 shl 14;	// second-to-top bit set */
  while (one > op) do
    one := one shr 2;

  while (one <> 0) do
  begin
    if (op >= result + one) then
    begin
      op := op - (result + one);
      result := result +  2 * one;
    end;
    result := result shr 1;
    one := one shr 2;
  end;
end;

function integerSqrt(n: uint32): uint32;
var
  op, one: int32;
begin
  op := n;
  result := 0;

  // "one" starts at the highest power of four <= than the argument.
  one := 1 shl 30;	// second-to-top bit set */
  while (one > op) do
    one := one shr 2;

  while (one <> 0) do
  begin
    if (op >= result + one) then
    begin
      op := op - (result + one);
      result := result +  2 * one;
    end;
    result := result shr 1;
    one := one shr 2;
  end;
end;

end.

