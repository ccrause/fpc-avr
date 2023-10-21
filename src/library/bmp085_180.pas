unit bmp085_180;

// This unit interfaces with the Bosch BMP085 & BMP180 sensors over I2C.

interface

// Initialize I2C and load calibration constants
// Return false on any error
function bmp_init: boolean;

// Return temperature in decidegrees Celsius, or Celsius*10
// and pressure in Pascal
// This function sets the oversampling parameter to its lowest value (oss = 0)
// to simplify the code a little bit.
function readTP(out T, P: int32): boolean;

// Reads ID of sensor ($55 for BMP085/180)
// Returns false on error
function readID(out ID: byte): boolean;

implementation

uses
  i2c, delay;

type
  TCalibrationConsts = record
    case boolean of
      true: (values: array[0..10] of uint16;);
      false: (AC1, AC2, AC3: int16;
            AC4, AC5, AC6: uint16;
            B1, B2, MB, MC, MD: int16;);
  end;

const
  BMPxxx = $77 shl 1;  // Left adjusted address of BMP085/180 pressure sensor
  BMP_ID_Reg = $D0;

var
  i2c_master: TI2CMaster;
  consts: TCalibrationConsts;

// Initialize I2C and load sensor specific calibration constants
function bmp_init: boolean;
var
  hi, lo, i: byte;
begin
  Result := false;
  i2c_master.init(I2C_100kHz);
  i := 0;
  while i < length(consts.values) do
  begin
    if not i2c_master.ReadByteFromReg(BMPxxx, $AA+i*2, hi) then exit;
    if not i2c_master.ReadByteFromReg(BMPxxx, $AA+i*2+1, lo) then exit;
    consts.values[i] := (uint16(hi) shl 8) or lo;
    inc(i);
  end;
  Result := true;
end;

// Return temperature in decidegrees Celsius, or Celsius*10
// and pressure in Pascal
// This function sets the oversampling parameter to its lowest value (oss = 0)
// to simplify the code a little bit.
function readTP(out T, P: int32): boolean;
var
  UT, UP: int32;
  h, l, xl: byte;
  X1, X2, X3, B3, B5, B6: int32;
  B4, B7: uint32;
begin
  Result := false;

  // Request temperature measurement
  if not i2c_master.WriteByteToReg(BMPxxx, $F4, $2E) then exit;
  delay_ms(5);
  // Read uncompensated temperature
  if not i2c_master.ReadByteFromReg(BMPxxx, $F6, h) then exit;
  if not i2c_master.ReadByteFromReg(BMPxxx, $F7, l) then exit;
  UT := int32((word(h) shl 8) or l);

  X1 := (int32(UT - consts.AC6)*consts.AC5) div (1024*2*16);
  X2 := (int32(consts.MC) shl 11) div (X1 + int32(consts.MD));
  B5 := X1 + X2;
  T := int32(B5 + 8) div 16;

  // Request pressure measurement - oss = 0 (lowest resolution)
  if not i2c_master.WriteByteToReg(BMPxxx, $F4, $34) then exit;
  delay_ms(5);
  if not i2c_master.ReadByteFromReg(BMPxxx, $F6, h) then exit;
  if not i2c_master.ReadByteFromReg(BMPxxx, $F7, l) then exit;
  if not i2c_master.ReadByteFromReg(BMPxxx, $F8, xl) then exit;
  UP := (word(h) shl 8) or l;

  B6 := B5 - 4000;
  X1 := (consts.B2 * ((B6*B6) shr 12)) div 2048;
  X2 := int32(consts.AC2 * B6) div 2048;
  X3 := X1 + X2;
  B3 := ((int32(consts.AC1)*4 + X3) + 2) div 4;  // NB: Excludes shl oss

  X1 := int32(consts.AC3*B6) div (8*1024);
  X2 := (consts.B1 * ((B6*B6) shr 12)) div (256*256);
  X3 := (X1 + X2 + 2) div 4; //shr 2;
  B4 := (consts.AC4 * (uint32(X3) + 32768)) shr 15;
  B7 := (int32(UP) - B3) * 50000 {shr oss};

  if B7 < $80000000 then
    P := (B7*2) div B4
  else
    P := (B7 div B4) * 2;

  X1 := (P shr 8) * (P shr 8);
  X1 := (X1*3038) div (256*256);
  X2 := (-7357 * P) div (256*256);
  P := P + (X1 + X2 + 3791) div 16;
  Result := true;
end;

function readID(out ID: byte): boolean;
begin
  Result := i2c_master.ReadByteFromReg(BMPxxx, BMP_ID_Reg, ID);
end;

end.

