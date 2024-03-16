program softserialtest;

uses
  intrinsics, softuart, delay;

var
  c: byte;

begin
  uart_init();
  c := ord('U');
  repeat
    if uart_peek then
    begin
      c := uart_receive;
      // Convert to upper case
      if c in [ord('a')..ord('x')] then
        c := c - 32;
    end;
    uart_transmit(c);

    delay_ms(1000);
  until false;
end.

