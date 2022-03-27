program mpu6050pantilt;

uses
  i2c, mpu6050, intrinsics, integermath;

const
  // Constants used for PWM to control servo positions
  ICRCount20ms = (((F_CPU + 4) div 8) + 25) div 50; // 40 000
  MaxPos = (ICRCount20ms * 2500) div 20000;
  MinPos = (ICRCount20ms *  500) div 20000;
  MidPos = (MaxPos + MinPos) div 2;
  // 0 deg = MidPos, 90 deg = MaxPos, -90deg = MinPos
  ServoSlope = (MaxPos - MinPos) div 90;

var
  myI2C_master: TI2CMaster;
  mpu: TMPU;
  dataReady: boolean;
  now: word = 0;
  tilt: int16;
  pan: int32 = 0;

procedure configureInt0PinRise;
begin
  // Configure Int0 on PD2
  DDRD := DDRD and not(1 shl 2);
  EICRA := (3 shl ISC0); // rising edge on int0
  EIMSK := 1;            // enable INT0
end;

procedure configureTimer0_100_us_tick;
begin
  TCCR0A := (2 shl WGM0); // CTC mode, top is given by OCRA0
  TCCR0B := 2 shl CS0;    // Timer enabled, /8 prescaling
  OCR0A := 200;           // 16000000 / 250 = 64 kHz tick
  TIMSK0 := 1 shl OCIE0A; // interrupt when TOP is hit
end;

procedure OCR0A_ISR; interrupt; public alias: 'TIMER0_COMPA_ISR';
begin
  inc(now);
end;

procedure ConfigTimer1Mode14;
begin
  ICR1 := ICRCount20ms - 1;
  { Starting position of each servo = 90 degrees. }
  OCR1A := MidPos;
  OCR1B := MidPos;

  { Clear OC1A/B on match, timer mode 14, clock/8. }
  TCCR1A := (2 shl COM1A) or (2 shl COM1B) or (2 shl WGM1);
  TCCR1B := (3 shl 3) or (2 shl CS1);
  { Enable overflow interrupt. }
  TIMSK1 := 1 shl TOIE1;
  { Set PWM Pins as output (PB1 & PB2) }
  DDRB := DDRB or (1 shl 1) or (1 shl 2);
end;

procedure Timer1Overflow; interrupt; alias: 'TIMER1_OVF_ISR';
var
  temp: int16;
begin
  temp := MinPos + tilt*ServoSlope;
  if temp > MaxPos then
    temp := MaxPos
  else if temp < MinPos then
    temp := MinPos;
  OCR1A := temp;

  temp := MidPos + int16(pan div 1000) * (ServoSlope div 2);
  if temp > MaxPos then
    temp := MaxPos
  else if temp < MinPos then
    temp := MinPos;
  OCR1B :=temp;
end;

procedure Int0; interrupt; public alias: 'INT0_ISR';
begin
  dataReady := true;
end;

function atan2(a, b: int16): int16;
var
  d, r: uint32;
begin
  d := uint32(abs(a)) * 55;
  r := uint32(abs(b));
  div_mod_dword(d, r, d, r);

  // Piecewise linear corrections
  if d > 1200 then
   d := 90
  else if d > 311 then
  begin
    div_mod_dword(d, 99, d, r);
    d := d + 78;
  end
  else if d > 95 then
  begin
    div_mod_dword(d, 11, d, r);
    d := d + 53;
  end
  else if d > 30 then
  begin
    div_mod_dword(d, 2, d, r);
    d := d + 16;
  end;

  if ((a > 0) and (b < 0)) or
    ((a < 0) and (b > 0)) then
    result := -d
  else
    result := d;
end;

// See: https://en.wikipedia.org/wiki/Alpha_max_plus_beta_min_algorithm
function magnituteEstimate(a, b: int16): uint16;
var
  min, max: uint16;
begin
  min := abs(a);
  max := abs(b);
  if min > max then
  begin
    result := min;
    min := max;
    max := result;
  end;
  result := max + ((3*min) shr 3);
end;

procedure ExponentialAverageAdd(var averageValue: int16; const newValue: int16);
begin
  averageValue := (3*averageValue + newValue) div 4;
end;

procedure doMPUInit;
begin
  mpu.Initialize(myI2C_master);
  // These offsets are sensor specific
  mpu.setAccelOffsets(-676, -42, 1914);
  mpu.setGyroOffsets(25, 5, -3);
  // MPU digital low pass filter set to ~ 20 kHz, signal delay ~ 8.5 ms
  mpu.setDLPFMode(MPUDLPF4);

  // Above setting set gyro rate at 1 kHz
  // Next setting sets sample rate as f_gyro/(1+value)
  // Make it 100 Hz, so value = 9
  mpu.setSampleRate(9);
  // Set interrupt when data registers have been updated
  mpu.setIntEnabled(1 shl MPU6050_INTERRUPT_DATA_RDY_BIT);
end;

var
  data: TDataRecord;
  mpuIntStatus: byte;
  i2cresetcount: byte = 0;
  old_time: word = 0;
  newtime, dt: word;
  m: int16;

begin
  ConfigTimer1Mode14;
  configureTimer0_100_us_tick;
  myI2C_master.init(I2C_100kHz);
  doMPUInit;
  configureInt0PinRise;
  dataReady := false;
  avr_sei;
  repeat
    if dataReady then
    begin
      avr_cli;
      newtime := now;
      avr_sei;
      dt := newtime - old_time;
      old_time := newtime;

      dataReady := false;
      mpuIntStatus := mpu.getIntStatus;
      if mpu.i2cOK then
      begin
        if ((mpuIntStatus and (1 shl MPU6050_INTERRUPT_DATA_RDY_BIT)) <> 0) then
        begin
          if mpu.getData(data) then
          begin
            pan := pan + data.gz * dt div 655;
            m := magnituteEstimate(data.ay, data.az);
            ExponentialAverageAdd(tilt, atan2(data.ay, m));
          end;
        end;
      end;
    end;

    if not mpu.i2cOK then
    begin
      inc(i2cresetcount);
      myI2C_master.clearStalledBus;

      if not mpu.i2cOK and (i2cresetcount > 2) then
      begin
        mpu.i2cOK := true;
        i2cresetcount := 0;
        doMPUInit;
      end
      else
        mpu.i2cOK := true;
    end;
  until false;
end.

// avrdude -p atmega328p -P /dev/ttyACM0 -c arduino -Uflash:w:mpu6050pantilt.hex:i

