program blink;

const
  PB5 = 1 shl 5;

var
  pinport: byte absolute byte(@PORTB);
  pindir: byte absolute byte(@DDRB);
  i: byte = 0;

procedure Timer0Overflow; alias: 'TIMER0_OVF_ISR'; interrupt;
begin
  inc(i);
  if i > 61 then  // Interrupt occurs @ 16000000/1024/256 = 61.035...Hz
  begin
    pinport := pinport xor PB5;
    i := 0;
  end;
end;

begin
  pindir := pindir or PB5;  // Set pin to output

  TCCR0A := %00000000;      // Normal mode
  TCCR0B := %00000101;      // CS02, CS00 clock prescaler = 1024
  TIMSK0 := %00000001;      // TOIE0 - trigger interrupt on timer overflow
  asm sei end;              // Enable global interrupts

  while True do;
end.

