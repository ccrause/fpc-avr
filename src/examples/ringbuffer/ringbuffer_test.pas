program ringbuffer_test;

{$mode objfpc}
{$macro on}

uses
  progmem,
  uart,
  spsc_ringbuffer;

//
// The following defines are used in
// ReceiveData constant static array
// initialization to set all byte to zero
//
// Instead of
// ReceiveData: array[0..7] of byte = (0,0,0,0,0,0,0,0)
// you can use
// ReceiveData: array[0..7] of byte = (p8)
//

{$define p1    := 0         }
{$define p2    := p1,p1     }
{$define p4    := p2,p2     }
{$define p8    := p4,p4     }
{$define p16   := p8,p8     }
{$define p32   := p16,p16   }
{$define p64   := p32,p32   }
{$define p128  := p64,p64   }
{$define p256  := p128,p128 }
{$define p512  := p256,p256 }
{$define p1024 := p512,p512 }

const
  // Uart baudrate and prescaler
  // for Serial communication
  UART_BaudRate = 9600;
  UART_Prescaler = ((F_CPU div 4) div UART_BaudRate - 1) div 2;

  //
  // As the TSPSCRingBuffer's FBuffer field is
  // declared as PByte, we must use a static array
  // with the size we want to hold the data.
  //
  // In this example the ReceiveData is such a static array.
  //
  // NOTICE that the size MUST be a power of 2
  //
  // i.e. 2,4,8,15,32,...
  //
  // from which one byte will be used for indexing
  // making the ACTUAL USABLE SIZE TO BE SIZE - 1
  //
  // i.e. an array with 32 bytes can hold 31 byte
  // before starts to overwrite from the beginning
  //

  ReceiveData: array[0..32 - 1] of byte = (p32);

  // The TSPSCRingBuffer record needs :
  //
  // 1) a pointer to a static array for the FBuffer PByte field,
  // 2) the size of the static array for the FBufferSize field
  //
  // Notice that we don't initialize all the record's
  // fields as the compiler  doing that for us.
  //
  // See: https://www.freepascal.org/docs-html/ref/refse24.html#x55-750004.4
  //

  ReceiveBuffer: TSPSCRingBuffer = ( FBuffer: @ReceiveData;
    FBufferSize: High(ReceiveData) + 1; );

  // A ShortString message stored in flash not in SRAM.
  SerialMessage: String[21] = 'Free Pascal Rocks !'#13#10; section '.progmem';

var
  i: byte = 1;

begin

  UART_Init(UART_Prescaler);

  // ProgmemStr return a ShortString
  // stored in flash
  // ( see SerialMessage declaration above )
  UART_Transmit(ProgmemStr(SerialMessage));


  //
  // As this is a ring buffer,
  // if we don't use SPSC_IsFull
  // it will run forever overwriting
  // the buffer over and over again !!!
  // ( or until the i parameter overflows
  //   generating a runerror / exception )
  //
  while not SPSC_IsFull(ReceiveBuffer) do
  begin
    // Writes a byte to ring buffer
    SPSC_WriteByte(ReceiveBuffer, i);

    uart_transmit('Write [ Value: ');
    uart_transmit_asstring(i);
    UART_Transmit(' - Free:');
    uart_transmit_asstring(Length(ReceiveData) - SPSC_Size(ReceiveBuffer) - 1);
    UART_Transmit(' ]'#13#10);
    Inc(i);
  end;

  //
  // As this is a ring buffer,
  // if we don't use SPSC_IsEmpty
  // it will run forever reading
  // the buffer over and over again !!!
  //
  while not SPSC_IsEmpty(ReceiveBuffer) do
  begin
    // Read a byte from ring buffer
    i := SPSC_ReadByte(ReceiveBuffer);

    uart_transmit('Read [ Value: ');
    uart_transmit_asstring(i);
    UART_Transmit(' - Free:');
    uart_transmit_asstring(Length(ReceiveData) - SPSC_Size(ReceiveBuffer) - 1);
    UART_Transmit(' ]'#13#10);
  end;

end.
