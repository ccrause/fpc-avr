unit integermath;

interface

// Passed superficial testing
function fpc_div_byte(x, d: byte): byte;
function fpc_div_word(x, d: word): word;
function fpc_div_dword(x, d: dword): dword;

implementation

// Based on restoring division algorithm
// Algorithm source document: Lecture notes by S. Galal and D. Pham, Division algorithms and hardware implementations.
// Link to documentation http://www.seas.ucla.edu/~ingrid/ee213a/lectures/division_presentV2.pdf

// x (dividend) = q(quotient) x d(divisor) + p(remainder)
// x in Ra, d in Rb, 0 in Rp
function fpc_div_byte(x, d: byte): byte; assembler;
label
  zerodivcheck, zerocheck, start, div1, div2, div3, finish;
asm
// Symbol  Name        Register(s)
// x (A)   dividend    R24
// d (B)   divisor     R22
// p (P)   remainder   R20
// n	   counter     R18

  // check for div by 0
zerodivcheck:
  cpi R22, 0
  brne zerocheck
  // d = 0, set result to $FF & exit
  ldi R24, 0xFF
  rjmp finish

  // Check if x = 0
zerocheck:
  cpi R24, 0
  brne start
  // x=0, result = 0 & exit
  clr R24
  rjmp finish

start:
  clr R20         // clear remainder
  ldi R18, 8      // iterate over 8 bits

div1:
  lsl R24         // shift left A
  rol R20         // shift left P with carry from A shift
  sub R20, R22    // Subtract B from P, P <= P - B
  brlo div2
  ori R24, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R20, R22    // restore old value of P

div3:
  dec R18
  brne div1

finish:
end;

// x (dividend) = q(quotient) x d(divisor) + p(remainder)
// x in Ra, d in Rb, 0 in Rp
function fpc_div_word(x, d: word): word; assembler;
label
  zerodivcheck, zerocheck, start, div1, div2, div3, finish;
asm
// Symbol  Name        Register(s)
// x (A)   dividend    R25, R24
// d (B)   divisor     R23, R22
// p (P)   remainder   R21, R20
// n	   counter     R18

  // This sequence of checks result in 0 div 0 returning $FFFF
  // check for div by 0
zerodivcheck:
  cpi R22, 0
  cpc R23, R1
  brne zerocheck
  // d = 0, set result to $FF & exit
  ldi R24, 0xFF
  ldi R25, 0xFF
  rjmp finish

  // Check if x = 0
zerocheck:
  cpi R24, 0
  cpc R25, R1
  brne start
  // x=0, result = 0 & exit
  clr R24
  clr R25
  rjmp finish

start:            // Start of division...
  clr R20         // clear remainder low
  clr R21         // clear remainder hi
  ldi R18, 16     // iterate over 8 bits

div1:
  lsl R24         // shift left A_L
  rol R25
  rol R20         // shift left P with carry from A shift
  rol R21
  sub R20, R22    // Subtract B from P, P <= P - B
  sbc R21, R23
  brlo div2
  ori R24, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R20, R22    // restore old value of P
  adc R21, R23

div3:
  dec R18
  brne div1

finish:
end;

// x (dividend) = q(quotient) x d(divisor) + p(remainder)
// x in Ra, d in Rb, 0 in Rp
function fpc_div_dword(x, d: dword): dword; assembler;
label
  zerodivcheck, zerocheck, start, div1, div2, div3, finish;
asm
// Symbol  Name        Register(s)
// x (A)   dividend    R25, R24, R23, R22
// d (B)   divisor     R21, R20, R19, R18
// p (P)   remainder   R17, R16, R15, R14
// n	   counter     R26

  push R17
  push R16
  push R15
  push R14

  // This sequence of checks result in 0 div 0 returning $FFFFFFFF
  // check for div by 0
zerodivcheck:
  cpi R18, 0
  cpc R19, R1
  cpc R20, R1
  cpc R21, R1
  brne zerocheck
  // d = 0, set result to $FF & exit
  ldi R22, 0xFF
  ldi R23, 0xFF
  ldi R24, 0xFF
  ldi R25, 0xFF
  rjmp finish

  // Check if x = 0
zerocheck:
  cpi R22, 0
  cpc R23, R1
  cpc R24, R1
  cpc R25, R1
  brne start
  // x=0, result = 0 & exit
  clr R22
  clr R23
  clr R24
  clr R25
  rjmp finish

start:            // Start of division...
  clr R14         // clear remainder
  clr R15         // clear remainder
  clr R16
  clr R17
  ldi R26, 32     // iterate over 32 bits

div1:
  lsl R22         // shift left A_L
  rol R23
  rol R24
  rol R25
  rol R14         // shift left P with carry from A shift
  rol R15
  rol R16
  rol R17
  sub R14, R18    // Subtract B from P, P <= P - B
  sbc R15, R19
  sbc R16, R20
  sbc R17, R21
  brlo div2
  ori R22, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R14, R18    // restore old value of P
  adc R15, R19
  adc R16, R20
  adc R17, R21

div3:
  dec R26
  brne div1

finish:
  pop R14
  pop R15
  pop R16
  pop R17
end;

end.

