unit ATtiny25;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_IPR=5, e_ACME, e_BIN);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ReservedBit4,
    IPR,
    ACME,
    BIN: TBitField;
  end;
var
  ADCSRB: byte absolute $23;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $23;
  ADCSRBrec: TADCSRBrec absolute $23;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  IPR = 5;  m_IPR = 32;  // Input Polarity Mode
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
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_REFS2, e_ADLAR, e_REFS0, e_REFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    REFS2,
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
  REFS2 = 4;  m_REFS2 = 16;  // Reference Selection Bit 2
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
  GPIOR0: byte absolute $31;  // General purpose register 0
  GPIOR1: byte absolute $32;  // General Purpose register 1
  GPIOR2: byte absolute $33;  // General Purpose IO register 2

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
  DIDR0: byte absolute $34;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $34;
  DIDR0rec: TDIDR0rec absolute $34;
const
  AIN0D = 0;  m_AIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  m_AIN1D = 2;  // AIN1 Digital Input Disable
  ADC1D = 2;  m_ADC1D = 4;  // ADC1 Digital input Disable
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
  PRR: byte absolute $40;  // Power Reduction Register
  PRRset: TPRRset absolute $40;
  PRRrec: TPRRrec absolute $40;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSI = 1;  m_PRUSI = 2;  // Power Reduction USI
  PRTIM0 = 2;  m_PRTIM0 = 4;  // Power Reduction Timer/Counter0
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDCE, e_WDP3, e_WDIE, e_WDIF);
  TWDTCRrec = bitpacked record
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
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timeout Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timeout Interrupt Flag

var
  DWDR: byte absolute $42;  // debugWire data register

type
  TDTPSset = bitpacked set of (e_DTPS0, e_DTPS1);
  TDTPSrec = bitpacked record
    DTPS0,
    DTPS1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DTPS: byte absolute $43;  // Dead time prescaler register
  DTPSset: TDTPSset absolute $43;
  DTPSrec: TDTPSrec absolute $43;
const
  DTPS0 = 0;  m_DTPS0 = 1;
  DTPS1 = 1;  m_DTPS1 = 2;

var
  DT1B: byte absolute $44;  // Dead time value B

type
  TDT1Aset = bitpacked set of (e_DTVL0, e_DTVL1, e_DTVL2, e_DTVL3, e_DTVH0, e_DTVH1, e_DTVH2, e_DTVH3);
  TDT1Arec = bitpacked record
    DTVL0,
    DTVL1,
    DTVL2,
    DTVL3,
    DTVH0,
    DTVH1,
    DTVH2,
    DTVH3: TBitField;
  end;
var
  DT1A: byte absolute $45;  // Dead time value register
  DT1Aset: TDT1Aset absolute $45;
  DT1Arec: TDT1Arec absolute $45;
const
  DTVL0 = 0;  m_DTVL0 = 1;
  DTVL1 = 1;  m_DTVL1 = 2;
  DTVL2 = 2;  m_DTVL2 = 4;
  DTVL3 = 3;  m_DTVL3 = 8;
  DTVH0 = 4;  m_DTVH0 = 16;
  DTVH1 = 5;  m_DTVH1 = 32;
  DTVH2 = 6;  m_DTVH2 = 64;
  DTVH3 = 7;  m_DTVH3 = 128;

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
  TPLLCSRset = bitpacked set of (e_PLOCK, e_PLLE, e_PCKE, e_LSM=7);
  TPLLCSRrec = bitpacked record
    PLOCK,
    PLLE,
    PCKE,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    LSM: TBitField;
  end;
var
  PLLCSR: byte absolute $47;  // PLL Control and status register
  PLLCSRset: TPLLCSRset absolute $47;
  PLLCSRrec: TPLLCSRrec absolute $47;
const
  PLOCK = 0;  m_PLOCK = 1;  // PLL Lock detector
  PLLE = 1;  m_PLLE = 2;  // PLL Enable
  PCKE = 2;  m_PCKE = 4;  // PCK Enable
  LSM = 7;  m_LSM = 128;  // Low speed mode

var
  OCR0B: byte absolute $48;  // Timer/Counter0 Output Compare Register
  OCR0A: byte absolute $49;  // Timer/Counter0 Output Compare Register

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
  TCCR0A: byte absolute $4A;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $4A;
  TCCR0Arec: TTCCR0Arec absolute $4A;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Output Mode, Fast PWm
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Output Mode, Fast PWm
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Output Mode, Phase Correct PWM Mode
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Output Mode, Phase Correct PWM Mode

var
  OCR1B: byte absolute $4B;  // Output Compare Register

type
  TGTCCRset = bitpacked set of (e_PSR0, e_PSR1, e_FOC1A, e_FOC1B, e_COM1B0, e_COM1B1, e_PWM1B, e_TSM);
  TGTCCRrec = bitpacked record
    PSR0,
    PSR1,
    FOC1A,
    FOC1B,
    COM1B0,
    COM1B1,
    PWM1B,
    TSM: TBitField;
  end;
var
  GTCCR: byte absolute $4C;  // Timer counter control register
  GTCCRset: TGTCCRset absolute $4C;
  GTCCRrec: TGTCCRrec absolute $4C;
const
  PSR0 = 0;  m_PSR0 = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
  PSR1 = 1;  m_PSR1 = 2;  // Prescaler Reset Timer/Counter1
  FOC1A = 2;  m_FOC1A = 4;  // Force Output Compare 1A
  FOC1B = 3;  m_FOC1B = 8;  // Force Output Compare Match 1B
  COM1B0 = 4;  m_COM1B0 = 16;  // Comparator B Output Mode
  COM1B1 = 5;  m_COM1B1 = 32;  // Comparator B Output Mode
  PWM1B = 6;  m_PWM1B = 64;  // Pulse Width Modulator B Enable
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

var
  OCR1C: byte absolute $4D;  // Output compare register
  OCR1A: byte absolute $4E;  // Output Compare Register
  TCNT1: byte absolute $4F;  // Timer/Counter Register

type
  TTCCR1set = bitpacked set of (e_CS10, e_CS11, e_CS12, e_CS13, e_COM1A0, e_COM1A1, e_PWM1A, e_CTC1);
  TTCCR1rec = bitpacked record
    CS10,
    CS11,
    CS12,
    CS13,
    COM1A0,
    COM1A1,
    PWM1A,
    CTC1: TBitField;
  end;
var
  TCCR1: byte absolute $50;  // Timer/Counter Control Register
  TCCR1set: TTCCR1set absolute $50;
  TCCR1rec: TTCCR1rec absolute $50;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select Bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select Bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select Bits
  CS13 = 3;  m_CS13 = 8;  // Clock Select Bits
  COM1A0 = 4;  m_COM1A0 = 16;  // Compare Output Mode, Bits
  COM1A1 = 5;  m_COM1A1 = 32;  // Compare Output Mode, Bits
  PWM1A = 6;  m_PWM1A = 64;  // Pulse Width Modulator Enable
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
  WGM02 = 3;  m_WGM02 = 8;
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

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RFLB, e_CTPB, e_RSIG);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RFLB,
    CTPB,
    RSIG,
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
  RSIG = 5;  m_RSIG = 32;  // Read Device Signature Imprint Table

type
  TTIFRset = bitpacked set of (e_TOV0=1, e_TOV1, e_OCF0B, e_OCF0A, e_OCF1B, e_OCF1A);
  TTIFRrec = bitpacked record
    ReservedBit0,
    TOV0,
    TOV1,
    OCF0B,
    OCF0A,
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
  OCF0B = 3;  m_OCF0B = 8;  // Timer/Counter0 Output Compare Flag 0B
  OCF0A = 4;  m_OCF0A = 16;  // Timer/Counter0 Output Compare Flag 0A
  OCF1B = 5;  m_OCF1B = 32;  // Timer/Counter1 Output Compare Flag 1B
  OCF1A = 6;  m_OCF1A = 64;  // Timer/Counter1 Output Compare Flag 1A

type
  TTIMSKset = bitpacked set of (e_TOIE0=1, e_TOIE1, e_OCIE0B, e_OCIE0A, e_OCIE1B, e_OCIE1A);
  TTIMSKrec = bitpacked record
    ReservedBit0,
    TOIE0,
    TOIE1,
    OCIE0B,
    OCIE0A,
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
  OCIE0B = 3;  m_OCIE0B = 8;  // Timer/Counter0 Output Compare Match B Interrupt Enable
  OCIE0A = 4;  m_OCIE0A = 16;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // OCIE1A: Timer/Counter1 Output Compare B Interrupt Enable
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
  // typedefs = 28

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin change Interrupt Request 0
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 3 Timer/Counter1 Compare Match 1A
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 4 Timer/Counter1 Overflow
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 5 Timer/Counter0 Overflow
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 6 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 7 Analog comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 8 ADC Conversion ready
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 9 Timer/Counter1 Compare Match B
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 10 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 11 Timer/Counter0 Compare Match B
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 12 Watchdog Time-out
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 13 USI START
procedure USI_OVF_ISR; external name 'USI_OVF_ISR'; // Interrupt 14 USI Overflow

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp PCINT0_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_OVF_ISR
  rjmp EE_RDY_ISR
  rjmp ANA_COMP_ISR
  rjmp ADC_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp WDT_ISR
  rjmp USI_START_ISR
  rjmp USI_OVF_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_OVF_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak ADC_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak WDT_ISR
  .weak USI_START_ISR
  .weak USI_OVF_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_OVF_ISR, Default_IRQ_handler
end;

end.
