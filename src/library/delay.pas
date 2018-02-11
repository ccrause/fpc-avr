unit delay;

{$define FPC_HAS_MUL}

interface

procedure delay_ms(t: uint16);

{$ifdef CPUAVR_HAS_MUL}
procedure delay_us(t: uint16);
{$endif}

implementation

// delay_ms
// Cycle count (assuming 16 bit PC)
// inline doesn't work yet, so 4 cycles for call and 4 cycles for ret
// 3 cycles zero check
// outer loop t
//   2 cycles inner loop counter load
//     inner loop 1 ms
//       4 cycles per inner loop - 1 to exit
//     end inner loop
//   4 cycles per outer loop - 1 to exit
// end outer loop
//
// 4 + 3 + t(2 + 4count - 1 + 2) - 1 + 4 (ret)
// total cycles including call overhead = 10 + t(3 + 4count)
// Count: 3 + 4count = F_CPU/1000
// count = (F_CPU/1000 - 3)/4
// effective delay will be 10/F_CPU + t = 0.000625 ms + t  @ 16MHz

// Use SBIW instruction if available, else use SBI + SBC
// SBIW takes same number of cycles to process as SBI + SBC, but saves 2 bytes program space
{$IFDEF CPUAVR_HAS_MOVW} // proxy check for sbiw
procedure delay_ms(t: uint16); assembler;
const
  count = ((F_CPU div 1000 - 3) div 4);
label
  inner, outer, finish;
asm
  // test if t = 0, jump to finish if true
  cp R24, R1
  cpc R25, R1
  breq finish       // 2 cycles to branch, 1 to continue

outer:
  // load 1 ms counter value
  ldi R26, lo8(count)
  ldi R27, hi8(count)

inner:
  // inner loop, 1 ms  4cycles/loop + 1
  sbiw R26, 1      // 2 cycles
  brne inner       // 2 cycles to branch, 1 to continue

  // outer loop, count ms, 4 cycles/loop + 1
  sbiw R24,1       // 2 cycles
  brne outer       // 2 cycles to branch, 1 to continue
finish:
end;

{$ELSE}

procedure delay_ms(t: uint16); assembler;
const
  count = ((F_CPU div 1000 - 3) div 4);
label
  inner, outer, finish;
asm
  // test if t = 0, jump to finish if true
  cp R24, R1
  cpc R25, R1
  breq finish       // 2 cycles to branch, 1 to continue

outer:
  // load 1 ms counter value
  ldi R26, lo8(count)
  ldi R27, hi8(count)

inner:
  // inner loop, 1 ms  4cycles/loop + 1
  subi R26, 1    // 1 cycle
  sbc R27, R1    // 1 cycle
  brne inner       // 2 cycles to branch, 1 to continue

  // outer loop, count ms, 4 cycles/loop + 1
  subi R24, 1      // 1 cycle
  sbc R25, r1      // 1 cycle
  brne outer       // 2 cycles to branch, 1 to continue
finish:
end;
{$ENDIF CPUAVR_HAS_MOVW}

// Cycle count
// function overhead: 4 cycles for call and 4 cycles for ret = 8
// Shortcut to exit: 15 cycles
// Shortest limit = 8 + 15 + 1/2 of 1 loop (5) = 26
// Calculation overhead up to begining of loop: 23 + 6 + 8 = 31
// Loop will execute if loopcounter = 0, fixed overhead of 5
// Fixed overhead including 1 loop cycle = 30 + 5 = 35
// cyclecount = t*tickFreq
// Loop accounting:
// cyclecount = 5 + 4*loopcounter + 3*(loopcounter shr 16)
// 1st approximation:
// loopcounter = (cyclecount - 5)/4
// 2nd correction
// loopcounter = loopcounter - 3*(loopcounter shr 16)
{$ifdef CPUAVR_HAS_MUL}
procedure delay_us(t: uint16); assembler;
const
  tickFreq = (F_CPU div 1000000); // only valid from 1 - 64 MHz clock
  shortlimit = 26;                // If delay ticks less than this, exit
  overheadloop = 36;              // fixed overhead besides loop
label
  loop, finish;
asm
  // Calculate required # ticks
  // tickfreq * t; uint8 * uitn16
  // t passed in R25:R24
  // put ticks in R26:R25:R24
  ldi R22, tickFreq
  mul R24, R22
  mov R24, R0
  mov R23, R1    // temp R

  clr R26
  mul R25, R22
  mov R25, R0
  add R25, R23   // add temp from previous mul
  adc R26, R1

  // restore R1 to zero
  clr R1

  // test if ticks required < overhead, jump to finish if true
  cpi R24, shortlimit
  cpc R25, R1
  cpc R26, R1
  brlo finish    // 2 cycles to branch, 1 to continue

  // Calculate loop counter
  // First substract overhead
  sbiw R24, overheadloop          // 2 cycles
  sbc R26, R1

  // Loop count = tickcount / 4
  // http://www.avrfreaks.net/comment/150853#comment-150853
  lsr R26
  ror R25
  ror R24
  lsr R26
  ror R25
  ror R24

  // loop counter correction for outer loop iterations
  // subtract 3*(loopcounter shr 16) = sub 3*R26 from loopcounter
  ldi R22, 3
  mul R26, R22
  sub R24, R0
  sbc R25, R1
  sbci R26, 0
  clr R1

loop:
  sbiw R24, 1      // 2 cycles
  brcc loop        // 2 cycles to branch, 1 to continue
  subi R26, 1
  brcc loop        // 2 cycles to branch, 1 to continue
finish:
end;
{$endif}
end.

