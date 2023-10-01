program uart1;

// Simple uart echo example,
// written for Arduino Uno board LED

uses
  uart;

const
  baud = 9600;
  PB5 = 1 shl 5;

var
  c: byte;
  pinport: byte absolute PORTB;
  pindir: byte absolute DDRB;

begin
  uart_init1(BAUD, true);
  pindir := PB5;

  uart_transmit('Starting up...'#13);

  repeat
    c := uart_receive();    // blocking
    pinport := pinport XOR PB5; // toggle LED
    uart_transmit(c);
  until false;
end.

