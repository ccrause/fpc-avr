unit ATmega169PA;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $20;  // Port A Input Pins
  DDRA: byte absolute $21;  // Port A Data Direction Register

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
  PORTA: byte absolute $22;  // Port A Data Register
  PORTAset: TPORTAset absolute $22;
  PORTArec: TPORTArec absolute $22;
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
  PINB: byte absolute $23;  // Port B Input Pins
  DDRB: byte absolute $24;  // Port B Data Direction Register

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
  PORTB: byte absolute $25;  // Port B Data Register
  PORTBset: TPORTBset absolute $25;
  PORTBrec: TPORTBrec absolute $25;
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
  PINC: byte absolute $26;  // Port C Input Pins
  DDRC: byte absolute $27;  // Port C Data Direction Register

type
  TPORTCset = bitpacked set of (e_PC0, e_PC1, e_PC2, e_PC3, e_PC4, e_PC5, e_PC6, e_PC7);
  TPORTCrec = bitpacked record
    PC0,
    PC1,
    PC2,
    PC3,
    PC4,
    PC5,
    PC6,
    PC7: TBitField;
  end;
var
  PORTC: byte absolute $28;  // Port C Data Register
  PORTCset: TPORTCset absolute $28;
  PORTCrec: TPORTCrec absolute $28;
const
  PC0 = 0;  m_PC0 = 1;
  PC1 = 1;  m_PC1 = 2;
  PC2 = 2;  m_PC2 = 4;
  PC3 = 3;  m_PC3 = 8;
  PC4 = 4;  m_PC4 = 16;
  PC5 = 5;  m_PC5 = 32;
  PC6 = 6;  m_PC6 = 64;
  PC7 = 7;  m_PC7 = 128;

var
  PIND: byte absolute $29;  // Port D Input Pins
  DDRD: byte absolute $2A;  // Port D Data Direction Register

type
  TPORTDset = bitpacked set of (e_PD0, e_PD1, e_PD2, e_PD3, e_PD4, e_PD5, e_PD6, e_PD7);
  TPORTDrec = bitpacked record
    PD0,
    PD1,
    PD2,
    PD3,
    PD4,
    PD5,
    PD6,
    PD7: TBitField;
  end;
var
  PORTD: byte absolute $2B;  // Port D Data Register
  PORTDset: TPORTDset absolute $2B;
  PORTDrec: TPORTDrec absolute $2B;
const
  PD0 = 0;  m_PD0 = 1;
  PD1 = 1;  m_PD1 = 2;
  PD2 = 2;  m_PD2 = 4;
  PD3 = 3;  m_PD3 = 8;
  PD4 = 4;  m_PD4 = 16;
  PD5 = 5;  m_PD5 = 32;
  PD6 = 6;  m_PD6 = 64;
  PD7 = 7;  m_PD7 = 128;

var
  PINE: byte absolute $2C;  // Input Pins, Port E
  DDRE: byte absolute $2D;  // Data Direction Register, Port E

type
  TPORTEset = bitpacked set of (e_PE0, e_PE1, e_PE2, e_PE3, e_PE4, e_PE5, e_PE6, e_PE7);
  TPORTErec = bitpacked record
    PE0,
    PE1,
    PE2,
    PE3,
    PE4,
    PE5,
    PE6,
    PE7: TBitField;
  end;
var
  PORTE: byte absolute $2E;  // Data Register, Port E
  PORTEset: TPORTEset absolute $2E;
  PORTErec: TPORTErec absolute $2E;
const
  PE0 = 0;  m_PE0 = 1;
  PE1 = 1;  m_PE1 = 2;
  PE2 = 2;  m_PE2 = 4;
  PE3 = 3;  m_PE3 = 8;
  PE4 = 4;  m_PE4 = 16;
  PE5 = 5;  m_PE5 = 32;
  PE6 = 6;  m_PE6 = 64;
  PE7 = 7;  m_PE7 = 128;

var
  PINF: byte absolute $2F;  // Input Pins, Port F
  DDRF: byte absolute $30;  // Data Direction Register, Port F

type
  TPORTFset = bitpacked set of (e_PF0, e_PF1, e_PF2, e_PF3, e_PF4, e_PF5, e_PF6, e_PF7);
  TPORTFrec = bitpacked record
    PF0,
    PF1,
    PF2,
    PF3,
    PF4,
    PF5,
    PF6,
    PF7: TBitField;
  end;
var
  PORTF: byte absolute $31;  // Data Register, Port F
  PORTFset: TPORTFset absolute $31;
  PORTFrec: TPORTFrec absolute $31;
const
  PF0 = 0;  m_PF0 = 1;
  PF1 = 1;  m_PF1 = 2;
  PF2 = 2;  m_PF2 = 4;
  PF3 = 3;  m_PF3 = 8;
  PF4 = 4;  m_PF4 = 16;
  PF5 = 5;  m_PF5 = 32;
  PF6 = 6;  m_PF6 = 64;
  PF7 = 7;  m_PF7 = 128;

var
  PING: byte absolute $32;  // Port G Input Pins
  DDRG: byte absolute $33;  // Port G Data Direction Register

type
  TPORTGset = bitpacked set of (e_PG0, e_PG1, e_PG2, e_PG3, e_PG4, e_PG5);
  TPORTGrec = bitpacked record
    PG0,
    PG1,
    PG2,
    PG3,
    PG4,
    PG5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTG: byte absolute $34;  // Port G Data Register
  PORTGset: TPORTGset absolute $34;
  PORTGrec: TPORTGrec absolute $34;
const
  PG0 = 0;  m_PG0 = 1;
  PG1 = 1;  m_PG1 = 2;
  PG2 = 2;  m_PG2 = 4;
  PG3 = 3;  m_PG3 = 8;
  PG4 = 4;  m_PG4 = 16;
  PG5 = 5;  m_PG5 = 32;

type
  TTIFR0set = bitpacked set of (e_TOV0, e_OCF0A);
  TTIFR0rec = bitpacked record
    TOV0,
    OCF0A,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR0: byte absolute $35;  // Timer/Counter0 Interrupt Flag register
  TIFR0set: TTIFR0set absolute $35;
  TIFR0rec: TTIFR0rec absolute $35;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer/Counter0 Output Compare Flag 0

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
  TIFR1: byte absolute $36;  // Timer/Counter1 Interrupt Flag register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Output Compare Flag 1A
  OCF1B = 2;  m_OCF1B = 4;  // Output Compare Flag 1B
  ICF1 = 5;  m_ICF1 = 32;  // Input Capture Flag 1

type
  TTIFR2set = bitpacked set of (e_TOV2, e_OCF2A);
  TTIFR2rec = bitpacked record
    TOV2,
    OCF2A,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR2: byte absolute $37;  // Timer/Counter2 Interrupt Flag Register
  TIFR2set: TTIFR2set absolute $37;
  TIFR2rec: TTIFR2rec absolute $37;
const
  TOV2 = 0;  m_TOV2 = 1;  // Timer/Counter2 Overflow Flag
  OCF2A = 1;  m_OCF2A = 2;  // Timer/Counter2 Output Compare Flag 2

type
  TEIFRset = bitpacked set of (e_INTF0, e_PCIF0=4, e_PCIF1);
  TEIFRrec = bitpacked record
    INTF0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIF0,
    PCIF1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EIFR: byte absolute $3C;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $3C;
  EIFRrec: TEIFRrec absolute $3C;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0
  PCIF0 = 4;  m_PCIF0 = 16;  // Pin Change Interrupt Flags
  PCIF1 = 5;  m_PCIF1 = 32;  // Pin Change Interrupt Flags

type
  TEIMSKset = bitpacked set of (e_INT0, e_PCIE0=4, e_PCIE1);
  TEIMSKrec = bitpacked record
    INT0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIE0,
    PCIE1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EIMSK: byte absolute $3D;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $3D;
  EIMSKrec: TEIMSKrec absolute $3D;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable
  PCIE0 = 4;  m_PCIE0 = 16;  // Pin Change Interrupt Enables
  PCIE1 = 5;  m_PCIE1 = 32;  // Pin Change Interrupt Enables

type
  TGPIOR0set = bitpacked set of (e_GPIOR00, e_GPIOR01, e_GPIOR02, e_GPIOR03, e_GPIOR04, e_GPIOR05, e_GPIOR06, e_GPIOR07);
  TGPIOR0rec = bitpacked record
    GPIOR00,
    GPIOR01,
    GPIOR02,
    GPIOR03,
    GPIOR04,
    GPIOR05,
    GPIOR06,
    GPIOR07: TBitField;
  end;
var
  GPIOR0: byte absolute $3E;  // General Purpose IO Register 0
  GPIOR0set: TGPIOR0set absolute $3E;
  GPIOR0rec: TGPIOR0rec absolute $3E;
const
  GPIOR00 = 0;  m_GPIOR00 = 1;  // General Purpose Bits
  GPIOR01 = 1;  m_GPIOR01 = 2;  // General Purpose Bits
  GPIOR02 = 2;  m_GPIOR02 = 4;  // General Purpose Bits
  GPIOR03 = 3;  m_GPIOR03 = 8;  // General Purpose Bits
  GPIOR04 = 4;  m_GPIOR04 = 16;  // General Purpose Bits
  GPIOR05 = 5;  m_GPIOR05 = 32;  // General Purpose Bits
  GPIOR06 = 6;  m_GPIOR06 = 64;  // General Purpose Bits
  GPIOR07 = 7;  m_GPIOR07 = 128;  // General Purpose Bits

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
  EECR: byte absolute $3F;  // EEPROM Control Register
  EECRset: TEECRset absolute $3F;
  EECRrec: TEECRrec absolute $3F;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable

type
  TEEDRset = bitpacked set of (e_EEDR0, e_EEDR1, e_EEDR2, e_EEDR3, e_EEDR4, e_EEDR5, e_EEDR6, e_EEDR7);
  TEEDRrec = bitpacked record
    EEDR0,
    EEDR1,
    EEDR2,
    EEDR3,
    EEDR4,
    EEDR5,
    EEDR6,
    EEDR7: TBitField;
  end;
var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEDRset: TEEDRset absolute $40;
  EEDRrec: TEEDRrec absolute $40;
const
  EEDR0 = 0;  m_EEDR0 = 1;  // EEPROM Data Bits
  EEDR1 = 1;  m_EEDR1 = 2;  // EEPROM Data Bits
  EEDR2 = 2;  m_EEDR2 = 4;  // EEPROM Data Bits
  EEDR3 = 3;  m_EEDR3 = 8;  // EEPROM Data Bits
  EEDR4 = 4;  m_EEDR4 = 16;  // EEPROM Data Bits
  EEDR5 = 5;  m_EEDR5 = 32;  // EEPROM Data Bits
  EEDR6 = 6;  m_EEDR6 = 64;  // EEPROM Data Bits
  EEDR7 = 7;  m_EEDR7 = 128;  // EEPROM Data Bits

var
  EEAR: word absolute $41;  // EEPROM Address Register Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;
const
  EEAR0 = 0;  m_EEAR0 = 1;  // EEPROM Address Bits
  EEAR1 = 1;  m_EEAR1 = 2;  // EEPROM Address Bits
  EEAR2 = 2;  m_EEAR2 = 4;  // EEPROM Address Bits
  EEAR3 = 3;  m_EEAR3 = 8;  // EEPROM Address Bits
  EEAR4 = 4;  m_EEAR4 = 16;  // EEPROM Address Bits
  EEAR5 = 5;  m_EEAR5 = 32;  // EEPROM Address Bits
  EEAR6 = 6;  m_EEAR6 = 64;  // EEPROM Address Bits
  EEAR7 = 7;  m_EEAR7 = 128;  // EEPROM Address Bits

type
  TGTCCRset = bitpacked set of (e_PSR10, e_PSR2, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR10,
    PSR2,
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
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
  PSR2 = 1;  m_PSR2 = 2;  // Prescaler Reset Timer/Counter2
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

type
  TTCCR0Aset = bitpacked set of (e_CS00, e_CS01, e_CS02, e_WGM01, e_COM0A0, e_COM0A1, e_WGM00, e_FOC0A);
  TTCCR0Arec = bitpacked record
    CS00,
    CS01,
    CS02,
    WGM01,
    COM0A0,
    COM0A1,
    WGM00,
    FOC0A: TBitField;
  end;
var
  TCCR0A: byte absolute $44;  // Timer/Counter0 Control Register
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Selects
  CS01 = 1;  m_CS01 = 2;  // Clock Selects
  CS02 = 2;  m_CS02 = 4;  // Clock Selects
  WGM01 = 3;  m_WGM01 = 8;  // Waveform Generation Mode 1
  COM0A0 = 4;  m_COM0A0 = 16;  // Compare Match Output Modes
  COM0A1 = 5;  m_COM0A1 = 32;  // Compare Match Output Modes
  WGM00 = 6;  m_WGM00 = 64;  // Waveform Generation Mode 0
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare

type
  TTCNT0set = bitpacked set of (e_TCNT00, e_TCNT01, e_TCNT02, e_TCNT03, e_TCNT04, e_TCNT05, e_TCNT06, e_TCNT07);
  TTCNT0rec = bitpacked record
    TCNT00,
    TCNT01,
    TCNT02,
    TCNT03,
    TCNT04,
    TCNT05,
    TCNT06,
    TCNT07: TBitField;
  end;
var
  TCNT0: byte absolute $46;  // Timer/Counter0
  TCNT0set: TTCNT0set absolute $46;
  TCNT0rec: TTCNT0rec absolute $46;
const
  TCNT00 = 0;  m_TCNT00 = 1;  // Timer/Counter0 bits
  TCNT01 = 1;  m_TCNT01 = 2;  // Timer/Counter0 bits
  TCNT02 = 2;  m_TCNT02 = 4;  // Timer/Counter0 bits
  TCNT03 = 3;  m_TCNT03 = 8;  // Timer/Counter0 bits
  TCNT04 = 4;  m_TCNT04 = 16;  // Timer/Counter0 bits
  TCNT05 = 5;  m_TCNT05 = 32;  // Timer/Counter0 bits
  TCNT06 = 6;  m_TCNT06 = 64;  // Timer/Counter0 bits
  TCNT07 = 7;  m_TCNT07 = 128;  // Timer/Counter0 bits

type
  TOCR0Aset = bitpacked set of (e_OCR0A0, e_OCR0A1, e_OCR0A2, e_OCR0A3, e_OCR0A4, e_OCR0A5, e_OCR0A6, e_OCR0A7);
  TOCR0Arec = bitpacked record
    OCR0A0,
    OCR0A1,
    OCR0A2,
    OCR0A3,
    OCR0A4,
    OCR0A5,
    OCR0A6,
    OCR0A7: TBitField;
  end;
var
  OCR0A: byte absolute $47;  // Timer/Counter0 Output Compare Register
  OCR0Aset: TOCR0Aset absolute $47;
  OCR0Arec: TOCR0Arec absolute $47;
const
  OCR0A0 = 0;  m_OCR0A0 = 1;  // Timer/Counter0 Output Compare A
  OCR0A1 = 1;  m_OCR0A1 = 2;  // Timer/Counter0 Output Compare A
  OCR0A2 = 2;  m_OCR0A2 = 4;  // Timer/Counter0 Output Compare A
  OCR0A3 = 3;  m_OCR0A3 = 8;  // Timer/Counter0 Output Compare A
  OCR0A4 = 4;  m_OCR0A4 = 16;  // Timer/Counter0 Output Compare A
  OCR0A5 = 5;  m_OCR0A5 = 32;  // Timer/Counter0 Output Compare A
  OCR0A6 = 6;  m_OCR0A6 = 64;  // Timer/Counter0 Output Compare A
  OCR0A7 = 7;  m_OCR0A7 = 128;  // Timer/Counter0 Output Compare A

type
  TGPIOR1set = bitpacked set of (e_GPIOR10, e_GPIOR11, e_GPIOR12, e_GPIOR13, e_GPIOR14, e_GPIOR15, e_GPIOR16, e_GPIOR17);
  TGPIOR1rec = bitpacked record
    GPIOR10,
    GPIOR11,
    GPIOR12,
    GPIOR13,
    GPIOR14,
    GPIOR15,
    GPIOR16,
    GPIOR17: TBitField;
  end;
var
  GPIOR1: byte absolute $4A;  // General Purpose IO Register 1
  GPIOR1set: TGPIOR1set absolute $4A;
  GPIOR1rec: TGPIOR1rec absolute $4A;
const
  GPIOR10 = 0;  m_GPIOR10 = 1;  // General Purpose Bits
  GPIOR11 = 1;  m_GPIOR11 = 2;  // General Purpose Bits
  GPIOR12 = 2;  m_GPIOR12 = 4;  // General Purpose Bits
  GPIOR13 = 3;  m_GPIOR13 = 8;  // General Purpose Bits
  GPIOR14 = 4;  m_GPIOR14 = 16;  // General Purpose Bits
  GPIOR15 = 5;  m_GPIOR15 = 32;  // General Purpose Bits
  GPIOR16 = 6;  m_GPIOR16 = 64;  // General Purpose Bits
  GPIOR17 = 7;  m_GPIOR17 = 128;  // General Purpose Bits

type
  TGPIOR2set = bitpacked set of (e_GPIOR20, e_GPIOR21, e_GPIOR22, e_GPIOR23, e_GPIOR24, e_GPIOR25, e_GPIOR26, e_GPIOR27);
  TGPIOR2rec = bitpacked record
    GPIOR20,
    GPIOR21,
    GPIOR22,
    GPIOR23,
    GPIOR24,
    GPIOR25,
    GPIOR26,
    GPIOR27: TBitField;
  end;
var
  GPIOR2: byte absolute $4B;  // General Purpose IO Register 2
  GPIOR2set: TGPIOR2set absolute $4B;
  GPIOR2rec: TGPIOR2rec absolute $4B;
const
  GPIOR20 = 0;  m_GPIOR20 = 1;  // General Purpose Bits
  GPIOR21 = 1;  m_GPIOR21 = 2;  // General Purpose Bits
  GPIOR22 = 2;  m_GPIOR22 = 4;  // General Purpose Bits
  GPIOR23 = 3;  m_GPIOR23 = 8;  // General Purpose Bits
  GPIOR24 = 4;  m_GPIOR24 = 16;  // General Purpose Bits
  GPIOR25 = 5;  m_GPIOR25 = 32;  // General Purpose Bits
  GPIOR26 = 6;  m_GPIOR26 = 64;  // General Purpose Bits
  GPIOR27 = 7;  m_GPIOR27 = 128;  // General Purpose Bits

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
  SPCR: byte absolute $4C;  // SPI Control Register
  SPCRset: TSPCRset absolute $4C;
  SPCRrec: TSPCRrec absolute $4C;
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
  SPSR: byte absolute $4D;  // SPI Status Register
  SPSRset: TSPSRset absolute $4D;
  SPSRrec: TSPSRrec absolute $4D;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  m_WCOL = 64;  // Write Collision Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

type
  TSPDRset = bitpacked set of (e_SPDR0, e_SPDR1, e_SPDR2, e_SPDR3, e_SPDR4, e_SPDR5, e_SPDR6, e_SPDR7);
  TSPDRrec = bitpacked record
    SPDR0,
    SPDR1,
    SPDR2,
    SPDR3,
    SPDR4,
    SPDR5,
    SPDR6,
    SPDR7: TBitField;
  end;
var
  SPDR: byte absolute $4E;  // SPI Data Register
  SPDRset: TSPDRset absolute $4E;
  SPDRrec: TSPDRrec absolute $4E;
const
  SPDR0 = 0;  m_SPDR0 = 1;  // SPI Data bits
  SPDR1 = 1;  m_SPDR1 = 2;  // SPI Data bits
  SPDR2 = 2;  m_SPDR2 = 4;  // SPI Data bits
  SPDR3 = 3;  m_SPDR3 = 8;  // SPI Data bits
  SPDR4 = 4;  m_SPDR4 = 16;  // SPI Data bits
  SPDR5 = 5;  m_SPDR5 = 32;  // SPI Data bits
  SPDR6 = 6;  m_SPDR6 = 64;  // SPI Data bits
  SPDR7 = 7;  m_SPDR7 = 128;  // SPI Data bits

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
  ACSR: byte absolute $50;  // Analog Comparator Control And Status Register
  ACSRset: TACSRset absolute $50;
  ACSRrec: TACSRrec absolute $50;
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
  OCDR: byte absolute $51;  // On-Chip Debug Related Register in I/O Memory

type
  TSMCRset = bitpacked set of (e_SE, e_SM0, e_SM1, e_SM2);
  TSMCRrec = bitpacked record
    SE,
    SM0,
    SM1,
    SM2,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SMCR: byte absolute $53;  // Sleep Mode Control Register
  SMCRset: TSMCRset absolute $53;
  SMCRrec: TSMCRrec absolute $53;
const
  SE = 0;  m_SE = 1;  // Sleep Enable
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select bits
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select bits
  SM2 = 3;  m_SM2 = 8;  // Sleep Mode Select bits

type
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_JTRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    JTRF,
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
  JTRF = 4;  m_JTRF = 16;  // JTAG Reset Flag

type
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_PUD=4, e_BODSE, e_BODS, e_JTD);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    PUD,
    BODSE,
    BODS,
    JTD: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  IVCE = 0;  m_IVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select
  PUD = 4;  m_PUD = 16;  // Pull-up disable
  BODSE = 5;  m_BODSE = 32;  // BOD Sleep Enable
  BODS = 6;  m_BODS = 64;  // BOD Sleep
  JTD = 7;  m_JTD = 128;  // JTAG Interface Disable

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_BLBSET, e_RWWSRE, e_RWWSB=6, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    BLBSET,
    RWWSRE,
    ReservedBit5,
    RWWSB,
    SPMIE: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read While Write section read enable
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

var
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
  WDTCR: byte absolute $60;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $60;
  WDTCRrec: TWDTCRrec absolute $60;
const
  WDP0 = 0;  m_WDP0 = 1;  // Watch Dog Timer Prescaler bits
  WDP1 = 1;  m_WDP1 = 2;  // Watch Dog Timer Prescaler bits
  WDP2 = 2;  m_WDP2 = 4;  // Watch Dog Timer Prescaler bits
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable

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
  CLKPR: byte absolute $61;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $61;
  CLKPRrec: TCLKPRrec absolute $61;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits
  CLKPCE = 7;  m_CLKPCE = 128;  // Clock Prescaler Change Enable

type
  TPRRset = bitpacked set of (e_PRADC, e_PRUSART0, e_PRSPI, e_PRTIM1, e_PRLCD);
  TPRRrec = bitpacked record
    PRADC,
    PRUSART0,
    PRSPI,
    PRTIM1,
    PRLCD,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $64;  // Power Reduction Register
  PRRset: TPRRset absolute $64;
  PRRrec: TPRRrec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  m_PRUSART0 = 2;  // Power Reduction USART
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRLCD = 4;  m_PRLCD = 16;  // Power Reduction LCD

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
  OSCCAL: byte absolute $66;  // Oscillator Calibration Value
  OSCCALset: TOSCCALset absolute $66;
  OSCCALrec: TOSCCALrec absolute $66;
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
  TEICRAset = bitpacked set of (e_ISC00, e_ISC01);
  TEICRArec = bitpacked record
    ISC00,
    ISC01,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EICRA: byte absolute $69;  // External Interrupt Control Register
  EICRAset: TEICRAset absolute $69;
  EICRArec: TEICRArec absolute $69;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control 0 Bit 1

var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0

type
  TPCMSK1set = bitpacked set of (e_PCINT8, e_PCINT9, e_PCINT10, e_PCINT11, e_PCINT12, e_PCINT13, e_PCINT14, e_PCINT15);
  TPCMSK1rec = bitpacked record
    PCINT8,
    PCINT9,
    PCINT10,
    PCINT11,
    PCINT12,
    PCINT13,
    PCINT14,
    PCINT15: TBitField;
  end;
var
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1
  PCMSK1set: TPCMSK1set absolute $6C;
  PCMSK1rec: TPCMSK1rec absolute $6C;
const
  PCINT8 = 0;  m_PCINT8 = 1;  // Pin Change Enable Masks
  PCINT9 = 1;  m_PCINT9 = 2;  // Pin Change Enable Masks
  PCINT10 = 2;  m_PCINT10 = 4;  // Pin Change Enable Masks
  PCINT11 = 3;  m_PCINT11 = 8;  // Pin Change Enable Masks
  PCINT12 = 4;  m_PCINT12 = 16;  // Pin Change Enable Masks
  PCINT13 = 5;  m_PCINT13 = 32;  // Pin Change Enable Masks
  PCINT14 = 6;  m_PCINT14 = 64;  // Pin Change Enable Masks
  PCINT15 = 7;  m_PCINT15 = 128;  // Pin Change Enable Masks

type
  TTIMSK0set = bitpacked set of (e_TOIE0, e_OCIE0A);
  TTIMSK0rec = bitpacked record
    TOIE0,
    OCIE0A,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK0: byte absolute $6E;  // Timer/Counter0 Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $6E;
  TIMSK0rec: TTIMSK0rec absolute $6E;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare Match Interrupt Enable

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
  TIMSK1: byte absolute $6F;  // Timer/Counter1 Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $6F;
  TIMSK1rec: TTIMSK1rec absolute $6F;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output Compare A Match Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output Compare B Match Interrupt Enable
  ICIE1 = 5;  m_ICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TTIMSK2set = bitpacked set of (e_TOIE2, e_OCIE2A);
  TTIMSK2rec = bitpacked record
    TOIE2,
    OCIE2A,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK2: byte absolute $70;  // Timer/Counter2 Interrupt Mask register
  TIMSK2set: TTIMSK2set absolute $70;
  TIMSK2rec: TTIMSK2rec absolute $70;
const
  TOIE2 = 0;  m_TOIE2 = 1;  // Timer/Counter2 Overflow Interrupt Enable
  OCIE2A = 1;  m_OCIE2A = 2;  // Timer/Counter2 Output Compare Match Interrupt Enable

var
  ADC: word absolute $78;  // ADC Data Register Bytes
  ADCL: byte absolute $78;
  ADCH: byte absolute $79;
const
  ADC0 = 0;  m_ADC0 = 1;  // ADC Data Bits
  ADC1 = 1;  m_ADC1 = 2;  // ADC Data Bits
  ADC2 = 2;  m_ADC2 = 4;  // ADC Data Bits
  ADC3 = 3;  m_ADC3 = 8;  // ADC Data Bits
  ADC4 = 4;  m_ADC4 = 16;  // ADC Data Bits
  ADC5 = 5;  m_ADC5 = 32;  // ADC Data Bits
  ADC6 = 6;  m_ADC6 = 64;  // ADC Data Bits
  ADC7 = 7;  m_ADC7 = 128;  // ADC Data Bits

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
  ADCSRA: byte absolute $7A;  // The ADC Control and Status register
  ADCSRAset: TADCSRAset absolute $7A;
  ADCSRArec: TADCSRArec absolute $7A;
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
  ADCSRB: byte absolute $7B;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  ACME = 6;  m_ACME = 64;  // Analog Comparator Multiplexer Enable

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
  ADMUX: byte absolute $7C;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $7C;
  ADMUXrec: TADMUXrec absolute $7C;
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
  DIDR0: byte absolute $7E;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $7E;
  DIDR0rec: TDIDR0rec absolute $7E;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC0 Digital input Disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC1 Digital input Disable
  ADC2D = 2;  m_ADC2D = 4;  // ADC2 Digital input Disable
  ADC3D = 3;  m_ADC3D = 8;  // ADC3 Digital input Disable
  ADC4D = 4;  m_ADC4D = 16;  // ADC4 Digital input Disable
  ADC5D = 5;  m_ADC5D = 32;  // ADC5 Digital input Disable
  ADC6D = 6;  m_ADC6D = 64;  // ADC6 Digital input Disable
  ADC7D = 7;  m_ADC7D = 128;  // ADC7 Digital input Disable

type
  TDIDR1set = bitpacked set of (e_AIN0D, e_AIN1D);
  TDIDR1rec = bitpacked record
    AIN0D,
    AIN1D,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR1: byte absolute $7F;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  AIN0D = 0;  m_AIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  m_AIN1D = 2;  // AIN1 Digital Input Disable

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
  TCCR1A: byte absolute $80;  // Timer/Counter1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $80;
  TCCR1Arec: TTCCR1Arec absolute $80;
const
  WGM10 = 0;  m_WGM10 = 1;  // Waveform Generation Mode
  WGM11 = 1;  m_WGM11 = 2;  // Waveform Generation Mode
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

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
  TCCR1B: byte absolute $81;  // Timer/Counter1 Control Register B
  TCCR1Bset: TTCCR1Bset absolute $81;
  TCCR1Brec: TTCCR1Brec absolute $81;
const
  CS10 = 0;  m_CS10 = 1;  // Prescaler source of Timer/Counter 1
  CS11 = 1;  m_CS11 = 2;  // Prescaler source of Timer/Counter 1
  CS12 = 2;  m_CS12 = 4;  // Prescaler source of Timer/Counter 1
  ICES1 = 6;  m_ICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  m_ICNC1 = 128;  // Input Capture 1 Noise Canceler

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
  TCCR1C: byte absolute $82;  // Timer/Counter 1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $82;
  TCCR1Crec: TTCCR1Crec absolute $82;
const
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare 1B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare 1A

var
  TCNT1: word absolute $84;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
const
  TCNT10 = 0;  m_TCNT10 = 1;  // Timer/Counter1 bits
  TCNT11 = 1;  m_TCNT11 = 2;  // Timer/Counter1 bits
  TCNT12 = 2;  m_TCNT12 = 4;  // Timer/Counter1 bits
  TCNT13 = 3;  m_TCNT13 = 8;  // Timer/Counter1 bits
  TCNT14 = 4;  m_TCNT14 = 16;  // Timer/Counter1 bits
  TCNT15 = 5;  m_TCNT15 = 32;  // Timer/Counter1 bits
  TCNT16 = 6;  m_TCNT16 = 64;  // Timer/Counter1 bits
  TCNT17 = 7;  m_TCNT17 = 128;  // Timer/Counter1 bits

var
  ICR1: word absolute $86;  // Timer/Counter1 Input Capture Register Bytes
  ICR1L: byte absolute $86;
  ICR1H: byte absolute $87;
const
  ICR10 = 0;  m_ICR10 = 1;  // Timer/Counter1 Input Capture
  ICR11 = 1;  m_ICR11 = 2;  // Timer/Counter1 Input Capture
  ICR12 = 2;  m_ICR12 = 4;  // Timer/Counter1 Input Capture
  ICR13 = 3;  m_ICR13 = 8;  // Timer/Counter1 Input Capture
  ICR14 = 4;  m_ICR14 = 16;  // Timer/Counter1 Input Capture
  ICR15 = 5;  m_ICR15 = 32;  // Timer/Counter1 Input Capture
  ICR16 = 6;  m_ICR16 = 64;  // Timer/Counter1 Input Capture
  ICR17 = 7;  m_ICR17 = 128;  // Timer/Counter1 Input Capture

var
  OCR1A: word absolute $88;  // Timer/Counter1 Output Compare Register A Bytes
  OCR1AL: byte absolute $88;
  OCR1AH: byte absolute $89;
const
  OCR1A0 = 0;  m_OCR1A0 = 1;  // Timer/Counter1 Output Compare A
  OCR1A1 = 1;  m_OCR1A1 = 2;  // Timer/Counter1 Output Compare A
  OCR1A2 = 2;  m_OCR1A2 = 4;  // Timer/Counter1 Output Compare A
  OCR1A3 = 3;  m_OCR1A3 = 8;  // Timer/Counter1 Output Compare A
  OCR1A4 = 4;  m_OCR1A4 = 16;  // Timer/Counter1 Output Compare A
  OCR1A5 = 5;  m_OCR1A5 = 32;  // Timer/Counter1 Output Compare A
  OCR1A6 = 6;  m_OCR1A6 = 64;  // Timer/Counter1 Output Compare A
  OCR1A7 = 7;  m_OCR1A7 = 128;  // Timer/Counter1 Output Compare A

var
  OCR1B: word absolute $8A;  // Timer/Counter1 Output Compare Register B Bytes
  OCR1BL: byte absolute $8A;
  OCR1BH: byte absolute $8B;
const
  OCR1B0 = 0;  m_OCR1B0 = 1;  // Timer/Counter1 Output Compare B
  OCR1B1 = 1;  m_OCR1B1 = 2;  // Timer/Counter1 Output Compare B
  OCR1B2 = 2;  m_OCR1B2 = 4;  // Timer/Counter1 Output Compare B
  OCR1B3 = 3;  m_OCR1B3 = 8;  // Timer/Counter1 Output Compare B
  OCR1B4 = 4;  m_OCR1B4 = 16;  // Timer/Counter1 Output Compare B
  OCR1B5 = 5;  m_OCR1B5 = 32;  // Timer/Counter1 Output Compare B
  OCR1B6 = 6;  m_OCR1B6 = 64;  // Timer/Counter1 Output Compare B
  OCR1B7 = 7;  m_OCR1B7 = 128;  // Timer/Counter1 Output Compare B

type
  TTCCR2Aset = bitpacked set of (e_CS20, e_CS21, e_CS22, e_WGM21, e_COM2A0, e_COM2A1, e_WGM20, e_FOC2A);
  TTCCR2Arec = bitpacked record
    CS20,
    CS21,
    CS22,
    WGM21,
    COM2A0,
    COM2A1,
    WGM20,
    FOC2A: TBitField;
  end;
var
  TCCR2A: byte absolute $B0;  // Timer/Counter2 Control Register
  TCCR2Aset: TTCCR2Aset absolute $B0;
  TCCR2Arec: TTCCR2Arec absolute $B0;
const
  CS20 = 0;  m_CS20 = 1;  // Clock Select bits
  CS21 = 1;  m_CS21 = 2;  // Clock Select bits
  CS22 = 2;  m_CS22 = 4;  // Clock Select bits
  WGM21 = 3;  m_WGM21 = 8;  // Waveform Generation Mode
  COM2A0 = 4;  m_COM2A0 = 16;  // Compare Output Mode bits
  COM2A1 = 5;  m_COM2A1 = 32;  // Compare Output Mode bits
  WGM20 = 6;  m_WGM20 = 64;  // Waveform Generation Mode
  FOC2A = 7;  m_FOC2A = 128;  // Force Output Compare A

type
  TTCNT2set = bitpacked set of (e_TCNT20, e_TCNT21, e_TCNT22, e_TCNT23, e_TCNT24, e_TCNT25, e_TCNT26, e_TCNT27);
  TTCNT2rec = bitpacked record
    TCNT20,
    TCNT21,
    TCNT22,
    TCNT23,
    TCNT24,
    TCNT25,
    TCNT26,
    TCNT27: TBitField;
  end;
var
  TCNT2: byte absolute $B2;  // Timer/Counter2
  TCNT2set: TTCNT2set absolute $B2;
  TCNT2rec: TTCNT2rec absolute $B2;
const
  TCNT20 = 0;  m_TCNT20 = 1;  // Timer/Counter2 bits
  TCNT21 = 1;  m_TCNT21 = 2;  // Timer/Counter2 bits
  TCNT22 = 2;  m_TCNT22 = 4;  // Timer/Counter2 bits
  TCNT23 = 3;  m_TCNT23 = 8;  // Timer/Counter2 bits
  TCNT24 = 4;  m_TCNT24 = 16;  // Timer/Counter2 bits
  TCNT25 = 5;  m_TCNT25 = 32;  // Timer/Counter2 bits
  TCNT26 = 6;  m_TCNT26 = 64;  // Timer/Counter2 bits
  TCNT27 = 7;  m_TCNT27 = 128;  // Timer/Counter2 bits

type
  TOCR2Aset = bitpacked set of (e_OCR2A0, e_OCR2A1, e_OCR2A2, e_OCR2A3, e_OCR2A4, e_OCR2A5, e_OCR2A6, e_OCR2A7);
  TOCR2Arec = bitpacked record
    OCR2A0,
    OCR2A1,
    OCR2A2,
    OCR2A3,
    OCR2A4,
    OCR2A5,
    OCR2A6,
    OCR2A7: TBitField;
  end;
var
  OCR2A: byte absolute $B3;  // Timer/Counter2 Output Compare Register
  OCR2Aset: TOCR2Aset absolute $B3;
  OCR2Arec: TOCR2Arec absolute $B3;
const
  OCR2A0 = 0;  m_OCR2A0 = 1;  // Timer/Counter2 Output Compare A
  OCR2A1 = 1;  m_OCR2A1 = 2;  // Timer/Counter2 Output Compare A
  OCR2A2 = 2;  m_OCR2A2 = 4;  // Timer/Counter2 Output Compare A
  OCR2A3 = 3;  m_OCR2A3 = 8;  // Timer/Counter2 Output Compare A
  OCR2A4 = 4;  m_OCR2A4 = 16;  // Timer/Counter2 Output Compare A
  OCR2A5 = 5;  m_OCR2A5 = 32;  // Timer/Counter2 Output Compare A
  OCR2A6 = 6;  m_OCR2A6 = 64;  // Timer/Counter2 Output Compare A
  OCR2A7 = 7;  m_OCR2A7 = 128;  // Timer/Counter2 Output Compare A

type
  TASSRset = bitpacked set of (e_TCR2UB, e_OCR2UB, e_TCN2UB, e_AS2, e_EXCLK);
  TASSRrec = bitpacked record
    TCR2UB,
    OCR2UB,
    TCN2UB,
    AS2,
    EXCLK,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ASSR: byte absolute $B6;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $B6;
  ASSRrec: TASSRrec absolute $B6;
const
  TCR2UB = 0;  m_TCR2UB = 1;  // TCR2UB: Timer/Counter Control Register2 Update Busy
  OCR2UB = 1;  m_OCR2UB = 2;  // Output Compare Register2 Update Busy
  TCN2UB = 2;  m_TCN2UB = 4;  // TCN2UB: Timer/Counter2 Update Busy
  AS2 = 3;  m_AS2 = 8;  // AS2: Asynchronous Timer/Counter2
  EXCLK = 4;  m_EXCLK = 16;  // Enable External Clock Interrupt

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
  USICR: byte absolute $B8;  // USI Control Register
  USICRset: TUSICRset absolute $B8;
  USICRrec: TUSICRrec absolute $B8;
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
  USISR: byte absolute $B9;  // USI Status Register
  USISRset: TUSISRset absolute $B9;
  USISRrec: TUSISRrec absolute $B9;
const
  USICNT0 = 0;  m_USICNT0 = 1;  // USI Counter Value Bits
  USICNT1 = 1;  m_USICNT1 = 2;  // USI Counter Value Bits
  USICNT2 = 2;  m_USICNT2 = 4;  // USI Counter Value Bits
  USICNT3 = 3;  m_USICNT3 = 8;  // USI Counter Value Bits
  USIDC = 4;  m_USIDC = 16;  // Data Output Collision
  USIPF = 5;  m_USIPF = 32;  // Stop Condition Flag
  USIOIF = 6;  m_USIOIF = 64;  // Counter Overflow Interrupt Flag
  USISIF = 7;  m_USISIF = 128;  // Start Condition Interrupt Flag

type
  TUSIDRset = bitpacked set of (e_USIDR0, e_USIDR1, e_USIDR2, e_USIDR3, e_USIDR4, e_USIDR5, e_USIDR6, e_USIDR7);
  TUSIDRrec = bitpacked record
    USIDR0,
    USIDR1,
    USIDR2,
    USIDR3,
    USIDR4,
    USIDR5,
    USIDR6,
    USIDR7: TBitField;
  end;
var
  USIDR: byte absolute $BA;  // USI Data Register
  USIDRset: TUSIDRset absolute $BA;
  USIDRrec: TUSIDRrec absolute $BA;
const
  USIDR0 = 0;  m_USIDR0 = 1;  // USI Data bits
  USIDR1 = 1;  m_USIDR1 = 2;  // USI Data bits
  USIDR2 = 2;  m_USIDR2 = 4;  // USI Data bits
  USIDR3 = 3;  m_USIDR3 = 8;  // USI Data bits
  USIDR4 = 4;  m_USIDR4 = 16;  // USI Data bits
  USIDR5 = 5;  m_USIDR5 = 32;  // USI Data bits
  USIDR6 = 6;  m_USIDR6 = 64;  // USI Data bits
  USIDR7 = 7;  m_USIDR7 = 128;  // USI Data bits

type
  TUCSR0Aset = bitpacked set of (e_MPCM0, e_U2X0, e_UPE0, e_DOR0, e_FE0, e_UDRE0, e_TXC0, e_RXC0);
  TUCSR0Arec = bitpacked record
    MPCM0,
    U2X0,
    UPE0,
    DOR0,
    FE0,
    UDRE0,
    TXC0,
    RXC0: TBitField;
  end;
var
  UCSR0A: byte absolute $C0;  // USART Control and Status Register A
  UCSR0Aset: TUCSR0Aset absolute $C0;
  UCSR0Arec: TUCSR0Arec absolute $C0;
const
  MPCM0 = 0;  m_MPCM0 = 1;  // Multi-processor Communication Mode
  U2X0 = 1;  m_U2X0 = 2;  // Double the USART Transmission Speed
  UPE0 = 2;  m_UPE0 = 4;  // USART Parity Error
  DOR0 = 3;  m_DOR0 = 8;  // Data OverRun
  FE0 = 4;  m_FE0 = 16;  // Framing Error
  UDRE0 = 5;  m_UDRE0 = 32;  // USART Data Register Empty
  TXC0 = 6;  m_TXC0 = 64;  // USART Transmit Complete
  RXC0 = 7;  m_RXC0 = 128;  // USART Receive Complete

type
  TUCSR0Bset = bitpacked set of (e_TXB80, e_RXB80, e_UCSZ02, e_TXEN0, e_RXEN0, e_UDRIE0, e_TXCIE0, e_RXCIE0);
  TUCSR0Brec = bitpacked record
    TXB80,
    RXB80,
    UCSZ02,
    TXEN0,
    RXEN0,
    UDRIE0,
    TXCIE0,
    RXCIE0: TBitField;
  end;
var
  UCSR0B: byte absolute $C1;  // USART Control and Status Register B
  UCSR0Bset: TUCSR0Bset absolute $C1;
  UCSR0Brec: TUCSR0Brec absolute $C1;
const
  TXB80 = 0;  m_TXB80 = 1;  // Transmit Data Bit 8
  RXB80 = 1;  m_RXB80 = 2;  // Receive Data Bit 8
  UCSZ02 = 2;  m_UCSZ02 = 4;  // Character Size
  TXEN0 = 3;  m_TXEN0 = 8;  // Transmitter Enable
  RXEN0 = 4;  m_RXEN0 = 16;  // Receiver Enable
  UDRIE0 = 5;  m_UDRIE0 = 32;  // USART Data Register Empty Interrupt Enable
  TXCIE0 = 6;  m_TXCIE0 = 64;  // TX Complete Interrupt Enable
  RXCIE0 = 7;  m_RXCIE0 = 128;  // RX Complete Interrupt Enable

type
  TUCSR0Cset = bitpacked set of (e_UCPOL0, e_UCSZ00, e_UCSZ01, e_USBS0, e_UPM00, e_UPM01, e_UMSEL0);
  TUCSR0Crec = bitpacked record
    UCPOL0,
    UCSZ00,
    UCSZ01,
    USBS0,
    UPM00,
    UPM01,
    UMSEL0,
    ReservedBit7: TBitField;
  end;
var
  UCSR0C: byte absolute $C2;  // USART Control and Status Register C
  UCSR0Cset: TUCSR0Cset absolute $C2;
  UCSR0Crec: TUCSR0Crec absolute $C2;
const
  UCPOL0 = 0;  m_UCPOL0 = 1;  // Clock Polarity
  UCSZ00 = 1;  m_UCSZ00 = 2;  // Character Size
  UCSZ01 = 2;  m_UCSZ01 = 4;  // Character Size
  USBS0 = 3;  m_USBS0 = 8;  // Stop Bit Select
  UPM00 = 4;  m_UPM00 = 16;  // Parity Mode Bits
  UPM01 = 5;  m_UPM01 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select

var
  UBRR0: word absolute $C4;  // USART Baud Rate Register Bytes
  UBRR0L: byte absolute $C4;
  UBRR0H: byte absolute $C5;
const
  UBRR00 = 0;  m_UBRR00 = 1;  // USART Baud Rate bits
  UBRR01 = 1;  m_UBRR01 = 2;  // USART Baud Rate bits
  UBRR02 = 2;  m_UBRR02 = 4;  // USART Baud Rate bits
  UBRR03 = 3;  m_UBRR03 = 8;  // USART Baud Rate bits
  UBRR04 = 4;  m_UBRR04 = 16;  // USART Baud Rate bits
  UBRR05 = 5;  m_UBRR05 = 32;  // USART Baud Rate bits
  UBRR06 = 6;  m_UBRR06 = 64;  // USART Baud Rate bits
  UBRR07 = 7;  m_UBRR07 = 128;  // USART Baud Rate bits

type
  TUDR0set = bitpacked set of (e_UDR00, e_UDR01, e_UDR02, e_UDR03, e_UDR04, e_UDR05, e_UDR06, e_UDR07);
  TUDR0rec = bitpacked record
    UDR00,
    UDR01,
    UDR02,
    UDR03,
    UDR04,
    UDR05,
    UDR06,
    UDR07: TBitField;
  end;
var
  UDR0: byte absolute $C6;  // USART I/O Data Register
  UDR0set: TUDR0set absolute $C6;
  UDR0rec: TUDR0rec absolute $C6;
const
  UDR00 = 0;  m_UDR00 = 1;  // USART I/O Data bits
  UDR01 = 1;  m_UDR01 = 2;  // USART I/O Data bits
  UDR02 = 2;  m_UDR02 = 4;  // USART I/O Data bits
  UDR03 = 3;  m_UDR03 = 8;  // USART I/O Data bits
  UDR04 = 4;  m_UDR04 = 16;  // USART I/O Data bits
  UDR05 = 5;  m_UDR05 = 32;  // USART I/O Data bits
  UDR06 = 6;  m_UDR06 = 64;  // USART I/O Data bits
  UDR07 = 7;  m_UDR07 = 128;  // USART I/O Data bits

type
  TLCDCRAset = bitpacked set of (e_LCDBL, e_LCDCCD, e_LCDBD, e_LCDIE, e_LCDIF, e_LCDAB=6, e_LCDEN);
  TLCDCRArec = bitpacked record
    LCDBL,
    LCDCCD,
    LCDBD,
    LCDIE,
    LCDIF,
    ReservedBit5,
    LCDAB,
    LCDEN: TBitField;
  end;
var
  LCDCRA: byte absolute $E4;  // LCD Control Register A
  LCDCRAset: TLCDCRAset absolute $E4;
  LCDCRArec: TLCDCRArec absolute $E4;
const
  LCDBL = 0;  m_LCDBL = 1;  // LCD Blanking
  LCDCCD = 1;  m_LCDCCD = 2;  // LCD Contrast Control Disable
  LCDBD = 2;  m_LCDBD = 4;  // LCD Buffer Disable
  LCDIE = 3;  m_LCDIE = 8;  // LCD Interrupt Enable
  LCDIF = 4;  m_LCDIF = 16;  // LCD Interrupt Flag
  LCDAB = 6;  m_LCDAB = 64;  // LCD A or B waveform
  LCDEN = 7;  m_LCDEN = 128;  // LCD Enable

type
  TLCDCRBset = bitpacked set of (e_LCDPM0, e_LCDPM1, e_LCDPM2, e_LCDMUX0=4, e_LCDMUX1, e_LCD2B, e_LCDCS);
  TLCDCRBrec = bitpacked record
    LCDPM0,
    LCDPM1,
    LCDPM2,
    ReservedBit3,
    LCDMUX0,
    LCDMUX1,
    LCD2B,
    LCDCS: TBitField;
  end;
var
  LCDCRB: byte absolute $E5;  // LCD Control and Status Register B
  LCDCRBset: TLCDCRBset absolute $E5;
  LCDCRBrec: TLCDCRBrec absolute $E5;
const
  LCDPM0 = 0;  m_LCDPM0 = 1;  // LCD Port Masks
  LCDPM1 = 1;  m_LCDPM1 = 2;  // LCD Port Masks
  LCDPM2 = 2;  m_LCDPM2 = 4;  // LCD Port Masks
  LCDMUX0 = 4;  m_LCDMUX0 = 16;  // LCD Mux Selects
  LCDMUX1 = 5;  m_LCDMUX1 = 32;  // LCD Mux Selects
  LCD2B = 6;  m_LCD2B = 64;  // LCD 1/2 Bias Select
  LCDCS = 7;  m_LCDCS = 128;  // LCD CLock Select

type
  TLCDFRRset = bitpacked set of (e_LCDCD0, e_LCDCD1, e_LCDCD2, e_LCDPS0=4, e_LCDPS1, e_LCDPS2);
  TLCDFRRrec = bitpacked record
    LCDCD0,
    LCDCD1,
    LCDCD2,
    ReservedBit3,
    LCDPS0,
    LCDPS1,
    LCDPS2,
    ReservedBit7: TBitField;
  end;
var
  LCDFRR: byte absolute $E6;  // LCD Frame Rate Register
  LCDFRRset: TLCDFRRset absolute $E6;
  LCDFRRrec: TLCDFRRrec absolute $E6;
const
  LCDCD0 = 0;  m_LCDCD0 = 1;  // LCD Clock Dividers
  LCDCD1 = 1;  m_LCDCD1 = 2;  // LCD Clock Dividers
  LCDCD2 = 2;  m_LCDCD2 = 4;  // LCD Clock Dividers
  LCDPS0 = 4;  m_LCDPS0 = 16;  // LCD Prescaler Selects
  LCDPS1 = 5;  m_LCDPS1 = 32;  // LCD Prescaler Selects
  LCDPS2 = 6;  m_LCDPS2 = 64;  // LCD Prescaler Selects

type
  TLCDCCRset = bitpacked set of (e_LCDCC0, e_LCDCC1, e_LCDCC2, e_LCDCC3, e_LCDMDT, e_LCDDC0, e_LCDDC1, e_LCDDC2);
  TLCDCCRrec = bitpacked record
    LCDCC0,
    LCDCC1,
    LCDCC2,
    LCDCC3,
    LCDMDT,
    LCDDC0,
    LCDDC1,
    LCDDC2: TBitField;
  end;
var
  LCDCCR: byte absolute $E7;  // LCD Contrast Control Register
  LCDCCRset: TLCDCCRset absolute $E7;
  LCDCCRrec: TLCDCCRrec absolute $E7;
const
  LCDCC0 = 0;  m_LCDCC0 = 1;  // LCD Contrast Controls
  LCDCC1 = 1;  m_LCDCC1 = 2;  // LCD Contrast Controls
  LCDCC2 = 2;  m_LCDCC2 = 4;  // LCD Contrast Controls
  LCDCC3 = 3;  m_LCDCC3 = 8;  // LCD Contrast Controls
  LCDMDT = 4;  m_LCDMDT = 16;  // LCD Maximum Drive Time
  LCDDC0 = 5;  m_LCDDC0 = 32;  // LCD Display Configuration Bits
  LCDDC1 = 6;  m_LCDDC1 = 64;  // LCD Display Configuration Bits
  LCDDC2 = 7;  m_LCDDC2 = 128;  // LCD Display Configuration Bits

var
  LCDDR0: byte absolute $EC;  // LCD Data Register 0
  LCDDR1: byte absolute $ED;  // LCD Data Register 1
  LCDDR2: byte absolute $EE;  // LCD Data Register 2
  LCDDR3: byte absolute $EF;  // LCD Data Register 3
  LCDDR5: byte absolute $F1;  // LCD Data Register 5
  LCDDR6: byte absolute $F2;  // LCD Data Register 6
  LCDDR7: byte absolute $F3;  // LCD Data Register 7
  LCDDR8: byte absolute $F4;  // LCD Data Register 8
  LCDDR10: byte absolute $F6;  // LCD Data Register 10
  LCDDR11: byte absolute $F7;  // LCD Data Register 11
  LCDDR12: byte absolute $F8;  // LCD Data Register 12
  LCDDR13: byte absolute $F9;  // LCD Data Register 13
  LCDDR15: byte absolute $FB;  // LCD Data Register 15
  LCDDR16: byte absolute $FC;  // LCD Data Register 16
  LCDDR17: byte absolute $FD;  // LCD Data Register 17
  LCDDR18: byte absolute $FE;  // LCD Data Register 18
  // typedefs = 62

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt Request 1
procedure TIMER2_COMP_ISR; external name 'TIMER2_COMP_ISR'; // Interrupt 4 Timer/Counter2 Compare Match
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 5 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 6 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 7 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 8 Timer/Counter Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 9 Timer/Counter1 Overflow
procedure TIMER0_COMP_ISR; external name 'TIMER0_COMP_ISR'; // Interrupt 10 Timer/Counter0 Compare Match
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 11 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 12 SPI Serial Transfer Complete
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 13 USART0, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 14 USART0 Data register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 15 USART0, Tx Complete
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 16 USI Start Condition
procedure USI_OVERFLOW_ISR; external name 'USI_OVERFLOW_ISR'; // Interrupt 17 USI Overflow
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 18 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 19 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 20 EEPROM Ready
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 21 Store Program Memory Read
procedure LCD_ISR; external name 'LCD_ISR'; // Interrupt 22 LCD Start of Frame

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp TIMER2_COMP_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMP_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI_STC_ISR
  jmp USART0_RX_ISR
  jmp USART0_UDRE_ISR
  jmp USART0_TX_ISR
  jmp USI_START_ISR
  jmp USI_OVERFLOW_ISR
  jmp ANALOG_COMP_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp SPM_READY_ISR
  jmp LCD_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak TIMER2_COMP_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMP_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART0_RX_ISR
  .weak USART0_UDRE_ISR
  .weak USART0_TX_ISR
  .weak USI_START_ISR
  .weak USI_OVERFLOW_ISR
  .weak ANALOG_COMP_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak SPM_READY_ISR
  .weak LCD_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set TIMER2_COMP_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMP_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART0_RX_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_OVERFLOW_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
  .set LCD_ISR, Default_IRQ_handler
end;

end.
