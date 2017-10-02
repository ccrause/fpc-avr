program uart1;

uses uart, delay{, integermath};

const
  baud = 115200;
  // UseU2X = true
  ub = (((F_CPU + 4*BAUD) shr 3) div BAUD) - 1;
  PB5 = 1 shl 5;

var
  c: byte;
  pinport: byte absolute PORTB;
  pindir: byte absolute DDRB;

begin
  uart_init1(BAUD, false);
  //uart_init(ub);
  pindir := PB5;

  repeat
    c := uart_receive();    // blocking
    pinport := pinport XOR PB5; // toggle LED
    uart_transmit(ord('#'));

    uart_transmit(c);
    uart_transmit(13);
  until false;
end.

