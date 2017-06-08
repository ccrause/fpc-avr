unit delay;

interface

procedure delay_ms(t: uint16);

// Input range not fully covered, in progress
//procedure delay_us(t: uint16);

implementation

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
procedure delay_ms(t: uint16); assembler;
const
  count = ((F_CPU div 1000 - 3) div 4);
  counth = count shr 8;
  countL = count and $FF;
label
  inner, outer, finish;
asm
  // test if t = 0, jump to finish if true
  cp R24, R1        // 1
  cpc R25, R1       // 1
  breq finish       // 2 if true, 1 if false

outer:
  // load 1 ms counter value
  ldi R26, countL   // 1
  ldi R27, countH   // 1

inner:
  // inner loop, 1 ms  4cycles/loop + 1
  sbiw R26, 1      // 2
  brne inner       // 2 if true, 1 if false

  // outer loop, count ms, 4 cycles/loop + 1
  SBIW R24,1       // 2 cycles, operates on R24:R25, R26:R27, R28:R29, R30:R31
  BRNE outer       // 1 cycle if false, 2 if true
finish:
end;


// User should limit input so that t * tickfreq < 65536
// Can then use sbiw instruction for tight countdown loop
// Cycle count
// function overhead: 4 cycles for call and 4 cycles for ret = 8
// Shortcut to exit:
// 8 + 11 cycles
// Normal execution through loop
// 8 + 10 + 6 + 4*loopcount - 1 = 23 + 4*loopcount
// t*tickFreq = (23 + 4*ticks)
// ticks = (t*tickfreq - 23)  / 4

// F_CPU = 20 MHz, max delay = 3276 us
// F_CPU = 16 MHz, max delay = 4095 us
// F_CPU = 8  MHz, max delay = 8191 us

// F_CPU = 20 MHz, min delay = 0.95 us
// F_CPU = 16 MHz, min delay = 1.1875 us
// F_CPU = 8  MHz, min delay = 2.375 us
procedure delay_us(t: uint16); assembler;
const
  tickFreq = (F_CPU div 1000000); // only valid from 1 - 64 MHz clock
  shortdelay = 19 + 6 + 2;  // If delay ticks less than this, exit
  overheadloop = 23;    // fixed overhead besides loop
label
  loop, finish;
asm
  // http://www.avr-asm-tutorial.net/avr_en/calc/HARDMULT.html
  // for background
  // Calculate required # ticks
  // tickcount * t; uint8 * uint16
  // t passed in R25:R24
  // put ticks in R27:R26
  ldi R22, tickFreq     // 1
  mul R24, R22          // 1
  mov R26, R0           // 1
  mov R27, R1           // 1
  mul R25, R22          // 1
  add R27, R0           // 1
  // ignore overflow in R1 !!!!!!!!!!!!!!!! <= potentially jump to 3 byte loop counter portion
  // restore R1 to zero
  clr R1                //1

  // test if ticks required < overhead, jump to finish if true
  cpi R26, shortdelay   // 1
  cpc R27, R1           // 1                         // 9 cycles
  brlo finish           // 2 if true, 1 if false

  // Calculate loop counter
  // Reuse R27:R26
  // First substract overhead
  sbiw R26, overheadloop          // 2 cycles

  // Loop count = tickcount / 4
  // http://www.avrfreaks.net/comment/150853#comment-150853
  lsr R27               // 1
  ror R26               // 1
  lsr R27               // 1
  ror R26               // 1

loop:
  // loop, 4 cycles/loop - 1  (last loop cycle doesn't branch so only 1 cycle for brne
  sbiw R26,1       // 2 cycles, operates on R24:R25, R26:R27, R28:R29, R30:R31
  brne loop        // 2 cycles for looping, 1 to continue
finish:
end;

end.

