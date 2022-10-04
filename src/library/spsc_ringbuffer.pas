unit spsc_ringbuffer;

{

  Single Producer Single Consumer (SPSC) Ring Buffer .

  See examples\ringbuffer_test for usage

}

{$mode objfpc}
{$macro on}
{$inline on}

interface

// Use Byte for indexing if the buffer is <=255
{$define SPSC_PTRUINT := Byte}

// Use Word for indexing if the buffer is <= 16383
//{$define SPSC_PTRUINT := Word}

type

  TSPSCRingBuffer = packed record
    FBuffer: pbyte;
    FBufferSize, FReadIndex, FWriteIndex: uint8;
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

function SPSC_IsEmpty(constref ARingBuffer: TSPSCRingBuffer): boolean;
begin
  Result := ARingBuffer.FReadIndex = ARingBuffer.FWriteIndex;
end;

function SPSC_IsFull(constref ARingBuffer: TSPSCRingBuffer): boolean;
begin
  Result := SPSC_Size(ARingBuffer) = ARingBuffer.FBufferSize - 1;
end;

// See : https://forum.lazarus.freepascal.org/index.php/topic,59796.msg446453.html#msg446453
function SPSC_Size(constref ARingBuffer: TSPSCRingBuffer): SPSC_PTRUINT;
begin
{$PUSH}
{$Q-}
{$R-}
  Result := SPSC_MaskIndex(ARingBuffer, ARingBuffer.FWriteIndex -
    ARingBuffer.FReadIndex);
{$POP}
end;

function SPSC_ReadByte(out ARingBuffer: TSPSCRingBuffer): byte;
begin
  Result := ARingBuffer.FBuffer[SPSC_MaskIndex(ARingBuffer,
    ARingBuffer.FReadIndex)];
{$PUSH}
{$Q-}
  Inc(ARingBuffer.FReadIndex);
{$POP}
end;

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
