unit ATtiny84;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TPRRset = bitpacked set of (e_PRADC, e_PRUSI, e_PRTIM0, e_PRTIM1);
  TPRRrec = bitpacked record
    PRADC,
    PRUSI,
    PRTIM0,
    PRTIM1,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $20;  // Power Reduction Register
  PRRset: TPRRset absolute $20;
  PRRrec: TPRRrec absolute $20;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSI = 1;  m_PRUSI = 2;  // Power Reduction USI
  PRTIM0 = 2;  m_PRTIM0 = 4;  // Power Reduction Timer/Counter0
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1

type
  TDIDR0set = bitpacked set of (e_ADC0D, e_ADC1D);
  TDIDR0rec = bitpacked record
    ADC0D,
    ADC1D,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR0: byte absolute $21;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $21;
  DIDR0rec: TDIDR0rec absolute $21;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC 0 Digital input buffer disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC 1 Digital input buffer disable

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADLAR=4, e_ACME=6, e_BIN);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ADLAR,
    ReservedBit5,
    ACME,
    BIN: TBitField;
  end;
var
  ADCSRB: byte absolute $23;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $23;
  ADCSRBrec: TADCSRBrec absolute $23;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source bits
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source bits
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source bits
  ADLAR = 4;  m_ADLAR = 16;  // ADC Left Adjust Result
  ACME = 6;  m_ACME = 64;  // Analog Comparator Multiplexer Enable
  BIN = 7;  m_BIN = 128;  // Bipolar Input Mode

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
  ADCSRA: byte absolute $26;  // ADC Control and Status Register A
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

var
  ADMUX: byte absolute $27;  // ADC Multiplexer Selection Register

type
  TACSRset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIC, e_ACIE, e_ACI, e_ACO, e_ACBG, e_ACD);
  TACSRrec = bitpacked record
    ACIS0,
    ACIS1,
    ACIC,
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
  ACIC = 2;  m_ACIC = 4;  // Analog Comparator Input Capture Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

type
  TTIFR1set = bitpacked set of (e_TOV1, e_OCF1A, e_OCF1B, e_ICF1=5);
  TTIFR1rec = bitpacked record
    TOV1,
    OCF1A,
    OCF1B,
    ReservedBit3,
    ReservedBit4,
    ICF1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR1: byte absolute $2B;  // Timer/Counter Interrupt Flag register
  TIFR1set: TTIFR1set absolute $2B;
  TIFR1rec: TTIFR1rec absolute $2B;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Timer/Counter1 Output Compare A Match Flag
  OCF1B = 2;  m_OCF1B = 4;  // Timer/Counter1 Output Compare B Match Flag
  ICF1 = 5;  m_ICF1 = 32;  // Timer/Counter1 Input Capture Flag

type
  TTIMSK1set = bitpacked set of (e_TOIE1, e_OCIE1A, e_OCIE1B, e_ICIE1=5);
  TTIMSK1rec = bitpacked record
    TOIE1,
    OCIE1A,
    OCIE1B,
    ReservedBit3,
    ReservedBit4,
    ICIE1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK1: byte absolute $2C;  // Timer/Counter1 Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $2C;
  TIMSK1rec: TTIMSK1rec absolute $2C;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output Compare A Match Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output Compare B Match Interrupt Enable
  ICIE1 = 5;  m_ICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

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
  USIBR: byte absolute $30;  // USI Buffer Register
  PCMSK0: byte absolute $32;  // Pin Change Enable Mask 0
  GPIOR0: byte absolute $33;  // General Purpose I/O Register 0
  GPIOR1: byte absolute $34;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $35;  // General Purpose I/O Register 2
  PINB: byte absolute $36;  // Input Pins, Port B
  DDRB: byte absolute $37;  // Data Direction Register, Port B

type
  TPORTBset = bitpacked set of (e_PB0, e_PB1, e_PB2, e_PB3);
  TPORTBrec = bitpacked record
    PB0,
    PB1,
    PB2,
    PB3,
    ReservedBit4,
    ReservedBit5,
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
  TEECRset = bitpacked set of (e_EERE, e_EEPE, e_EEMPE, e_EERIE, e_EEPM0, e_EEPM1);
  TEECRrec = bitpacked record
    EERE,
    EEPE,
    EEMPE,
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
  EEPE = 1;  m_EEPE = 2;  // EEPROM Write Enable
  EEMPE = 2;  m_EEMPE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: word absolute $3E;  // EEPROM Address Register  Bytes
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;
  PCMSK1: byte absolute $40;  // Pin Change Enable Mask 1

type
  TWDTCSRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDCE, e_WDP3, e_WDIE, e_WDIF);
  TWDTCSRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    WDCE,
    WDP3,
    WDIE,
    WDIF: TBitField;
  end;
var
  WDTCSR: byte absolute $41;  // Watchdog Timer Control Register
  WDTCSRset: TWDTCSRset absolute $41;
  WDTCSRrec: TWDTCSRrec absolute $41;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timeout Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timeout Interrupt Flag

type
  TTCCR1Cset = bitpacked set of (e_FOC1B=6, e_FOC1A);
  TTCCR1Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    FOC1B,
    FOC1A: TBitField;
  end;
var
  TCCR1C: byte absolute $42;  // Timer/Counter1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $42;
  TCCR1Crec: TTCCR1Crec absolute $42;
const
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare for Channel B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare for Channel A

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
  GTCCR: byte absolute $43;  // General Timer/Counter Control Register
  GTCCRset: TGTCCRset absolute $43;
  GTCCRrec: TGTCCRrec absolute $43;
const
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset Timer/CounterN
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

var
  ICR1: word absolute $44;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $44;
  ICR1H: byte absolute $45;

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

var
  OCR1B: word absolute $48;  // Timer/Counter1 Output Compare Register B  Bytes
  OCR1BL: byte absolute $48;
  OCR1BH: byte absolute $49;
  OCR1A: word absolute $4A;  // Timer/Counter1 Output Compare Register A  Bytes
  OCR1AL: byte absolute $4A;
  OCR1AH: byte absolute $4B;
  TCNT1: word absolute $4C;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $4C;
  TCNT1H: byte absolute $4D;

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_ICES1=6, e_ICNC1);
  TTCCR1Brec = bitpacked record
    CS10,
    CS11,
    CS12,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES1,
    ICNC1: TBitField;
  end;
var
  TCCR1B: byte absolute $4E;  // Timer/Counter1 Control Register B
  TCCR1Bset: TTCCR1Bset absolute $4E;
  TCCR1Brec: TTCCR1Brec absolute $4E;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select1 bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select1 bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select1 bits
  ICES1 = 6;  m_ICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  m_ICNC1 = 128;  // Input Capture 1 Noise Canceler

type
  TTCCR1Aset = bitpacked set of (e_WGM10, e_WGM11, e_COM1B0=4, e_COM1B1, e_COM1A0, e_COM1A1);
  TTCCR1Arec = bitpacked record
    WGM10,
    WGM11,
    ReservedBit2,
    ReservedBit3,
    COM1B0,
    COM1B1,
    COM1A0,
    COM1A1: TBitField;
  end;
var
  TCCR1A: byte absolute $4F;  // Timer/Counter1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $4F;
  TCCR1Arec: TTCCR1Arec absolute $4F;
const
  WGM10 = 0;  m_WGM10 = 1;  // Pulse Width Modulator Select Bits
  WGM11 = 1;  m_WGM11 = 2;  // Pulse Width Modulator Select Bits
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

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
  TCCR0A: byte absolute $50;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $50;
  TCCR0Arec: TTCCR0Arec absolute $50;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode bits
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode bits
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Match Output B Mode bits
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Match Output B Mode bits
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Match Output A Mode bits
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Match Output A Mode bits

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
  OSCCAL: byte absolute $51;  // Oscillator Calibration Value
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
  CS00 = 0;  m_CS00 = 1;  // Clock Select bits
  CS01 = 1;  m_CS01 = 2;  // Clock Select bits
  CS02 = 2;  m_CS02 = 4;  // Clock Select bits
  WGM02 = 3;  m_WGM02 = 8;  // Waveform Generation Mode bit 2
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
  MCUSR: byte absolute $54;  // MCU Status Register
  MCUSRset: TMCUSRset absolute $54;
  MCUSRrec: TMCUSRrec absolute $54;
const
  PORF = 0;  m_PORF = 1;  // Power-on reset flag
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
  OCR0A: byte absolute $56;  // Timer/Counter0 Output Compare Register A

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
  SPMCSR: byte absolute $57;  // Store Program Memory Control Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  RFLB = 3;  m_RFLB = 8;  // Read fuse and lock bits
  CTPB = 4;  m_CTPB = 16;  // Clear temporary page buffer

type
  TTIFR0set = bitpacked set of (e_TOV0, e_OCF0A, e_OCF0B);
  TTIFR0rec = bitpacked record
    TOV0,
    OCF0A,
    OCF0B,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR0: byte absolute $58;  // Timer/Counter0 Interrupt Flag Register
  TIFR0set: TTIFR0set absolute $58;
  TIFR0rec: TTIFR0rec absolute $58;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer/Counter0 Output Compare Flag A
  OCF0B = 2;  m_OCF0B = 4;  // Timer/Counter0 Output Compare Flag B

type
  TTIMSK0set = bitpacked set of (e_TOIE0, e_OCIE0A, e_OCIE0B);
  TTIMSK0rec = bitpacked record
    TOIE0,
    OCIE0A,
    OCIE0B,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK0: byte absolute $59;  // Timer/Counter Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $59;
  TIMSK0rec: TTIMSK0rec absolute $59;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter0 Output Compare Match B Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF0=4, e_PCIF1, e_INTF0);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIF0,
    PCIF1,
    INTF0,
    ReservedBit7: TBitField;
  end;
var
  GIFR: byte absolute $5A;  // General Interrupt Flag register
  GIFRset: TGIFRset absolute $5A;
  GIFRrec: TGIFRrec absolute $5A;
const
  PCIF0 = 4;  m_PCIF0 = 16;  // Pin Change Interrupt Flags
  PCIF1 = 5;  m_PCIF1 = 32;  // Pin Change Interrupt Flags
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
  OCR0B: byte absolute $5C;  // Timer/Counter0 Output Compare Register B
  SP: word absolute $5D;  // Stack Pointer 
  SPL: byte absolute $5D;
  SPH: byte absolute $5E;

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
  // typedefs = 29

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure EXT_INT0_ISR; external name 'EXT_INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt Request 1
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 4 Watchdog Time-out
procedure TIM1_CAPT_ISR; external name 'TIM1_CAPT_ISR'; // Interrupt 5 Timer/Counter1 Capture Event
procedure TIM1_COMPA_ISR; external name 'TIM1_COMPA_ISR'; // Interrupt 6 Timer/Counter1 Compare Match A
procedure TIM1_COMPB_ISR; external name 'TIM1_COMPB_ISR'; // Interrupt 7 Timer/Counter1 Compare Match B
procedure TIM1_OVF_ISR; external name 'TIM1_OVF_ISR'; // Interrupt 8 Timer/Counter1 Overflow
procedure TIM0_COMPA_ISR; external name 'TIM0_COMPA_ISR'; // Interrupt 9 Timer/Counter0 Compare Match A
procedure TIM0_COMPB_ISR; external name 'TIM0_COMPB_ISR'; // Interrupt 10 Timer/Counter0 Compare Match B
procedure TIM0_OVF_ISR; external name 'TIM0_OVF_ISR'; // Interrupt 11 Timer/Counter0 Overflow
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 12 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 13 ADC Conversion Complete
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 14 EEPROM Ready
procedure USI_STR_ISR; external name 'USI_STR_ISR'; // Interrupt 15 USI START
procedure USI_OVF_ISR; external name 'USI_OVF_ISR'; // Interrupt 16 USI Overflow

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp EXT_INT0_ISR
  rjmp PCINT0_ISR
  rjmp PCINT1_ISR
  rjmp WDT_ISR
  rjmp TIM1_CAPT_ISR
  rjmp TIM1_COMPA_ISR
  rjmp TIM1_COMPB_ISR
  rjmp TIM1_OVF_ISR
  rjmp TIM0_COMPA_ISR
  rjmp TIM0_COMPB_ISR
  rjmp TIM0_OVF_ISR
  rjmp ANA_COMP_ISR
  rjmp ADC_ISR
  rjmp EE_RDY_ISR
  rjmp USI_STR_ISR
  rjmp USI_OVF_ISR

  {$i start.inc}

  .weak EXT_INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak WDT_ISR
  .weak TIM1_CAPT_ISR
  .weak TIM1_COMPA_ISR
  .weak TIM1_COMPB_ISR
  .weak TIM1_OVF_ISR
  .weak TIM0_COMPA_ISR
  .weak TIM0_COMPB_ISR
  .weak TIM0_OVF_ISR
  .weak ANA_COMP_ISR
  .weak ADC_ISR
  .weak EE_RDY_ISR
  .weak USI_STR_ISR
  .weak USI_OVF_ISR

  .set EXT_INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIM1_CAPT_ISR, Default_IRQ_handler
  .set TIM1_COMPA_ISR, Default_IRQ_handler
  .set TIM1_COMPB_ISR, Default_IRQ_handler
  .set TIM1_OVF_ISR, Default_IRQ_handler
  .set TIM0_COMPA_ISR, Default_IRQ_handler
  .set TIM0_COMPB_ISR, Default_IRQ_handler
  .set TIM0_OVF_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set USI_STR_ISR, Default_IRQ_handler
  .set USI_OVF_ISR, Default_IRQ_handler
end;

end.
