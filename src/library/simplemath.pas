unit simplemath;

// Simple math routines designed to be more compact that general routines for special cases

interface

// Parameter a is value to divide, returns a = a div 10, r = a mod 10
procedure divmod10(var a: byte; out r: byte);
procedure divmod10(var a: word; out r: word);

// Parameter a is value to divide, returns a = a div 10^n, r = a mod 10^n
procedure decimalDivMod(var a: byte; out r: byte; n: byte);
procedure decimalDivMod(var a: word; out r: word; n: byte);

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

end.

