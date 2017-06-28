unit integermath;

interface

function fpc_div_byte(n, z: byte): byte;
function fpc_div_word(n, z: word): word;
function fpc_div_dword(n, z: dword): dword;

implementation

//**************************************************************************
// "div8u" - 8/8 Bit Unsigned Division
// Number of words	:14
// Number of cycles	:97
//**************************************************************************

function fpc_div_byte(n, z: byte): byte; assembler;
label
  d8u_1, d8u_2, d8u_3, finish;
asm
//	drem8u	= r20		remainder
//	dres8u	= r24		result
//	dd8u	= r24		Dividend
//	dv8u	= r22		Divisor
//	dcnt8u	= r18		loop counter

	sub	r20, r20	// clear remainder and carry
	ldi	r18, 9	        // init loop counter
d8u_1:	rol	r24		// shift left dividend
	dec	r18		// decrement counter
	brne	d8u_2		// if done
	rjmp    finish		//    return
d8u_2:	rol	r20		// shift dividend into remainder
	sub	r20, r22	// remainder = remainder - divisor
	brcc	d8u_3		// if result negative
	add	r20, r22	//    restore remainder
	clc			//    clear carry to be shifted into result
	rjmp	d8u_1		// else
d8u_3:	sec			//    set carry to be shifted into result
	rjmp	d8u_1
finish:
end;


// **************************************************************************
//  "div16u" - 16/16 Bit Unsigned Division
//  Number of words	:19
//  Number of cycles	:235/251 (Min/Max)
// **************************************************************************

function fpc_div_word(n, z: word): word; assembler;
label
  d16u_1, d16u_2, d16u_3, finish;
asm
//	drem16uL=r20  // remainder low
//	drem16uH=r21  // remainder high
//	dd16uL	=r24  // Dividend / result low byte
//	dd16uH	=r25  // Dividend / result high byte
//	dv16uL	=r22  // divisor low byte
//	dv16uH	=r23  // divisor high byte
//	dcnt16u	=r18  // loop counter

  clr	R20	        //clear remainder Low byte
  sub	R21, R21        //clear remainder High byte and carry flag
  ldi	R18, 17	        //init loop counter
d16u_1:
  rol	R24		//shift left dividend
  rol	R25
  dec	R18		//decrement counter
  brne	d16u_2		//if done
  rjmp  finish//ret			//    return
d16u_2:
  rol	R20	        //shift dividend into remainder
  rol	R21
  sub	R20, R22	//remainder = remainder - divisor
  sbc	R21, R23	//
  brcc	d16u_3		//if result negative
  add	R20, R22	//    restore remainder
  adc	R21, R23
  clc			//    clear carry to be shifted into result
  rjmp	d16u_1		//else
d16u_3:
  sec			//    set carry to be shifted into result
  rjmp	d16u_1
finish:
end;

function fpc_div_dword(n, z: dword): dword; assembler;
label
  d32u_1, d32u_2, d32u_3, finish;
asm
//	dividend & result R25, R24, R23, R22
//	divisor           R21, R20, R19, R18
//	remainder         R17, R16, R15, R14
//      loop counter      R26
  clr	R14	        //clear remainder Low byte
  clr	R15
  clr	R16
  sub	R17, R17        //clear remainder High byte and carry flag
  ldi	R26, 33	        //init loop counter
d32u_1:
  rol	R22		//shift left dividend low byte
  rol	R23
  rol	R24
  rol	R25             //shift left dividend high byte
  dec	R26		//decrement counter
  brne	d32u_2		//if done
  rjmp  finish		//    return
d32u_2:
  rol	R14	        //shift dividend into remainder
  rol	R15
  rol   R16
  rol   R17
  sub	R14, R18	//remainder = remainder - divisor
  sbc	R15, R19
  sbc	R16, R20
  sbc	R17, R21
  brcc	d32u_3		//if result negative
  add	R14, R18	//    restore remainder
  adc	R15, R19
  adc	R16, R20
  adc	R17, R21
  clc			//    clear carry to be shifted into result
  rjmp	d32u_1		//else
d32u_3:
  sec			//    set carry to be shifted into result
  rjmp	d32u_1
finish:
end;

end.

