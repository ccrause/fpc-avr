unit integermath;

interface
procedure fpc_div_mod_byte(Dividend, Divisor: byte; out result, remainder: byte);
procedure fpc_div_mod_word(Dividend, Divisor: word; var result, remainder: word);
procedure fpc_div_mod_dword(Dividend, Divisor: dword; var result, remainder: dword);
function fpc_div_mod_qword(Dividend, Divisor: qword; out Remainder: qword): qword;

implementation
// Based on restoring division algorithm
// Algorithm source document: Lecture notes by S. Galal and D. Pham, Division algorithms and hardware implementations.
// Link to documentation http://www.seas.ucla.edu/~ingrid/ee213a/lectures/division_presentV2.pdf

// Note that the algorithm automatically yields the following results for special cases:
// x div 0 = MAX(type)
// 0 div 0 = MAX(type)
// 0 div d = 0
// Checks for x = 0; d = 0,1; x = d and d > x could shortcut the algorithm for speed-ups
// but would add extra code
// Perhaps add the checks depending on optimization settings?

// x (dividend) = q(quotient) x d(divisor) + p(remainder)

procedure fpc_div_mod_byte(Dividend, Divisor: byte; out Result, Remainder: byte); assembler; nostackframe;
label
  start, div1, div2, div3, finish;
asm
  // Push pointer to result variable
  push R21
  push R20
  // Push pointer to Remainder variable
  push R19
  push R18
// Symbol  Name        Register(s)
// z (A)   dividend    R24 // also result
// n (B)   divisor     R22
// p (P)   remainder   R20
// i	   counter     R18

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
  // Copy remainder via pointer stored in pushed address
  pop R30
  pop R31
  st  Z, R20
  // Copy result via pointer stored in pushed address
  pop R30
  pop R31
  st  Z, R24
end;

procedure fpc_div_mod_word(Dividend, Divisor: word; var Result, Remainder: word); assembler; nostackframe;
label
  start, div1, div2, div3, finish;
asm
  // Push pointer to result variable
  push R21
  push R20
  // Push pointer to Remainder variable
  push R19
  push R18
// Symbol  Name        Register(s)
// z (A)   dividend    R24, R25 // also result
// n (B)   divisor     R22, R23
// p (P)   remainder   R20, R21
// i	   counter     R18, R19

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
  // Copy remainder via pointer stored in pushed address
  pop R30
  pop R31
  st Z+, R20
  st Z, R21
  // Copy result via pointer stored in pushed address
  pop R30
  pop R31
  st Z+, R24
  st Z, R25
end;

procedure fpc_div_mod_dword(Dividend, Divisor: dword; var Result, Remainder: dword); assembler; nostackframe;
label
  start, div1, div2, div3, finish;
asm
  // Push pointer to result variable
  push R17
  push R16
  // Push pointer to Remainder variable
  push R15
  push R14
  // Symbol  Name        Register(s)
  // x (A)   dividend    R25, R24, R23, R22
  // d (B)   divisor     R21, R20, R19, R18
  // p (P)   remainder   R17, R16, R15, R14
  // n	     counter     R26

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
  // Copy remainder via pointer stored in pushed address
  pop R30
  pop R31
  st Z+, R14
  st Z+, R15
  st Z+, R16
  st Z, R17
  // Copy result via pointer stored in pushed address
  pop R30
  pop R31
  st Z+, R22
  st Z+, R23
  st Z+, R24
  st Z, R25
end;

function fpc_div_mod_qword(Dividend, Divisor: qword; out Remainder: qword): qword; assembler; {nostackframe;}
label
  start, div1, div2, div3, finish;
asm
  push R17
  push R16
  push R15
  push R14
  push R13
  push R12
  push R11
  push R10
  push R7
  push R6
  push R5
  push R4
  push R3
  push R2
  push R9       // <- high byte of pointer to Remainder
  push R8       // <- low byte of pointer to Remainder

  // Symbol  Name        Register(s)
  // x (A)   dividend    R25, R24, R23, R22, R21, R20, R19, R18
  // d (B)   divisor     R17, R16, R15, R14, R13, R12, R11, R10
  // p (P)   remainder   R9,  R8,  R7,  R6,  R5,  R4,  R3,  R2
  // n	     counter     R26

start:            // Start of division...
  clr R9          // clear remainder
  clr R8
  clr R7
  clr R6
  clr R5
  clr R4
  clr R3
  clr R2
  ldi R26, 64   // iterate over 64 bits

div1:
  lsl R18         // shift left A_L
  rol R19
  rol R20
  rol R21
  rol R22
  rol R23
  rol R24
  rol R25

  rol R2         // shift left P with carry from A shift
  rol R3
  rol R4
  rol R5
  rol R6
  rol R7
  rol R8
  rol R9

  sub R2, R10    // Subtract B from P, P <= P - B
  sbc R3, R11
  sbc R4, R12
  sbc R5, R13
  sbc R6, R14
  sbc R7, R15
  sbc R8, R16
  sbc R9, R17

  brlo div2
  ori R18, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P

  add R2, R10    // restore old value of P
  adc R3, R11
  adc R4, R12
  adc R5, R13
  adc R6, R14
  adc R7, R15
  adc R8, R16
  adc R9, R17

div3:
  dec R26
  brne div1

finish:
  // Copy remainder via pointer stored in pushed address
  pop R30
  pop R31
  st Z+, R2
  st Z+, R3
  st Z+, R4
  st Z+, R5
  st Z+, R6
  st Z+, R7
  st Z+, R8
  st Z, R9
  movw R8, R30

  pop R2
  pop R3
  pop R4
  pop R5
  pop R6
  pop R7
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

