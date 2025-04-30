{$ifdef CPUAVRXMEGA3}
  // Define the port to which the DHT data pin is connected
  {$define VPORT := VPORTA}
  // Define the pin connected to the DHT data pin
  {$define oneWirePin := 2}
  // Define the pin control register for the DHT data pin
  {$define pinControl := PORTA.PIN2CTRL}

{$else}
  // Define the port to which the oneWire data pin is connected
  {$define dataPORT := PORTB}
  {$define dataDDR  := DDRB}
  {$define dataPINs  := PINB}
  // Define the pin connected to the oneWire data pin
  {$define oneWirePin  := 0}

{$endif}
