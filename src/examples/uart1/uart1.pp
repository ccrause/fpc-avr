program uart1;

uses uart;

var
  c: byte;

begin
  uart_init(51); // BAUD = F_CPU/(16*UBRR + 1) = 1e6/9 = 111 111 [~ 115200]

  repeat
    c := uart_receive();
    uart_transmit(c);
  until false;
end.

