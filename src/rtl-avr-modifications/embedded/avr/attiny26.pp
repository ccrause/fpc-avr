unit ATtiny26;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  ADC: word absolute $24;  // ADC Data Register  Bytes
  ADCL: byte absolute $24;
  ADCH: byte absolute $25;

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
  ADCSR: byte absolute $26;  // The ADC Control and Status register
  ADCSRset: TADCSRset absolute $26;
  ADCSRrec: TADCSRrec absolute $26;
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
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_MUX4, e_ADLAR, e_REFS0, e_REFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    MUX4,
    ADLAR,
    REFS0,
    REFS1: TBitField;
  end;
var
  ADMUX: byte absolute $27;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $27;
  ADMUXrec: TADMUXrec absolute $27;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  MUX4 = 4;  m_MUX4 = 16;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bits

type
  TACSRset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACME, e_ACIE, e_ACI, e_ACO, e_ACBG, e_ACD);
  TACSRrec = bitpacked record
    ACIS0,
    ACIS1,
    ACME,
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
  ACME = 2;  m_ACME = 4;  // Analog Comparator Multiplexer Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

type
  TUSICRset = bitpacked set of (e_USITC, e_USICLK, e_USICS0, e_USICS1, e_USIWM0, e_USIWM1, e_USIOIE, e_USISIE);
  TUSICRrec = bitpacked record
    USITC,
    USICLK,
    USICS0,
    USICS1,
    USIWM0,
    USIWM1,
    USIOIE,
    USISIE: TBitField;
  end;
var
  USICR: byte absolute $2D;  // USI Control Register
  USICRset: TUSICRset absolute $2D;
  USICRrec: TUSICRrec absolute $2D;
const
  USITC = 0;  m_USITC = 1;  // Toggle Clock Port Pin
  USICLK = 1;  m_USICLK = 2;  // Clock Strobe
  USICS0 = 2;  m_USICS0 = 4;  // USI Clock Source Select Bits
  USICS1 = 3;  m_USICS1 = 8;  // USI Clock Source Select Bits
  USIWM0 = 4;  m_USIWM0 = 16;  // USI Wire Mode Bits
  USIWM1 = 5;  m_USIWM1 = 32;  // USI Wire Mode Bits
  USIOIE = 6;  m_USIOIE = 64;  // Counter Overflow Interrupt Enable
  USISIE = 7;  m_USISIE = 128;  // Start Condition Interrupt Enable

type
  TUSISRset = bitpacked set of (e_USICNT0, e_USICNT1, e_USICNT2, e_USICNT3, e_USIDC, e_USIPF, e_USIOIF, e_USISIF);
  TUSISRrec = bitpacked record
    USICNT0,
    USICNT1,
    USICNT2,
    USICNT3,
    USIDC,
    USIPF,
    USIOIF,
    USISIF: TBitField;
  end;
var
  USISR: byte absolute $2E;  // USI Status Register
  USISRset: TUSISRset absolute $2E;
  USISRrec: TUSISRrec absolute $2E;
const
  USICNT0 = 0;  m_USICNT0 = 1;  // USI Counter Value Bits
  USICNT1 = 1;  m_USICNT1 = 2;  // USI Counter Value Bits
  USICNT2 = 2;  m_USICNT2 = 4;  // USI Counter Value Bits
  USICNT3 = 3;  m_USICNT3 = 8;  // USI Counter Value Bits
  USIDC = 4;  m_USIDC = 16;  // Data Output Collision
  USIPF = 5;  m_USIPF = 32;  // Stop Condition Flag
  USIOIF = 6;  m_USIOIF = 64;  // Counter Overflow Interrupt Flag
  USISIF = 7;  m_USISIF = 128;  // Start Condition Interrupt Flag

var
  USIDR: byte absolute $2F;  // USI Data Register
  PINB: byte absolute $36;  // Port B Input Pins
  DDRB: byte absolute $37;  // Port B Data Direction Register

type
  TPORTBset = bitpacked set of (e_PB0, e_PB1, e_PB2, e_PB3, e_PB4, e_PB5, e_PB6, e_PB7);
  TPORTBrec = bitpacked record
    PB0,
    PB1,
    PB2,
    PB3,
    PB4,
    PB5,
    PB6,
    PB7: TBitField;
  end;
var
  PORTB: byte absolute $38;  // Port B Data Register
  PORTBset: TPORTBset absolute $38;
  PORTBrec: TPORTBrec absolute $38;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;
  PB4 = 4;  m_PB4 = 16;
  PB5 = 5;  m_PB5 = 32;
  PB6 = 6;  m_PB6 = 64;
  PB7 = 7;  m_PB7 = 128;

var
  PINA: byte absolute $39;  // Port A Input Pins
  DDRA: byte absolute $3A;  // Port A Data Direction Register

type
  TPORTAset = bitpacked set of (e_PA0, e_PA1, e_PA2, e_PA3, e_PA4, e_PA5, e_PA6, e_PA7);
  TPORTArec = bitpacked record
    PA0,
    PA1,
    PA2,
    PA3,
    PA4,
    PA5,
    PA6,
    PA7: TBitField;
  end;
var
  PORTA: byte absolute $3B;  // Port A Data Register
  PORTAset: TPORTAset absolute $3B;
  PORTArec: TPORTArec absolute $3B;
const
  PA0 = 0;  m_PA0 = 1;
  PA1 = 1;  m_PA1 = 2;
  PA2 = 2;  m_PA2 = 4;
  PA3 = 3;  m_PA3 = 8;
  PA4 = 4;  m_PA4 = 16;
  PA5 = 5;  m_PA5 = 32;
  PA6 = 6;  m_PA6 = 64;
  PA7 = 7;  m_PA7 = 128;

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
  EECR: byte absolute $3C;  // EEPROM Control Register
  EECRset: TEECRset absolute $3C;
  EECRrec: TEECRrec absolute $3C;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: byte absolute $3E;  // EEPROM Read/Write Access

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDCE);
  TWDTCRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    WDCE,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WDTCR: byte absolute $41;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $41;
  WDTCRrec: TWDTCRrec absolute $41;
const
  WDP0 = 0;  m_WDP0 = 1;  // Watch Dog Timer Prescaler bits
  WDP1 = 1;  m_WDP1 = 2;  // Watch Dog Timer Prescaler bits
  WDP2 = 2;  m_WDP2 = 4;  // Watch Dog Timer Prescaler bits
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable

type
  TPLLCSRset = bitpacked set of (e_PLOCK, e_PLLE, e_PCKE);
  TPLLCSRrec = bitpacked record
    PLOCK,
    PLLE,
    PCKE,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PLLCSR: byte absolute $49;  // PLL Control and Status Register
  PLLCSRset: TPLLCSRset absolute $49;
  PLLCSRrec: TPLLCSRrec absolute $49;
const
  PLOCK = 0;  m_PLOCK = 1;  // PLL Lock Detector
  PLLE = 1;  m_PLLE = 2;  // PLL Enable
  PCKE = 2;  m_PCKE = 4;  // PCK Enable

var
  OCR1C: byte absolute $4B;  // Output Compare Register
  OCR1B: byte absolute $4C;  // Output Compare Register
  OCR1A: byte absolute $4D;  // Output Compare Register
  TCNT1: byte absolute $4E;  // Timer/Counter Register

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_CS13, e_PSR1=6, e_CTC1);
  TTCCR1Brec = bitpacked record
    CS10,
    CS11,
    CS12,
    CS13,
    ReservedBit4,
    ReservedBit5,
    PSR1,
    CTC1: TBitField;
  end;
var
  TCCR1B: byte absolute $4F;  // Timer/Counter Control Register B
  TCCR1Bset: TTCCR1Bset absolute $4F;
  TCCR1Brec: TTCCR1Brec absolute $4F;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select Bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select Bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select Bits
  CS13 = 3;  m_CS13 = 8;  // Clock Select Bits
  PSR1 = 6;  m_PSR1 = 64;  // Prescaler Reset Timer/Counter1
  CTC1 = 7;  m_CTC1 = 128;  // Clear Timer/Counter on Compare Match

type
  TTCCR1Aset = bitpacked set of (e_PWM1B, e_PWM1A, e_FOC1B, e_FOC1A, e_COM1B0, e_COM1B1, e_COM1A0, e_COM1A1);
  TTCCR1Arec = bitpacked record
    PWM1B,
    PWM1A,
    FOC1B,
    FOC1A,
    COM1B0,
    COM1B1,
    COM1A0,
    COM1A1: TBitField;
  end;
var
  TCCR1A: byte absolute $50;  // Timer/Counter Control Register A
  TCCR1Aset: TTCCR1Aset absolute $50;
  TCCR1Arec: TTCCR1Arec absolute $50;
const
  PWM1B = 0;  m_PWM1B = 1;  // Pulse Width Modulator B Enable
  PWM1A = 1;  m_PWM1A = 2;  // Pulse Width Modulator A Enable
  FOC1B = 2;  m_FOC1B = 4;  // Force Output Compare Match 1B
  FOC1A = 3;  m_FOC1A = 8;  // Force Output Compare Match 1A
  COM1B0 = 4;  m_COM1B0 = 16;  // Comparator B Output Mode Bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Comparator B Output Mode Bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Comparator A Output Mode Bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Comparator A Output Mode Bits

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
  OSCCAL: byte absolute $51;  // Status Register
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
  TCNT0: byte absolute $52;  // Timer Counter 0

type
  TTCCR0set = bitpacked set of (e_CS00, e_CS01, e_CS02, e_PSR0);
  TTCCR0rec = bitpacked record
    CS00,
    CS01,
    CS02,
    PSR0,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TCCR0: byte absolute $53;  // Timer/Counter0 Control Register
  TCCR0set: TTCCR0set absolute $53;
  TCCR0rec: TTCCR0rec absolute $53;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select0 bits
  CS01 = 1;  m_CS01 = 2;  // Clock Select0 bits
  CS02 = 2;  m_CS02 = 4;  // Clock Select0 bits
  PSR0 = 3;  m_PSR0 = 8;  // Prescaler Reset Timer/Counter0

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
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 bits
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 bits
  SM0 = 3;  m_SM0 = 8;  // Sleep Mode Select Bits
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select Bits
  SE = 5;  m_SE = 32;  // Sleep Enable
  PUD = 6;  m_PUD = 64;  // Pull-up Disable

type
  TTIFRset = bitpacked set of (e_TOV0=1, e_TOV1, e_OCF1B=5, e_OCF1A);
  TTIFRrec = bitpacked record
    ReservedBit0,
    TOV0,
    TOV1,
    ReservedBit3,
    ReservedBit4,
    OCF1B,
    OCF1A,
    ReservedBit7: TBitField;
  end;
var
  TIFR: byte absolute $58;  // Timer/Counter Interrupt Flag Register
  TIFRset: TTIFRset absolute $58;
  TIFRrec: TTIFRrec absolute $58;
const
  TOV0 = 1;  m_TOV0 = 2;  // Timer/Counter0 Overflow Flag
  TOV1 = 2;  m_TOV1 = 4;  // Timer/Counter1 Overflow Flag
  OCF1B = 5;  m_OCF1B = 32;  // Timer/Counter1 Output Compare Flag 1B
  OCF1A = 6;  m_OCF1A = 64;  // Timer/Counter1 Output Compare Flag 1A

type
  TTIMSKset = bitpacked set of (e_TOIE0=1, e_TOIE1, e_OCIE1B=5, e_OCIE1A);
  TTIMSKrec = bitpacked record
    ReservedBit0,
    TOIE0,
    TOIE1,
    ReservedBit3,
    ReservedBit4,
    OCIE1B,
    OCIE1A,
    ReservedBit7: TBitField;
  end;
var
  TIMSK: byte absolute $59;  // Timer/Counter Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $59;
  TIMSKrec: TTIMSKrec absolute $59;
const
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  TOIE1 = 2;  m_TOIE1 = 4;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // Timer/Counter1 Output Compare Interrupt Enable
  OCIE1A = 6;  m_OCIE1A = 64;  // Timer/Counter1 Output Compare Interrupt Enable

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
  TGIMSKset = bitpacked set of (e_PCIE0=4, e_PCIE1, e_INT0);
  TGIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIE0,
    PCIE1,
    INT0,
    ReservedBit7: TBitField;
  end;
var
  GIMSK: byte absolute $5B;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $5B;
  GIMSKrec: TGIMSKrec absolute $5B;
const
  PCIE0 = 4;  m_PCIE0 = 16;  // Pin Change Interrupt Enables
  PCIE1 = 5;  m_PCIE1 = 32;  // Pin Change Interrupt Enables
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable

var
  SP: byte absolute $5D;  // Stack Pointer

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
procedure IO_PINS_ISR; external name 'IO_PINS_ISR'; // Interrupt 2 External Interrupt Request 0
procedure TIMER1_CMPA_ISR; external name 'TIMER1_CMPA_ISR'; // Interrupt 3 Timer/Counter1 Compare Match 1A
procedure TIMER1_CMPB_ISR; external name 'TIMER1_CMPB_ISR'; // Interrupt 4 Timer/Counter1 Compare Match 1B
procedure TIMER1_OVF1_ISR; external name 'TIMER1_OVF1_ISR'; // Interrupt 5 Timer/Counter1 Overflow
procedure TIMER0_OVF0_ISR; external name 'TIMER0_OVF0_ISR'; // Interrupt 6 Timer/Counter0 Overflow
procedure USI_STRT_ISR; external name 'USI_STRT_ISR'; // Interrupt 7 USI Start
procedure USI_OVF_ISR; external name 'USI_OVF_ISR'; // Interrupt 8 USI Overflow
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 9 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 10 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 11 ADC Conversion Complete

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp IO_PINS_ISR
  rjmp TIMER1_CMPA_ISR
  rjmp TIMER1_CMPB_ISR
  rjmp TIMER1_OVF1_ISR
  rjmp TIMER0_OVF0_ISR
  rjmp USI_STRT_ISR
  rjmp USI_OVF_ISR
  rjmp EE_RDY_ISR
  rjmp ANA_COMP_ISR
  rjmp ADC_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak IO_PINS_ISR
  .weak TIMER1_CMPA_ISR
  .weak TIMER1_CMPB_ISR
  .weak TIMER1_OVF1_ISR
  .weak TIMER0_OVF0_ISR
  .weak USI_STRT_ISR
  .weak USI_OVF_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak ADC_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set IO_PINS_ISR, Default_IRQ_handler
  .set TIMER1_CMPA_ISR, Default_IRQ_handler
  .set TIMER1_CMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF1_ISR, Default_IRQ_handler
  .set TIMER0_OVF0_ISR, Default_IRQ_handler
  .set USI_STRT_ISR, Default_IRQ_handler
  .set USI_OVF_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
end;

end.
