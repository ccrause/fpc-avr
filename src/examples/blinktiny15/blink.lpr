program blink;

uses
  intrinsics;

// Note: default CPU clock is internal 1.6 MHz oscillator
// Note: Timer1 peripheral clock can run up to 16x CPU clock

const
  countsPerSecond = (F_CPU div 1024) div 256;  // 6.1 Hz => 6 counts

procedure Timer0Overflow; alias: 'TIMER0_OVF_ISR'; interrupt;
label
  l1, l2;
begin
  asm
    // Overflow counter i in register r28
    cpi r28, countsPerSecond
    breq l1
    inc r28
    rjmp l2
  l1:
    mov r28, r1                  // i := 0;
  end['r28'];
  PORTB := PORTB xor (1 shl PB3);
  l2:
end;

var
  i: byte;

begin
  DDRB := DDRB or (1 shl PB3);  // Set pin to output
  // Configure Timer0 for overflow interrupt
  TCNT0 := 0;
  TCCR0 := (1 shl CS02) or (1 shl CS00);  // clock prescaler = 1024, overflow = 1600000/1024/256 = 6.1 Hz
  TIMSK := (1 shl TOIE0);
  avr_sei;
end.

