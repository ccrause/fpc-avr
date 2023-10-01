program i2cslavedemo;

{
  This demo implements a simple I2C slave device.
  On I2C read, a byte sized counter value is returned and the counter is incremented.
  On I2C write, the received data byte is transmitted over UART as a hex string.
}

uses
  uart, i2cslave_unit;

const
  BAUD_Rate = 115200;
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  DeviceAddress = $18 shl 1; // Left adjusted byte address, no response to general call address.

var
  counter: byte;

// Echo each received byte as hex to uart
procedure DataReceivedHandler(data: byte; ACK: boolean);
begin
  uart_transmit(ord('$'));
  uart_transmit_hex(data);
  if not ACK then
    //uart_transmit('A');
  uart_transmit(10);
end;

// Reply to a read request with a single '!' char
procedure DataRequestHandler(out data: byte; out ACK: boolean);
begin
  data := counter;
  uart_transmit('Counter: ');
  uart_transmit_asstring(counter);
  uart_transmit(10);
  ACK := false;
  inc(counter);
end;

procedure ResetHandler;
begin
  uart_transmit('Reset'#10);
end;

begin
  uart.uart_init(BAUD_SETTING);
  uart_transmit('Starting I2C slave @ $');
  uart_transmit_hex(byte(DeviceAddress shr 1));  //
  uart_transmit(#10);

  counter := 0;
  // No reset callback since no state is preserved in implementation
  i2cslave_listen(DeviceAddress, @DataReceivedHandler,
                  @DataRequestHandler, @ResetHandler);  // Do not respond to general call address

  // Endless loop
  repeat until false;
end.
