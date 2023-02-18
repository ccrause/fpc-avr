program ircapture;

uses
  delay, uart, intrinsics;

const
  // Input capture pin for atmega328p = PB0
  inputPin = 0;
  // Maximum number of pulses to capture.
  // 120 should be plenty, e.g. the NEC protocol consist of a header and 32 data bits, or 66 marks + spaces
  dataLen = 120;
  inputPinMask = 1 shl inputPin;
  // Idle level when no signal is being received
  // IR receiver specific, should only be 0 or 1
  idleLevel = 1;
  startingCaptureEdge = idleLevel xor 1;
  EOL = #13#10;

var
  // Input capture pin for atmega328p = PB0
  inputPort: byte absolute PORTB;
  inputDDR: byte absolute DDRB;
  data: array[0..dataLen-1] of uint16;
  dataIndex: byte;
  processing, timeoutOK: boolean;

procedure InputCapture(); interrupt; alias: 'TIMER1_CAPT_ISR';
begin
  TCNT1 := 0;
  // The first interrupt should only be used to zero the timer counter
  if not(dataIndex = 255) then
    data[dataIndex] := ICR1;
  inc(dataIndex);
  if (dataIndex >= dataLen) then
    processing := false;

  TCCR1B := TCCR1B xor (1 shl ICES1); // toggle bit value to trigger on the other edge
end;

procedure Timer1Overflow(); interrupt; alias: 'TIMER1_OVF_ISR';
begin
  timeoutOK := false;
end;

procedure captureTimings();
var
  i: byte;
begin
  // Clear timer1 settings
  TCCR1A := 0;
  TCCR1B := 0;
  TCCR1C := 0;
  TCNT1 := 0;
  processing := true;
  timeoutOK := true;
  // Clear data
  for i := 0 to dataLen-1 do
    data[i] := 0;

  dataIndex := 255;  // First interrupt is only used to zero timer counter

  // Timer1 configuration
  // Enable input capture and timer overflow interrupts
  TIMSK1 := (1 shl ICIE1) or (1 shl TOIE1);
  TCCR1B := (1 shl ICNC1) or   // Input Capture Noise Canceler
            (startingCaptureEdge shl ICES1) or   // Input capture edge select (0 = falling edge, 1 = rising edge)
            (3 shl CS1);       // prescaler = 64, clock freq = 16000000 / 64 = 250 kHz, or 4 microsecond resolution

  // Wait while data is collected
  while processing and timeoutOK do ;

  // Disable timer1 interrupts
  TIMSK1 := 0;
  TCCR1B := 0;

  // Not enough data captured?
  if (dataIndex < 2) or (dataIndex = 255) then
    exit;

  uart_transmit(EOL);
  uart_transmit('Number of bits captured: ');
  // A "bit" is considered to be a mark + space combination
  // This will include the starting header, which is not really data
  uart_transmit_asstring((dataIndex+1) shr 1);
  uart_transmit(EOL);

  uart_transmit('Pulse timing, usec' + EOL);
  uart_transmit(#9'Mark'#9'Space' + EOL);

  // Note that (for F_CPU=16MHz) a timer tick is 4 microseconds
  for i := 0 to ((dataIndex-1) shr 1) do
  begin
    uart_transmit_asstring(i);
    uart_transmit(#9);
    uart_transmit_asstring(word(data[2*i] shl 2));
    uart_transmit(#9);
    uart_transmit_asstring(word(data[2*i+1] shl 2));
    uart_transmit(EOL);
  end;
end;

begin
  uart_init1(115200, true);
  avr_sei();
  uart_transmit('IR timing capture started.' + EOL);
  uart_transmit('Waiting for signal' + EOL);

  // Configure input pin as input with no pullup
  inputPORT := inputPORT and ($FF - inputPinMask);
  inputDDR := inputDDR and ($FF - inputPinMask);

  // Keep on capturing data on input pin
  repeat
    delay_ms(100);
    captureTimings();
  until false;
end.
