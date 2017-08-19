{

    This file is part of the Free Pascal run time library.
    Copyright (c) 2008 by the Free Pascal development team.

    Implementation of mathematical Routines (only for real)

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

// Tested and passed 13/08/2017 - CC
function fpc_div_mod_byte(Dividend, Divisor: byte; out Remainder: byte): byte; assembler; nostackframe;
label
  start, div1, div2, div3, finish;
asm
  // Push pointer to Remainder variable
  push R21
  push R20

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
end;

{$define FPC_SYSTEM_HAS_DIV_BYTE}
// This calling stub is bigger than the above algorithm,
// probably shorter to duplicate division algorithm for div & mod
function fpc_div_byte(n, z: byte): byte; [public,alias: 'FPC_DIV_BYTE'];
var
  remainder: byte;
begin
  fpc_div_byte := fpc_div_mod_byte(z, n, remainder);
end;

{$define FPC_SYSTEM_HAS_MOD_BYTE}
function fpc_mod_byte(n, z: byte): byte;  [public,alias: 'FPC_MOD_BYTE'];
var
  remainder: byte;
begin
  fpc_div_mod_byte(z, n, remainder);
  fpc_mod_byte := remainder;
end;

function fpc_div_mod_word(Dividend, Divisor: word; out Remainder: word): word; assembler; nostackframe;
label
  start, div1, div2, div3, finish;
asm
  // Push pointer to Remainder variable
  push R21
  push R20
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
  // TODO: can potenially change to the following to prevent a change to register pair R30:R31
  // this cannot be done until the following bug is fixed: https://bugs.freepascal.org/view.php?id=32016
  // Not really required in this case
  //st Z, R20
  //std Z+1, R21
  // Current work-around
  st Z+, R20
  st Z, R21
end;

{$define FPC_SYSTEM_HAS_DIV_WORD}
function fpc_div_word(n, z: word): word; [public,alias: 'FPC_DIV_WORD'];
var
  remainder: word;
begin
  fpc_div_word := fpc_div_mod_word(z, n, remainder);
end;

{$define FPC_SYSTEM_HAS_MOD_WORD}
function fpc_mod_word(n, z: word): word; [public,alias: 'FPC_MOD_WORD'];
var
  remainder: word;
begin
  fpc_div_mod_word(z, n, remainder);
  fpc_mod_word := remainder;
end;

function fpc_div_mod_dword(Dividend, Divisor: dword; out Remainder: dword): dword; assembler; nostackframe;
label
  start, div1, div2, div3, finish;
asm
  // Push call saved registers
  push R14
  push R15
  push R16
  push R17
  // Push pointer to Remainder variable
  // Could eliminate extra pushes if bug is fixed: https://bugs.freepascal.org/view.php?id=32016
  // See epilogue at end of function
  push R16
  push R17

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
  pop R31
  pop R30
  // TODO: can potenially change to the following to prevent a change to register pair R30:R31
  // this cannot be done until the following bug is fixed: https://bugs.freepascal.org/view.php?id=32016
  // Not really required in this case
  //st Z, R14
  //std Z+1, R15
  //etc
  // then movw R16, R30
  // This would save stack space
  // Current work-around
  st Z+, R14
  st Z+, R15
  st Z+, R16
  st Z, R17

  pop R17
  pop R16
  pop R15
  pop R14
end;

{$define FPC_SYSTEM_HAS_DIV_DWORD}
function fpc_div_dword(n, z: dword): dword; [public,alias: 'FPC_DIV_DWORD'];
var
  remainder: dword;
begin
  fpc_div_dword := fpc_div_mod_dword(z, n, remainder);
end;

{$define FPC_SYSTEM_HAS_MOD_DWORD}
function fpc_mod_dword(n, z: dword): dword; [public,alias: 'FPC_MOD_DWORD'];
var
   remainder: dword;
begin
  fpc_div_mod_dword(z, n, remainder);
  fpc_mod_dword := remainder;
end;

{$define FPC_SYSTEM_HAS_DIV_SHORTINT}
function fpc_div_shortint(n,z : shortint) : shortint; [public,alias: 'FPC_DIV_SHORTINT']; compilerproc;
var
  sign: boolean;
  b1, b2: byte;
begin
   if n = 0 then
   begin
     if z > 0 then
       fpc_div_shortint := 127
     else
       fpc_div_shortint := -128;
     exit;
   end;
   sign := false;
   if z < 0 then
     begin
        sign := not(sign);
        b1 := byte(-z);
     end
   else
     b1 := z;
   if n < 0 then
     begin
        sign := not(sign);
        b2 := byte(-n);
     end
   else
     b2 := n;

   { the div is coded by the compiler as call to divdword }
   if sign then
     result := -(b1 div b2)
   else
     result := b1 div b2;
end;

{$define FPC_SYSTEM_HAS_DIV_SMALLINT}
function fpc_div_smallint(n,z : smallint) : smallint; [public,alias: 'FPC_DIV_SMALLINT']; compilerproc;
var
  sign: boolean;
  w1, w2: word;
begin
  if n = 0 then
  begin
    if z > 0 then
      fpc_div_smallint := 32767
    else
      fpc_div_smallint := -32768;
    exit;
  end;
  sign := false;
  if z < 0 then
  begin
    sign := not(sign);
    w1 := word(-z);
  end
  else
    w1 := z;

  if n < 0 then
  begin
    sign := not(sign);
    w2 := word(-n);
  end
  else
    w2 := n;

   { the div is coded by the compiler as call to divdword }
  if sign then
    result := -(w1 div w2)
  else
    result := w1 div w2;
end;

{$define FPC_SYSTEM_HAS_DIV_LONGINT}
function fpc_div_longint(n,z : longint) : longint; [public,alias: 'FPC_DIV_LONGINT']; compilerproc;
var
  sign: boolean;
  d1, d2: dword;
begin
  if n = 0 then
  begin
    if z > 0 then
      fpc_div_longint := 2147483647
    else
      fpc_div_longint := -2147483648;
    exit;
  end;
  sign := false;
  if z < 0 then
  begin
    sign := not(sign);
    d1 := dword(-z);
  end
  else
    d1 := z;
  if n < 0 then
  begin
    sign := not(sign);
    d2 := dword(-n);
  end
  else
    d2 := n;

   { the div is coded by the compiler as call to divdword }
  if sign then
    result := -(d1 div d2)
  else
    result := d1 div d2;
end;

