program mpu6050test;

uses
  uart, i2c, mpu6050, intrinsics, integermath;

var
  myI2C_master: TI2CMaster;
  mpu: TMPU;
  dataReady: boolean;
  // With 64 kHz tick, a byte will overflow after 64 * 255 = 16.3 ms
  now: word = 0;

const
  BAUD_Rate = 500000;
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU * 64 + 8 *BAUD_Rate) div (16 * BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}

procedure ErrorHandler(ErrNo : Longint; Address : CodePointer; Frame : Pointer);
begin
  uart_transmit('ERROR: ');
  uart_transmit(ErrNo);
end;

procedure configureInt0PinRise;
begin
  // Configure Int0 on PD2
  DDRD := DDRD and not(1 shl 2);
  EICRA := (3 shl ISC0); // rising edge on int0
  EIMSK := 1; // enable INT0
end;

procedure Int0; interrupt; public alias: 'INT0_ISR';
begin
  dataReady := true;
end;

procedure configureTimer0_100_us_tick;
begin
  TCCR0A := (2 shl WGM0); // CTC mode, top is given by OCRA0
  TCCR0B := 2 shl CS0;  // Timer enabled, /8 prescaling
  OCR0A := 200; // 16000000 / 250 = 64 kHz tick
  TIMSK0 := 1 shl OCIE0A; // interrupt when TOP is hit
end;

procedure configureTimer0_1_ms_tick;
begin
  TCCR0A := (2 shl WGM0); // CTC mode, top is given by OCRA0
  TCCR0B := 3 shl CS0;  // Timer enabled, /64 prescaling
  OCR0A := 250; // 16000000 / 250 = 64 kHz tick
  TIMSK0 := 1 shl OCIE0A; // interrupt when TOP is hit
end;

procedure OCR0A_ISR; interrupt; public alias: 'TIMER0_COMPA_ISR';
begin
  inc(now);
end;

procedure outputData1(constref data: TDataRecord);
begin
  uart_transmit('ax = '); uart_transmit_asstring(data.ax); uart_transmit(10);
  uart_transmit('ay = '); uart_transmit_asstring(data.ay); uart_transmit(10);
  uart_transmit('az = '); uart_transmit_asstring(data.az); uart_transmit(10);
  uart_transmit('gx = '); uart_transmit_asstring(data.gx); uart_transmit(10);
  uart_transmit('gy = '); uart_transmit_asstring(data.gy); uart_transmit(10);
  uart_transmit('gz = '); uart_transmit_asstring(data.gz); uart_transmit(10);
  //uart_transmit('T = '); uart_transmit_asstring((data.t div 340) + 37); uart_transmit(10);
  uart_transmit(10);
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

procedure outputData2(constref data: TDataRecord);
var
  p, r, mag: int32;
begin
  uart_transmit_asstring(data.ax); uart_transmit(',');
  uart_transmit_asstring(data.ay); uart_transmit(',');
  uart_transmit_asstring(data.az); uart_transmit(10);

  mag := magnituteEstimate(data.ay, data.az);
  p := atan2(data.ax, mag);
  mag := magnituteEstimate(data.ax, data.az);
  r := atan2(data.ay, mag);

  uart_transmit('P='); uart_transmit_asstring(byte(p)); uart_transmit(', R=');
  uart_transmit_asstring(byte(r)); uart_transmit(10);
end;

procedure doMPUInit;
begin
  mpu.Initialize(myI2C_master);
  mpu.setAccelOffsets(-676, -42, 1914);
  mpu.setGyroOffsets(25, 5, -3);
  // MPU digital low pass filter set to ~ 20 kHz, signal delay ~ 8.5 ms
  mpu.setDLPFMode(MPUDLPF4);

  // Above setting set gyro rate at 1 kHz
  // Next setting sets sample rate as f_gyro/(1+value)
  // Make it 500 Hz
  mpu.setSampleRate(1);
  // Set interrupt when data registers have been updated
  mpu.setIntEnabled(1 shl MPU6050_INTERRUPT_DATA_RDY_BIT);
end;

var
  ax, ay, az: int16;
  data, avgData: TDataRecord;
  mpuIntStatus, count: byte;
  y: int16 = 0;
  p: int16 = 0;
  r: int32 = 0;
  old_time, dt: word;
  newtime: word;
  i2cresetcount: byte = 0;

const
  // Full scale ranges (defaults)
  gyroFS = 250; // deg/s
  accelFS = 2;  // G

begin
  // Set PB5 as output,  toggle in loop to measure timing
  DDRB := 1 shl 5;
  PORTB := 1 shl 5;
  uart.uart_init(BAUD_SETTING);
  myI2C_master.init(I2C_100kHz);
  doMPUInit;
  configureTimer0_100_us_tick;
  configureInt0PinRise;

  dataReady := false;
  avr_sei;  // enable interrupts
  old_time := now;

  repeat
    if dataReady then
    begin
      dataReady := false;
      mpuIntStatus := mpu.getIntStatus;
      if mpu.i2cOK then
      begin
        if ((mpuIntStatus and (1 shl MPU6050_INTERRUPT_DATA_RDY_BIT)) <> 0) then
        begin
          // toggle
          PINB := 1 shl 5;

          avr_cli;
          newtime := now;
          avr_sei;
          dt := newtime - old_time;
          old_time := newtime;
          //if mpu.getData(data) then
          if mpu.getAccelData(data.ax, data.ay, data.az) then
          begin
            //uart_transmit('dt: ');
            uart_transmit_asstring(dt);
            uart_transmit(10);
            outputData2(data);
            //y := y + dt * data.gz;  // 10 us x 250 deg/s     gz => 32767 - -32768
            //r := r + data.gx * dt;
            //uart_transmit('r: ');  uart_transmit(' ');
            //uart_transmit_hex(dword(r)); uart_transmit(' ');
            //uart_transmit_asstring(r);
            //uart_transmit(10);
          end
          else
            uart_transmit('Error reading data'#10);
        end
        else
        begin
          uart_transmit('Unexpected interrupt source: ');
          uart_transmit_asstring(mpuIntStatus);
          uart_transmit(10);
        end;
      end;
    end;

    if not mpu.i2cOK then
    begin
      inc(i2cresetcount);
      // Clear I2C bus
      uart_transmit('Clearing I2C bus');
      uart_transmit(10);
      if not myI2C_master.clearStalledBus then
        uart_transmit('Failed clearing I2C bus'#10);

      //mpu.i2cOK := myI2C_master.start($68 shl 1, true);
      //mpu.i2cOK := myI2C_master.stop;
      if not mpu.i2cOK and (i2cresetcount > 2) then
      begin
        mpu.i2cOK := true;
        i2cresetcount := 0;
        uart_transmit('InitMPU'#10);
        doMPUInit;
      end
      else
        mpu.i2cOK := true;
    end;
  until false;
end.

// avrdude -p atmega328p -P /dev/ttyACM0 -c arduino -Uflash:w:mpu6050test_dmp.hex:i

