program dumpflash;

// Note default CPU clock is 1 MHz

uses dummyunit;

var
  lockbits: byte = $FC; section '.lock';

procedure uart_init_9600;
begin
  UCSRA := 1 shl U2X;
  UCSRB := (1 shl RXEN) or (1 shl TXEN);
  UCSRC := (1 shl UCSZ0) or (1 shl UCSZ1);  // Asynchronous 8-N-1 mode
  UBRR := 12;  // baud of 9600 @ 1 MHz
end;

procedure uart_transmit(const data: byte);
begin
  repeat until (UCSRA and (1 shl UDRE)) <> 0;
  UDR := data;
end;

procedure uart_transmit_hex(const data: byte);
var
  n, d: byte;
begin
  n := data shr 4;
  if n < 10 then
    d := $30 + n
  else
    d := ord('A') + (n - 10);
  uart_transmit(d);

  n := data and $0F;
  if n < 10 then
    d := $30 + n
  else
    d := ord('A') + (n - 10);
  uart_transmit(d);
end;

procedure simpleDelay(count: byte);
var
  i: word;
begin
  while count > 0 do
  begin
    i := 0;
    repeat
      dec(i);
    until i = 0;
    dec(count);
  end;
end;

procedure dumpFlash;
var
  p: pbyte;
begin
  word(p) := $4000;  // Flash memory mapped address
  repeat
    uart_transmit(p^);
    inc(p);
  until word(p) = (FPC_FLASHSIZE + $4000);
end;

procedure dumpLockBits;
var
  p: pbyte;
begin
  word(p) := $3F00;  // Lock byte memory mapped address
  uart_transmit_hex(p^);
  // Pad first row of uart output
  uart_transmit(ord(#00));
  uart_transmit(ord(#00));
  uart_transmit(ord(#00));
  uart_transmit(ord(#00));
  uart_transmit(ord(#00));
end;

begin
  uart_init_9600;
  repeat
    uart_transmit(ord('L'));
    uart_transmit(ord('o'));
    uart_transmit(ord('c'));
    uart_transmit(ord('k'));
    uart_transmit(ord('b'));
    uart_transmit(ord('i'));
    uart_transmit(ord('t'));
    uart_transmit(ord('s'));
    uart_transmit(ord('='));

    dumpLockBits;
    dumpFlash;

    simpleDelay(10);
    dummy; // Needs to be called else the linker will remove the code
  until false;
end.

