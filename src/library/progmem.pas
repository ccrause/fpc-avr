unit progmem;

interface

{$if defined(CPUAVR_HAS_LPMX)}
function progmemByte(const address: pointer): byte;
function progmemChar(const address: pointer): char;
function progmemWord(const address: pointer): word;
function progmemStr(const s: shortstring): shortstring;
{$endif}

implementation
// Only works for addresses inside the 16 bit boundary
// Needs to think about ELPM & RAMPZ to cover larger address space
{$if defined(CPUAVR_HAS_LPMX)} // This also means that movw is available

// Neither movw nor lpm changes SREG
// no need to preserve any registers either
function progmemByte(const address: pointer): byte;  assembler;  nostackframe;
asm
  movw ZL, r24
  lpm r24, Z
end ['r24', 'r25', 'r30', 'r31'];

function progmemChar(const address: pointer): char; inline;
begin
  result := char(progmemByte(address));
end;

function progmemWord(const address: pointer): word; assembler; nostackframe;
asm
  movw ZL, r24
  lpm r24, Z+
  lpm r25, Z
end['r24', 'r25', 'r30', 'r31'];

function progmemStr(const s: shortstring): shortstring;
var
  len, i: byte;
begin
  len := progmemByte(@s[0]);
  setlength(progmemStr, len);
  for i := 1 to len do
    progmemStr[i] := char(progmemByte(@s[i]));
end;

{$endif CPUAVR_HAS_LPMX}
end.

