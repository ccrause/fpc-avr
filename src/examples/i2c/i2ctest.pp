program i2ctest;

uses
  uart, i2c, delay, simplemath;

var
  i2c_master: TI2CMaster;
  c: char;

const
  DS1307 = $68 shl 1;
  BAUD_Rate = 115200;
  // For x2 mode
  {$ifdef CPUAVRXMEGA3}
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
  {$else}
  BAUD_SETTING = (((F_CPU + 4*BAUD_Rate) shr 3) div BAUD_Rate) - 1;
  {$endif}

  EOL = #13#10;
  sErr = 'ERROR'+EOL;

// Start clock if high bit of seconds is set
function setDS1307ClockState(const running: boolean): boolean;
var
  s: byte;
begin
  result := false;
  if not i2c_master.ReadByteFromReg(DS1307, 0, s) then exit;

  if running then
  begin
    if (s and $80) = $80 then
    begin
      // Clear high bit
      s := s and $7F;
      i2c_master.WriteByteToReg(DS1307, 0, s);
    end;
  end
  else
  begin
    if (s and $80) = 0 then
    begin
      // Set high bit
      s := s or $80;
      if not i2c_master.WriteByteToReg(DS1307, 0, s) then exit;
    end;
  end;

  result := true;
end;

// Use compiled date & time to initialize RTC
// Also enable clock
function initializeDateTime: boolean;
var
  t: array[0..6] of byte;
  d, r: byte;
begin
  // Numbers are stored as BCD, so two digits per byte
  d := {$include %timesecond%};
  divmod10(d, r);
  t[0] := (d shl 4) or r; // autmatically start clock running
  d := {$include %timeminute%};
  divmod10(d, r);
  t[1] := (d shl 4) or r;
  d := {$include %timehour%};
  divmod10(d, r);
  t[2] := (d shl 4) or r; // automatically set hour mode to 24H

  // Day of week
  t[3] := 0;

  d := {$include %dateday%};
  divmod10(d, r);
  t[4] := (d shl 4) or r;
  d := {$include %datemonth%};
  divmod10(d, r);
  t[5] := (d shl 4) or r;
  d := ({$include %dateyear%} mod 100);
  divmod10(d, r);
  t[6] := (d shl 4) or r;

  Result := i2c_master.WriteBytesToReg(DS1307, 0, @t[0], length(t));
end;

function printDS1307DateTime(): boolean;
const
  HexChars: array[0..15] of char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');
var
  t: array[0..6] of byte;
begin
  result := false;
  if not i2c_master.ReadBytesFromReg(DS1307, 0, @t[0], length(t)) then exit;
  result := true;

  // Print years
  uart.uart_transmit(ord(HexChars[t[6] shr 4]));
  uart.uart_transmit(ord(HexChars[t[6] and $0F]));
  uart.uart_transmit(ord('/'));
  // Print months
  uart.uart_transmit(ord(HexChars[t[5] shr 4]));
  uart.uart_transmit(ord(HexChars[t[5] and $0F]));
  uart.uart_transmit(ord('/'));
  // Print days
  uart.uart_transmit(ord(HexChars[t[4] shr 4]));
  uart.uart_transmit(ord(HexChars[t[4] and $0F]));
  uart.uart_transmit(' ');
  // Skip day of week
  // Print hours
  uart.uart_transmit(ord(HexChars[(t[2] shr 4) and $03]));
  uart.uart_transmit(ord(HexChars[t[2] and $0F]));
  uart.uart_transmit(ord(':'));

  // Print minutes
  uart.uart_transmit(ord(HexChars[(t[1] shr 4) and $07]));
  uart.uart_transmit(ord(HexChars[t[1] and $0F]));
  uart.uart_transmit(ord(':'));

  // Print seconds
  uart.uart_transmit(ord(HexChars[(t[0] shr 4) and $07]));
  uart.uart_transmit(ord(HexChars[t[0] and $0F]));
  uart.uart_transmit(EOL);
end;

begin
  uart.uart_init(BAUD_SETTING);
  {$ifdef CPUAVRXMEGA3}
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode
  {$endif}

  uart_transmit('I2C init'+EOL);
  i2c_master.init(I2C_100kHz);

  uart_transmit('Interactive commands:'+EOL);
  uart_transmit('  h - Halt RTC timer'+EOL);
  uart_transmit('  i - Initialize RTC timer'+EOL);
  uart_transmit('  r - Run RTC timer'+EOL);

  repeat
    delay_ms(2000);
    if not printDS1307DateTime() then
    begin
      uart_transmit(sErr);
      uart_Transmit('printDS1307Time'+EOL);
    end;

    if uart_peek(byte(c)) then
    begin
      if c = 'h' then
      begin
        uart_transmit('HALT');
        if setDS1307ClockState(false) then
          uart_transmit(EOL)
        else
          uart_transmit(sErr);
      end
      else if c = 'i' then
      begin
        uart_transmit('INIT');
        if initializeDateTime then
          uart_transmit(EOL)
        else
          uart_transmit(sErr);
      end
      else if c = 'r' then
      begin
        uart_transmit('START');
        if setDS1307ClockState(true) then
          uart_transmit(EOL)
        else
          uart_transmit(sErr);
      end
      else
      begin
        uart_transmit('Ignoring character: ');
        uart_transmit(c);
        uart_transmit(EOL);
      end;
    end;
  until false;
end.

