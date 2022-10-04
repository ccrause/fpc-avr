program ringbuffer_test;

{$mode objfpc}
{$macro on}

uses
  progmem, uart,
  spsc_ringbuffer;

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
  ReceiveData: array[0..128 - 1] of byte = (p128);

  ReceiveBuffer: TSPSCRingBuffer = (  FBuffer: @ReceiveData;
                                      FBufferSize: High(ReceiveData) + 1;
                                    );

  SerialMessage: String[21] = 'Free Pascal Rocks !'#13#10; section '.progmem';

var
  i: Byte = 1;

begin

  {$ifndef UART_BaudRate}
    {$define UART_BaudRate := 9600 }
  {$endif UART_BaudRate}
    {$define UART_Prescaler := ((F_CPU div 4) div UART_BaudRate - 1) div 2 }

  UART_Init(UART_Prescaler);
  UART_Transmit(ProgmemStr(SerialMessage));

  while not SPSC_IsFull(ReceiveBuffer) do
  begin
    SPSC_WriteByte(ReceiveBuffer, i);
    Inc(i);
  end;

  while not SPSC_IsEmpty(ReceiveBuffer) do
  begin
    UART_Transmit_AsString(SPSC_ReadByte(ReceiveBuffer));
    UART_Transmit(#13#10);
  end;

end.
