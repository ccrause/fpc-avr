unit ATtiny15;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  ADC: word absolute $04;  // ADC Data Register  Bytes
  ADCL: byte absolute $04;
  ADCH: byte absolute $05;

type
  TADCSRset = bitpacked set of (e_ADPS0, e_ADPS1, e_ADPS2, e_ADIE, e_ADIF, e_ADFR, e_ADSC, e_ADEN);
  TADCSRrec = bitpacked record
    ADPS0,
    ADPS1,
    ADPS2,
    ADIE,
    ADIF,
    ADFR,
    ADSC,
    ADEN: TBitField;
  end;
var
  ADCSR: byte absolute $06;  // The ADC Control and Status register
  ADCSRset: TADCSRset absolute $06;
  ADCSRrec: TADCSRrec absolute $06;
const
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADFR = 5;  m_ADFR = 32;  // ADC  Free Running Select
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

type
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_ADLAR=5, e_REFS0, e_REFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    ReservedBit3,
    ReservedBit4,
    ADLAR,
    REFS0,
    REFS1: TBitField;
  end;
var
  ADMUX: byte absolute $07;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $07;
  ADMUXrec: TADMUXrec absolute $07;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bits

type
  TACSRset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIE=3, e_ACI, e_ACO, e_ACBG, e_ACD);
  TACSRrec = bitpacked record
    ACIS0,
    ACIS1,
    ReservedBit2,
    ACIE,
    ACI,
    ACO,
    ACBG,
    ACD: TBitField;
  end;
var
  ACSR: byte absolute $08;  // Analog Comparator Control And Status Register
  ACSRset: TACSRset absolute $08;
  ACSRrec: TACSRrec absolute $08;
const
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

var
  PINB: byte absolute $16;  // Input Pins, Port B
  DDRB: byte absolute $17;  // Data Direction Register, Port B

type
  TPORTBset = bitpacked set of (e_PB0, e_PB1, e_PB2, e_PB3, e_PB4);
  TPORTBrec = bitpacked record
    PB0,
    PB1,
    PB2,
    PB3,
    PB4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTB: byte absolute $18;  // Data Register, Port B
  PORTBset: TPORTBset absolute $18;
  PORTBrec: TPORTBrec absolute $18;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;
  PB4 = 4;  m_PB4 = 16;

type
  TEECRset = bitpacked set of (e_EERE, e_EEWE, e_EEMWE, e_EERIE);
  TEECRrec = bitpacked record
    EERE,
    EEWE,
    EEMWE,
    EERIE,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EECR: byte absolute $1C;  // EEPROM Control Register
  EECRset: TEECRset absolute $1C;
  EECRrec: TEECRrec absolute $1C;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable

var
  EEDR: byte absolute $1D;  // EEPROM Data Register
  EEAR: byte absolute $1E;  // EEPROM Read/Write Access

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDTOE);
  TWDTCRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    WDTOE,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WDTCR: byte absolute $21;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $21;
  WDTCRrec: TWDTCRrec absolute $21;
const
  WDP0 = 0;  m_WDP0 = 1;  // Watch Dog Timer Prescaler bits
  WDP1 = 1;  m_WDP1 = 2;  // Watch Dog Timer Prescaler bits
  WDP2 = 2;  m_WDP2 = 4;  // Watch Dog Timer Prescaler bits
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDTOE = 4;  m_WDTOE = 16;  // RW

type
  TSFIORset = bitpacked set of (e_PSR0, e_PSR1, e_FOC1A);
  TSFIORrec = bitpacked record
    PSR0,
    PSR1,
    FOC1A,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFIOR: byte absolute $2C;  // Special Function IO Register
  SFIORset: TSFIORset absolute $2C;
  SFIORrec: TSFIORrec absolute $2C;
const
  PSR0 = 0;  m_PSR0 = 1;  // Prescaler Reset Timer/Counter0
  PSR1 = 1;  m_PSR1 = 2;  // Prescaler Reset Timer/Counter1
  FOC1A = 2;  m_FOC1A = 4;  // Force Output Compare 1A

var
  OCR1B: byte absolute $2D;  // Output Compare Register
  OCR1A: byte absolute $2E;  // Output Compare Register
  TCNT1: byte absolute $2F;  // Timer/Counter Register

type
  TTCCR1set = bitpacked set of (e_CS10, e_CS11, e_CS12, e_CS13, e_COM1A0, e_COM1A1, e_PWM1, e_CTC1);
  TTCCR1rec = bitpacked record
    CS10,
    CS11,
    CS12,
    CS13,
    COM1A0,
    COM1A1,
    PWM1,
    CTC1: TBitField;
  end;
var
  TCCR1: byte absolute $30;  // Timer/Counter Control Register
  TCCR1set: TTCCR1set absolute $30;
  TCCR1rec: TTCCR1rec absolute $30;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select Bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select Bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select Bits
  CS13 = 3;  m_CS13 = 8;  // Clock Select Bits
  COM1A0 = 4;  m_COM1A0 = 16;  // Compare Output Mode, Bits
  COM1A1 = 5;  m_COM1A1 = 32;  // Compare Output Mode, Bits
  PWM1 = 6;  m_PWM1 = 64;  // Pulse Width Modulator Enable
  CTC1 = 7;  m_CTC1 = 128;  // Clear Timer/Counter on Compare Match

type
  TOSCCALset = bitpacked set of (e_OSCCAL0, e_OSCCAL1, e_OSCCAL2, e_OSCCAL3, e_OSCCAL4, e_OSCCAL5, e_OSCCAL6, e_OSCCAL7);
  TOSCCALrec = bitpacked record
    OSCCAL0,
    OSCCAL1,
    OSCCAL2,
    OSCCAL3,
    OSCCAL4,
    OSCCAL5,
    OSCCAL6,
    OSCCAL7: TBitField;
  end;
var
  OSCCAL: byte absolute $31;  // Status Register
  OSCCALset: TOSCCALset absolute $31;
  OSCCALrec: TOSCCALrec absolute $31;
const
  OSCCAL0 = 0;  m_OSCCAL0 = 1;  // Oscillator Calibration 
  OSCCAL1 = 1;  m_OSCCAL1 = 2;  // Oscillator Calibration 
  OSCCAL2 = 2;  m_OSCCAL2 = 4;  // Oscillator Calibration 
  OSCCAL3 = 3;  m_OSCCAL3 = 8;  // Oscillator Calibration 
  OSCCAL4 = 4;  m_OSCCAL4 = 16;  // Oscillator Calibration 
  OSCCAL5 = 5;  m_OSCCAL5 = 32;  // Oscillator Calibration 
  OSCCAL6 = 6;  m_OSCCAL6 = 64;  // Oscillator Calibration 
  OSCCAL7 = 7;  m_OSCCAL7 = 128;  // Oscillator Calibration

var
  TCNT0: byte absolute $32;  // Timer Counter 0

type
  TTCCR0set = bitpacked set of (e_CS00, e_CS01, e_CS02);
  TTCCR0rec = bitpacked record
    CS00,
    CS01,
    CS02,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TCCR0: byte absolute $33;  // Timer/Counter0 Control Register
  TCCR0set: TTCCR0set absolute $33;
  TCCR0rec: TTCCR0rec absolute $33;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select0 bit 0
  CS01 = 1;  m_CS01 = 2;  // Clock Select0 bit 1
  CS02 = 2;  m_CS02 = 4;  // Clock Select0 bit 2

type
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MCUSR: byte absolute $34;  // MCU Status register
  MCUSRset: TMCUSRset absolute $34;
  MCUSRrec: TMCUSRrec absolute $34;
const
  PORF = 0;  m_PORF = 1;  // Power-On Reset Flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  BORF = 2;  m_BORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

type
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_SM0=3, e_SM1, e_SE, e_PUD);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    ReservedBit2,
    SM0,
    SM1,
    SE,
    PUD,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $35;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $35;
  MCUCRrec: TMCUCRrec absolute $35;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 bits
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 bits
  SM0 = 3;  m_SM0 = 8;  // Sleep Mode Select Bits
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select Bits
  SE = 5;  m_SE = 32;  // Sleep Enable
  PUD = 6;  m_PUD = 64;  // Pull-up Disable

type
  TTIFRset = bitpacked set of (e_TOV0=1, e_TOV1, e_OCF1A=6);
  TTIFRrec = bitpacked record
    ReservedBit0,
    TOV0,
    TOV1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    OCF1A,
    ReservedBit7: TBitField;
  end;
var
  TIFR: byte absolute $38;  // Timer/Counter Interrupt Flag Register
  TIFRset: TTIFRset absolute $38;
  TIFRrec: TTIFRrec absolute $38;
const
  TOV0 = 1;  m_TOV0 = 2;  // Timer/Counter0 Overflow Flag
  TOV1 = 2;  m_TOV1 = 4;  // Timer/Counter1 Overflow Flag
  OCF1A = 6;  m_OCF1A = 64;  // Timer/Counter1 Output Compare Flag 1A

type
  TTIMSKset = bitpacked set of (e_TOIE0=1, e_TOIE1, e_OCIE1A=6);
  TTIMSKrec = bitpacked record
    ReservedBit0,
    TOIE0,
    TOIE1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    OCIE1A,
    ReservedBit7: TBitField;
  end;
var
  TIMSK: byte absolute $39;  // Timer/Counter Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $39;
  TIMSKrec: TTIMSKrec absolute $39;
const
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  TOIE1 = 2;  m_TOIE1 = 4;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 6;  m_OCIE1A = 64;  // OCIE1A: Timer/Counter1 Output Compare Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF=5, e_INTF0);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    PCIF,
    INTF0,
    ReservedBit7: TBitField;
  end;
var
  GIFR: byte absolute $3A;  // General Interrupt Flag register
  GIFRset: TGIFRset absolute $3A;
  GIFRrec: TGIFRrec absolute $3A;
const
  PCIF = 5;  m_PCIF = 32;  // Pin Change Interrupt Flag
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flag 0

type
  TGIMSKset = bitpacked set of (e_PCIE=5, e_INT0);
  TGIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    PCIE,
    INT0,
    ReservedBit7: TBitField;
  end;
var
  GIMSK: byte absolute $3B;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $3B;
  GIMSKrec: TGIMSKrec absolute $3B;
const
  PCIE = 5;  m_PCIE = 32;  // Pin Change Interrupt Enable
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable

type
  TSREGset = bitpacked set of (e_C, e_Z, e_N, e_V, e_S, e_H, e_T, e_I);
  TSREGrec = bitpacked record
    C,
    Z,
    N,
    V,
    S,
    H,
    T,
    I: TBitField;
  end;
var
  SREG: byte absolute $3F;  // Status Register
  SREGset: TSREGset absolute $3F;
  SREGrec: TSREGrec absolute $3F;
const
  C = 0;  m_C = 1;  // Carry Flag
  Z = 1;  m_Z = 2;  // Zero Flag
  N = 2;  m_N = 4;  // Negative Flag
  V = 3;  m_V = 8;  // Two's Complement Overflow Flag
  S = 4;  m_S = 16;  // Sign Bit
  H = 5;  m_H = 32;  // Half Carry Flag
  T = 6;  m_T = 64;  // Bit Copy Storage
  I = 7;  m_I = 128;  // Global Interrupt Enable
  // typedefs = 17

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt 0
procedure IO_PINS_ISR; external name 'IO_PINS_ISR'; // Interrupt 2 External Interrupt Request 0
procedure TIMER1_COMP_ISR; external name 'TIMER1_COMP_ISR'; // Interrupt 3 Timer/Counter1 Compare Match
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 4 Timer/Counter1 Overflow
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 5 Timer/Counter0 Overflow
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 6 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 7 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 8 ADC Conversion Ready

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp IO_PINS_ISR
  rjmp TIMER1_COMP_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_OVF_ISR
  rjmp EE_RDY_ISR
  rjmp ANA_COMP_ISR
  rjmp ADC_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak IO_PINS_ISR
  .weak TIMER1_COMP_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_OVF_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak ADC_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set IO_PINS_ISR, Default_IRQ_handler
  .set TIMER1_COMP_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
end;

end.
