unit ATtiny13;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ACME=6);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ACME,
    ReservedBit7: TBitField;
  end;
var
  ADCSRB: byte absolute $23;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $23;
  ADCSRBrec: TADCSRBrec absolute $23;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  ACME = 6;  m_ACME = 64;  // Analog Comparator Multiplexer Enable

var
  ADC: word absolute $24;  // ADC Data Register  Bytes
  ADCL: byte absolute $24;
  ADCH: byte absolute $25;

type
  TADCSRAset = bitpacked set of (e_ADPS0, e_ADPS1, e_ADPS2, e_ADIE, e_ADIF, e_ADATE, e_ADSC, e_ADEN);
  TADCSRArec = bitpacked record
    ADPS0,
    ADPS1,
    ADPS2,
    ADIE,
    ADIF,
    ADATE,
    ADSC,
    ADEN: TBitField;
  end;
var
  ADCSRA: byte absolute $26;  // The ADC Control and Status register
  ADCSRAset: TADCSRAset absolute $26;
  ADCSRArec: TADCSRArec absolute $26;
const
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC Auto Trigger Enable
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

type
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_ADLAR=5, e_REFS0);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ADLAR,
    REFS0,
    ReservedBit7: TBitField;
  end;
var
  ADMUX: byte absolute $27;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $27;
  ADMUXrec: TADMUXrec absolute $27;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bit 0

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
  ACSR: byte absolute $28;  // Analog Comparator Control And Status Register
  ACSRset: TACSRset absolute $28;
  ACSRrec: TACSRrec absolute $28;
const
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

type
  TDIDR0set = bitpacked set of (e_AIN0D, e_AIN1D, e_ADC1D, e_ADC3D, e_ADC2D, e_ADC0D);
  TDIDR0rec = bitpacked record
    AIN0D,
    AIN1D,
    ADC1D,
    ADC3D,
    ADC2D,
    ADC0D,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR0: byte absolute $34;
  DIDR0set: TDIDR0set absolute $34;
  DIDR0rec: TDIDR0rec absolute $34;
const
  AIN0D = 0;  m_AIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  m_AIN1D = 2;  // AIN1 Digital Input Disable
  ADC1D = 2;  m_ADC1D = 4;  // ADC2 Digital input Disable
  ADC3D = 3;  m_ADC3D = 8;  // ADC3 Digital input Disable
  ADC2D = 4;  m_ADC2D = 16;  // ADC2 Digital input Disable
  ADC0D = 5;  m_ADC0D = 32;  // ADC0 Digital input Disable

var
  PCMSK: byte absolute $35;  // Pin Change Enable Mask
  PINB: byte absolute $36;  // Input Pins, Port B
  DDRB: byte absolute $37;  // Data Direction Register, Port B

type
  TPORTBset = bitpacked set of (e_PB0, e_PB1, e_PB2, e_PB3, e_PB4, e_PB5);
  TPORTBrec = bitpacked record
    PB0,
    PB1,
    PB2,
    PB3,
    PB4,
    PB5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTB: byte absolute $38;  // Data Register, Port B
  PORTBset: TPORTBset absolute $38;
  PORTBrec: TPORTBrec absolute $38;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;
  PB4 = 4;  m_PB4 = 16;
  PB5 = 5;  m_PB5 = 32;

type
  TEECRset = bitpacked set of (e_EERE, e_EEWE, e_EEMWE, e_EERIE, e_EEPM0, e_EEPM1);
  TEECRrec = bitpacked record
    EERE,
    EEWE,
    EEMWE,
    EERIE,
    EEPM0,
    EEPM1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EECR: byte absolute $3C;  // EEPROM Control Register
  EECRset: TEECRset absolute $3C;
  EECRrec: TEECRrec absolute $3C;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;
  EEPM1 = 5;  m_EEPM1 = 32;

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: byte absolute $3E;  // EEPROM Read/Write Access

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDCE, e_WDP3, e_WDTIE, e_WDTIF);
  TWDTCRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    WDCE,
    WDP3,
    WDTIE,
    WDTIF: TBitField;
  end;
var
  WDTCR: byte absolute $41;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $41;
  WDTCRrec: TWDTCRrec absolute $41;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDTIE = 6;  m_WDTIE = 64;  // Watchdog Timeout Interrupt Enable
  WDTIF = 7;  m_WDTIF = 128;  // Watchdog Timeout Interrupt Flag

type
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLKPS3, e_CLKPCE=7);
  TCLKPRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    CLKPS2,
    CLKPS3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    CLKPCE: TBitField;
  end;
var
  CLKPR: byte absolute $46;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $46;
  CLKPRrec: TCLKPRrec absolute $46;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits
  CLKPCE = 7;  m_CLKPCE = 128;  // Clock Prescaler Change Enable

type
  TGTCCRset = bitpacked set of (e_PSR10, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR10,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    TSM: TBitField;
  end;
var
  GTCCR: byte absolute $48;  // General Timer Conuter Register
  GTCCRset: TGTCCRset absolute $48;
  GTCCRrec: TGTCCRrec absolute $48;
const
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset Timer/Counter0
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

var
  OCR0B: byte absolute $49;  // Timer/Counter0 Output Compare Register
  DWDR: byte absolute $4E;  // Debug Wire Data Register

type
  TTCCR0Aset = bitpacked set of (e_WGM00, e_WGM01, e_COM0B0=4, e_COM0B1, e_COM0A0, e_COM0A1);
  TTCCR0Arec = bitpacked record
    WGM00,
    WGM01,
    ReservedBit2,
    ReservedBit3,
    COM0B0,
    COM0B1,
    COM0A0,
    COM0A1: TBitField;
  end;
var
  TCCR0A: byte absolute $4F;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $4F;
  TCCR0Arec: TTCCR0Arec absolute $4F;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Match Output B Mode
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Match Output B Mode
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Match Output A Mode
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Match Output A Mode

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
  OSCCAL: byte absolute $51;  // Oscillator Calibration Register
  OSCCALset: TOSCCALset absolute $51;
  OSCCALrec: TOSCCALrec absolute $51;
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
  TCNT0: byte absolute $52;  // Timer/Counter0

type
  TTCCR0Bset = bitpacked set of (e_CS00, e_CS01, e_CS02, e_WGM02, e_FOC0B=6, e_FOC0A);
  TTCCR0Brec = bitpacked record
    CS00,
    CS01,
    CS02,
    WGM02,
    ReservedBit4,
    ReservedBit5,
    FOC0B,
    FOC0A: TBitField;
  end;
var
  TCCR0B: byte absolute $53;  // Timer/Counter Control Register B
  TCCR0Bset: TTCCR0Bset absolute $53;
  TCCR0Brec: TTCCR0Brec absolute $53;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  WGM02 = 3;  m_WGM02 = 8;  // Waveform Generation Mode
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare A

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
  MCUSR: byte absolute $54;  // MCU Status register
  MCUSRset: TMCUSRset absolute $54;
  MCUSRrec: TMCUSRrec absolute $54;
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
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 Bit 1
  SM0 = 3;  m_SM0 = 8;  // Sleep Mode Select Bits
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select Bits
  SE = 5;  m_SE = 32;  // Sleep Enable
  PUD = 6;  m_PUD = 64;  // Pull-up Disable

var
  OCR0A: byte absolute $56;  // Timer/Counter0 Output Compare Register

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RFLB, e_CTPB);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RFLB,
    CTPB,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  RFLB = 3;  m_RFLB = 8;  // Read Fuse and Lock Bits
  CTPB = 4;  m_CTPB = 16;  // Clear Temporary Page Buffer

type
  TTIFR0set = bitpacked set of (e_TOV0=1, e_OCF0A, e_OCF0B);
  TTIFR0rec = bitpacked record
    ReservedBit0,
    TOV0,
    OCF0A,
    OCF0B,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR0: byte absolute $58;  // Timer/Counter0 Interrupt Flag register
  TIFR0set: TTIFR0set absolute $58;
  TIFR0rec: TTIFR0rec absolute $58;
const
  TOV0 = 1;  m_TOV0 = 2;  // Timer/Counter0 Overflow Flag
  OCF0A = 2;  m_OCF0A = 4;  // Timer/Counter0 Output Compare Flag 0A
  OCF0B = 3;  m_OCF0B = 8;  // Timer/Counter0 Output Compare Flag 0B

type
  TTIMSK0set = bitpacked set of (e_TOIE0=1, e_OCIE0A, e_OCIE0B);
  TTIMSK0rec = bitpacked record
    ReservedBit0,
    TOIE0,
    OCIE0A,
    OCIE0B,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK0: byte absolute $59;  // Timer/Counter0 Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $59;
  TIMSK0rec: TTIMSK0rec absolute $59;
const
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 2;  m_OCIE0A = 4;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE0B = 3;  m_OCIE0B = 8;  // Timer/Counter0 Output Compare Match B Interrupt Enable

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
  GIFR: byte absolute $5A;  // General Interrupt Flag register
  GIFRset: TGIFRset absolute $5A;
  GIFRrec: TGIFRrec absolute $5A;
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
  GIMSK: byte absolute $5B;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $5B;
  GIMSKrec: TGIMSKrec absolute $5B;
const
  PCIE = 5;  m_PCIE = 32;  // Pin Change Interrupt Enable
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable

var
  SPL: byte absolute $5D;  // Stack Pointer Low Byte

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
  SREG: byte absolute $5F;  // Status Register
  SREGset: TSREGset absolute $5F;
  SREGrec: TSREGrec absolute $5F;
const
  C = 0;  m_C = 1;  // Carry Flag
  Z = 1;  m_Z = 2;  // Zero Flag
  N = 2;  m_N = 4;  // Negative Flag
  V = 3;  m_V = 8;  // Two's Complement Overflow Flag
  S = 4;  m_S = 16;  // Sign Bit
  H = 5;  m_H = 32;  // Half Carry Flag
  T = 6;  m_T = 64;  // Bit Copy Storage
  I = 7;  m_I = 128;  // Global Interrupt Enable
  // typedefs = 21

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 External Interrupt Request 0
procedure TIM0_OVF_ISR; external name 'TIM0_OVF_ISR'; // Interrupt 3 Timer/Counter0 Overflow
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 4 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 5 Analog Comparator
procedure TIM0_COMPA_ISR; external name 'TIM0_COMPA_ISR'; // Interrupt 6 Timer/Counter Compare Match A
procedure TIM0_COMPB_ISR; external name 'TIM0_COMPB_ISR'; // Interrupt 7 Timer/Counter Compare Match B
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 8 Watchdog Time-out
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 9 ADC Conversion Complete

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp PCINT0_ISR
  rjmp TIM0_OVF_ISR
  rjmp EE_RDY_ISR
  rjmp ANA_COMP_ISR
  rjmp TIM0_COMPA_ISR
  rjmp TIM0_COMPB_ISR
  rjmp WDT_ISR
  rjmp ADC_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak TIM0_OVF_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak TIM0_COMPA_ISR
  .weak TIM0_COMPB_ISR
  .weak WDT_ISR
  .weak ADC_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set TIM0_OVF_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set TIM0_COMPA_ISR, Default_IRQ_handler
  .set TIM0_COMPB_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
end;

end.
