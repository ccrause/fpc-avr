program dht_example;

{ A demonstration of reading a DHT11 or DHT21/22 or compatible humidity and
  temperature sensor (AM2301/2/3, HM2301/3).
  This demonstartion calls the DHTread function which deduces the type of
  sensor based on a heuristic.

  Note that the humidity (%) and temperature (degC) values for DHT11 is
  transmitted as integer values. For the DHT22 it is transmitted as humidity * 10
  and temperatute * 10 to include a single decimal value in the result. }

uses
  uart, delay, dht, simplemath;

const
  BAUD_Rate = 115200;
  // Calculate baud rate setting for x2 mode
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}

var
  humidity: word;
  temperature: int16;
  r: word;
  t: TDHTtype;

begin
  uart.uart_init(BAUD_SETTING);
  {$ifdef CPUAVRXMEGA3}
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode
  {$endif}

  repeat
    t := DHTRead(humidity, temperature);
    if t = DHT_11 then
    begin
      uart.uart_transmit(#10'DHT11:'#10);
      uart_transmit('H = ');
      uart_transmit_asstring(byte(humidity));
      uart_transmit(10);
      uart_transmit('T = ');
      uart_transmit_asstring(byte(temperature));
      uart_transmit(10);
    end
    else if t = DHT_22 then
    begin
      divmod10(humidity, r);
      uart.uart_transmit(#10'DHT22:'#10);
      uart_transmit('H = ');
      uart_transmit_asstring(byte(humidity));
      uart_transmit(ord('.'));
      uart_transmit_asstring(byte(r));
      uart_transmit(10);

      uart_transmit('T = ');
      if temperature < 0 then
      begin
        uart_transmit(ord('-'));
        temperature := abs(temperature);
      end;
      divmod10(word(temperature), r);
      uart_transmit_asstring(byte(temperature));
      uart_transmit(ord('.'));
      uart_transmit_asstring(byte(r));
      uart_transmit(10);
    end
    else
    begin
      uart_transmit('DHT Error');
      uart_transmit(10);
    end;
    delay_ms(2000);
  until false;
end.

