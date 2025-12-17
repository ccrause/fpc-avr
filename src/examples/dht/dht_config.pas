unit dht_config;

interface

const
  // Pin connected to the DHT data pin
  dhtPin = 0;

var
{$ifdef CPUAVRXMEGA3}
  // Define the port to which the DHT data pin is connected
  VPORT: TVPORT absolute VPORTA;
  // Define the pin control register for the DHT data pin
  pinControl: byte absolute PORTA.PIN2CTRL;
  // Define 16 bit timer type A in single mode
  timerCA: TTCA_SINGLE absolute TCA0.SINGLE;
{$else}
// Define the port to which the DHT data pin is connected
  dataPORT : byte absolute PORTB;
  dataDDR  : byte absolute DDRB;
  dataPIN  : byte absolute PINB;

  // Define control registers to 16 bit timer
  TCCRA : byte absolute TCCR1A;
  TCCRB : byte absolute TCCR1B;
  {$if declared(TCCR1C)}
  TCCRC : byte absolute TCCR1C;
  {$endif}
{$endif}

implementation

end.

