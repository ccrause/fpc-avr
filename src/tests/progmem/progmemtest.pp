program progmemtest;

const
  _progmem: string[3] = '127'; section '.progmem';

var
  b: byte;
  s: shortstring;

// Needs to think about ELPM & RAMPZ to cover larger address space
{$if defined(CPUAVR_HAS_LPMX)} // HAS_LPMX also means that movw is available
function read_progmem_byte(constref v: byte): byte;  assembler;  nostackframe;
asm
  movw ZL, r24
  lpm r24, Z
end;

procedure read_progmem_str(constref s: shortstring; var res: ShortString);
var
  len, i: byte;
begin
  len := read_progmem_byte(byte(s[0]));
  setlength(res, len);
  for i := 1 to len do
    res[i] := char(read_progmem_byte(byte(s[i])));
end;
{$endif}

begin
  read_progmem_str(_progmem, s);
  if s[1] = '2' then
    b := 0;
end.
