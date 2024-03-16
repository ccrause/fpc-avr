{$ifdef CPUAVRXMEGA3}
  // Define the port to which the DHT data pin is connected
  {$define VPORT := VPORTA}
  // Define the pin connected to the DHT data pin
  {$define dhtPin := 2}
  // Define the pin control register for the DHT data pin
  {$define pinControl := PORTA.PIN2CTRL}
  // Define 16 bit timer type A in single mode
  {$define timerCA := TCA0.SINGLE}

{$else}
  // Define the port to which the DHT data pin is connected
  {$define dataPORT := PORTB}
  {$define dataDDR  := DDRB}
  {$define dataPIN  := PINB}
  // Define the pin connected to the DHT data pin
  {$define dhtPin  := 0}

  // Define control registers to 16 bit timer
  {$define TCCRA := TCCR1A}
  {$define TCCRB := TCCR1B}
  {$define TCCRC := TCCR1C}
{$endif}
