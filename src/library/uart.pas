unit uart;

interface
// Automatically use U2X
procedure uart_init(const UBRR: word);

{$ifndef CPUAVRXMEGA3}
procedure uart_init1(const BAUD: dword; const useU2X: boolean = false);
{$endif}

// Blocking functions
procedure uart_transmit(const data: byte);
function uart_receive(): byte;

implementation

{$ifdef CPUAVRXMEGA3}
procedure uart_init(const UBRR: word);
begin
  // RX
  PORTB.DIRCLR := PIN1bm;

  // TX
  PORTB.OUTSET := Pin0bm;
  PORTB.DIRSET := Pin0bm;

  USART3.BAUD := UBRR;
  //USART3.CTRLA := TUSART.RXCIEbm;  // RX is interrupt driven
  USART3.CTRLB := TUSART.RXENbm or TUSART.TXENbm;
end;

// Blocking functions
procedure uart_transmit(const data: byte);
begin
  repeat
  until (USART3.STATUS and TUSART.DREIFbm = TUSART.DREIFbm);
  USART3.TXDATAL := data;
end;

function uart_receive(): byte;
begin
  repeat
  until (USART3.STATUS and TUSART.RXCIFbm = TUSART.RXCIFbm);
  result := USART3.RXDATAL;
end;

{$else}
procedure uart_init1(const BAUD: dword; const useU2X: boolean = false);
var
  ubrr: word;
begin
  if useU2X then
    ubrr := ((F_CPU + 4*BAUD) shr 3) div BAUD
  else
    ubrr := ((F_CPU + 8*BAUD) shr 4) div BAUD;

  UBRR0 := ubrr-1;

  // Set U2X as specified
  UCSR0A := UCSR0A or (byte(useU2X) shl U2X0);

  // Enable receiver and transmitter
  UCSR0B := (1 shl RXEN0) or (1 shl TXEN0);

  // Set frame format: 8data, 1stop bit, no parity
  UCSR0C := (3 shl UCSZ0);
end;

procedure uart_init(const UBRR: word);
begin
  UBRR0H := UBRR shr 8;
  UBRR0L := byte(UBRR);

  // Set U2X bit
  UCSR0A := UCSR0A or (1 shl U2X0);

  // Enable receiver and transmitter
  UCSR0B := (1 shl RXEN0) or (1 shl TXEN0);

  // Set frame format: 8data, 1stop bit, no parity
  UCSR0C := (3 shl UCSZ0);
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
{$endif CPUAVRXMEGA3}

end.

