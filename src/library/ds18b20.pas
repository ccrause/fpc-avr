unit ds18b20;

interface

uses
  onewireunit;

type
  TScratchpadArray = array[0..8] of byte;
  TScratchpadRecord = record
    TL,
    TH,
    TL_alarm,
    TH_alarm,
    config,
    reserved1,
    reserved2,
    reserved3,
    CRC: byte
  end;

  TScratchpad = record
    case boolean of
      false: (arr: TScratchpadArray);
      true : (rec: TScratchpadRecord);
  end;
  PScratchpad = ^TScratchpad;

  { TDS18xxx }

  TDS18xxx = object(ToneWire)
  private const
    dsConvertT = $44;
    dsCopyScratchpad = $48;
    dsWriteScratchpad = $4E;
    dsReadScratchpad = $BE;
    dsRecallEE = $B8;
  public
    // 1Wire functions, should follow ROM commands
    function startConvertT: boolean;
    function readScratchpad(const pAddress: PRomArray; out data: TScratchpad): boolean;
    function writeScratchpad(const pAddress: PRomArray; TH_alarm, TL_alarm, config: byte): boolean;
    function recallEEPROM(const pAddress: PRomArray): boolean;
    function readTemperature(const pAddress: PRomArray; out T: int8; out
      fracT: uint8): boolean;
    function conversionInProgress: boolean;
  end;

const
  delayFor9bitConversion = 94;
  delayFor10bitConversion = 2*delayFor9bitConversion;
  delayFor11bitConversion = 2*delayFor10bitConversion;
  delayFor12bitConversion = 2*delayFor11bitConversion;

implementation

uses
  progmem;

const
  // Should be a local const, but FPC does not allow a section directive there.
  binToDecLookup: array[0..15] of byte =
    (0, 1, 1, 2, 3, 3, 4, 4,
     5, 6, 6, 7, 8, 8, 9, 9); section '.progmem';

{ TDS18xxx }

function TDS18xxx.startConvertT: boolean;
begin
  Result := select(nil);
  if Result then
    writeByte(dsConvertT); // Wait up to 750 ms depending on configured resulotion
end;

function TDS18xxx.readScratchpad(const pAddress: PRomArray; out
  data: TScratchpad): boolean;
var
  i: byte;
begin
  Result := select(pAddress);

  if Result then
  begin
    writeByte(dsReadScratchpad);
    for i := 0 to high(data.arr) do
      readByte(data.arr[i]);

    Result := crc8(@data.arr[0], length(data.arr)) = 0; // returns 0 if CRC is OK
  end;
end;

function TDS18xxx.writeScratchpad(const pAddress: PRomArray; TH_alarm,
  TL_alarm, config: byte): boolean;
begin
  Result := select(pAddress);

  if Result then
  begin
    writeByte(dsWriteScratchpad);
    writeByte(TH_alarm);
    writeByte(TL_alarm);
    writeByte(config);
    writeByte(dsCopyScratchpad); // Save to EEPROM
  end;
end;

function TDS18xxx.recallEEPROM(const pAddress: PRomArray): boolean;
begin
  Result := select(pAddress);
  if Result then
    writeByte(dsRecallEE);
end;

function TDS18xxx.readTemperature(const pAddress: PRomArray; out T: int8; out fracT: uint8): boolean;
var
  data: TScratchpad;
  negative: boolean;
begin
  Result := readScratchpad(pAddress, data);
  if Result then
  begin
    negative := data.rec.TH > 127;
    if negative then
    begin
      data.rec.TL := -data.rec.TL;
      data.rec.TH := -data.rec.TH;
    end;
    fracT := progmemByte(@binToDecLookup[data.rec.TL and $0F]);
    T := (data.rec.TL shr 4) or (data.rec.TH shl 4);  // Range of DS18D20 is -55 to 125, so no loss of significant bits
    if negative then
      T := -T;
  end;
end;

function TDS18xxx.conversionInProgress: boolean;
begin
  Result := not(readBit);
end;

end.

