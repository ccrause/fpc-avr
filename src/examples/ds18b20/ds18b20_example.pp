program ds18b20_example;

{ A demonstration of reading DS18B20 compatible temperature sensors.
  Remember to configure the ports and one wire pin definitions in
  onewire_config.inc.

  The program works as follows:
  1. Scan 1Wire bus and store addresses of devices found, up to a limit of 8.
  2. Issue a general startConvertT command.
  3. Iterate through devices found and read temperature.
  4. Repeat
  }

uses
  uart, delay, ds18b20, simplemath, onewireunit;

const
  BAUD_Rate = 115200;
  // Calculate baud rate setting for x2 mode
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}

var
  ds: TDS18xxx;
  i, j: int8;
  devices: array[0..7] of TRomArray;
  T: int8;
  fracT: uint8;
  res: boolean;

begin
  uart.uart_init(BAUD_SETTING);
  {$ifdef CPUAVRXMEGA3}
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode
  {$endif}

  repeat
    uart_transmit(#10#10'Bus identification:'#10);
    FillByte(devices, SizeOf(devices), 0);
    ds.initSearch();
    i := 0;
    repeat
      res := ds.search(@devices[i]);
      if res then
      begin
        uart_transmit('Device found: ');
        for j := 0 to high(TRomArray) do
        begin
          uart_transmit_hex(devices[i][j]);
          uart_transmit(' ');
        end;
        uart_transmit(#10);
      end
      else
        uart_transmit('No more devices responded'#10);

      inc(i);
    until not res or (i >= length(devices));

    i := 0;
    while (devices[i][0] > 0) and (i < length(devices)) do
    begin
      uart_transmit('Verify ');
      uart_transmit_asstring(i);
      uart_transmit(' : ');
      if ds.verify(@devices[i]) then
        uart_transmit('OK')
      else
        uart_transmit('Er');
      inc(i);
      uart_transmit(#10);
    end;

    uart_transmit('Starting T convertion'#10);
    if ds.startConvertT then
    begin
      i := 0;
      while ds.conversionInProgress do
        delay_ms(delayFor9bitConversion);

      while (devices[i][0] > 0) and (i < length(devices)) do
      begin
        uart_transmit('  Device ');
        uart_transmit_asstring(i);
        uart_transmit(' : ');
        if ds.readTemperature(@devices[i], T, fracT) then
        begin
          uart_transmit_asstring(T);
          uart_transmit('.');
          uart_transmit_asstring(fracT);
          uart_transmit('C');
        end
        else
          uart_transmit('Error');

        inc(i);
        uart_transmit(#10);
      end;
    end
    else
      uart_transmit('Error starting T conversion');

    delay_ms(1000);
  until false;
end.

