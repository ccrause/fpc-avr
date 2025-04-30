unit onewireunit;

interface

{$include onewire_config.inc}

type
  TRomArray = array[0..7] of byte;
  PRomArray = ^TRomArray;

  { ToneWire }

  ToneWire = object
  private const
    owRomRead = $33;
    owMatchRom = $55;
    owReadPowerSupply = $B4;
    owSkipRom = $CC;
    owAlarmSearch = $EC;
    owSearchRom = $F0;
  private
    LastDiscrepancy, LastFamilyDiscrepancy: byte;
    LastDeviceFlag: boolean;
  public
    function reset: boolean;
    procedure writeBit(state: boolean);
    procedure writeByte(data: byte);
    function readBit: boolean;
    procedure readByte(out data: byte);
    function crc8(data: PByte; len: byte): byte;

    // ROM commands - any command should start with reset
    function select(const pAddress: PRomArray): boolean;  // If pAddress is nil, skipROM else matchROM
    function readROM(const pAddress: PRomArray): boolean;
    function readBusPowered(const pAddress: PRomArray): boolean;
    // Search algorithm adapted from:
    // https://www.analog.com/en/resources/app-notes/1wire-search-algorithm.html
    // https://github.com/PaulStoffregen/OneWire/blob/master/OneWire.cpp
    procedure initSearch;
    function search(const newAddress: PRomArray): boolean;
  end;

implementation

uses
  delay;

function ToneWire.reset: boolean;
var
  counter: byte;
begin
  // Ensure bus is floating high
  dataDDR := dataDDR and not(1 shl oneWirePin);
  dataPort := dataPort and not(1 shl oneWirePin);
  counter := 128;
  repeat
    Result := (dataPINs and (1 shl oneWirePin)) > 0;
    dec(counter);
  until Result or (counter = 0);

  // If bus is floating high, proceed with reset sequence
  if Result then
  begin
    // Set data pin low for > 480 us
    dataDDR := dataDDR or (1 shl oneWirePin);
    dataPort := dataPort and not(1 shl oneWirePin);
    delay_us(500);

    // Release bus
    dataDDR := dataDDR and not(1 shl oneWirePin);
    dataPort := dataPort and not(1 shl oneWirePin);
    // Wait 15 - 60 us, then read presence signal (60 - 240 us).
    // Guaranteed presence signal valid between 60 - 75 us
    delay_us(67);

    Result := dataPINs and (1 shl oneWirePin) = 0;
    delay_us(413);
  end;
end;

procedure ToneWire.writeBit(state: boolean);
begin
  if state then
  begin
    dataPort := dataPort and not(1 shl oneWirePin);
    dataDDR := dataDDR or (1 shl oneWirePin);
    delay_us(10);
    dataPort := dataPort or (1 shl oneWirePin);
    delay_us(55);
  end
  else
  begin
    dataPort := dataPort and not(1 shl oneWirePin);
    dataDDR := dataDDR or (1 shl oneWirePin);
    delay_us(65);
    dataPort := dataPort or (1 shl oneWirePin);
    delay_us(5);
  end;
end;

procedure ToneWire.writeByte(data: byte);
var
  loop: byte;
begin
  loop := 8;

  while loop > 0 do
  begin
    writeBit(data and 1 = 1);
    data := data shr 1;
    dec(loop);
  end;

  // Tristate pin
  dataDDR := dataDDR and not(1 shl oneWirePin);
  dataPort := dataPort and not(1 shl oneWirePin);
end;

function ToneWire.readBit(): boolean;
begin
  dataDDR := dataDDR or (1 shl oneWirePin);
  dataPort := dataPort and not(1 shl oneWirePin);
  delay_us(2);
  dataDDR := dataDDR and not(1 shl oneWirePin);
  delay_us(10);
  if (dataPINs and (1 shl oneWirePin)) > 0 then
    Result := true
  else
    Result := false;
  delay_us(53);
end;

procedure ToneWire.readByte(out data: byte);
var
  loop: byte;
begin
  loop := 8;
  data := 0;

  repeat
    data := data shr 1;
    if readBit then
      data := data or $80;
    dec(loop);
  until loop = 0;
end;

// DOW-CRC using polynomial X^8 + X^5 + X^4 + 1
// Tiny 2x16 entry CRC table created by Arjen Lentz
// See http://lentz.com.au/blog/calculating-crc-with-a-tiny-32-entry-lookup-table
function ToneWire.crc8(data: PByte; len: byte): byte;
const
  dscrc2x16_table: array[0..31] of byte = (
	$00, $5E, $BC, $E2, $61, $3F, $DD, $83,
	$C2, $9C, $7E, $20, $A3, $FD, $1F, $41,
	$00, $9D, $23, $BE, $46, $DB, $65, $F8,
	$8C, $11, $AF, $32, $CA, $57, $E9, $74);

// Compute a Dallas Semiconductor 8 bit CRC. These show up in the ROM
// and e.g. scratchpad.  (Use tiny 2x16 entry CRC table)
begin
  Result := 0;
  while (len > 0) do
  begin
    Result := data^ xor Result;  // just re-using crc as intermediate
    Result := dscrc2x16_table[Result and $0f] xor
           dscrc2x16_table[16 + (Result shr 4) and $0f];
    dec(len);
    inc(data);
  end;
end;

function ToneWire.select(const pAddress: PRomArray): boolean;
var
  i: byte;
begin
  Result := reset;
  if Result then
  begin
    if pAddress = nil then
      writeByte(owSkipRom)
    else
    begin
      writeByte(owMatchRom);
      for i := 0 to high(TRomArray) do
        writeByte(pAddress^[i]);
    end;
  end;
end;

function ToneWire.readROM(const pAddress: PRomArray): boolean;
var
  i: integer;
begin
  Result := reset;
  if Result then
  begin
    writeByte(owRomRead);
    for i := 0 to high(TRomArray) do
      readByte(pAddress^[i]);
    Result := crc8(pointer(pAddress), length(TRomArray)) = 0;
  end;
end;

function ToneWire.readBusPowered(const pAddress: PRomArray): boolean;
begin
  Result := reset;
  if Result then
  begin
    select(pAddress);
    writeByte(owReadPowerSupply);
    Result := not readBit;
  end;
end;

procedure ToneWire.initSearch;
begin
  // reset the search state
  LastDiscrepancy := 0;
  LastDeviceFlag := false;
  LastFamilyDiscrepancy := 0;
end;

function ToneWire.search(const newAddress: PRomArray): boolean;
var
  id_bit_number, last_zero, rom_byte_number: byte;
  id_bit, cmp_id_bit: byte;
  rom_byte_mask, search_direction: byte;
begin
  // initialize for search
  id_bit_number := 1;
  last_zero := 0;
  rom_byte_number := 0;
  rom_byte_mask := 1;
  Result := false;

  // if the last call was not the last one
  if not(LastDeviceFlag) then
  begin
    // 1-Wire reset
    Result := reset;
    if Result then
    begin
      // issue the search command
      writeByte(owSearchRom);

      // loop to do the search
      repeat
        // read a bit and its complement
        if readBit() then
          id_bit := 1
        else
          id_bit := 0;

        if readBit() then
          cmp_id_bit := 1
        else
          cmp_id_bit := 0;

        // check for no devices on 1-wire
        if (id_bit = 1) and (cmp_id_bit = 1) then
          break
        else
        begin
          // all devices coupled have 0 or 1
          if not(id_bit = cmp_id_bit) then
             search_direction := id_bit  // bit write value for search
          else
          begin
            // if this discrepancy is before the Last Discrepancy
            // on a previous next then pick the same as last time
            if (id_bit_number < LastDiscrepancy) then
            begin
              if (newAddress^[rom_byte_number] and rom_byte_mask) > 0 then
                search_direction := 1
              else
               search_direction := 0;
            end
            else
            begin
              // if equal to last pick 1, if not then pick 0
              if id_bit_number = LastDiscrepancy then
                search_direction := 1
              else
                search_direction := 0;
            end;

            // if 0 was picked then record its position in LastZero
            if (search_direction = 0) then
            begin
              last_zero := id_bit_number;
              // check for Last discrepancy in family
              if (last_zero < 9) then
                LastFamilyDiscrepancy := last_zero;
            end;
          end;

          // set or clear the bit in the ROM byte rom_byte_number
          // with mask rom_byte_mask
          if (search_direction = 1) then
            newAddress^[rom_byte_number] := newAddress^[rom_byte_number] or rom_byte_mask
          else
            newAddress^[rom_byte_number] := newAddress^[rom_byte_number] and not rom_byte_mask;

          // serial number search direction write bit
          writeBit(search_direction <> 0);

          // increment the byte counter id_bit_number
          // and shift the mask rom_byte_mask
          inc(id_bit_number);
          rom_byte_mask := rom_byte_mask shl 1;

          // if the mask is 0 then go to new SerialNum byte rom_byte_number and reset mask
          if (rom_byte_mask = 0) then
          begin
            inc(rom_byte_number);
            rom_byte_mask := 1;
          end;
        end;
      until rom_byte_number = length(TRomArray);  // loop until through all ROM bytes 0-7

      // if the search was successful then
      Result := id_bit_number > 64;
      if Result then
      begin
        // search successful so set LastDiscrepancy, LastDeviceFlag
        LastDiscrepancy := last_zero;
        // check for last device
        if (LastDiscrepancy = 0) then
          LastDeviceFlag := true;
      end;
    end;
  end;

  // if no device found then reset counters so next 'search' will be like a first
  if not(Result) or (newAddress^[0] = 0) then
  begin
    LastDiscrepancy := 0;
    LastDeviceFlag := false;
    LastFamilyDiscrepancy := 0;
    Result := false;
  end;
end;

end.

