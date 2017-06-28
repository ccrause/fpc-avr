program intmathtest;

uses integermath;

var
  pinport: byte absolute byte(@PORTB);
  pindir: byte absolute byte(@DDRB);
  x, y, z: dword;
  i: byte = 1;

procedure Timer0Overflow; alias: 'TIMER0_OVF_ISR'; interrupt;
begin
  inc(i);
  if i > 61 then  // Interrupt occurs @ 16000000/1024/256 = 61.035...Hz
  begin
    pinport := pinport xor (1 shl 5);
    i := 0;
  end;
end;

procedure initTimer0; inline;
begin
  pindir := pindir or (1 shl 5);
  TCCR0A := %00000000;      // Normal mode
  TCCR0B := %00000101;      // CS02, CS00 clock prescaler = 1024
  TIMSK0 := %00000001;      // TOIE0 - trigger interrupt on timer overflow
  asm sei end;              // Enable global interrupts
end;

begin
  x := 32000;
  y := 720;
  z := fpc_div_dword(x, y);  // x / y

  //if z = 111 then
  //  initTimer0();

//  z := fpc_div_byte(13, 4);

  repeat until false;
end.

