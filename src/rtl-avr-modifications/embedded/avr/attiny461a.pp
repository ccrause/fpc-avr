unit ATtiny461A;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TTCCR1Eset = bitpacked set of (e_OC1OE0, e_OC1OE1, e_OC1OE2, e_OC1OE3, e_OC1OE4, e_OC1OE5);
  TTCCR1Erec = bitpacked record
    OC1OE0,
    OC1OE1,
    OC1OE2,
    OC1OE3,
    OC1OE4,
    OC1OE5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TCCR1E: byte absolute $20;  // Timer/Counter1 Control Register E
  TCCR1Eset: TTCCR1Eset absolute $20;
  TCCR1Erec: TTCCR1Erec absolute $20;
const
  OC1OE0 = 0;  m_OC1OE0 = 1;  // Ouput Compare Override Enable Bits
  OC1OE1 = 1;  m_OC1OE1 = 2;  // Ouput Compare Override Enable Bits
  OC1OE2 = 2;  m_OC1OE2 = 4;  // Ouput Compare Override Enable Bits
  OC1OE3 = 3;  m_OC1OE3 = 8;  // Ouput Compare Override Enable Bits
  OC1OE4 = 4;  m_OC1OE4 = 16;  // Ouput Compare Override Enable Bits
  OC1OE5 = 5;  m_OC1OE5 = 32;  // Ouput Compare Override Enable Bits

type
  TDIDR0set = bitpacked set of (e_ADC0D, e_ADC1D, e_ADC2D, e_AREFD, e_ADC3D, e_ADC4D, e_ADC5D, e_ADC6D);
  TDIDR0rec = bitpacked record
    ADC0D,
    ADC1D,
    ADC2D,
    AREFD,
    ADC3D,
    ADC4D,
    ADC5D,
    ADC6D: TBitField;
  end;
var
  DIDR0: byte absolute $21;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $21;
  DIDR0rec: TDIDR0rec absolute $21;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC0 Digital input Disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC1 Digital input Disable
  ADC2D = 2;  m_ADC2D = 4;  // ADC2 Digital input Disable
  AREFD = 3;  m_AREFD = 8;  // AREF Digital Input Disable
  ADC3D = 4;  m_ADC3D = 16;  // ADC3 Digital input Disable
  ADC4D = 5;  m_ADC4D = 32;  // ADC4 Digital input Disable
  ADC5D = 6;  m_ADC5D = 64;  // ADC5 Digital input Disable
  ADC6D = 7;  m_ADC6D = 128;  // ADC6 Digital input Disable

type
  TDIDR1set = bitpacked set of (e_ADC7D=4, e_ADC8D, e_ADC9D, e_ADC10D);
  TDIDR1rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ADC7D,
    ADC8D,
    ADC9D,
    ADC10D: TBitField;
  end;
var
  DIDR1: byte absolute $22;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $22;
  DIDR1rec: TDIDR1rec absolute $22;
const
  ADC7D = 4;  m_ADC7D = 16;  // ADC7 Digital input Disable
  ADC8D = 5;  m_ADC8D = 32;  // ADC8 Digital input Disable
  ADC9D = 6;  m_ADC9D = 64;  // ADC9 Digital input Disable
  ADC10D = 7;  m_ADC10D = 128;  // ADC10 Digital input Disable

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_MUX5, e_REFS2, e_IPR, e_GSEL, e_BIN);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    MUX5,
    REFS2,
    IPR,
    GSEL,
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
  MUX5 = 3;  m_MUX5 = 8;
  REFS2 = 4;  m_REFS2 = 16;
  IPR = 5;  m_IPR = 32;  // Input Polarity Mode
  GSEL = 6;  m_GSEL = 64;  // Gain Select
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
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC Auto Trigger Enable
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
  TACSRAset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACME, e_ACIE, e_ACI, e_ACO, e_ACBG, e_ACD);
  TACSRArec = bitpacked record
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
  ACSRA: byte absolute $28;  // Analog Comparator Control And Status Register A
  ACSRAset: TACSRAset absolute $28;
  ACSRArec: TACSRArec absolute $28;
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
  TACSRBset = bitpacked set of (e_ACM0, e_ACM1, e_ACM2, e_HLEV=6, e_HSEL);
  TACSRBrec = bitpacked record
    ACM0,
    ACM1,
    ACM2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    HLEV,
    HSEL: TBitField;
  end;
var
  ACSRB: byte absolute $29;  // Analog Comparator Control And Status Register B
  ACSRBset: TACSRBset absolute $29;
  ACSRBrec: TACSRBrec absolute $29;
const
  ACM0 = 0;  m_ACM0 = 1;  // Analog Comparator Multiplexer
  ACM1 = 1;  m_ACM1 = 2;  // Analog Comparator Multiplexer
  ACM2 = 2;  m_ACM2 = 4;  // Analog Comparator Multiplexer
  HLEV = 6;  m_HLEV = 64;  // Hysteresis Level
  HSEL = 7;  m_HSEL = 128;  // Hysteresis Select

var
  GPIOR0: byte absolute $2A;  // General purpose register 0
  GPIOR1: byte absolute $2B;  // General Purpose register 1
  GPIOR2: byte absolute $2C;  // General Purpose IO register 2

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
  USIPP: byte absolute $31;  // USI Pin Position
  OCR0B: byte absolute $32;  // Timer/Counter0 Output Compare Register
  OCR0A: byte absolute $33;  // Timer/Counter0 Output Compare Register
  TCNT0H: byte absolute $34;  // Timer/Counter0 High

type
  TTCCR0Aset = bitpacked set of (e_WGM00, e_ACIC0=3, e_ICES0, e_ICNC0, e_ICEN0, e_TCW0);
  TTCCR0Arec = bitpacked record
    WGM00,
    ReservedBit1,
    ReservedBit2,
    ACIC0,
    ICES0,
    ICNC0,
    ICEN0,
    TCW0: TBitField;
  end;
var
  TCCR0A: byte absolute $35;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $35;
  TCCR0Arec: TTCCR0Arec absolute $35;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  ACIC0 = 3;  m_ACIC0 = 8;  // Analog Comparator Input Capture Enable
  ICES0 = 4;  m_ICES0 = 16;  // Input Capture Edge Select
  ICNC0 = 5;  m_ICNC0 = 32;  // Input Capture Noice Canceler
  ICEN0 = 6;  m_ICEN0 = 64;  // Input Capture Mode Enable
  TCW0 = 7;  m_TCW0 = 128;  // Timer/Counter 0 Width

var
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
  DWDR: byte absolute $40;  // debugWire data register

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
  PCMSK1: byte absolute $42;  // Pin Change Enable Mask 1
  PCMSK0: byte absolute $43;  // Pin Change Enable Mask 0

type
  TDT1set = bitpacked set of (e_DT1L0, e_DT1L1, e_DT1L2, e_DT1L3, e_DT1H0, e_DT1H1, e_DT1H2, e_DT1H3);
  TDT1rec = bitpacked record
    DT1L0,
    DT1L1,
    DT1L2,
    DT1L3,
    DT1H0,
    DT1H1,
    DT1H2,
    DT1H3: TBitField;
  end;
var
  DT1: byte absolute $44;  // Timer/Counter 1 Dead Time Value
  DT1set: TDT1set absolute $44;
  DT1rec: TDT1rec absolute $44;
const
  DT1L0 = 0;  m_DT1L0 = 1;
  DT1L1 = 1;  m_DT1L1 = 2;
  DT1L2 = 2;  m_DT1L2 = 4;
  DT1L3 = 3;  m_DT1L3 = 8;
  DT1H0 = 4;  m_DT1H0 = 16;
  DT1H1 = 5;  m_DT1H1 = 32;
  DT1H2 = 6;  m_DT1H2 = 64;
  DT1H3 = 7;  m_DT1H3 = 128;

var
  TC1H: byte absolute $45;  // Timer/Counter 1 Register High

type
  TTCCR1Dset = bitpacked set of (e_WGM10, e_WGM11, e_FPF1, e_FPAC1, e_FPES1, e_FPNC1, e_FPEN1, e_FPIE1);
  TTCCR1Drec = bitpacked record
    WGM10,
    WGM11,
    FPF1,
    FPAC1,
    FPES1,
    FPNC1,
    FPEN1,
    FPIE1: TBitField;
  end;
var
  TCCR1D: byte absolute $46;  // Timer/Counter Control Register D
  TCCR1Dset: TTCCR1Dset absolute $46;
  TCCR1Drec: TTCCR1Drec absolute $46;
const
  WGM10 = 0;  m_WGM10 = 1;  // Waveform Generation Mode Bit
  WGM11 = 1;  m_WGM11 = 2;  // Waveform Generation Mode Bit
  FPF1 = 2;  m_FPF1 = 4;  // Fault Protection Interrupt Flag
  FPAC1 = 3;  m_FPAC1 = 8;  // Fault Protection Analog Comparator Enable
  FPES1 = 4;  m_FPES1 = 16;  // Fault Protection Edge Select
  FPNC1 = 5;  m_FPNC1 = 32;  // Fault Protection Noise Canceler
  FPEN1 = 6;  m_FPEN1 = 64;  // Fault Protection Mode Enable
  FPIE1 = 7;  m_FPIE1 = 128;  // Fault Protection Interrupt Enable

type
  TTCCR1Cset = bitpacked set of (e_PWM1D, e_FOC1D, e_COM1D0, e_COM1D1, e_COM1B0S, e_COM1B1S, e_COM1A0S, e_COM1A1S);
  TTCCR1Crec = bitpacked record
    PWM1D,
    FOC1D,
    COM1D0,
    COM1D1,
    COM1B0S,
    COM1B1S,
    COM1A0S,
    COM1A1S: TBitField;
  end;
var
  TCCR1C: byte absolute $47;  // Timer/Counter Control Register C
  TCCR1Cset: TTCCR1Cset absolute $47;
  TCCR1Crec: TTCCR1Crec absolute $47;
const
  PWM1D = 0;  m_PWM1D = 1;  // Pulse Width Modulator D Enable
  FOC1D = 1;  m_FOC1D = 2;  // Force Output Compare Match 1D
  COM1D0 = 2;  m_COM1D0 = 4;  // Comparator D output mode
  COM1D1 = 3;  m_COM1D1 = 8;  // Comparator D output mode
  COM1B0S = 4;  m_COM1B0S = 16;  // COM1B0 Shadow Bit
  COM1B1S = 5;  m_COM1B1S = 32;  // COM1B1 Shadow Bit
  COM1A0S = 6;  m_COM1A0S = 64;  // COM1A0 Shadow Bit
  COM1A1S = 7;  m_COM1A1S = 128;  // COM1A1 Shadow Bit

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
  CLKPR: byte absolute $48;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $48;
  CLKPRrec: TCLKPRrec absolute $48;
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
  PLLCSR: byte absolute $49;  // PLL Control and status register
  PLLCSRset: TPLLCSRset absolute $49;
  PLLCSRrec: TPLLCSRrec absolute $49;
const
  PLOCK = 0;  m_PLOCK = 1;  // PLL Lock detector
  PLLE = 1;  m_PLLE = 2;  // PLL Enable
  PCKE = 2;  m_PCKE = 4;  // PCK Enable
  LSM = 7;  m_LSM = 128;  // Low speed mode

var
  OCR1D: byte absolute $4A;  // Output compare register
  OCR1C: byte absolute $4B;  // Output compare register
  OCR1B: byte absolute $4C;  // Output Compare Register
  OCR1A: byte absolute $4D;  // Output Compare Register
  TCNT1: byte absolute $4E;  // Timer/Counter Register

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_CS13, e_DTPS10, e_DTPS11, e_PSR1, e_PWM1X);
  TTCCR1Brec = bitpacked record
    CS10,
    CS11,
    CS12,
    CS13,
    DTPS10,
    DTPS11,
    PSR1,
    PWM1X: TBitField;
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
  DTPS10 = 4;  m_DTPS10 = 16;  // Dead Time Prescaler
  DTPS11 = 5;  m_DTPS11 = 32;  // Dead Time Prescaler
  PSR1 = 6;  m_PSR1 = 64;  // Timer/Counter 1 Prescaler reset
  PWM1X = 7;  m_PWM1X = 128;  // PWM Inversion Mode

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
  PWM1B = 0;  m_PWM1B = 1;  // Pulse Width Modulator Enable
  PWM1A = 1;  m_PWM1A = 2;  // Pulse Width Modulator Enable
  FOC1B = 2;  m_FOC1B = 4;  // Force Output Compare Match 1B
  FOC1A = 3;  m_FOC1A = 8;  // Force Output Compare Match 1A
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode, Bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode, Bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode, Bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode, Bits

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
  TCNT0L: byte absolute $52;  // Timer/Counter0 Low

type
  TTCCR0Bset = bitpacked set of (e_CS00, e_CS01, e_CS02, e_PSR0, e_TSM);
  TTCCR0Brec = bitpacked record
    CS00,
    CS01,
    CS02,
    PSR0,
    TSM,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TCCR0B: byte absolute $53;  // Timer/Counter Control Register B
  TCCR0Bset: TTCCR0Bset absolute $53;
  TCCR0Brec: TTCCR0Brec absolute $53;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  PSR0 = 3;  m_PSR0 = 8;  // Timer/Counter 0 Prescaler Reset
  TSM = 4;  m_TSM = 16;  // Timer/Counter Synchronization Mode

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
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_BODSE, e_SM0, e_SM1, e_SE, e_PUD, e_BODS);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    BODSE,
    SM0,
    SM1,
    SE,
    PUD,
    BODS: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 Bit 1
  BODSE = 2;  m_BODSE = 4;  // BOD Sleep Enable
  SM0 = 3;  m_SM0 = 8;  // Sleep Mode Select Bits
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select Bits
  SE = 5;  m_SE = 32;  // Sleep Enable
  PUD = 6;  m_PUD = 64;  // Pull-up Disable
  BODS = 7;  m_BODS = 128;  // BOD Sleep

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
  PRR: byte absolute $56;  // Power Reduction Register
  PRRset: TPRRset absolute $56;
  PRRrec: TPRRrec absolute $56;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSI = 1;  m_PRUSI = 2;  // Power Reduction USI
  PRTIM0 = 2;  m_PRTIM0 = 4;  // Power Reduction Timer/Counter0
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1

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
  TTIFRset = bitpacked set of (e_ICF0, e_TOV0, e_TOV1, e_OCF0B, e_OCF0A, e_OCF1B, e_OCF1A, e_OCF1D);
  TTIFRrec = bitpacked record
    ICF0,
    TOV0,
    TOV1,
    OCF0B,
    OCF0A,
    OCF1B,
    OCF1A,
    OCF1D: TBitField;
  end;
var
  TIFR: byte absolute $58;  // Timer/Counter Interrupt Flag Register
  TIFRset: TTIFRset absolute $58;
  TIFRrec: TTIFRrec absolute $58;
const
  ICF0 = 0;  m_ICF0 = 1;  // Timer/Counter0 Input Capture Flag
  TOV0 = 1;  m_TOV0 = 2;  // Timer/Counter0 Overflow Flag
  TOV1 = 2;  m_TOV1 = 4;  // Timer/Counter1 Overflow Flag
  OCF0B = 3;  m_OCF0B = 8;  // Timer/Counter0 Output Compare Flag 0B
  OCF0A = 4;  m_OCF0A = 16;  // Timer/Counter0 Output Compare Flag 0A
  OCF1B = 5;  m_OCF1B = 32;  // Timer/Counter1 Output Compare Flag 1B
  OCF1A = 6;  m_OCF1A = 64;  // Timer/Counter1 Output Compare Flag 1A
  OCF1D = 7;  m_OCF1D = 128;  // Timer/Counter1 Output Compare Flag 1D

type
  TTIMSKset = bitpacked set of (e_TICIE0, e_TOIE0, e_TOIE1, e_OCIE0B, e_OCIE0A, e_OCIE1B, e_OCIE1A, e_OCIE1D);
  TTIMSKrec = bitpacked record
    TICIE0,
    TOIE0,
    TOIE1,
    OCIE0B,
    OCIE0A,
    OCIE1B,
    OCIE1A,
    OCIE1D: TBitField;
  end;
var
  TIMSK: byte absolute $59;  // Timer/Counter Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $59;
  TIMSKrec: TTIMSKrec absolute $59;
const
  TICIE0 = 0;  m_TICIE0 = 1;  // Timer/Counter0 Input Capture Interrupt Enable
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  TOIE1 = 2;  m_TOIE1 = 4;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE0B = 3;  m_OCIE0B = 8;  // Timer/Counter0 Output Compare Match B Interrupt Enable
  OCIE0A = 4;  m_OCIE0A = 16;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // OCIE1A: Timer/Counter1 Output Compare B Interrupt Enable
  OCIE1A = 6;  m_OCIE1A = 64;  // OCIE1A: Timer/Counter1 Output Compare Interrupt Enable
  OCIE1D = 7;  m_OCIE1D = 128;  // OCIE1D: Timer/Counter1 Output Compare Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF=5, e_INTF0, e_INTF1);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    PCIF,
    INTF0,
    INTF1: TBitField;
  end;
var
  GIFR: byte absolute $5A;  // General Interrupt Flag register
  GIFRset: TGIFRset absolute $5A;
  GIFRrec: TGIFRrec absolute $5A;
const
  PCIF = 5;  m_PCIF = 32;  // Pin Change Interrupt Flag
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flags
  INTF1 = 7;  m_INTF1 = 128;  // External Interrupt Flags

type
  TGIMSKset = bitpacked set of (e_PCIE0=4, e_PCIE1, e_INT0, e_INT1);
  TGIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIE0,
    PCIE1,
    INT0,
    INT1: TBitField;
  end;
var
  GIMSK: byte absolute $5B;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $5B;
  GIMSKrec: TGIMSKrec absolute $5B;
const
  PCIE0 = 4;  m_PCIE0 = 16;  // Pin Change Interrupt Enables
  PCIE1 = 5;  m_PCIE1 = 32;  // Pin Change Interrupt Enables
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 1 Enable
  INT1 = 7;  m_INT1 = 128;  // External Interrupt Request 1 Enable

var
  SP: word absolute $5D;  // Stack Pointer  Bytes
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
  // typedefs = 33

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt 0
procedure PCINT_ISR; external name 'PCINT_ISR'; // Interrupt 2 Pin Change Interrupt
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 3 Timer/Counter1 Compare Match 1A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 4 Timer/Counter1 Compare Match 1B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 5 Timer/Counter1 Overflow
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 6 Timer/Counter0 Overflow
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 7 USI Start
procedure USI_OVF_ISR; external name 'USI_OVF_ISR'; // Interrupt 8 USI Overflow
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 9 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 10 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 11 ADC Conversion Complete
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 12 Watchdog Time-Out
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 13 External Interrupt 1
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 14 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 15 Timer/Counter0 Compare Match B
procedure TIMER0_CAPT_ISR; external name 'TIMER0_CAPT_ISR'; // Interrupt 16 ADC Conversion Complete
procedure TIMER1_COMPD_ISR; external name 'TIMER1_COMPD_ISR'; // Interrupt 17 Timer/Counter1 Compare Match D
procedure FAULT_PROTECTION_ISR; external name 'FAULT_PROTECTION_ISR'; // Interrupt 18 Timer/Counter1 Fault Protection

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp PCINT_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_OVF_ISR
  rjmp USI_START_ISR
  rjmp USI_OVF_ISR
  rjmp EE_RDY_ISR
  rjmp ANA_COMP_ISR
  rjmp ADC_ISR
  rjmp WDT_ISR
  rjmp INT1_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp TIMER0_CAPT_ISR
  rjmp TIMER1_COMPD_ISR
  rjmp FAULT_PROTECTION_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_OVF_ISR
  .weak USI_START_ISR
  .weak USI_OVF_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak ADC_ISR
  .weak WDT_ISR
  .weak INT1_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_CAPT_ISR
  .weak TIMER1_COMPD_ISR
  .weak FAULT_PROTECTION_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_OVF_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPD_ISR, Default_IRQ_handler
  .set FAULT_PROTECTION_ISR, Default_IRQ_handler
end;

end.
