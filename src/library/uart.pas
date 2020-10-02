unit uart;

interface
// Automatically use U2X
procedure uart_init(const UBRR: word);

{$ifndef CPUAVRXMEGA3}
procedure uart_init1(const BAUD: dword; const useU2X: boolean = false);
{$endif}

// Blocking functions
procedure uart_transmit(const data: byte); overload;
procedure uart_transmit_hex(const data: byte);
procedure uart_transmit(const s: shortstring); overload;

procedure uart_transmit_asstring(b: byte); overload;
procedure uart_transmit_asstring(b: int8); overload;
procedure uart_transmit_asstring(b: word); overload;
procedure uart_transmit_asstring(b: int16); overload;

function uart_receive: byte;

implementation

uses
  simplemath;

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

procedure uart_transmit_hex(const data: byte);
var
  n, d: byte; // nibbles 1&2
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

procedure uart_transmit(const s: shortstring);
var
  i: byte;
begin
  for i := 1 to length(s) do
    uart_transmit(ord(s[i]));
end;

procedure uart_transmit_asstring(b: byte);
var
  d, temp: byte;
  skipLeadingZero: boolean;
begin
  if b = 0 then
    uart_transmit(ord('0'))
  else
  begin
    skipLeadingZero := true;
    d := 2;  // 100 = 10^2
    repeat
      temp := b;
      decimalDivMod(temp, b, d);
      if not skipLeadingZero or (temp > 0) then
      begin
        skipLeadingZero := false;
        uart_transmit(temp + ord('0'));
      end;
      dec(d);
      if d = 0 then
        uart_transmit(b + ord('0'));
    until d = 0;
  end;
end;

procedure uart_transmit_asstring(b: int8);
begin
  if b < 0 then
  begin
    b := -b;
    uart_transmit(ord('-'));
  end;
  uart_transmit_asstring(byte(b));
end;

procedure uart_transmit_asstring(b: word);
var
  d, temp: word;
  skipLeadingZero: boolean;
begin
  if b = 0 then
    uart_transmit(ord('0'))
  else
  begin
    skipLeadingZero := true;
    d := 4;  // 10000 = 10^4
    repeat
      temp := b;
      decimalDivMod(temp, b, d);
      if not skipLeadingZero or (temp > 0) then
      begin
        skipLeadingZero := false;
        uart_transmit(temp + ord('0'));
      end;
      dec(d);
      if d = 0 then
        uart_transmit(b + ord('0'));
    until d = 0;
  end;
end;

procedure uart_transmit_asstring(b: int16);
begin
  if b < 0 then
  begin
    b := -b;
    uart_transmit(ord('-'));
  end;
  uart_transmit_asstring(word(b));
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

