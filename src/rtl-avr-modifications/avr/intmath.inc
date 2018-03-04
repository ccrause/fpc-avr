{

    This file is part of the Free Pascal run time library.
    Copyright (c) 2008 by the Free Pascal development team.

    Implementation of mathematical Routines (only for integer types)

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

// Based on restoring division algorithm
// Algorithm source document: Lecture notes by S. Galal and D. Pham, Division algorithms and hardware implementations.
// Link to documentation http://www.seas.ucla.edu/~ingrid/ee213a/lectures/division_presentV2.pdf
// Also refer to description on Wikipedia: https://en.wikipedia.org/wiki/Division_algorithm#Restoring_division

// Note that the algorithm automatically yields the following results for special cases:
// z div 0 = MAX(type)
// 0 div 0 = MAX(type)
// 0 div n = 0
// Checks for z = 0; n = [0,1]; n = z and n > z could shortcut the algorithm for speed-ups
// but would add extra code
// Perhaps add the checks depending on optimization settings?

// z (dividend) = q(result) x n(divisor) + p(remainder)
{$define FPC_SYSTEM_HAS_DIV_BYTE}
function fpc_div_byte(n, z: byte): byte; nostackframe; assembler; [public,alias: 'FPC_DIV_BYTE'];
label
  start, div1, div2, div3, finish;
asm
  // Symbol  Name        Register(s)
// z (A)   dividend    R22 // also result
// n (B)   divisor     R24
// p (P)   remainder   R20
// i	   counter     R18

start:
  clr R20         // clear remainder
  ldi R18, 8      // iterate over 8 bits

div1:
  lsl R22         // shift left A
  rol R20         // shift left P with carry from A shift
  sub R20, R24    // Subtract B from P, P <= P - B
  brlo div2
  ori R22, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R20, R24    // restore old value of P

div3:
  dec R18
  brne div1

finish:
  mov R24, R22
end;
function fpc_div_byte(n, z: byte): byte; external name 'FPC_DIV_BYTE';

{$define FPC_SYSTEM_HAS_MOD_BYTE}
function fpc_mod_byte(n, z: byte): byte; nostackframe; assembler;  [public,alias: 'FPC_MOD_BYTE'];
label
  start, div1, div2, div3, finish;
asm
  // Symbol  Name        Register(s)
// z (A)   dividend    R22
// n (B)   divisor     R24
// p (P)   remainder   R20 // also result
// i	   counter     R18

start:
  clr R20         // clear remainder
  ldi R18, 8      // iterate over 8 bits

div1:
  lsl R22         // shift left A
  rol R20         // shift left P with carry from A shift
  sub R20, R24    // Subtract B from P, P <= P - B
  brlo div2
  ori R22, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R20, R24    // restore old value of P

div3:
  dec R18
  brne div1

finish:
  mov R24, R20
end;
function fpc_mod_byte(n, z: byte): byte; external name 'FPC_MOD_BYTE';


{$define FPC_SYSTEM_HAS_DIV_WORD}
function fpc_div_word(n, z: word): word; nostackframe; assembler; [public,alias: 'FPC_DIV_WORD'];
label
  start, div1, div2, div3, finish;
asm
// Symbol  Name        Register(s)
// z (A)   dividend    R22, R23 // also result
// n (B)   divisor     R24, R25
// p (P)   remainder   R20, R21
// i	   counter     R18

start:            // Start of division...
  clr R20         // clear remainder low
  clr R21         // clear remainder hi
  ldi R18, 16     // iterate over 8 bits

div1:
  lsl R22         // shift left A_L
  rol R23
  rol R20         // shift left P with carry from A shift
  rol R21
  sub R20, R24    // Subtract B from P, P <= P - B
  sbc R21, R25
  brlo div2
  ori R22, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R20, R24    // restore old value of P
  adc R21, R25

div3:
  dec R18
  brne div1

finish:
  mov R24, R22
  mov R25, R23
end;
function fpc_div_word(n, z: word): word; external name 'FPC_DIV_WORD';

{$define FPC_SYSTEM_HAS_MOD_WORD}
function fpc_mod_word(n, z: word): word; nostackframe; assembler; [public,alias: 'FPC_MOD_WORD'];
label
  start, div1, div2, div3, finish;
asm
// Symbol  Name        Register(s)
// z (A)   dividend    R22, R23
// n (B)   divisor     R24, R25
// p (P)   remainder   R20, R21 // also result
// i	   counter     R18

start:            // Start of division...
  clr R20         // clear remainder low
  clr R21         // clear remainder hi
  ldi R18, 16     // iterate over 8 bits

div1:
  lsl R22         // shift left A_L
  rol R23
  rol R20         // shift left P with carry from A shift
  rol R21
  sub R20, R24    // Subtract B from P, P <= P - B
  sbc R21, R25
  brlo div2
  ori R22, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R20, R24    // restore old value of P
  adc R21, R25

div3:
  dec R18
  brne div1

finish:
  mov R24, R20
  mov R25, R21
end;
function fpc_mod_word(n, z: word): word; external name 'FPC_MOD_WORD';

{$define FPC_SYSTEM_HAS_DIV_DWORD}
function fpc_div_dword(n, z: dword): dword; nostackframe; assembler; [public,alias: 'FPC_DIV_DWORD'];
label
  start, div1, div2, div3, finish;
asm
  // Symbol  Name        Register(s)
  // x (A)   dividend    R21, R20, R19, R18
  // d (B)   divisor     R25, R24, R23, R22
  // p (P)   remainder   R17, R16, R15, R14
  // n	     counter     R26

start:            // Start of division...
  clr R14         // clear remainder
  clr R15         // clear remainder
  clr R16
  clr R17
  ldi R26, 32     // iterate over 32 bits

div1:
  lsl R18         // shift left A_L
  rol R19
  rol R20
  rol R21
  rol R14         // shift left P with carry from A shift
  rol R15
  rol R16
  rol R17
  sub R14, R22    // Subtract B from P, P <= P - B
  sbc R15, R23
  sbc R16, R24
  sbc R17, R25
  brlo div2
  ori R18, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R14, R22    // restore old value of P
  adc R15, R23
  adc R16, R24
  adc R17, R25

div3:
  dec R26
  brne div1

finish:
  mov R25, R21
  mov R24, R20
  mov R23, R19
  mov R22, R18
end;
function fpc_div_dword(n, z: dword): dword; external name 'FPC_DIV_DWORD';

{$define FPC_SYSTEM_HAS_MOD_DWORD}
function fpc_mod_dword(n, z: dword): dword; nostackframe; assembler; [public,alias: 'FPC_MOD_DWORD'];
label
  start, div1, div2, div3, finish;
asm
  // Symbol  Name        Register(s)
  // x (A)   dividend    R21, R20, R19, R18
  // d (B)   divisor     R25, R24, R23, R22
  // p (P)   remainder   R17, R16, R15, R14
  // n	     counter     R26

  push R17
  push R16
  push R15
  push R14
start:            // Start of division...
  clr R14         // clear remainder
  clr R15         // clear remainder
  clr R16
  clr R17
  ldi R26, 32     // iterate over 32 bits

div1:
  lsl R18         // shift left A_L
  rol R19
  rol R20
  rol R21
  rol R14         // shift left P with carry from A shift
  rol R15
  rol R16
  rol R17
  sub R14, R22    // Subtract B from P, P <= P - B
  sbc R15, R23
  sbc R16, R24
  sbc R17, R25
  brlo div2
  ori R18, 1      // Set A[0] = 1
  rjmp div3
div2:             // negative branch, A[0] = 0 (default after shift), restore P
  add R14, R22    // restore old value of P
  adc R15, R23
  adc R16, R24
  adc R17, R25

div3:
  dec R26
  brne div1

finish:
  mov R25, R17    // Move remainder to R25..R22
  mov R24, R16
  mov R23, R15
  mov R22, R14

  pop R14
  pop R15
  pop R16
  pop R17
end;
function fpc_mod_dword(n, z: dword): dword; external name 'FPC_MOD_DWORD';

{$define FPC_SYSTEM_HAS_DIV_SHORTINT}
// z (dividend) = q(result) x n(divisor) + p(remainder)
function fpc_div_shortint(n,z : shortint) : shortint; nostackframe; assembler; [public,alias: 'FPC_DIV_SHORTINT']; compilerproc;
label
  pos1, pos2;
asm
// Convert to positive, then call mod_byte then restore to negative if appropriate
// n       divisor     R24
// z       dividend    R22
//         neg_result  R30

  // convert n to absolute
  mov R30, R22    // store z
  eor R30, R24    // z XOR n, answer must be negative if MSB set
  sub R24, r1     // subtract 0, just to check sign flag
  brpl pos1
  neg R24
  pos1:
  sub R22, r1
  brpl pos2
  neg R22
  pos2:

  rcall fpc_div_byte

  sbrc R30, 7     // skip if bit 7 is cleared (result should be positive)
  neg R24         // result from FPC_DIV_BYTE in R24
end;

{$define FPC_SYSTEM_HAS_MOD_SHORTINT}
// z (dividend) = q(result) x n(divisor) + p(remainder)
function fpc_mod_shortint(n,z : shortint) : shortint; nostackframe; assembler; [public,alias: 'FPC_MOD_SHORTINT']; compilerproc;
label
  pos1, pos2;
asm
// Convert to positive, then call mod_byte then restore to negative if appropriate
// n       divisor     R24
// z       dividend    R22
//         neg_result  R30

  // convert n to absolute
  mov R30, R22    // store z for sign check
  sub R24, r1     // subtract 0, just to check sign flag
  brpl pos1
  neg R24
  pos1:
  sub R22, r1
  brpl pos2
  neg R22
  pos2:

  rcall fpc_mod_byte

  sbrc R30, 7     // skip if bit 7 is cleared (result should be positive)
  neg R24         // result from FPC_DIV_BYTE in R24
end;

{$define FPC_SYSTEM_HAS_DIV_SMALLINT}
function fpc_div_smallint(n,z : smallint): smallint; nostackframe; assembler; [public,alias: 'FPC_DIV_SMALLINT']; compilerproc;
label
  pos1, pos2, fin;
asm
// Convert to positive, then call div_word then restore to negative if appropriate
// n       divisor     R24, R25
// z       dividend    R22, R23
//         neg_result  R30
//         one         R31

  mov R30, R23    // store hi8(z)
  eor R30, R25    // hi8(z) XOR hi8(n), answer must be negative if MSB set

  ldi R31, 1
  // convert n to absolute
  sub R25, r1     // subtract 0, just to check sign flag
  brpl pos1
  com R25
  com R24
  add R24, R31    // add 1
  adc R25, R1     // add carry bit

  pos1:
  sub R23, R1
  brpl pos2
  com R22
  com R23
  add R22, R31
  adc R23, R1
  pos2:

  rcall fpc_div_word

  sbrs R30, 7     // skip if bit 7 is cleared (result should be positive)
  rjmp fin
  com R25         // result from FPC_DIV_WORD in R24, R25
  com R24
  //ldi R31, 1      // trashed by call to fpc_div
  add R24, R31
  adc R25, R1
  fin:
end;

{$define FPC_SYSTEM_HAS_MOD_SMALLINT}
function fpc_mod_smallint(n,z : smallint): smallint; nostackframe; assembler; [public,alias: 'FPC_MOD_SMALLINT']; compilerproc;
label
  pos1, pos2, fin;
asm
// Convert to positive, then call div_word then restore to negative if appropriate
// n       divisor     R25, R24
// z       dividend    R23, R22
//         neg_result  R30
//         one         R31

  mov R30, R23    // store hi8(z)

  ldi R31, 1
  // convert n to absolute
  sub R25, r1     // subtract 0, just to check sign flag
  brpl pos1
  com R25
  com R24
  add R24, R31    // add 1
  adc R25, R1     // add carry bit

  pos1:
  sub R23, R1
  brpl pos2
  com R22
  com R23
  add R22, R31
  adc R23, R1
  pos2:

  rcall fpc_mod_word

  sbrs R30, 7     // skip if bit 7 is cleared (result should be positive)
  rjmp fin
  com R25         // result from FPC_DIV_WORD in R24, R25
  com R24
  //ldi R31, 1      // trashed by call to fpc_div
  add R24, R31
  adc R25, R1
  fin:
end;

{$define FPC_SYSTEM_HAS_DIV_LONGINT}
function fpc_div_longint(n,z : longint): longint; nostackframe; assembler; [public,alias: 'FPC_DIV_LONGINT']; compilerproc;
label
  pos1, pos2, fin;
asm
// Convert to positive, then call div_dword then restore to negative if appropriate
// n       divisor     R25, R24, R23, R22
// z       dividend    R21, R20, R19, R18
//         neg_result  R30
//         one         R31

  mov R30, R21    // store hi8(z)
  eor R30, R25    // hi8(z) AND hi8(n), answer must be negative if MSB set

  // convert n to absolute
  ldi R31, 1
  sub R25, r1     // subtract 0, just to check sign flag
  brpl pos1
  com R25
  com R24
  com R23
  com R22
  add R22, R31    // add 1
  adc R23, R1     // add carry bit
  adc R24, R1
  adc R25, R1

  pos1:
  sub R21, R1
  brpl pos2
  com R21
  com R20
  com R19
  com R18
  add R18, R31
  adc R19, R1
  adc R20, R1
  adc R21, R1
  pos2:

  rcall fpc_div_dword

  sbrs R30, 7     // skip if bit 7 is cleared (result should be positive)
  rjmp fin
  com R25         // result from FPC_DIV_WORD in R25 ... R22
  com R24
  com R23
  com R22
  //ldi R27, 1
  add R22, R31
  adc R23, R1
  adc R24, R1
  adc R25, R1
  fin:
end;

{$define FPC_SYSTEM_HAS_MOD_LONGINT}
function fpc_mod_longint(n,z : longint): longint; nostackframe; assembler; [public,alias: 'FPC_MOD_LONGINT']; compilerproc;
label
  pos1, pos2, fin;
asm
// Convert to positive, then call div_dword then restore to negative if appropriate
// n       divisor     R25, R24, R23, R22
// z       dividend    R21, R20, R19, R18
//         neg_result  R30 26
//         one         R31 27

  mov R30, R21    // store hi8(z)

  // convert n to absolute
  ldi R31, 1
  sub R25, r1     // subtract 0, just to check sign flag
  brpl pos1
  com R25
  com R24
  com R23
  com R22
  add R22, R31    // add 1
  adc R23, R1     // add carry bit
  adc R24, R1
  adc R25, R1

  pos1:
  sub R21, R1
  brpl pos2
  com R21
  com R20
  com R19
  com R18
  add R18, R31
  adc R19, R1
  adc R20, R1
  adc R21, R1
  pos2:

  rcall fpc_mod_dword

  sbrs R30, 7     // skip if bit 7 is cleared (result should be positive)
  rjmp fin
  com R25         // result from FPC_DIV_WORD in R25 ... R22
  com R24
  com R23
  com R22
  //ldi R31, 1
  add R22, R31
  adc R23, R1
  adc R24, R1
  adc R25, R1
  fin:
end;

