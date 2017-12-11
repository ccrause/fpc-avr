program progmemtest;

const
  _progmem: string[3] = '127'; section '.progmem';

var
  b: byte;
  s: shortstring;

// Only works for addresses inside the 16 bit boundary
// Needs to think about ELPM & RAMPZ to cover larger address space
{$if defined(CPUAVR_HAS_LPMX)} // This also means that movw is available
function read_progmem_byte(constref v: byte): byte;  assembler;  nostackframe;
asm
  movw ZL, r24
  lpm r24, Z
end;

procedure read_progmem_str(constref s: shortstring; var res: ShortString);
var
  len, i: byte;
  c: char;
begin
  len := read_progmem_byte(byte(s[0]));
  res := '';
  for i := 1 to len do
  begin
    c := char(read_progmem_byte(byte(s[i])));
    res := res + c;
  end;
end;

function read_progmem_str_len(constref s: shortstring): byte; assembler; nostackframe;
asm
  movw ZL, r24
  lpm r24, Z
end;
{$endif}

begin
  b := read_progmem_str_len(_progmem);
  if b > 0 then
  read_progmem_str(_progmem, s);
  if ord(s[0]) = b then
    b := 0;
end.
