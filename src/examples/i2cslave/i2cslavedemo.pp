program i2cslavedemo;

{ This demo implements a simple I2C slave device.
  On I2C read, a byte sized counter value is returned and the counter is incremented.
  On I2C write, the received data byte is copied to the counter value.
  If DEBUGPRINT is defined, some diagnostics are printed. }

{$define DEBUGPRINT}

uses
  uart, i2cslave_unit, delay;

const
  BAUD_Rate = 115200;
  {$ifdef CPUAVRXMEGA3}
  // Baud setting for x2 mode
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}
  DeviceAddress = $18 shl 1; // Left adjusted byte address, no response to general call address.

var
  counter, c: byte;

// Set current counter value to received byte
procedure DataReceivedHandler(data: byte; ACK: boolean);
begin
  {$ifdef DEBUGPRINT}
  uart_transmit(ord('R'));
  uart_transmit_hex(data);
  if ACK then
    uart_transmit('ack')
  else
    uart_transmit('nack');
  uart_transmit(10);
  {$endif DEBUGPRINT}

  counter := data;
end;

// Reply with current counter value, then increment counter
procedure DataRequestHandler(out data: byte; out ACK: boolean);
begin
  data := counter;
  inc(counter);
  // Can supply more data
  ACK := true;

  {$ifdef DEBUGPRINT}
  uart_transmit(ord('T'));
  uart_transmit_hex(data);
  uart_transmit(10);
  {$endif DEBUGPRINT}
end;

procedure ResetHandler;
begin
  // Nothing to do for this example
  {$ifdef DEBUGPRINT}
  uart_transmit('Reset'#10);
  {$endif DEBUGPRINT}
end;

begin
  uart_init(BAUD_SETTING);
  {$ifdef CPUAVRXMEGA3}
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode
  {$endif}

  uart_transmit('Starting I2C slave @ $');
  uart_transmit_hex(byte(DeviceAddress shr 1));  //
  uart_transmit(#10);
  uart_transmit('To reboot controller send a "r" character over serial.'#10#10);
  {$ifdef DEBUGPRINT}
  uart_transmit('Debug message formats:'#10);
  uart_transmit('  R - received byte as hex, followed by ack state'#10);
  uart_transmit('  T - transmitted byte as hex.'#10);
  uart_transmit('  Reset - Reset handler called.'#10);
  {$endif DEBUGPRINT}

  counter := 0;
  i2cslave_listen(DeviceAddress, @DataReceivedHandler, @DataRequestHandler,
                  @ResetHandler);

  repeat
    delay_ms(1000);
    if uart_peek(c) and (c = ord('r')) then
    begin
      uart_transmit(#10'Rebooting'#10);
      {$if declared(CPU)}
      delay_ms(10);
      CPU.CCP := $D8;
      RSTCTRL.SWRR := 1;
      {$elseif declared(WDTCSR)}
      // Enable change bit
      WDTCSR := 1 shl WDCE;
      // System reset mode, 16 ms timeout
      WDTCSR := (1 shl WDE);
      {$else}
        {$error Unknown WDT control register}
      {$endif}
    end;
  until false;
end.

