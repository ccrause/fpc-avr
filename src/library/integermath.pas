unit integermath;

interface

// Passed superficial testing
function fpc_div_byte(x, d: byte): byte;

// Needs to be re-checked & tested
//function fpc_div_word(n, z: word): word;
//function fpc_div_dword(n, z: dword): dword;

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

function fpc_div_word(n, z: word): word; assembler;
label
  l1, l11, l2, l3, l4, finish;
asm
//	dividend & result R24, R25
//      result            R26, R27
//	divisor	          R22, R23
//	remainder         R20, R21
//	loop counter      R18

  // check for div by 0!!!
  cpi R22, 0
  cpc R23, r1
  breq finish      // do nothing?

  // clear result
  clr R26
  clr R27

  // clear counter
  clr R18
  inc R18

  // left align divisor & dividend
l1:
  cp  R24, R22
  cpc R25, R23
  brlo l11         // dividend is smaller than divisor
  lsl R22
  rol R23
  inc r18          // count number of places divisor gets shifted
  rjmp l1
l11:
  lsr R23        // shift back 1 bit
  ror R22
  dec r18

  // Start division
l2:
  lsl R26          // start with 0, so OK on first iteration
  rol R27
  sub R24, R22
  sbc R25, R23
  // if R24 >= R22, set bit in result to 1
  brlo l3
  // Divisor <= dividend, add 1 to result
  adiw R26, 1

  rjmp l4

l3:// Divisor > dividend, reverse subtraction
  add R24, R22
  adc R25, R23

l4:
  lsr R23      // shift right divisor
  ror R22
  dec r18
  //cp R22, 0    // done ?
  cp r18, 0
  brne l2      //breq finish

  //rjmp l2
  dec r18
finish:
  mov R24, R26
  mov R25, R27
end;

function fpc_div_dword(n, z: dword): dword; assembler;
label
  l1, l11, l2, l3, l4, finish;
asm
//	dividend          R25, R24, R23, R22
//	divisor           R21, R20, R19, R18
//	remainder         R17, R16, R15, R14  << not used?
//      loop counter      R26
//      result            R13, R12, R11, R10

  push R17
  push R16
  push R15
  push R14
  push R13
  push R12
  push R11
  push R10

  // check divisor for div by 0!!!
  cpi R18, 0
  cpc R19, r1
  cpc R20, r1
  cpc R21, r1
  breq finish      // do nothing?

  // clear result
  clr R13
  clr R12
  clr R11
  clr R10

  // clear counter
  ldi R26, 1

  // Use R27 to store 1, to be used below for add operation
  ldi R27, 1
  // left align divisor & dividend
  // left shift divisor until bigger than dividend
  // TODO: stop when divisor high bit is set to prevent overflow, probably first check before rest of the ops
l1:
  cp  R22, R18
  cpc R23, R19
  cpc R24, R20
  cpc R25, R21
  brlo l11         // dividend is smaller than divisor  TODO: <=
  lsl R18
  rol R19
  rol R20
  rol R21
  inc r26          // count number of places divisor gets shifted
  rjmp l1
l11:
  lsr R21          // shift back 1 bit
  ror R20
  ror R19
  ror R18
  dec R26

  // Start division
l2:
  // shift result left so that next bit can be written in LSB
  lsl R10          // start with 0, so OK on first iteration
  rol R11
  rol R12
  rol R13

  sub R22, R18
  sbc R23, R19
  sbc R24, R20
  sbc R25, R21
  // if R24 >= R22, set bit in result to 1
  brlo l3
  // Divisor <= dividend, add 1 to result
  add R10, R27
  adc R11, R1
  adc R12, R1
  adc R13, R1

  rjmp l4

l3:// Divisor > dividend, reverse subtraction
  add R22, R18
  adc R23, R19
  adc R24, R20
  adc R25, R21

l4:
  lsr R21      // shift right divisor
  ror R20
  ror R19
  ror R18
  dec r26

  // Check if done shifting divisor
  cp r26, 0
  brne l2      //breq finish

finish:
  mov R22, R10
  mov R23, R11
  mov R24, R12
  mov R25, R13

  pop R10
  pop R11
  pop R12
  pop R13
  pop R14
  pop R15
  pop R16
  pop R17
end;

end.

