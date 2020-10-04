program adctest;

uses
  delay, uart, intrinsics;

const
  BAUD_Rate = 115200;
  BAUD_SETTING = (F_CPU * 64 + 8 *BAUD_Rate) div (16 * BAUD_Rate);

var
  ADCOutsideWindow: boolean = false;

procedure initADC;
begin
  ADC0.CTRLA   := {TADC.RESSEL_8BIT or} TADC.ENABLEbm;                          // 8 bit resolution
  ADC0.CTRLB   := 0;                                                            // no results accumulated
  ADC0.CTRLC   := TADC.SAMPCAPbm or TADC.REFSEL_VDDREF or TADC.PRESC_DIV256;    // Smple cap for "high" V, Vdd, clock div 256
  ADC0.CTRLD   := TADC.INITDLY_DLY32 or TADC.SAMPDLY3bm;                        // Delay before 1st sample, delay between samples
  ADC0.CTRLE   := TADC.WINCM_OUTSIDE;                                           // Window compare mode
  ADC0.WINLT   := 512 - 128;                                                    // for WINCM_ABOVE only the high threhold is needed
  ADC0.WINHT   := 512 + 128;                                                    // for WINCM_ABOVE only the high threhold is needed
  ADC0.INTCTRL := TADC.WCMPbm;                                                  // Enabel interrupt if needed, else check flag (WCOMP in INTFLAGS)
  ADC0.SAMPCTRL := TADC.SAMPLEN4bm;                                             // Increase sample time by 16 clocks
  ADC0.MUXPOS := 0;                                                             // Input = PD0
end;

// Start conversion, wait for result
function DoADCReadingCheckWindowFlag(var WindowCompareFlag: boolean): word;
begin
  ADC0.COMMAND := 1;
  repeat until ADC0.COMMAND <> 1;

  WindowCompareFlag := (ADC0.INTFLAGS and TADC.WCMPbm) = TADC.WCMPbm;
  result := ADC0.RES;
end;

function DoADCReading: word;
begin
  ADC0.COMMAND := 1;
  repeat until ADC0.COMMAND <> 1;
  result := ADC0.RES;
end;

procedure WindowCompareISR; interrupt; public name 'ADC0_WCOMP_ISR';
begin
  if (ADC0.CTRLE = TADC.WINCM_OUTSIDE) then
  begin
    ADCOutsideWindow := true;
    ADC0.CTRLE := TADC.WINCM_INSIDE;  // Interrupt if ADC moves back into window
    PORTF.OUTCLR := Pin5bm;           // LED on
  end
  else
  begin
    ADCOutsideWindow := false;
    ADC0.CTRLE := TADC.WINCM_OUTSIDE; // Interrupt if ADC moves outide window
    PORTF.OUTSET := Pin5bm;           // LED off
  end;
  ADC0.INTFLAGS := TADC.WCMPbm;       // Clear interrupt flag
end;

procedure SendHex(b: byte);
var
  tmp: byte;
begin
  tmp := b shr 4;
  if tmp < 10 then
    uart_transmit(tmp + Ord('0'))
  else
    uart_transmit(tmp - 10 + Ord('A'));

  tmp := b and $0F;
  if tmp < 10 then
    uart_transmit(tmp + Ord('0'))
  else
    uart_transmit(tmp - 10 + Ord('A'));
end;

procedure SendHex(w: word);
begin
  SendHex(byte(w shr 8));
  SendHex(byte(w and $FF));
end;

procedure SendPChar(s: PChar);
begin
  while s^ <> #0 do
  begin
    uart_transmit(ord(s^));
    inc(s);
  end;
end;

var
  val: word;
  WindowCompareFlag: boolean;
  idleCount: byte = 0;

begin
  uart_init(BAUD_SETTING);
  SendPChar('Started...'#10);
  initADC;
  avr_sei;
  SendPChar('initADC'#10);
  VPORTF.dir := VPORTF.dir or Pin5bm;    // PF5 = output enabled
  VPORTF.OUT_ := VPORTF.OUT_ or Pin5bm;  // PF5 = high
  repeat
    inc(idleCount);
    val := DoADCReading;
    if idleCount > 100 then
    begin
      idleCount := 0;
      SendPChar('Result = $');
      SendHex(val);
      if ADCOutsideWindow then
        SendPChar(' X');
      SendPChar(#10);
    end;

    delay_ms(5);
  until false;
end.

