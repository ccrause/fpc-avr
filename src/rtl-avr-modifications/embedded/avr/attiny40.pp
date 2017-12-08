unit ATtiny40;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $00;  // Port A Input Pins
  DDRA: byte absolute $01;  // Data Direction Register, Port A

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
  PORTA: byte absolute $02;  // Port A Data Register
  PORTAset: TPORTAset absolute $02;
  PORTArec: TPORTArec absolute $02;
const
  PA0 = 0;  m_PA0 = 1;
  PA1 = 1;  m_PA1 = 2;
  PA2 = 2;  m_PA2 = 4;
  PA3 = 3;  m_PA3 = 8;
  PA4 = 4;  m_PA4 = 16;
  PA5 = 5;  m_PA5 = 32;
  PA6 = 6;  m_PA6 = 64;
  PA7 = 7;  m_PA7 = 128;

var
  PUEA: byte absolute $03;  // Pull-up Enable Control Register
  PINB: byte absolute $04;  // Port B Data register
  DDRB: byte absolute $05;  // Data Direction Register, Port B

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
  PORTB: byte absolute $06;  // Input Pins, Port B
  PORTBset: TPORTBset absolute $06;
  PORTBrec: TPORTBrec absolute $06;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;

var
  PUEB: byte absolute $07;  // Pull-up Enable Control Register

type
  TPORTCRset = bitpacked set of (e_BBMA, e_BBMB, e_BBMC, e_ADC8D=4, e_ADC9D, e_ADC10D, e_ADC11D);
  TPORTCRrec = bitpacked record
    BBMA,
    BBMB,
    BBMC,
    ReservedBit3,
    ADC8D,
    ADC9D,
    ADC10D,
    ADC11D: TBitField;
  end;
var
  PORTCR: byte absolute $08;  // Port Control Register
  PORTCRset: TPORTCRset absolute $08;
  PORTCRrec: TPORTCRrec absolute $08;
const
  BBMA = 0;  m_BBMA = 1;  // Break-Before-Make Mode Enable
  BBMB = 1;  m_BBMB = 2;  // Break-Before-Make Mode Enable
  BBMC = 2;  m_BBMC = 4;  // Break-Before-Make Mode Enable
  ADC8D = 4;  m_ADC8D = 16;
  ADC9D = 5;  m_ADC9D = 32;
  ADC10D = 6;  m_ADC10D = 64;
  ADC11D = 7;  m_ADC11D = 128;

var
  PCMSK0: byte absolute $09;  // Pin Change Mask Register 0
  PCMSK1: byte absolute $0A;  // Pin Change Mask Register 1

type
  TGIFRset = bitpacked set of (e_INTF0, e_PCIF0=4, e_PCIF1, e_PCIF2);
  TGIFRrec = bitpacked record
    INTF0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIF0,
    PCIF1,
    PCIF2,
    ReservedBit7: TBitField;
  end;
var
  GIFR: byte absolute $0B;  // General Interrupt Flag Register
  GIFRset: TGIFRset absolute $0B;
  GIFRrec: TGIFRrec absolute $0B;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0
  PCIF0 = 4;  m_PCIF0 = 16;  // Pin Change Interrupt Flags
  PCIF1 = 5;  m_PCIF1 = 32;  // Pin Change Interrupt Flags
  PCIF2 = 6;  m_PCIF2 = 64;  // Pin Change Interrupt Flags

type
  TGIMSKset = bitpacked set of (e_INT0, e_PCIE0=4, e_PCIE1, e_PCIE2);
  TGIMSKrec = bitpacked record
    INT0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIE0,
    PCIE1,
    PCIE2,
    ReservedBit7: TBitField;
  end;
var
  GIMSK: byte absolute $0C;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $0C;
  GIMSKrec: TGIMSKrec absolute $0C;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable
  PCIE0 = 4;  m_PCIE0 = 16;  // Pin Change Interrupt Enables
  PCIE1 = 5;  m_PCIE1 = 32;  // Pin Change Interrupt Enables
  PCIE2 = 6;  m_PCIE2 = 64;  // Pin Change Interrupt Enables

type
  TDIDR0set = bitpacked set of (e_ADC0D, e_ADC1D, e_ADC2D, e_ADC3D, e_ADC4D, e_ADC5D, e_ADC6D, e_ADC7D);
  TDIDR0rec = bitpacked record
    ADC0D,
    ADC1D,
    ADC2D,
    ADC3D,
    ADC4D,
    ADC5D,
    ADC6D,
    ADC7D: TBitField;
  end;
var
  DIDR0: byte absolute $0D;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $0D;
  DIDR0rec: TDIDR0rec absolute $0D;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC0 Digital input Disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC1 Digital input Disable
  ADC2D = 2;  m_ADC2D = 4;  // ADC2 Digital input Disable
  ADC3D = 3;  m_ADC3D = 8;  // AREF Digital Input Disable
  ADC4D = 4;  m_ADC4D = 16;  // ADC3 Digital input Disable
  ADC5D = 5;  m_ADC5D = 32;  // ADC4 Digital input Disable
  ADC6D = 6;  m_ADC6D = 64;  // ADC5 Digital input Disable
  ADC7D = 7;  m_ADC7D = 128;  // ADC6 Digital input Disable

var
  ADC: word absolute $0E;  // ADC Data Register  Bytes
  ADCL: byte absolute $0E;
  ADCH: byte absolute $0F;

type
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_REFS=6);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    ReservedBit4,
    ReservedBit5,
    REFS,
    ReservedBit7: TBitField;
  end;
var
  ADMUX: byte absolute $10;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $10;
  ADMUXrec: TADMUXrec absolute $10;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  REFS = 6;  m_REFS = 64;  // Reference Selection Bit

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADLAR);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADLAR,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADCSRB: byte absolute $11;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $11;
  ADCSRBrec: TADCSRBrec absolute $11;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  ADLAR = 3;  m_ADLAR = 8;

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
  ADCSRA: byte absolute $12;  // The ADC Control and Status register
  ADCSRAset: TADCSRAset absolute $12;
  ADCSRArec: TADCSRArec absolute $12;
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
  TACSRBset = bitpacked set of (e_ACME=2, e_HLEV=6, e_HSEL);
  TACSRBrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ACME,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    HLEV,
    HSEL: TBitField;
  end;
var
  ACSRB: byte absolute $13;  // Analog Comparator Control And Status Register B
  ACSRBset: TACSRBset absolute $13;
  ACSRBrec: TACSRBrec absolute $13;
const
  ACME = 2;  m_ACME = 4;  // Analog Comparator Multiplexer Enable
  HLEV = 6;  m_HLEV = 64;  // Hysteresis Level
  HSEL = 7;  m_HSEL = 128;  // Hysteresis Select

type
  TACSRAset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIC, e_ACIE, e_ACI, e_ACO, e_ACBG, e_ACD);
  TACSRArec = bitpacked record
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
  ACSRA: byte absolute $14;  // Analog Comparator Control And Status Register A
  ACSRAset: TACSRAset absolute $14;
  ACSRArec: TACSRArec absolute $14;
const
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIC = 2;  m_ACIC = 4;  // Analog Comparator Input Capture Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

var
  OCR0B: byte absolute $15;  // Timer/Counter0 Output Compare Register
  OCR0A: byte absolute $16;  // Timer/Counter0 Output Compare Register
  TCNT0: byte absolute $17;  // Timer/Counter0

type
  TTCCR0Bset = bitpacked set of (e_CS00, e_CS01, e_CS02, e_WGM02, e_PSR, e_TSM, e_FOC0B, e_FOC0A);
  TTCCR0Brec = bitpacked record
    CS00,
    CS01,
    CS02,
    WGM02,
    PSR,
    TSM,
    FOC0B,
    FOC0A: TBitField;
  end;
var
  TCCR0B: byte absolute $18;  // Timer/Counter 0 Control Register B
  TCCR0Bset: TTCCR0Bset absolute $18;
  TCCR0Brec: TTCCR0Brec absolute $18;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  WGM02 = 3;  m_WGM02 = 8;  // Waveform Generation Mode
  PSR = 4;  m_PSR = 16;  // Prescaler Reset Timer/Counter
  TSM = 5;  m_TSM = 32;  // Timer/Counter Synchronization Mode
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare A

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
  TCCR0A: byte absolute $19;  // Timer/Counter 0 Control Register A
  TCCR0Aset: TTCCR0Aset absolute $19;
  TCCR0Arec: TTCCR0Arec absolute $19;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Output Mode for Channel B bits
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Output Mode for Channel B bits
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Output Mode for Channel A bits
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Output Mode for Channel A bits

type
  TPCMSK2set = bitpacked set of (e_PCINT12, e_PCINT13, e_PCINT14, e_PCINT15, e_PCINT16, e_PCINT17);
  TPCMSK2rec = bitpacked record
    PCINT12,
    PCINT13,
    PCINT14,
    PCINT15,
    PCINT16,
    PCINT17,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCMSK2: byte absolute $1A;  // Pin Change Mask Register 2
  PCMSK2set: TPCMSK2set absolute $1A;
  PCMSK2rec: TPCMSK2rec absolute $1A;
const
  PCINT12 = 0;  m_PCINT12 = 1;  // Pin Change Enable Mask 3
  PCINT13 = 1;  m_PCINT13 = 2;  // Pin Change Enable Mask 3
  PCINT14 = 2;  m_PCINT14 = 4;  // Pin Change Enable Mask 3
  PCINT15 = 3;  m_PCINT15 = 8;  // Pin Change Enable Mask 3
  PCINT16 = 4;  m_PCINT16 = 16;  // Pin Change Enable Mask 3
  PCINT17 = 5;  m_PCINT17 = 32;  // Pin Change Enable Mask 3

var
  PINC: byte absolute $1B;  // Port C Input Pins
  DDRC: byte absolute $1C;  // Data Direction Register, Port C

type
  TPORTCset = bitpacked set of (e_PC0, e_PC1, e_PC2, e_PC3, e_PC4, e_PC5);
  TPORTCrec = bitpacked record
    PC0,
    PC1,
    PC2,
    PC3,
    PC4,
    PC5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTC: byte absolute $1D;  // Port C Data Register
  PORTCset: TPORTCset absolute $1D;
  PORTCrec: TPORTCrec absolute $1D;
const
  PC0 = 0;  m_PC0 = 1;
  PC1 = 1;  m_PC1 = 2;
  PC2 = 2;  m_PC2 = 4;
  PC3 = 3;  m_PC3 = 8;
  PC4 = 4;  m_PC4 = 16;
  PC5 = 5;  m_PC5 = 32;

var
  PUEC: byte absolute $1E;  // Pull-up Enable Control Register
  RAMDR: byte absolute $1F;  // RAM Data Register
  RAMAR: byte absolute $20;  // RAM Address Register
  OCR1B: byte absolute $21;  // Timer/Counter 1 Output Compare Register B
  OCR1A: byte absolute $22;  // Timer/Counter 1 Output Compare Register A
  TCNT1L: byte absolute $23;  // Timer/Counter1 Low

type
  TTCCR1Aset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_CTC1, e_ICES1, e_ICNC1, e_ICEN1, e_TCW1);
  TTCCR1Arec = bitpacked record
    CS10,
    CS11,
    CS12,
    CTC1,
    ICES1,
    ICNC1,
    ICEN1,
    TCW1: TBitField;
  end;
var
  TCCR1A: byte absolute $24;  // Timer/Counter1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $24;
  TCCR1Arec: TTCCR1Arec absolute $24;
const
  CS10 = 0;  m_CS10 = 1;  // The Clock Select1 bits 2, 1, and 0 define the prescaling source of Timer1.
  CS11 = 1;  m_CS11 = 2;  // The Clock Select1 bits 2, 1, and 0 define the prescaling source of Timer1.
  CS12 = 2;  m_CS12 = 4;  // The Clock Select1 bits 2, 1, and 0 define the prescaling source of Timer1.
  CTC1 = 3;  m_CTC1 = 8;  // Waveform Generation Mode
  ICES1 = 4;  m_ICES1 = 16;  // Input Capture Edge Select
  ICNC1 = 5;  m_ICNC1 = 32;  // : Input Capture Noise Canceler
  ICEN1 = 6;  m_ICEN1 = 64;  // Input Capture Mode Enable
  TCW1 = 7;  m_TCW1 = 128;  // Timer/Counter1 Width

type
  TTIFRset = bitpacked set of (e_TOV0, e_OCF0A, e_OCF0B, e_TOV1, e_OCF1A, e_OCF1B, e_ICF1=7);
  TTIFRrec = bitpacked record
    TOV0,
    OCF0A,
    OCF0B,
    TOV1,
    OCF1A,
    OCF1B,
    ReservedBit6,
    ICF1: TBitField;
  end;
var
  TIFR: byte absolute $25;  // Overflow Interrupt Enable
  TIFRset: TTIFRset absolute $25;
  TIFRrec: TTIFRrec absolute $25;
const
  OCF0A = 1;  m_OCF0A = 2;  // Output Compare Flag 0 A
  OCF0B = 2;  m_OCF0B = 4;  // Output Compare Flag 0 B
  TOV0 = 0;  m_TOV0 = 1;  // Timer Overflow Flag
  TOV1 = 3;  m_TOV1 = 8;  // Timer Overflow Flag
  OCF1A = 4;  m_OCF1A = 16;  // Timer Output Compare Flag 1A
  OCF1B = 5;  m_OCF1B = 32;  // Timer Output Compare Flag 1B
  ICF1 = 7;  m_ICF1 = 128;  // Input Capture Flag

type
  TTIMSKset = bitpacked set of (e_TOIE0, e_OCIE0A, e_OCIE0B, e_TOIE1, e_OCIE1A, e_OCIE1B, e_ICIE1=7);
  TTIMSKrec = bitpacked record
    TOIE0,
    OCIE0A,
    OCIE0B,
    TOIE1,
    OCIE1A,
    OCIE1B,
    ReservedBit6,
    ICIE1: TBitField;
  end;
var
  TIMSK: byte absolute $26;  // Timer Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $26;
  TIMSKrec: TTIMSKrec absolute $26;
const
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter Output Compare Match B Interrupt Enable
  TOIE0 = 0;  m_TOIE0 = 1;  // Overflow Interrupt Enable
  TOIE1 = 3;  m_TOIE1 = 8;  // Overflow Interrupt Enable
  OCIE1A = 4;  m_OCIE1A = 16;  // Output Compare A Match Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // Output Compare B Match Interrupt Enable
  ICIE1 = 7;  m_ICIE1 = 128;  // Input Capture Interrupt Enable

var
  TCNT1H: byte absolute $27;  // Timer/Counter1 High

type
  TTWSDset = bitpacked set of (e_TWSD0, e_TWSD1, e_TWSD2, e_TWSD3, e_TWSD4, e_TWSD5, e_TWSD6, e_TWSD7);
  TTWSDrec = bitpacked record
    TWSD0,
    TWSD1,
    TWSD2,
    TWSD3,
    TWSD4,
    TWSD5,
    TWSD6,
    TWSD7: TBitField;
  end;
var
  TWSD: byte absolute $28;  // TWI Slave Data Register
  TWSDset: TTWSDset absolute $28;
  TWSDrec: TTWSDrec absolute $28;
const
  TWSD0 = 0;  m_TWSD0 = 1;  // TWI slave data bit
  TWSD1 = 1;  m_TWSD1 = 2;  // TWI slave data bit
  TWSD2 = 2;  m_TWSD2 = 4;  // TWI slave data bit
  TWSD3 = 3;  m_TWSD3 = 8;  // TWI slave data bit
  TWSD4 = 4;  m_TWSD4 = 16;  // TWI slave data bit
  TWSD5 = 5;  m_TWSD5 = 32;  // TWI slave data bit
  TWSD6 = 6;  m_TWSD6 = 64;  // TWI slave data bit
  TWSD7 = 7;  m_TWSD7 = 128;  // TWI slave data bit

var
  TWSAM: byte absolute $29;  // TWI Slave Address Mask Register

type
  TTWSAset = bitpacked set of (e_TWSA0, e_TWSA1, e_TWSA2, e_TWSA3, e_TWSA4, e_TWSA5, e_TWSA6, e_TWSA7);
  TTWSArec = bitpacked record
    TWSA0,
    TWSA1,
    TWSA2,
    TWSA3,
    TWSA4,
    TWSA5,
    TWSA6,
    TWSA7: TBitField;
  end;
var
  TWSA: byte absolute $2A;  // TWI Slave Address Register
  TWSAset: TTWSAset absolute $2A;
  TWSArec: TTWSArec absolute $2A;
const
  TWSA0 = 0;  m_TWSA0 = 1;  // TWI slave address bit
  TWSA1 = 1;  m_TWSA1 = 2;  // TWI slave address bit
  TWSA2 = 2;  m_TWSA2 = 4;  // TWI slave address bit
  TWSA3 = 3;  m_TWSA3 = 8;  // TWI slave address bit
  TWSA4 = 4;  m_TWSA4 = 16;  // TWI slave address bit
  TWSA5 = 5;  m_TWSA5 = 32;  // TWI slave address bit
  TWSA6 = 6;  m_TWSA6 = 64;  // TWI slave address bit
  TWSA7 = 7;  m_TWSA7 = 128;  // TWI slave address bit

var
  TWSSRA: byte absolute $2B;  // TWI Slave Status Register A

type
  TTWSCRBset = bitpacked set of (e_TWCMD0, e_TWCMD1, e_TWAA);
  TTWSCRBrec = bitpacked record
    TWCMD0,
    TWCMD1,
    TWAA,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TWSCRB: byte absolute $2C;  // TWI Slave Control Register B
  TWSCRBset: TTWSCRBset absolute $2C;
  TWSCRBrec: TTWSCRBrec absolute $2C;
const
  TWCMD0 = 0;  m_TWCMD0 = 1;
  TWCMD1 = 1;  m_TWCMD1 = 2;
  TWAA = 2;  m_TWAA = 4;  // TWI Acknowledge Action

type
  TTWSCRAset = bitpacked set of (e_TWSME, e_TWPME, e_TWSIE, e_TWEN, e_TWASIE, e_TWDIE, e_TWSHE=7);
  TTWSCRArec = bitpacked record
    TWSME,
    TWPME,
    TWSIE,
    TWEN,
    TWASIE,
    TWDIE,
    ReservedBit6,
    TWSHE: TBitField;
  end;
var
  TWSCRA: byte absolute $2D;  // TWI Slave Control Register A
  TWSCRAset: TTWSCRAset absolute $2D;
  TWSCRArec: TTWSCRArec absolute $2D;
const
  TWSME = 0;  m_TWSME = 1;  // TWI Smart Mode Enable
  TWPME = 1;  m_TWPME = 2;  // TWI Promiscuous Mode Enable
  TWSIE = 2;  m_TWSIE = 4;  // TWI Stop Interrupt Enable
  TWEN = 3;  m_TWEN = 8;  // Two-Wire Interface Enable
  TWASIE = 4;  m_TWASIE = 16;  // TWI Address/Stop Interrupt Enable
  TWDIE = 5;  m_TWDIE = 32;  // TWI Data Interrupt Enable
  TWSHE = 7;  m_TWSHE = 128;  // TWI SDA Hold Time Enable

var
  SPDR: byte absolute $2E;  // SPI Data Register

type
  TSPSRset = bitpacked set of (e_SPI2X, e_WCOL=6, e_SPIF);
  TSPSRrec = bitpacked record
    SPI2X,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    WCOL,
    SPIF: TBitField;
  end;
var
  SPSR: byte absolute $2F;  // SPI Status Register
  SPSRset: TSPSRset absolute $2F;
  SPSRrec: TSPSRrec absolute $2F;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  m_WCOL = 64;  // Write Collision Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

type
  TSPCRset = bitpacked set of (e_SPR0, e_SPR1, e_CPHA, e_CPOL, e_MSTR, e_DORD, e_SPE, e_SPIE);
  TSPCRrec = bitpacked record
    SPR0,
    SPR1,
    CPHA,
    CPOL,
    MSTR,
    DORD,
    SPE,
    SPIE: TBitField;
  end;
var
  SPCR: byte absolute $30;  // SPI Control Register
  SPCRset: TSPCRset absolute $30;
  SPCRrec: TSPCRrec absolute $30;
const
  SPR0 = 0;  m_SPR0 = 1;  // SPI Clock Rate Selects
  SPR1 = 1;  m_SPR1 = 2;  // SPI Clock Rate Selects
  CPHA = 2;  m_CPHA = 4;  // Clock Phase
  CPOL = 3;  m_CPOL = 8;  // Clock polarity
  MSTR = 4;  m_MSTR = 16;  // Master/Slave Select
  DORD = 5;  m_DORD = 32;  // Data Order
  SPE = 6;  m_SPE = 64;  // SPI Enable
  SPIE = 7;  m_SPIE = 128;  // SPI Interrupt Enable

type
  TWDTCSRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDP3=5, e_WDIE, e_WDIF);
  TWDTCSRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    ReservedBit4,
    WDP3,
    WDIE,
    WDIF: TBitField;
  end;
var
  WDTCSR: byte absolute $31;  // Watchdog Timer Control and Status Register
  WDTCSRset: TWDTCSRset absolute $31;
  WDTCSRrec: TWDTCSRrec absolute $31;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timer Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timer Interrupt Flag

type
  TNVMCSRset = bitpacked set of (e_NVMBSY=7);
  TNVMCSRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    NVMBSY: TBitField;
  end;
var
  NVMCSR: byte absolute $32;  // Non-Volatile Memory Control and Status Register
  NVMCSRset: TNVMCSRset absolute $32;
  NVMCSRrec: TNVMCSRrec absolute $32;
const
  NVMBSY = 7;  m_NVMBSY = 128;  // Non-Volatile Memory Busy

var
  NVMCMD: byte absolute $33;  // Non-Volatile Memory Command

type
  TPRRset = bitpacked set of (e_PRADC, e_PRTIM0, e_PRTIM1, e_PRSPI, e_PRTWI);
  TPRRrec = bitpacked record
    PRADC,
    PRTIM0,
    PRTIM1,
    PRSPI,
    PRTWI,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $35;  // Power Reduction Register
  PRRset: TPRRset absolute $35;
  PRRrec: TPRRrec absolute $35;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRTIM0 = 1;  m_PRTIM0 = 2;  // Power Reduction Timer/Counter0
  PRTIM1 = 2;  m_PRTIM1 = 4;  // Power Reduction Timer/Counter1
  PRSPI = 3;  m_PRSPI = 8;  // Power Reduction Serial Peripheral Interface
  PRTWI = 4;  m_PRTWI = 16;  // Power Reduction TWI

type
  TCLKPSRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLKPS3);
  TCLKPSRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    CLKPS2,
    CLKPS3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKPSR: byte absolute $36;  // Clock Prescale Register
  CLKPSRset: TCLKPSRset absolute $36;
  CLKPSRrec: TCLKPSRrec absolute $36;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits

type
  TCLKMSRset = bitpacked set of (e_CLKMS0, e_CLKMS1);
  TCLKMSRrec = bitpacked record
    CLKMS0,
    CLKMS1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKMSR: byte absolute $37;  // Clock Main Settings Register
  CLKMSRset: TCLKMSRset absolute $37;
  CLKMSRrec: TCLKMSRrec absolute $37;
const
  CLKMS0 = 0;  m_CLKMS0 = 1;  // Clock Main Select Bits
  CLKMS1 = 1;  m_CLKMS1 = 2;  // Clock Main Select Bits

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
  OSCCAL: byte absolute $39;  // Oscillator Calibration Value
  OSCCALset: TOSCCALset absolute $39;
  OSCCALrec: TOSCCALrec absolute $39;
const
  OSCCAL0 = 0;  m_OSCCAL0 = 1;  // Oscillator Calibration 
  OSCCAL1 = 1;  m_OSCCAL1 = 2;  // Oscillator Calibration 
  OSCCAL2 = 2;  m_OSCCAL2 = 4;  // Oscillator Calibration 
  OSCCAL3 = 3;  m_OSCCAL3 = 8;  // Oscillator Calibration 
  OSCCAL4 = 4;  m_OSCCAL4 = 16;  // Oscillator Calibration 
  OSCCAL5 = 5;  m_OSCCAL5 = 32;  // Oscillator Calibration 
  OSCCAL6 = 6;  m_OSCCAL6 = 64;  // Oscillator Calibration 
  OSCCAL7 = 7;  m_OSCCAL7 = 128;  // Oscillator Calibration

type
  TMCUCRset = bitpacked set of (e_SE, e_SM0, e_SM1, e_SM2, e_BODS, e_ISC00=6, e_ISC01);
  TMCUCRrec = bitpacked record
    SE,
    SM0,
    SM1,
    SM2,
    BODS,
    ReservedBit5,
    ISC00,
    ISC01: TBitField;
  end;
var
  MCUCR: byte absolute $3A;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $3A;
  MCUCRrec: TMCUCRrec absolute $3A;
const
  SE = 0;  m_SE = 1;  // Sleep Enable
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode
  SM2 = 3;  m_SM2 = 8;  // Sleep Mode
  BODS = 4;  m_BODS = 16;  // BOD Sleep
  ISC00 = 6;  m_ISC00 = 64;  // Interrupt Sense Control 0 Bit 0
  ISC01 = 7;  m_ISC01 = 128;  // Interrupt Sense Control 0 Bit 1

type
  TRSTFLRset = bitpacked set of (e_PORF, e_EXTRF, e_WDRF=3);
  TRSTFLRrec = bitpacked record
    PORF,
    EXTRF,
    ReservedBit2,
    WDRF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RSTFLR: byte absolute $3B;  // Reset Flag Register
  RSTFLRset: TRSTFLRset absolute $3B;
  RSTFLRrec: TRSTFLRrec absolute $3B;
const
  PORF = 0;  m_PORF = 1;  // Power-on Reset Flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

var
  CCP: byte absolute $3C;  // Configuration Change Protection
  SP: word absolute $3D;  // Stack Pointer 
  SPL: byte absolute $3D;
  SPH: byte absolute $3E;

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
  // typedefs = 33

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 4 Pin Change Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 5 Watchdog Time-out
procedure TIM1_CAPT_ISR; external name 'TIM1_CAPT_ISR'; // Interrupt 6 Timer/Counter1 Input Capture
procedure TIM1_COMPA_ISR; external name 'TIM1_COMPA_ISR'; // Interrupt 7  Timer/Counter1 Compare Match A
procedure TIM1_COMPB_ISR; external name 'TIM1_COMPB_ISR'; // Interrupt 8  Timer/Counter1 Compare Match B
procedure TIM1_OVF_ISR; external name 'TIM1_OVF_ISR'; // Interrupt 9 Timer/Counter1 Overflow
procedure TIM0_COMPA_ISR; external name 'TIM0_COMPA_ISR'; // Interrupt 10 Timer/Counter0 Compare Match A
procedure TIM0_COMPB_ISR; external name 'TIM0_COMPB_ISR'; // Interrupt 11 Timer/Counter0 Compare Match B
procedure TIM0_OVF_ISR; external name 'TIM0_OVF_ISR'; // Interrupt 12 Timer/Counter0 Overflow
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 13 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 14 Conversion Complete
procedure TWI_SLAVE_ISR; external name 'TWI_SLAVE_ISR'; // Interrupt 15 Two-Wire Interface
procedure SPI_ISR; external name 'SPI_ISR'; // Interrupt 16 Serial Peripheral Interface
procedure QTRIP_ISR; external name 'QTRIP_ISR'; // Interrupt 17 Touch Sensing

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp PCINT0_ISR
  rjmp PCINT1_ISR
  rjmp PCINT2_ISR
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
  rjmp TWI_SLAVE_ISR
  rjmp SPI_ISR
  rjmp QTRIP_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
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
  .weak TWI_SLAVE_ISR
  .weak SPI_ISR
  .weak QTRIP_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
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
  .set TWI_SLAVE_ISR, Default_IRQ_handler
  .set SPI_ISR, Default_IRQ_handler
  .set QTRIP_ISR, Default_IRQ_handler
end;

end.
