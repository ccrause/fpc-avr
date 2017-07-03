program uart1;

uses uart;

var
  c: byte;

begin
  uart_init1(9600, true);

  repeat
    c := uart_receive();
    uart_transmit(ord('#'));
    uart_transmit(c);
    uart_transmit(13);
  until false;
end.

