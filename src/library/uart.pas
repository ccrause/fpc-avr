unit uart;

interface
procedure uart_init(const UBRR: word);
procedure uart_init1(const BAUD: dword; const useU2X: boolean = false);

// Blocking functions
procedure uart_transmit(const data: byte);
function uart_receive(): byte;

implementation

uses
  integermath;

procedure uart_init1(const BAUD: dword; const useU2X: boolean = false);
var
  ubrr: word;
begin
  if useU2X then
    ubrr := fpc_div_dword(((F_CPU + 4*BAUD) shr 3), BAUD)
  else
    ubrr := fpc_div_dword(((F_CPU + 8*BAUD) shr 4), BAUD);

  //if useU2X then
  //  ubrr := (((F_CPU + 4*BAUD) shr 3) div BAUD)
  //else
  //  ubrr := (((F_CPU + 8*BAUD) shr 4) div BAUD);

  ubrr := ubrr - 1;

  UBRR0H := ubrr shr 8;
  UBRR0L := byte(ubrr);

  // Enable receiver and transmitter
  UCSR0B := (1 shl RXEN0) or (1 shl TXEN0) or (byte(useU2X) shl U2X0);

  // Set frame format: 8data, 2stop bit, no parity
  UCSR0C := {(1 shl USBS0) or} (3 shl UCSZ0);
end;

procedure uart_init(const UBRR: word);
begin
  UBRR0H := UBRR shr 8;
  UBRR0L := byte(UBRR);

  // Enable receiver and transmitter
  UCSR0B := (1 shl RXEN0) or (1 shl TXEN0);
  // Set frame format: 8data, 2stop bit, no parity
  UCSR0C := {(1 shl USBS0) or} (3 shl UCSZ0);
end;

procedure uart_transmit(const data: byte);
begin
  // Wait for empty transmit buffer
  while ((UCSR0A and (1 shl UDRE0)) = 0) do;

  // Put data into buffer, sends the data
  UDR0 := data;
end;

function uart_receive: byte;
begin
  // Wait for data to be received
  while ((UCSR0A and (1 shl RXC0)) = 0) do;

  // Get and return received data from buffer
  result := UDR0;
end;

end.

