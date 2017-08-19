{
    This file is part of the Free Pascal run time library.
    Copyright (c) 2008 by the Free Pascal development team

    This file contains some helper routines for int64 and qword

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

{$ifndef FPC_SYSTEM_HAS_SHR_QWORD}
{$define FPC_SYSTEM_HAS_SHR_QWORD}

// Simplistic version with checking if whole bytes can be shifted
// Doesn't change bitshift portion even if possible because of byteshift
// Shorter code but longer execution time version
function fpc_shr_qword(value: qword; shift: sizeint): qword; assembler; nostackframe;
  [public, alias: 'FPC_SHR_QWORD']; compilerproc;
label
  byteshift, bitshift, finish;
asm
  // value passed in R25...R18
  // shift passed in R16
  // return value in R25...R18

  push R17
  push R16

  andi R16, 63      // mask 64 bit relevant value per generic routine
  breq finish       // shift = 0, do nothing

byteshift:
  cpi R16, 8         // Check if shift is at least a byte
  brlo bitshift
  mov R18, R19      // if so, then shift all bytes right by 1 position
  mov R19, R20
  mov R20, R21
  mov R21, R22
  mov R22, R23
  mov R23, R24
  mov R24, R25
  clr R25           // and clear the high byte
  subi R16, 8       // subtract 8 bits from shift
  breq finish       // check if R16 = 0, do nothing, finish

bitshift:           // shift all 8 bytes right
  lsr R25
  ror R24
  ror R23
  ror R22
  ror R21
  ror R20
  ror R19
  ror R18

  dec R16
  brne bitshift     // until R16 = 0

finish:
  pop R16
  pop R17
end;

function fpc_shr_qword(value: qword; shift: sizeint): qword; external name 'FPC_SHR_QWORD';
{$endif FPC_SYSTEM_HAS_SHR_QWORD}

{$ifndef FPC_SYSTEM_HAS_SHL_QWORD}
{$define FPC_SYSTEM_HAS_SHL_QWORD}
function fpc_shl_qword(value: qword; shift: sizeint): qword; assembler; nostackframe;
[public, alias: 'FPC_SHL_QWORD']; compilerproc;
label
  byteshift, bitshift, finish;
asm
  // value passed in R25...R18
  // shift passed in R16
  // return value in R25...R18

  push R17
  push R16

  andi R16, 63      // mask 64 bit relevant value per generic routine
  breq finish       // shift = 0, do nothing

byteshift:
  cpi R16, 8         // Check if shift is at least a byte
  brlo bitshift
  mov R25, R24      // if so, then shift all bytes left by 1 position
  mov R24, R23
  mov R23, R22
  mov R22, R21
  mov R21, R20
  mov R20, R19
  mov R19, R18
  clr R18           // and clear the high byte
  subi R16, 8       // subtract 8 bits from shift
  breq finish       // check if R16 = 0, do nothing, finish

bitshift:           // shift all 8 bytes left
  lsl R18
  rol R19
  rol R20
  rol R21
  rol R22
  rol R23
  rol R24
  rol R25

  dec R16
  brne bitshift     // until R16 = 0

finish:
  pop R16
  pop R17
end;
function fpc_shl_qword(value: qword; shift: sizeint): qword; external name 'FPC_SHL_QWORD';
{$endif FPC_SYSTEM_HAS_SHL_QWORD}

// Signed versions call above, then apply the sign bit afterwards

{$ifndef FPC_SYSTEM_HAS_SHL_INT64}
{$define FPC_SYSTEM_HAS_SHL_INT64}
function fpc_shl_int64(value: int64; shift: sizeint): int64; assembler; nostackframe;
  [public, alias: 'FPC_SHL_INT64']; compilerproc;
label
  setsign, clearsign, finish;
asm
  // value passed in R25...R18
  // shift passed in R16
  // return value in R25...R18

  push R26          // use R15 to store sign bit
  mov R26, R25
  andi R26, 128     // mask out bit 7 (sign)

  rcall fpc_shl_qword

  sbrs R26, 7      // sign bit set?
  rjmp clearsign
setsign:
  ori R25, 128
  rjmp finish

clearsign:
  andi R25, 127
finish:
  pop R26
end;
{$endif FPC_SYSTEM_HAS_SHL_INT64}

{$ifndef FPC_SYSTEM_HAS_SHR_INT64}
{$define FPC_SYSTEM_HAS_SHR_INT64}
function fpc_shr_int64(value: int64; shift: sizeint): int64; assembler; nostackframe;
  [public, alias: 'FPC_SHR_INT64']; compilerproc;
label
  setsign, clearsign, finish;
asm
  // value passed in R25...R18
  // shift passed in R16
  // return value in R25...R18

  push R26          // use R15 to store sign bit
  mov R26, R25
  andi R26, 128     // mask out bit 7 (sign)

  rcall fpc_shr_qword

  sbrs R26, 7      // sign bit set?
  rjmp clearsign
setsign:
  ori R25, 128
  rjmp finish

clearsign:
  andi R25, 127
finish:
  pop R26
end;
{$endif FPC_SYSTEM_HAS_SHR_INT64}


{$ifndef FPC_DIV_MOD_QWORD}
{$define FPC_DIV_MOD_QWORD}
// TODO: Not sure why this has to be wrapped in ifdef
// If not wrapped in ifdef, this generates an overloaded function error
// Sounds like this gets compiled in twice???

//procedure _fpc_divmod_qword_(var Dividend, Divisor: qword; out Result, Remainder: qword); assembler; nostackframe;
//label
//  start, div1, div2, div3, finish;
//asm
//  // Parameter pointers passed as follows:
//  // Dividend - R25, R24
//  // Divisor  - R23, R22
//  // Result   - R21, R20
//  // Remainder- R19, R18
//  push R17
//  push R16
//  push R15
//  push R14
//  push R13
//  push R12
//  push R11
//  push R10
//  push R9
//  push R8
//  // Push pointer to result variable
//  push R21
//  push R20
//  // Push pointer to Remainder variable
//  push R19
//  push R18
//
//  // Symbol  Name        Register(s)
//  // x (A)   dividend    R25, R24, R23, R22, R21, R20, R19, R18
//  // d (B)   divisor     R17, R16, R15, R14, R13, R12, R11, R10
//  // p (P)   remainder   R9,  R8,  R7,  R6,  R5,  R4,  R3,  R2
//  // n	     counter     R26
//
//  // Store pointer to divisor in R17, R16
//  movw R16, R22
//  // Copy dividend to R25 - R18
//  movw R30, R24
//  ld R18, Z+
//  ld R19, Z+
//  ld R20, Z+
//  ld R21, Z+
//  ld R22, Z+
//  ld R23, Z+
//  ld R24, Z+
//  ld R25, Z
//
//  movw R30, R16
//  ld R10, Z+
//  ld R11, Z+
//  ld R12, Z+
//  ld R13, Z+
//  ld R14, Z+
//  ld R15, Z+
//  ld R16, Z+
//  ld R17, Z
//start:            // Start of division...
//  clr R9          // clear remainder
//  clr R8
//  clr R7
//  clr R6
//  clr R5
//  clr R4
//  clr R3
//  clr R2
//  ldi R26, 64   // iterate over 64 bits
//
//div1:
//  lsl R18         // shift left A_L
//  rol R19
//  rol R20
//  rol R21
//  rol R22
//  rol R23
//  rol R24
//  rol R25
//
//  rol R2         // shift left P with carry from A shift
//  rol R3
//  rol R4
//  rol R5
//  rol R6
//  rol R7
//  rol R8
//  rol R9
//
//  sub R2, R10    // Subtract B from P, P <= P - B
//  sbc R3, R11
//  sbc R4, R12
//  sbc R5, R13
//  sbc R6, R14
//  sbc R7, R15
//  sbc R8, R16
//  sbc R9, R17
//
//  brlo div2
//  ori R18, 1      // Set A[0] = 1
//  rjmp div3
//div2:             // negative branch, A[0] = 0 (default after shift), restore P
//
//  add R2, R10    // restore old value of P
//  adc R3, R11
//  adc R4, R12
//  adc R5, R13
//  adc R6, R14
//  adc R7, R15
//  adc R8, R16
//  adc R9, R17
//
//div3:
//  dec R26
//  brne div1
//
//finish:
//  // Copy remainder via pointer stored in pushed address
//  pop R30
//  pop R31
//  st Z+, R2
//  st Z+, R3
//  st Z+, R4
//  st Z+, R5
//  st Z+, R6
//  st Z+, R7
//  st Z+, R8
//  st Z, R9
//  // Copy result via pointer stored in pushed address
//  pop R30
//  pop R31
//
//  st Z+, R18
//  st Z+, R19
//  st Z+, R20
//  st Z+, R21
//  st Z+, R22
//  st Z+, R23
//  st Z+, R24
//  st Z, R25
//
//  pop R8
//  pop R9
//  pop R10
//  pop R11
//  pop R12
//  pop R13
//  pop R14
//  pop R15
//  pop R16
//  pop R17
//end;

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

{$endif FPC_DIV_MOD_QWORD}

{$ifndef FPC_SYSTEM_HAS_DIV_QWORD}
{$define FPC_SYSTEM_HAS_DIV_QWORD}
function fpc_div_qword(n,z : qword) : qword;[public,alias: 'FPC_DIV_QWORD']; compilerproc;
var
  remainder: qword;
begin
  fpc_div_qword := fpc_div_mod_qword(z, n, remainder);;
end;
{$endif FPC_SYSTEM_HAS_DIV_QWORD}

{$ifndef FPC_SYSTEM_HAS_MOD_QWORD}
{$define FPC_SYSTEM_HAS_MOD_QWORD}
function fpc_mod_qword(n,z : qword) : qword;[public,alias: 'FPC_MOD_QWORD']; compilerproc;
var
  remainder: qword;
begin
  fpc_div_mod_qword(z, n, remainder);
  fpc_mod_qword := remainder;
end;
{$endif FPC_SYSTEM_HAS_MOD_QWORD}

// From inc/compproc.inc - copied & removed the exception calling
{$ifndef FPC_SYSTEM_HAS_DIV_QWORD}
{$define FPC_SYSTEM_HAS_DIV_QWORD}
    function fpc_div_qword(n,z : qword) : qword;[public,alias: 'FPC_DIV_QWORD']; compilerproc;

      var
         shift,lzz,lzn : longint;

      begin
         { Use the usually faster 32-bit division if possible }
	 if (hi(z) = 0) and (hi(n) = 0) then
	 begin
	   fpc_div_qword := Dword(z) div Dword(n);
	   exit;
	 end;
         fpc_div_qword:=0;
         if n=0 then
         begin
           //Return max value as proxy for divide by zero
           fpc_div_qword := $FFFFFFFFFFFFFFFF;
           exit;
         end;
         if z=0 then
           exit;
         lzz:=BsrQWord(z);
         lzn:=BsrQWord(n);
         { if the denominator contains less zeros }
         { than the numerator                     }
         { then d is greater than the n           }
         if lzn>lzz then
           exit;

         shift:=lzz-lzn;
         n:=n shl shift;
         for shift:=shift downto 0 do
           begin
             if z>=n then
               begin
                  z:=z-n;
                  fpc_div_qword:=fpc_div_qword+(qword(1) shl shift);
               end;
             n:=n shr 1;
           end;
      end;
{$endif FPC_SYSTEM_HAS_DIV_QWORD}

{$ifndef FPC_SYSTEM_HAS_DIV_INT64}
{$define FPC_SYSTEM_HAS_DIV_INT64}
    function fpc_div_int64(n,z : int64) : int64;[public,alias: 'FPC_DIV_INT64']; compilerproc;

      var
         sign : boolean;
         q1,q2 : qword;

      begin
         if n=0 then
         begin
           //Return max value as proxy for divide by zero
           if z > 0 then
             fpc_div_int64 := 9223372036854775807
           else
             fpc_div_int64 := -9223372036854775808;
           exit;
         end;
         { can the fpu do the work? }
           begin
              sign:=false;
              if z<0 then
                begin
                   sign:=not(sign);
                   q1:=qword(-z);
                end
              else
                q1:=z;
              if n<0 then
                begin
                   sign:=not(sign);
                   q2:=qword(-n);
                end
              else
                q2:=n;

              { the div is coded by the compiler as call to divqword }
              if sign then
                fpc_div_int64:=-(q1 div q2)
              else
                fpc_div_int64:=q1 div q2;
           end;
      end;
{$endif FPC_SYSTEM_HAS_DIV_INT64}

