unit spsc_ringbuffer;

{

  Single Producer Single Consumer (SPSC) Ring Buffer .

  A ring buffer which writes and reads, in such a way that
  mutual exclusion is not required (assumes one reader & one writer,
  hence the SPSC name a.k.a Single Producer / Single Consumer).

  It requires that the ring buffer size be a power of two, and the
  size of the buffer needs to smaller than the index SPSC_PTRUINT.
  So an 8 bit index SPSC_PTRUINT supports a ring buffer
  upto ( 1 << 7 ) = 128 but effectively 127 (128 - 1 for masking) entries,
  and a 16 bit index SPSC_PTRUINT supports a ring buffer upto
  ( 1 << 15 ) = 32768 but effectively 32767 (32768 - 1 for masking) entries.

  The basis for these routines came from an article in Jack Ganssle's
  Embedded Muse: http://www.ganssle.com/tem/tem110.pdf

  First you need to define a static array with the size in need.
  The size must be a power of two and it needs to fit in the
  read/write index SPSC_PTRUINT. i.e. if you use an 8 bit index,
  then the maximum supported size would be 128.

  The TSPSCRingBuffer record which holds all the relavent values for
  the ring buffer needs to have 2 fields initialized. The FBuffer field
  which is a PByte to the static array ring buffer and the FBufferSize
  which is the size of the static array ring buffer.

  i.e.

  const
    ReceiveData: array[0..4 - 1] of byte = (0,0,0,0);

    ReceiveBuffer: TSPSCRingBuffer = ( FBuffer: @ReceiveData;
    FBufferSize: High(ReceiveData) + 1; );


  You could then use the SPSC_Write to add a byte to the ring buffer :

  SPSC_Write(ReceiveBuffer, 25);

  And SPSC_Read to retrieve a byte from the ring buffer :

  i := SPSC_Read(ReceiveBuffer);

}

{$mode objfpc}
{$macro on}
{$inline on}

interface

// Use Byte for indexing if the buffer is < 128
{$define SPSC_PTRUINT := Byte}

// Use Word for indexing if the buffer is < 32768
//{$define SPSC_PTRUINT := Word}

type

  TSPSCRingBuffer = packed record
    FBuffer: pbyte;
    FBufferSize, FReadIndex, FWriteIndex: SPSC_PTRUINT;
  end;

function SPSC_IsEmpty(constref ARingBuffer: TSPSCRingBuffer): boolean;
function SPSC_IsFull(constref ARingBuffer: TSPSCRingBuffer): boolean;
function SPSC_Size(constref ARingBuffer: TSPSCRingBuffer): SPSC_PTRUINT;
function SPSC_ReadByte(out ARingBuffer: TSPSCRingBuffer): byte;
procedure SPSC_WriteByte(out ARingBuffer: TSPSCRingBuffer; const AValue: byte);

implementation

function SPSC_MaskIndex(constref ARingBuffer: TSPSCRingBuffer;
  const AValue: SPSC_PTRUINT): SPSC_PTRUINT; inline;
begin
  Result := AValue and (ARingBuffer.FBufferSize - 1);
end;

//
//  Determines if the ring buffer is empty.
//
function SPSC_IsEmpty(constref ARingBuffer: TSPSCRingBuffer): boolean;
begin
  Result := ARingBuffer.FReadIndex = ARingBuffer.FWriteIndex;
end;

//
//  Determines if the ring buffer is full.
//
function SPSC_IsFull(constref ARingBuffer: TSPSCRingBuffer): boolean;
begin
  Result := SPSC_Size(ARingBuffer) = ARingBuffer.FBufferSize - 1;
end;

//
//
//  Returns the number of elements which are currently
//  contained in the ring buffer.
//
// See : https://forum.lazarus.freepascal.org/index.php/topic,59796.msg446453.html#msg446453
//
function SPSC_Size(constref ARingBuffer: TSPSCRingBuffer): SPSC_PTRUINT;
begin
{$PUSH}
{$Q-}
{$R-}
  Result := SPSC_MaskIndex(ARingBuffer, ARingBuffer.FWriteIndex -
    ARingBuffer.FReadIndex);
{$POP}
end;

//
//  Retrieves a byte from the beginning of the ring buffer.
//
function SPSC_ReadByte(out ARingBuffer: TSPSCRingBuffer): byte;
begin
  Result := ARingBuffer.FBuffer[SPSC_MaskIndex(ARingBuffer,
    ARingBuffer.FReadIndex)];
{$PUSH}
{$Q-}
  Inc(ARingBuffer.FReadIndex);
{$POP}
end;

//
//  Appends a byte to the end of the ring buffer.
//
procedure SPSC_WriteByte(out ARingBuffer: TSPSCRingBuffer; const AValue: byte);
begin
  ARingBuffer.FBuffer[SPSC_MaskIndex(ARingBuffer, ARingBuffer.FWriteIndex)] :=
    AValue;
{$PUSH}
{$Q-}
  Inc(ARingBuffer.FWriteIndex);
{$POP}
end;

end.
