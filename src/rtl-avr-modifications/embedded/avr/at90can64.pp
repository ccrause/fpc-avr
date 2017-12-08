unit AT90CAN64;

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
  PING: byte absolute $32;  // Input Pins, Port G
  DDRG: byte absolute $33;  // Data Direction Register, Port G

type
  TPORTGset = bitpacked set of (e_PG0, e_PG1, e_PG2, e_PG3, e_PG4);
  TPORTGrec = bitpacked record
    PG0,
    PG1,
    PG2,
    PG3,
    PG4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTG: byte absolute $34;  // Data Register, Port G
  PORTGset: TPORTGset absolute $34;
  PORTGrec: TPORTGrec absolute $34;
const
  PG0 = 0;  m_PG0 = 1;
  PG1 = 1;  m_PG1 = 2;
  PG2 = 2;  m_PG2 = 4;
  PG3 = 3;  m_PG3 = 8;
  PG4 = 4;  m_PG4 = 16;

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
  TTIFR1set = bitpacked set of (e_TOV1, e_OCF1A, e_OCF1B, e_OCF1C, e_ICF1=5);
  TTIFR1rec = bitpacked record
    TOV1,
    OCF1A,
    OCF1B,
    OCF1C,
    ReservedBit4,
    ICF1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR1: byte absolute $36;  // Timer/Counter Interrupt Flag register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Output Compare Flag 1A
  OCF1B = 2;  m_OCF1B = 4;  // Output Compare Flag 1B
  OCF1C = 3;  m_OCF1C = 8;  // Output Compare Flag 1C
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
  TIFR2: byte absolute $37;  // Timer/Counter Interrupt Flag Register
  TIFR2set: TTIFR2set absolute $37;
  TIFR2rec: TTIFR2rec absolute $37;
const
  TOV2 = 0;  m_TOV2 = 1;  // Timer/Counter2 Overflow Flag
  OCF2A = 1;  m_OCF2A = 2;  // Output Compare Flag 2

type
  TTIFR3set = bitpacked set of (e_TOV3, e_OCF3A, e_OCF3B, e_OCF3C, e_ICF3=5);
  TTIFR3rec = bitpacked record
    TOV3,
    OCF3A,
    OCF3B,
    OCF3C,
    ReservedBit4,
    ICF3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR3: byte absolute $38;  // Timer/Counter Interrupt Flag register
  TIFR3set: TTIFR3set absolute $38;
  TIFR3rec: TTIFR3rec absolute $38;
const
  TOV3 = 0;  m_TOV3 = 1;  // Timer/Counter3 Overflow Flag
  OCF3A = 1;  m_OCF3A = 2;  // Output Compare Flag 3A
  OCF3B = 2;  m_OCF3B = 4;  // Output Compare Flag 3B
  OCF3C = 3;  m_OCF3C = 8;  // Output Compare Flag 3C
  ICF3 = 5;  m_ICF3 = 32;  // Input Capture Flag 3

type
  TEIFRset = bitpacked set of (e_INTF0, e_INTF1, e_INTF2, e_INTF3, e_INTF4, e_INTF5, e_INTF6, e_INTF7);
  TEIFRrec = bitpacked record
    INTF0,
    INTF1,
    INTF2,
    INTF3,
    INTF4,
    INTF5,
    INTF6,
    INTF7: TBitField;
  end;
var
  EIFR: byte absolute $3C;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $3C;
  EIFRrec: TEIFRrec absolute $3C;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flags
  INTF1 = 1;  m_INTF1 = 2;  // External Interrupt Flags
  INTF2 = 2;  m_INTF2 = 4;  // External Interrupt Flags
  INTF3 = 3;  m_INTF3 = 8;  // External Interrupt Flags
  INTF4 = 4;  m_INTF4 = 16;  // External Interrupt Flags
  INTF5 = 5;  m_INTF5 = 32;  // External Interrupt Flags
  INTF6 = 6;  m_INTF6 = 64;  // External Interrupt Flags
  INTF7 = 7;  m_INTF7 = 128;  // External Interrupt Flags

type
  TEIMSKset = bitpacked set of (e_INT0, e_INT1, e_INT2, e_INT3, e_INT4, e_INT5, e_INT6, e_INT7);
  TEIMSKrec = bitpacked record
    INT0,
    INT1,
    INT2,
    INT3,
    INT4,
    INT5,
    INT6,
    INT7: TBitField;
  end;
var
  EIMSK: byte absolute $3D;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $3D;
  EIMSKrec: TEIMSKrec absolute $3D;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 7 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 7 Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request 7 Enable
  INT3 = 3;  m_INT3 = 8;  // External Interrupt Request 7 Enable
  INT4 = 4;  m_INT4 = 16;  // External Interrupt Request 7 Enable
  INT5 = 5;  m_INT5 = 32;  // External Interrupt Request 7 Enable
  INT6 = 6;  m_INT6 = 64;  // External Interrupt Request 7 Enable
  INT7 = 7;  m_INT7 = 128;  // External Interrupt Request 7 Enable

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
  GPIOR00 = 0;  m_GPIOR00 = 1;  // General Purpose IO Register 0 bit 0
  GPIOR01 = 1;  m_GPIOR01 = 2;  // General Purpose IO Register 0 bit 1
  GPIOR02 = 2;  m_GPIOR02 = 4;  // General Purpose IO Register 0 bit 2
  GPIOR03 = 3;  m_GPIOR03 = 8;  // General Purpose IO Register 0 bit 3
  GPIOR04 = 4;  m_GPIOR04 = 16;  // General Purpose IO Register 0 bit 4
  GPIOR05 = 5;  m_GPIOR05 = 32;  // General Purpose IO Register 0 bit 5
  GPIOR06 = 6;  m_GPIOR06 = 64;  // General Purpose IO Register 0 bit 6
  GPIOR07 = 7;  m_GPIOR07 = 128;  // General Purpose IO Register 0 bit 7

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
  EEDR0 = 0;  m_EEDR0 = 1;  // EEPROM Data bits
  EEDR1 = 1;  m_EEDR1 = 2;  // EEPROM Data bits
  EEDR2 = 2;  m_EEDR2 = 4;  // EEPROM Data bits
  EEDR3 = 3;  m_EEDR3 = 8;  // EEPROM Data bits
  EEDR4 = 4;  m_EEDR4 = 16;  // EEPROM Data bits
  EEDR5 = 5;  m_EEDR5 = 32;  // EEPROM Data bits
  EEDR6 = 6;  m_EEDR6 = 64;  // EEPROM Data bits
  EEDR7 = 7;  m_EEDR7 = 128;  // EEPROM Data bits

var
  EEAR: word absolute $41;  // EEPROM Read/Write Access Bytes - Only bit 10..8 are used in AT90CAN64 - Only bit 9..8 are used in AT90CAN32
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;
const
  EEAR0 = 0;  m_EEAR0 = 1;  // EEPROM Address bits
  EEAR1 = 1;  m_EEAR1 = 2;  // EEPROM Address bits
  EEAR2 = 2;  m_EEAR2 = 4;  // EEPROM Address bits
  EEAR3 = 3;  m_EEAR3 = 8;  // EEPROM Address bits
  EEAR4 = 4;  m_EEAR4 = 16;  // EEPROM Address bits
  EEAR5 = 5;  m_EEAR5 = 32;  // EEPROM Address bits
  EEAR6 = 6;  m_EEAR6 = 64;  // EEPROM Address bits
  EEAR7 = 7;  m_EEAR7 = 128;  // EEPROM Address bits

type
  TGTCCRset = bitpacked set of (e_PSR310, e_PSR2, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR310,
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
  PSR310 = 0;  m_PSR310 = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
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

var
  TCNT0: byte absolute $46;  // Timer/Counter0

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
  OCR0A0 = 0;  m_OCR0A0 = 1;  // Output Compare A bits
  OCR0A1 = 1;  m_OCR0A1 = 2;  // Output Compare A bits
  OCR0A2 = 2;  m_OCR0A2 = 4;  // Output Compare A bits
  OCR0A3 = 3;  m_OCR0A3 = 8;  // Output Compare A bits
  OCR0A4 = 4;  m_OCR0A4 = 16;  // Output Compare A bits
  OCR0A5 = 5;  m_OCR0A5 = 32;  // Output Compare A bits
  OCR0A6 = 6;  m_OCR0A6 = 64;  // Output Compare A bits
  OCR0A7 = 7;  m_OCR0A7 = 128;  // Output Compare A bits

var
  GPIOR1: byte absolute $4A;  // General Purpose IO Register 1

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
  GPIOR20 = 0;  m_GPIOR20 = 1;  // General Purpose IO Register 2 bis
  GPIOR21 = 1;  m_GPIOR21 = 2;  // General Purpose IO Register 2 bis
  GPIOR22 = 2;  m_GPIOR22 = 4;  // General Purpose IO Register 2 bis
  GPIOR23 = 3;  m_GPIOR23 = 8;  // General Purpose IO Register 2 bis
  GPIOR24 = 4;  m_GPIOR24 = 16;  // General Purpose IO Register 2 bis
  GPIOR25 = 5;  m_GPIOR25 = 32;  // General Purpose IO Register 2 bis
  GPIOR26 = 6;  m_GPIOR26 = 64;  // General Purpose IO Register 2 bis
  GPIOR27 = 7;  m_GPIOR27 = 128;  // General Purpose IO Register 2 bis

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
  TSPDRset = bitpacked set of (e_SPD0, e_SPD1, e_SPD2, e_SPD3, e_SPD4, e_SPD5, e_SPD6, e_SPD7);
  TSPDRrec = bitpacked record
    SPD0,
    SPD1,
    SPD2,
    SPD3,
    SPD4,
    SPD5,
    SPD6,
    SPD7: TBitField;
  end;
var
  SPDR: byte absolute $4E;  // SPI Data Register
  SPDRset: TSPDRset absolute $4E;
  SPDRrec: TSPDRrec absolute $4E;
const
  SPD0 = 0;  m_SPD0 = 1;  // SPI Data Register
  SPD1 = 1;  m_SPD1 = 2;  // SPI Data Register
  SPD2 = 2;  m_SPD2 = 4;  // SPI Data Register
  SPD3 = 3;  m_SPD3 = 8;  // SPI Data Register
  SPD4 = 4;  m_SPD4 = 16;  // SPI Data Register
  SPD5 = 5;  m_SPD5 = 32;  // SPI Data Register
  SPD6 = 6;  m_SPD6 = 64;  // SPI Data Register
  SPD7 = 7;  m_SPD7 = 128;  // SPI Data Register

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
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_PUD=4, e_JTD=7);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    PUD,
    ReservedBit5,
    ReservedBit6,
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

type
  TRAMPZset = bitpacked set of (e_RAMPZ0);
  TRAMPZrec = bitpacked record
    RAMPZ0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RAMPZ: byte absolute $5B;  // RAM Page Z Select Register - Not used.
  RAMPZset: TRAMPZset absolute $5B;
  RAMPZrec: TRAMPZrec absolute $5B;
const
  RAMPZ0 = 0;  m_RAMPZ0 = 1;  // RAM Page Z Select Register Bit 0

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
  CLKPS0 = 0;  m_CLKPS0 = 1;
  CLKPS1 = 1;  m_CLKPS1 = 2;
  CLKPS2 = 2;  m_CLKPS2 = 4;
  CLKPS3 = 3;  m_CLKPS3 = 8;
  CLKPCE = 7;  m_CLKPCE = 128;

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
  TEICRAset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11, e_ISC20, e_ISC21, e_ISC30, e_ISC31);
  TEICRArec = bitpacked record
    ISC00,
    ISC01,
    ISC10,
    ISC11,
    ISC20,
    ISC21,
    ISC30,
    ISC31: TBitField;
  end;
var
  EICRA: byte absolute $69;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $69;
  EICRArec: TEICRArec absolute $69;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control Bit
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control Bit
  ISC10 = 2;  m_ISC10 = 4;  // External Interrupt Sense Control Bit
  ISC11 = 3;  m_ISC11 = 8;  // External Interrupt Sense Control Bit
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt Sense Control Bit
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt Sense Control Bit
  ISC30 = 6;  m_ISC30 = 64;  // External Interrupt Sense Control Bit
  ISC31 = 7;  m_ISC31 = 128;  // External Interrupt Sense Control Bit

type
  TEICRBset = bitpacked set of (e_ISC40, e_ISC41, e_ISC50, e_ISC51, e_ISC60, e_ISC61, e_ISC70, e_ISC71);
  TEICRBrec = bitpacked record
    ISC40,
    ISC41,
    ISC50,
    ISC51,
    ISC60,
    ISC61,
    ISC70,
    ISC71: TBitField;
  end;
var
  EICRB: byte absolute $6A;  // External Interrupt Control Register B
  EICRBset: TEICRBset absolute $6A;
  EICRBrec: TEICRBrec absolute $6A;
const
  ISC40 = 0;  m_ISC40 = 1;  // External Interrupt 7-4 Sense Control Bit
  ISC41 = 1;  m_ISC41 = 2;  // External Interrupt 7-4 Sense Control Bit
  ISC50 = 2;  m_ISC50 = 4;  // External Interrupt 7-4 Sense Control Bit
  ISC51 = 3;  m_ISC51 = 8;  // External Interrupt 7-4 Sense Control Bit
  ISC60 = 4;  m_ISC60 = 16;  // External Interrupt 7-4 Sense Control Bit
  ISC61 = 5;  m_ISC61 = 32;  // External Interrupt 7-4 Sense Control Bit
  ISC70 = 6;  m_ISC70 = 64;  // External Interrupt 7-4 Sense Control Bit
  ISC71 = 7;  m_ISC71 = 128;  // External Interrupt 7-4 Sense Control Bit

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
  TTIMSK1set = bitpacked set of (e_TOIE1, e_OCIE1A, e_OCIE1B, e_OCIE1C, e_ICIE1=5);
  TTIMSK1rec = bitpacked record
    TOIE1,
    OCIE1A,
    OCIE1B,
    OCIE1C,
    ReservedBit4,
    ICIE1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK1: byte absolute $6F;  // Timer/Counter Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $6F;
  TIMSK1rec: TTIMSK1rec absolute $6F;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  OCIE1C = 3;  m_OCIE1C = 8;  // Timer/Counter1 Output CompareC Match Interrupt Enable
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
  TIMSK2: byte absolute $70;  // Timer/Counter Interrupt Mask register
  TIMSK2set: TTIMSK2set absolute $70;
  TIMSK2rec: TTIMSK2rec absolute $70;
const
  TOIE2 = 0;  m_TOIE2 = 1;  // Timer/Counter2 Overflow Interrupt Enable
  OCIE2A = 1;  m_OCIE2A = 2;  // Timer/Counter2 Output Compare Match Interrupt Enable

type
  TTIMSK3set = bitpacked set of (e_TOIE3, e_OCIE3A, e_OCIE3B, e_OCIE3C, e_ICIE3=5);
  TTIMSK3rec = bitpacked record
    TOIE3,
    OCIE3A,
    OCIE3B,
    OCIE3C,
    ReservedBit4,
    ICIE3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK3: byte absolute $71;  // Timer/Counter Interrupt Mask Register
  TIMSK3set: TTIMSK3set absolute $71;
  TIMSK3rec: TTIMSK3rec absolute $71;
const
  TOIE3 = 0;  m_TOIE3 = 1;  // Timer/Counter3 Overflow Interrupt Enable
  OCIE3A = 1;  m_OCIE3A = 2;  // Timer/Counter3 Output CompareA Match Interrupt Enable
  OCIE3B = 2;  m_OCIE3B = 4;  // Timer/Counter3 Output CompareB Match Interrupt Enable
  OCIE3C = 3;  m_OCIE3C = 8;  // Timer/Counter3 Output CompareC Match Interrupt Enable
  ICIE3 = 5;  m_ICIE3 = 32;  // Timer/Counter3 Input Capture Interrupt Enable

type
  TXMCRAset = bitpacked set of (e_SRW00, e_SRW01, e_SRW10, e_SRW11, e_SRL0, e_SRL1, e_SRL2, e_SRE);
  TXMCRArec = bitpacked record
    SRW00,
    SRW01,
    SRW10,
    SRW11,
    SRL0,
    SRL1,
    SRL2,
    SRE: TBitField;
  end;
var
  XMCRA: byte absolute $74;  // External Memory Control Register A
  XMCRAset: TXMCRAset absolute $74;
  XMCRArec: TXMCRArec absolute $74;
const
  SRW00 = 0;  m_SRW00 = 1;  // Wait state select bit lower page
  SRW01 = 1;  m_SRW01 = 2;  // Wait state select bit lower page
  SRW10 = 2;  m_SRW10 = 4;  // Wait state select bit upper page
  SRW11 = 3;  m_SRW11 = 8;  // Wait state select bit upper page
  SRL0 = 4;  m_SRL0 = 16;  // Wait state page limit
  SRL1 = 5;  m_SRL1 = 32;  // Wait state page limit
  SRL2 = 6;  m_SRL2 = 64;  // Wait state page limit
  SRE = 7;  m_SRE = 128;  // External SRAM Enable

type
  TXMCRBset = bitpacked set of (e_XMM0, e_XMM1, e_XMM2, e_XMBK=7);
  TXMCRBrec = bitpacked record
    XMM0,
    XMM1,
    XMM2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    XMBK: TBitField;
  end;
var
  XMCRB: byte absolute $75;  // External Memory Control Register B
  XMCRBset: TXMCRBset absolute $75;
  XMCRBrec: TXMCRBrec absolute $75;
const
  XMM0 = 0;  m_XMM0 = 1;  // External Memory High Mask
  XMM1 = 1;  m_XMM1 = 2;  // External Memory High Mask
  XMM2 = 2;  m_XMM2 = 4;  // External Memory High Mask
  XMBK = 7;  m_XMBK = 128;  // External Memory Bus Keeper Enable

var
  ADC: word absolute $78;  // ADC Data Register  Bytes
  ADCL: byte absolute $78;
  ADCH: byte absolute $79;

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
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ACME=6, e_ADHSM);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ACME,
    ADHSM: TBitField;
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
  ADHSM = 7;  m_ADHSM = 128;  // ADC High Speed Mode

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
  DIDR0: byte absolute $7E;  // Digital Input Disable Register 1
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
  DIDR1: byte absolute $7F;
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  AIN0D = 0;  m_AIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  m_AIN1D = 2;  // AIN1 Digital Input Disable

type
  TTCCR1Aset = bitpacked set of (e_WGM10, e_WGM11, e_COM1C0, e_COM1C1, e_COM1B0, e_COM1B1, e_COM1A0, e_COM1A1);
  TTCCR1Arec = bitpacked record
    WGM10,
    WGM11,
    COM1C0,
    COM1C1,
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
  COM1C0 = 2;  m_COM1C0 = 4;  // Compare Output Mode 1C, bits
  COM1C1 = 3;  m_COM1C1 = 8;  // Compare Output Mode 1C, bits
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
  TTCCR1Cset = bitpacked set of (e_FOC1C=5, e_FOC1B, e_FOC1A);
  TTCCR1Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FOC1C,
    FOC1B,
    FOC1A: TBitField;
  end;
var
  TCCR1C: byte absolute $82;  // Timer/Counter 1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $82;
  TCCR1Crec: TTCCR1Crec absolute $82;
const
  FOC1C = 5;  m_FOC1C = 32;  // Force Output Compare 1C
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare 1B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare 1A

var
  TCNT1: word absolute $84;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
  ICR1: word absolute $86;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $86;
  ICR1H: byte absolute $87;
  OCR1A: word absolute $88;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1AL: byte absolute $88;
  OCR1AH: byte absolute $89;
  OCR1B: word absolute $8A;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1BL: byte absolute $8A;
  OCR1BH: byte absolute $8B;
  OCR1C: word absolute $8C;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1CL: byte absolute $8C;
  OCR1CH: byte absolute $8D;

type
  TTCCR3Aset = bitpacked set of (e_WGM30, e_WGM31, e_COM3C0, e_COM3C1, e_COM3B0, e_COM3B1, e_COM3A0, e_COM3A1);
  TTCCR3Arec = bitpacked record
    WGM30,
    WGM31,
    COM3C0,
    COM3C1,
    COM3B0,
    COM3B1,
    COM3A0,
    COM3A1: TBitField;
  end;
var
  TCCR3A: byte absolute $90;  // Timer/Counter3 Control Register A
  TCCR3Aset: TTCCR3Aset absolute $90;
  TCCR3Arec: TTCCR3Arec absolute $90;
const
  WGM30 = 0;  m_WGM30 = 1;  // Waveform Generation Mode
  WGM31 = 1;  m_WGM31 = 2;  // Waveform Generation Mode
  COM3C0 = 2;  m_COM3C0 = 4;  // Compare Output Mode 3C, bits
  COM3C1 = 3;  m_COM3C1 = 8;  // Compare Output Mode 3C, bits
  COM3B0 = 4;  m_COM3B0 = 16;  // Compare Output Mode 3B, bits
  COM3B1 = 5;  m_COM3B1 = 32;  // Compare Output Mode 3B, bits
  COM3A0 = 6;  m_COM3A0 = 64;  // Compare Output Mode 3A, bits
  COM3A1 = 7;  m_COM3A1 = 128;  // Compare Output Mode 3A, bits

type
  TTCCR3Bset = bitpacked set of (e_CS30, e_CS31, e_CS32, e_ICES3=6, e_ICNC3);
  TTCCR3Brec = bitpacked record
    CS30,
    CS31,
    CS32,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES3,
    ICNC3: TBitField;
  end;
var
  TCCR3B: byte absolute $91;  // Timer/Counter3 Control Register B
  TCCR3Bset: TTCCR3Bset absolute $91;
  TCCR3Brec: TTCCR3Brec absolute $91;
const
  CS30 = 0;  m_CS30 = 1;  // Prescaler source of Timer/Counter 3
  CS31 = 1;  m_CS31 = 2;  // Prescaler source of Timer/Counter 3
  CS32 = 2;  m_CS32 = 4;  // Prescaler source of Timer/Counter 3
  ICES3 = 6;  m_ICES3 = 64;  // Input Capture 3 Edge Select
  ICNC3 = 7;  m_ICNC3 = 128;  // Input Capture 3 Noise Canceler

type
  TTCCR3Cset = bitpacked set of (e_FOC3C=5, e_FOC3B, e_FOC3A);
  TTCCR3Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FOC3C,
    FOC3B,
    FOC3A: TBitField;
  end;
var
  TCCR3C: byte absolute $92;  // Timer/Counter 3 Control Register C
  TCCR3Cset: TTCCR3Cset absolute $92;
  TCCR3Crec: TTCCR3Crec absolute $92;
const
  FOC3C = 5;  m_FOC3C = 32;  // Force Output Compare 3C
  FOC3B = 6;  m_FOC3B = 64;  // Force Output Compare 3B
  FOC3A = 7;  m_FOC3A = 128;  // Force Output Compare 3A

var
  TCNT3: word absolute $94;  // Timer/Counter3  Bytes
  TCNT3L: byte absolute $94;
  TCNT3H: byte absolute $95;
  ICR3: word absolute $96;  // Timer/Counter3 Input Capture Register  Bytes
  ICR3L: byte absolute $96;
  ICR3H: byte absolute $97;
  OCR3A: word absolute $98;  // Timer/Counter3 Output Compare Register  Bytes
  OCR3AL: byte absolute $98;
  OCR3AH: byte absolute $99;
  OCR3B: word absolute $9A;  // Timer/Counter3 Output Compare Register  Bytes
  OCR3BL: byte absolute $9A;
  OCR3BH: byte absolute $9B;
  OCR3C: word absolute $9C;  // Timer/Counter3 Output Compare Register  Bytes
  OCR3CL: byte absolute $9C;
  OCR3CH: byte absolute $9D;

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
  WGM20 = 6;  m_WGM20 = 64;  // Waveform Genration Mode
  FOC2A = 7;  m_FOC2A = 128;  // Force Output Compare

var
  TCNT2: byte absolute $B2;  // Timer/Counter2
  OCR2A: byte absolute $B3;  // Timer/Counter2 Output Compare Register

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

var
  TWBR: byte absolute $B8;  // TWI Bit Rate register

type
  TTWSRset = bitpacked set of (e_TWPS0, e_TWPS1, e_TWS3=3, e_TWS4, e_TWS5, e_TWS6, e_TWS7);
  TTWSRrec = bitpacked record
    TWPS0,
    TWPS1,
    ReservedBit2,
    TWS3,
    TWS4,
    TWS5,
    TWS6,
    TWS7: TBitField;
  end;
var
  TWSR: byte absolute $B9;  // TWI Status Register
  TWSRset: TTWSRset absolute $B9;
  TWSRrec: TTWSRrec absolute $B9;
const
  TWPS0 = 0;  m_TWPS0 = 1;  // TWI Prescaler
  TWPS1 = 1;  m_TWPS1 = 2;  // TWI Prescaler
  TWS3 = 3;  m_TWS3 = 8;  // TWI Status
  TWS4 = 4;  m_TWS4 = 16;  // TWI Status
  TWS5 = 5;  m_TWS5 = 32;  // TWI Status
  TWS6 = 6;  m_TWS6 = 64;  // TWI Status
  TWS7 = 7;  m_TWS7 = 128;  // TWI Status

type
  TTWARset = bitpacked set of (e_TWGCE, e_TWA0, e_TWA1, e_TWA2, e_TWA3, e_TWA4, e_TWA5, e_TWA6);
  TTWARrec = bitpacked record
    TWGCE,
    TWA0,
    TWA1,
    TWA2,
    TWA3,
    TWA4,
    TWA5,
    TWA6: TBitField;
  end;
var
  TWAR: byte absolute $BA;  // TWI (Slave) Address register
  TWARset: TTWARset absolute $BA;
  TWARrec: TTWARrec absolute $BA;
const
  TWGCE = 0;  m_TWGCE = 1;  // TWI General Call Recognition Enable Bit
  TWA0 = 1;  m_TWA0 = 2;  // TWI (Slave) Address register Bits
  TWA1 = 2;  m_TWA1 = 4;  // TWI (Slave) Address register Bits
  TWA2 = 3;  m_TWA2 = 8;  // TWI (Slave) Address register Bits
  TWA3 = 4;  m_TWA3 = 16;  // TWI (Slave) Address register Bits
  TWA4 = 5;  m_TWA4 = 32;  // TWI (Slave) Address register Bits
  TWA5 = 6;  m_TWA5 = 64;  // TWI (Slave) Address register Bits
  TWA6 = 7;  m_TWA6 = 128;  // TWI (Slave) Address register Bits

var
  TWDR: byte absolute $BB;  // TWI Data register

type
  TTWCRset = bitpacked set of (e_TWIE, e_TWEN=2, e_TWWC, e_TWSTO, e_TWSTA, e_TWEA, e_TWINT);
  TTWCRrec = bitpacked record
    TWIE,
    ReservedBit1,
    TWEN,
    TWWC,
    TWSTO,
    TWSTA,
    TWEA,
    TWINT: TBitField;
  end;
var
  TWCR: byte absolute $BC;  // TWI Control Register
  TWCRset: TTWCRset absolute $BC;
  TWCRrec: TTWCRrec absolute $BC;
const
  TWIE = 0;  m_TWIE = 1;  // TWI Interrupt Enable
  TWEN = 2;  m_TWEN = 4;  // TWI Enable Bit
  TWWC = 3;  m_TWWC = 8;  // TWI Write Collition Flag
  TWSTO = 4;  m_TWSTO = 16;  // TWI Stop Condition Bit
  TWSTA = 5;  m_TWSTA = 32;  // TWI Start Condition Bit
  TWEA = 6;  m_TWEA = 64;  // TWI Enable Acknowledge Bit
  TWINT = 7;  m_TWINT = 128;  // TWI Interrupt Flag

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
  U2X0 = 1;  m_U2X0 = 2;  // Double the USART transmission speed
  UPE0 = 2;  m_UPE0 = 4;  // Parity Error
  DOR0 = 3;  m_DOR0 = 8;  // Data overRun
  FE0 = 4;  m_FE0 = 16;  // Framing Error
  UDRE0 = 5;  m_UDRE0 = 32;  // USART Data Register Empty
  TXC0 = 6;  m_TXC0 = 64;  // USART Transmitt Complete
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
  UDRIE0 = 5;  m_UDRIE0 = 32;  // USART Data register Empty Interrupt Enable
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
  UBRR0: word absolute $C4;  // USART Baud Rate Register t Bytes
  UBRR0L: byte absolute $C4;
  UBRR0H: byte absolute $C5;
  UDR0: byte absolute $C6;  // USART I/O Data Register

type
  TUCSR1Aset = bitpacked set of (e_MPCM1, e_U2X1, e_UPE1, e_DOR1, e_FE1, e_UDRE1, e_TXC1, e_RXC1);
  TUCSR1Arec = bitpacked record
    MPCM1,
    U2X1,
    UPE1,
    DOR1,
    FE1,
    UDRE1,
    TXC1,
    RXC1: TBitField;
  end;
var
  UCSR1A: byte absolute $C8;  // USART Control and Status Register A
  UCSR1Aset: TUCSR1Aset absolute $C8;
  UCSR1Arec: TUCSR1Arec absolute $C8;
const
  MPCM1 = 0;  m_MPCM1 = 1;  // Multi-processor Communication Mode
  U2X1 = 1;  m_U2X1 = 2;  // Double the USART transmission speed
  UPE1 = 2;  m_UPE1 = 4;  // Parity Error
  DOR1 = 3;  m_DOR1 = 8;  // Data overRun
  FE1 = 4;  m_FE1 = 16;  // Framing Error
  UDRE1 = 5;  m_UDRE1 = 32;  // USART Data Register Empty
  TXC1 = 6;  m_TXC1 = 64;  // USART Transmitt Complete
  RXC1 = 7;  m_RXC1 = 128;  // USART Receive Complete

type
  TUCSR1Bset = bitpacked set of (e_TXB81, e_RXB81, e_UCSZ12, e_TXEN1, e_RXEN1, e_UDRIE1, e_TXCIE1, e_RXCIE1);
  TUCSR1Brec = bitpacked record
    TXB81,
    RXB81,
    UCSZ12,
    TXEN1,
    RXEN1,
    UDRIE1,
    TXCIE1,
    RXCIE1: TBitField;
  end;
var
  UCSR1B: byte absolute $C9;  // USART Control and Status Register B
  UCSR1Bset: TUCSR1Bset absolute $C9;
  UCSR1Brec: TUCSR1Brec absolute $C9;
const
  TXB81 = 0;  m_TXB81 = 1;  // Transmit Data Bit 8
  RXB81 = 1;  m_RXB81 = 2;  // Receive Data Bit 8
  UCSZ12 = 2;  m_UCSZ12 = 4;  // Character Size
  TXEN1 = 3;  m_TXEN1 = 8;  // Transmitter Enable
  RXEN1 = 4;  m_RXEN1 = 16;  // Receiver Enable
  UDRIE1 = 5;  m_UDRIE1 = 32;  // USART Data register Empty Interrupt Enable
  TXCIE1 = 6;  m_TXCIE1 = 64;  // TX Complete Interrupt Enable
  RXCIE1 = 7;  m_RXCIE1 = 128;  // RX Complete Interrupt Enable

type
  TUCSR1Cset = bitpacked set of (e_UCPOL1, e_UCSZ10, e_UCSZ11, e_USBS1, e_UPM10, e_UPM11, e_UMSEL1);
  TUCSR1Crec = bitpacked record
    UCPOL1,
    UCSZ10,
    UCSZ11,
    USBS1,
    UPM10,
    UPM11,
    UMSEL1,
    ReservedBit7: TBitField;
  end;
var
  UCSR1C: byte absolute $CA;  // USART Control and Status Register C
  UCSR1Cset: TUCSR1Cset absolute $CA;
  UCSR1Crec: TUCSR1Crec absolute $CA;
const
  UCPOL1 = 0;  m_UCPOL1 = 1;  // Clock Polarity
  UCSZ10 = 1;  m_UCSZ10 = 2;  // Character Size
  UCSZ11 = 2;  m_UCSZ11 = 4;  // Character Size
  USBS1 = 3;  m_USBS1 = 8;  // Stop Bit Select
  UPM10 = 4;  m_UPM10 = 16;  // Parity Mode Bits
  UPM11 = 5;  m_UPM11 = 32;  // Parity Mode Bits
  UMSEL1 = 6;  m_UMSEL1 = 64;  // USART Mode Select

var
  UBRR1: word absolute $CC;  // USART Baud Rate Register t Bytes
  UBRR1L: byte absolute $CC;
  UBRR1H: byte absolute $CD;
  UDR1: byte absolute $CE;  // USART I/O Data Register

type
  TCANGCONset = bitpacked set of (e_SWRES, e_ENASTB, e_TEST, e_LISTEN, e_SYNTTC, e_TTC, e_OVRQ, e_ABRQ);
  TCANGCONrec = bitpacked record
    SWRES,
    ENASTB,
    TEST,
    LISTEN,
    SYNTTC,
    TTC,
    OVRQ,
    ABRQ: TBitField;
  end;
var
  CANGCON: byte absolute $D8;  // CAN General Control Register
  CANGCONset: TCANGCONset absolute $D8;
  CANGCONrec: TCANGCONrec absolute $D8;
const
  SWRES = 0;  m_SWRES = 1;  // Software Reset Request
  ENASTB = 1;  m_ENASTB = 2;  // Enable / Standby
  TEST = 2;  m_TEST = 4;  // Test Mode
  LISTEN = 3;  m_LISTEN = 8;  // Listening Mode
  SYNTTC = 4;  m_SYNTTC = 16;  // Synchronization of TTC
  TTC = 5;  m_TTC = 32;  // Time Trigger Communication
  OVRQ = 6;  m_OVRQ = 64;  // Overload Frame Request
  ABRQ = 7;  m_ABRQ = 128;  // Abort Request

type
  TCANGSTAset = bitpacked set of (e_ERRP, e_BOFF, e_ENFG, e_RXBSY, e_TXBSY, e_OVRG=6);
  TCANGSTArec = bitpacked record
    ERRP,
    BOFF,
    ENFG,
    RXBSY,
    TXBSY,
    ReservedBit5,
    OVRG,
    ReservedBit7: TBitField;
  end;
var
  CANGSTA: byte absolute $D9;  // CAN General Status Register
  CANGSTAset: TCANGSTAset absolute $D9;
  CANGSTArec: TCANGSTArec absolute $D9;
const
  ERRP = 0;  m_ERRP = 1;  // Error Passive Mode
  BOFF = 1;  m_BOFF = 2;  // Bus Off Mode
  ENFG = 2;  m_ENFG = 4;  // Enable Flag
  RXBSY = 3;  m_RXBSY = 8;  // Receiver Busy
  TXBSY = 4;  m_TXBSY = 16;  // Transmitter Busy
  OVRG = 6;  m_OVRG = 64;  // Overload Frame Flag

type
  TCANGITset = bitpacked set of (e_AERG, e_FERG, e_CERG, e_SERG, e_BXOK, e_OVRTIM, e_BOFFIT, e_CANIT);
  TCANGITrec = bitpacked record
    AERG,
    FERG,
    CERG,
    SERG,
    BXOK,
    OVRTIM,
    BOFFIT,
    CANIT: TBitField;
  end;
var
  CANGIT: byte absolute $DA;  // CAN General Interrupt Register
  CANGITset: TCANGITset absolute $DA;
  CANGITrec: TCANGITrec absolute $DA;
const
  AERG = 0;  m_AERG = 1;  // Ackknowledgement Error General
  FERG = 1;  m_FERG = 2;  // Form Error General
  CERG = 2;  m_CERG = 4;  // CRC Error General
  SERG = 3;  m_SERG = 8;  // Stuff Error General
  BXOK = 4;  m_BXOK = 16;  // Burst Receive Interrupt
  OVRTIM = 5;  m_OVRTIM = 32;  // Overrun CAN Timer
  BOFFIT = 6;  m_BOFFIT = 64;  // Bus Off Interrupt Flag
  CANIT = 7;  m_CANIT = 128;  // General Interrupt Flag

type
  TCANGIEset = bitpacked set of (e_ENOVRT, e_ENERG, e_ENBX, e_ENERR, e_ENTX, e_ENRX, e_ENBOFF, e_ENIT);
  TCANGIErec = bitpacked record
    ENOVRT,
    ENERG,
    ENBX,
    ENERR,
    ENTX,
    ENRX,
    ENBOFF,
    ENIT: TBitField;
  end;
var
  CANGIE: byte absolute $DB;  // CAN General Interrupt Enable Register
  CANGIEset: TCANGIEset absolute $DB;
  CANGIErec: TCANGIErec absolute $DB;
const
  ENOVRT = 0;  m_ENOVRT = 1;  // Enable CAN Timer Overrun Interrupt
  ENERG = 1;  m_ENERG = 2;  // Enable General Error Interrupt
  ENBX = 2;  m_ENBX = 4;  // Enable Burst Receive Interrupt
  ENERR = 3;  m_ENERR = 8;  // Enable MOb Error Interrupt
  ENTX = 4;  m_ENTX = 16;  // Enable Transmitt Interrupt
  ENRX = 5;  m_ENRX = 32;  // Enable Receive Interrupt
  ENBOFF = 6;  m_ENBOFF = 64;  // Enable Bus Off INterrupt
  ENIT = 7;  m_ENIT = 128;  // Enable all Interrupts

type
  TCANEN2set = bitpacked set of (e_ENMOB0, e_ENMOB1, e_ENMOB2, e_ENMOB3, e_ENMOB4, e_ENMOB5, e_ENMOB6, e_ENMOB7);
  TCANEN2rec = bitpacked record
    ENMOB0,
    ENMOB1,
    ENMOB2,
    ENMOB3,
    ENMOB4,
    ENMOB5,
    ENMOB6,
    ENMOB7: TBitField;
  end;
var
  CANEN2: byte absolute $DC;  // Enable MOb Register
  CANEN2set: TCANEN2set absolute $DC;
  CANEN2rec: TCANEN2rec absolute $DC;
const
  ENMOB0 = 0;  m_ENMOB0 = 1;  // Enable MOb
  ENMOB1 = 1;  m_ENMOB1 = 2;  // Enable MOb
  ENMOB2 = 2;  m_ENMOB2 = 4;  // Enable MOb
  ENMOB3 = 3;  m_ENMOB3 = 8;  // Enable MOb
  ENMOB4 = 4;  m_ENMOB4 = 16;  // Enable MOb
  ENMOB5 = 5;  m_ENMOB5 = 32;  // Enable MOb
  ENMOB6 = 6;  m_ENMOB6 = 64;  // Enable MOb
  ENMOB7 = 7;  m_ENMOB7 = 128;  // Enable MOb

var
  CANEN1: byte absolute $DD;  // Enable MOb Register

type
  TCANIE2set = bitpacked set of (e_IEMOB0, e_IEMOB1, e_IEMOB2, e_IEMOB3, e_IEMOB4, e_IEMOB5, e_IEMOB6, e_IEMOB7);
  TCANIE2rec = bitpacked record
    IEMOB0,
    IEMOB1,
    IEMOB2,
    IEMOB3,
    IEMOB4,
    IEMOB5,
    IEMOB6,
    IEMOB7: TBitField;
  end;
var
  CANIE2: byte absolute $DE;  // Enable Interrupt MOb Register
  CANIE2set: TCANIE2set absolute $DE;
  CANIE2rec: TCANIE2rec absolute $DE;
const
  IEMOB0 = 0;  m_IEMOB0 = 1;  // Interrupt Enable by MOb
  IEMOB1 = 1;  m_IEMOB1 = 2;  // Interrupt Enable by MOb
  IEMOB2 = 2;  m_IEMOB2 = 4;  // Interrupt Enable by MOb
  IEMOB3 = 3;  m_IEMOB3 = 8;  // Interrupt Enable by MOb
  IEMOB4 = 4;  m_IEMOB4 = 16;  // Interrupt Enable by MOb
  IEMOB5 = 5;  m_IEMOB5 = 32;  // Interrupt Enable by MOb
  IEMOB6 = 6;  m_IEMOB6 = 64;  // Interrupt Enable by MOb
  IEMOB7 = 7;  m_IEMOB7 = 128;  // Interrupt Enable by MOb

var
  CANIE1: byte absolute $DF;  // Enable Interrupt MOb Register

type
  TCANSIT2set = bitpacked set of (e_SIT0, e_SIT1, e_SIT2, e_SIT3, e_SIT4, e_SIT5, e_SIT6, e_SIT7);
  TCANSIT2rec = bitpacked record
    SIT0,
    SIT1,
    SIT2,
    SIT3,
    SIT4,
    SIT5,
    SIT6,
    SIT7: TBitField;
  end;
var
  CANSIT2: byte absolute $E0;  // CAN Status Interrupt MOb Register
  CANSIT2set: TCANSIT2set absolute $E0;
  CANSIT2rec: TCANSIT2rec absolute $E0;
const
  SIT0 = 0;  m_SIT0 = 1;  // Status of Interrupt by MOb
  SIT1 = 1;  m_SIT1 = 2;  // Status of Interrupt by MOb
  SIT2 = 2;  m_SIT2 = 4;  // Status of Interrupt by MOb
  SIT3 = 3;  m_SIT3 = 8;  // Status of Interrupt by MOb
  SIT4 = 4;  m_SIT4 = 16;  // Status of Interrupt by MOb
  SIT5 = 5;  m_SIT5 = 32;  // Status of Interrupt by MOb
  SIT6 = 6;  m_SIT6 = 64;  // Status of Interrupt by MOb
  SIT7 = 7;  m_SIT7 = 128;  // Status of Interrupt by MOb

var
  CANSIT1: byte absolute $E1;  // CAN Status Interrupt MOb Register

type
  TCANBT1set = bitpacked set of (e_BRP0=1, e_BRP1, e_BRP2, e_BRP3, e_BRP4, e_BRP5);
  TCANBT1rec = bitpacked record
    ReservedBit0,
    BRP0,
    BRP1,
    BRP2,
    BRP3,
    BRP4,
    BRP5,
    ReservedBit7: TBitField;
  end;
var
  CANBT1: byte absolute $E2;  // Bit Timing Register 1
  CANBT1set: TCANBT1set absolute $E2;
  CANBT1rec: TCANBT1rec absolute $E2;
const
  BRP0 = 1;  m_BRP0 = 2;  // Baud Rate Prescaler bits
  BRP1 = 2;  m_BRP1 = 4;  // Baud Rate Prescaler bits
  BRP2 = 3;  m_BRP2 = 8;  // Baud Rate Prescaler bits
  BRP3 = 4;  m_BRP3 = 16;  // Baud Rate Prescaler bits
  BRP4 = 5;  m_BRP4 = 32;  // Baud Rate Prescaler bits
  BRP5 = 6;  m_BRP5 = 64;  // Baud Rate Prescaler bits

type
  TCANBT2set = bitpacked set of (e_PRS0=1, e_PRS1, e_PRS2, e_SJW0=5, e_SJW1);
  TCANBT2rec = bitpacked record
    ReservedBit0,
    PRS0,
    PRS1,
    PRS2,
    ReservedBit4,
    SJW0,
    SJW1,
    ReservedBit7: TBitField;
  end;
var
  CANBT2: byte absolute $E3;  // Bit Timing Register 2
  CANBT2set: TCANBT2set absolute $E3;
  CANBT2rec: TCANBT2rec absolute $E3;
const
  PRS0 = 1;  m_PRS0 = 2;  // Propagation Time Segment
  PRS1 = 2;  m_PRS1 = 4;  // Propagation Time Segment
  PRS2 = 3;  m_PRS2 = 8;  // Propagation Time Segment
  SJW0 = 5;  m_SJW0 = 32;  // Re-Sync Jump Width
  SJW1 = 6;  m_SJW1 = 64;  // Re-Sync Jump Width

type
  TCANBT3set = bitpacked set of (e_SMP, e_PHS10, e_PHS11, e_PHS12, e_PHS20, e_PHS21, e_PHS22);
  TCANBT3rec = bitpacked record
    SMP,
    PHS10,
    PHS11,
    PHS12,
    PHS20,
    PHS21,
    PHS22,
    ReservedBit7: TBitField;
  end;
var
  CANBT3: byte absolute $E4;  // Bit Timing Register 3
  CANBT3set: TCANBT3set absolute $E4;
  CANBT3rec: TCANBT3rec absolute $E4;
const
  SMP = 0;  m_SMP = 1;  // Sample Type
  PHS10 = 1;  m_PHS10 = 2;  // Phase Segment 1
  PHS11 = 2;  m_PHS11 = 4;  // Phase Segment 1
  PHS12 = 3;  m_PHS12 = 8;  // Phase Segment 1
  PHS20 = 4;  m_PHS20 = 16;  // Phase Segments
  PHS21 = 5;  m_PHS21 = 32;  // Phase Segments
  PHS22 = 6;  m_PHS22 = 64;  // Phase Segments

type
  TCANTCONset = bitpacked set of (e_TPRSC0, e_TPRSC1, e_TPRSC2, e_TPRSC3, e_TPRSC4, e_TPRSC5, e_TPRSC6, e_TPRSC7);
  TCANTCONrec = bitpacked record
    TPRSC0,
    TPRSC1,
    TPRSC2,
    TPRSC3,
    TPRSC4,
    TPRSC5,
    TPRSC6,
    TPRSC7: TBitField;
  end;
var
  CANTCON: byte absolute $E5;  // Timer Control Register
  CANTCONset: TCANTCONset absolute $E5;
  CANTCONrec: TCANTCONrec absolute $E5;
const
  TPRSC0 = 0;  m_TPRSC0 = 1;  // CAN Timer Prescaler
  TPRSC1 = 1;  m_TPRSC1 = 2;  // CAN Timer Prescaler
  TPRSC2 = 2;  m_TPRSC2 = 4;  // CAN Timer Prescaler
  TPRSC3 = 3;  m_TPRSC3 = 8;  // CAN Timer Prescaler
  TPRSC4 = 4;  m_TPRSC4 = 16;  // CAN Timer Prescaler
  TPRSC5 = 5;  m_TPRSC5 = 32;  // CAN Timer Prescaler
  TPRSC6 = 6;  m_TPRSC6 = 64;  // CAN Timer Prescaler
  TPRSC7 = 7;  m_TPRSC7 = 128;  // CAN Timer Prescaler

var
  CANTIM: word absolute $E6;  // Timer Register
  CANTIML: byte absolute $E6;
  CANTIMH: byte absolute $E7;
const
  CANTIM0 = 0;  m_CANTIM0 = 1;  // CAN Timer Count
  CANTIM1 = 1;  m_CANTIM1 = 2;  // CAN Timer Count
  CANTIM2 = 2;  m_CANTIM2 = 4;  // CAN Timer Count
  CANTIM3 = 3;  m_CANTIM3 = 8;  // CAN Timer Count
  CANTIM4 = 4;  m_CANTIM4 = 16;  // CAN Timer Count
  CANTIM5 = 5;  m_CANTIM5 = 32;  // CAN Timer Count
  CANTIM6 = 6;  m_CANTIM6 = 64;  // CAN Timer Count
  CANTIM7 = 7;  m_CANTIM7 = 128;  // CAN Timer Count

var
  CANTTC: word absolute $E8;  // TTC Timer Register
  CANTTCL: byte absolute $E8;
  CANTTCH: byte absolute $E9;
const
  TIMTTC0 = 0;  m_TIMTTC0 = 1;  // TTC Timer Count
  TIMTTC1 = 1;  m_TIMTTC1 = 2;  // TTC Timer Count
  TIMTTC2 = 2;  m_TIMTTC2 = 4;  // TTC Timer Count
  TIMTTC3 = 3;  m_TIMTTC3 = 8;  // TTC Timer Count
  TIMTTC4 = 4;  m_TIMTTC4 = 16;  // TTC Timer Count
  TIMTTC5 = 5;  m_TIMTTC5 = 32;  // TTC Timer Count
  TIMTTC6 = 6;  m_TIMTTC6 = 64;  // TTC Timer Count
  TIMTTC7 = 7;  m_TIMTTC7 = 128;  // TTC Timer Count

type
  TCANTECset = bitpacked set of (e_TEC0, e_TEC1, e_TEC2, e_TEC3, e_TEC4, e_TEC5, e_TEC6, e_TEC7);
  TCANTECrec = bitpacked record
    TEC0,
    TEC1,
    TEC2,
    TEC3,
    TEC4,
    TEC5,
    TEC6,
    TEC7: TBitField;
  end;
var
  CANTEC: byte absolute $EA;  // Transmit Error Counter Register
  CANTECset: TCANTECset absolute $EA;
  CANTECrec: TCANTECrec absolute $EA;
const
  TEC0 = 0;  m_TEC0 = 1;  // Trasnmit Error Count
  TEC1 = 1;  m_TEC1 = 2;  // Trasnmit Error Count
  TEC2 = 2;  m_TEC2 = 4;  // Trasnmit Error Count
  TEC3 = 3;  m_TEC3 = 8;  // Trasnmit Error Count
  TEC4 = 4;  m_TEC4 = 16;  // Trasnmit Error Count
  TEC5 = 5;  m_TEC5 = 32;  // Trasnmit Error Count
  TEC6 = 6;  m_TEC6 = 64;  // Trasnmit Error Count
  TEC7 = 7;  m_TEC7 = 128;  // Trasnmit Error Count

type
  TCANRECset = bitpacked set of (e_REC0, e_REC1, e_REC2, e_REC3, e_REC4, e_REC5, e_REC6, e_REC7);
  TCANRECrec = bitpacked record
    REC0,
    REC1,
    REC2,
    REC3,
    REC4,
    REC5,
    REC6,
    REC7: TBitField;
  end;
var
  CANREC: byte absolute $EB;  // Receive Error Counter Register
  CANRECset: TCANRECset absolute $EB;
  CANRECrec: TCANRECrec absolute $EB;
const
  REC0 = 0;  m_REC0 = 1;  // Receive Error Count
  REC1 = 1;  m_REC1 = 2;  // Receive Error Count
  REC2 = 2;  m_REC2 = 4;  // Receive Error Count
  REC3 = 3;  m_REC3 = 8;  // Receive Error Count
  REC4 = 4;  m_REC4 = 16;  // Receive Error Count
  REC5 = 5;  m_REC5 = 32;  // Receive Error Count
  REC6 = 6;  m_REC6 = 64;  // Receive Error Count
  REC7 = 7;  m_REC7 = 128;  // Receive Error Count

type
  TCANHPMOBset = bitpacked set of (e_CGP0, e_CGP1, e_CGP2, e_CGP3, e_HPMOB0, e_HPMOB1, e_HPMOB2, e_HPMOB3);
  TCANHPMOBrec = bitpacked record
    CGP0,
    CGP1,
    CGP2,
    CGP3,
    HPMOB0,
    HPMOB1,
    HPMOB2,
    HPMOB3: TBitField;
  end;
var
  CANHPMOB: byte absolute $EC;  // Highest Priority MOb Register
  CANHPMOBset: TCANHPMOBset absolute $EC;
  CANHPMOBrec: TCANHPMOBrec absolute $EC;
const
  CGP0 = 0;  m_CGP0 = 1;  // CAN General purpose bits
  CGP1 = 1;  m_CGP1 = 2;  // CAN General purpose bits
  CGP2 = 2;  m_CGP2 = 4;  // CAN General purpose bits
  CGP3 = 3;  m_CGP3 = 8;  // CAN General purpose bits
  HPMOB0 = 4;  m_HPMOB0 = 16;  // Highest Priority MOb number
  HPMOB1 = 5;  m_HPMOB1 = 32;  // Highest Priority MOb number
  HPMOB2 = 6;  m_HPMOB2 = 64;  // Highest Priority MOb number
  HPMOB3 = 7;  m_HPMOB3 = 128;  // Highest Priority MOb number

type
  TCANPAGEset = bitpacked set of (e_INDX0, e_INDX1, e_INDX2, e_AINC, e_MOBNB0, e_MOBNB1, e_MOBNB2, e_MOBNB3);
  TCANPAGErec = bitpacked record
    INDX0,
    INDX1,
    INDX2,
    AINC,
    MOBNB0,
    MOBNB1,
    MOBNB2,
    MOBNB3: TBitField;
  end;
var
  CANPAGE: byte absolute $ED;  // Page MOb Register
  CANPAGEset: TCANPAGEset absolute $ED;
  CANPAGErec: TCANPAGErec absolute $ED;
const
  INDX0 = 0;  m_INDX0 = 1;  // Data Buffer Index Bits
  INDX1 = 1;  m_INDX1 = 2;  // Data Buffer Index Bits
  INDX2 = 2;  m_INDX2 = 4;  // Data Buffer Index Bits
  AINC = 3;  m_AINC = 8;  // MOb Data Buffer Auto Increment
  MOBNB0 = 4;  m_MOBNB0 = 16;  // MOb Number Bits
  MOBNB1 = 5;  m_MOBNB1 = 32;  // MOb Number Bits
  MOBNB2 = 6;  m_MOBNB2 = 64;  // MOb Number Bits
  MOBNB3 = 7;  m_MOBNB3 = 128;  // MOb Number Bits

type
  TCANSTMOBset = bitpacked set of (e_AERR, e_FERR, e_CERR, e_SERR, e_BERR, e_RXOK, e_TXOK, e_DLCW);
  TCANSTMOBrec = bitpacked record
    AERR,
    FERR,
    CERR,
    SERR,
    BERR,
    RXOK,
    TXOK,
    DLCW: TBitField;
  end;
var
  CANSTMOB: byte absolute $EE;  // MOb Status Register
  CANSTMOBset: TCANSTMOBset absolute $EE;
  CANSTMOBrec: TCANSTMOBrec absolute $EE;
const
  AERR = 0;  m_AERR = 1;  // Ackknowledgement Error
  FERR = 1;  m_FERR = 2;  // Form Error
  CERR = 2;  m_CERR = 4;  // CRC Error
  SERR = 3;  m_SERR = 8;  // Stuff Error
  BERR = 4;  m_BERR = 16;  // Bit Error
  RXOK = 5;  m_RXOK = 32;  // Receive OK
  TXOK = 6;  m_TXOK = 64;  // Transmit OK
  DLCW = 7;  m_DLCW = 128;  // Data Length Code Warning

type
  TCANCDMOBset = bitpacked set of (e_DLC0, e_DLC1, e_DLC2, e_DLC3, e_IDE, e_RPLV, e_CONMOB0, e_CONMOB1);
  TCANCDMOBrec = bitpacked record
    DLC0,
    DLC1,
    DLC2,
    DLC3,
    IDE,
    RPLV,
    CONMOB0,
    CONMOB1: TBitField;
  end;
var
  CANCDMOB: byte absolute $EF;  // MOb Control and DLC Register
  CANCDMOBset: TCANCDMOBset absolute $EF;
  CANCDMOBrec: TCANCDMOBrec absolute $EF;
const
  DLC0 = 0;  m_DLC0 = 1;  // Data Length Code Bits
  DLC1 = 1;  m_DLC1 = 2;  // Data Length Code Bits
  DLC2 = 2;  m_DLC2 = 4;  // Data Length Code Bits
  DLC3 = 3;  m_DLC3 = 8;  // Data Length Code Bits
  IDE = 4;  m_IDE = 16;  // Identifier Extension
  RPLV = 5;  m_RPLV = 32;  // Reply Valid
  CONMOB0 = 6;  m_CONMOB0 = 64;  // MOb Config Bits
  CONMOB1 = 7;  m_CONMOB1 = 128;  // MOb Config Bits

type
  TCANIDT4set = bitpacked set of (e_RB0TAG, e_RB1TAG, e_RTRTAG, e_IDT0, e_IDT1, e_IDT2, e_IDT3, e_IDT4);
  TCANIDT4rec = bitpacked record
    RB0TAG,
    RB1TAG,
    RTRTAG,
    IDT0,
    IDT1,
    IDT2,
    IDT3,
    IDT4: TBitField;
  end;
var
  CANIDT4: byte absolute $F0;  // Identifier Tag Register 4
  CANIDT4set: TCANIDT4set absolute $F0;
  CANIDT4rec: TCANIDT4rec absolute $F0;
const
  RB0TAG = 0;  m_RB0TAG = 1;  // Reserved Bit 0 Tag
  RB1TAG = 1;  m_RB1TAG = 2;  // Reserved Bit 1 Tag
  RTRTAG = 2;  m_RTRTAG = 4;  // Remote Trasnmission Request Tag
  IDT0 = 3;  m_IDT0 = 8;  // Identifier Tag
  IDT1 = 4;  m_IDT1 = 16;  // Identifier Tag
  IDT2 = 5;  m_IDT2 = 32;  // Identifier Tag
  IDT3 = 6;  m_IDT3 = 64;  // Identifier Tag
  IDT4 = 7;  m_IDT4 = 128;  // Identifier Tag

var
  CANIDT3: byte absolute $F1;  // Identifier Tag Register 3
  CANIDT2: byte absolute $F2;  // Identifier Tag Register 2
  CANIDT1: byte absolute $F3;  // Identifier Tag Register 1

type
  TCANIDM4set = bitpacked set of (e_IDEMSK, e_RTRMSK=2, e_IDMSK0, e_IDMSK1, e_IDMSK2, e_IDMSK3, e_IDMSK4);
  TCANIDM4rec = bitpacked record
    IDEMSK,
    ReservedBit1,
    RTRMSK,
    IDMSK0,
    IDMSK1,
    IDMSK2,
    IDMSK3,
    IDMSK4: TBitField;
  end;
var
  CANIDM4: byte absolute $F4;  // Identifier Mask Register 4
  CANIDM4set: TCANIDM4set absolute $F4;
  CANIDM4rec: TCANIDM4rec absolute $F4;
const
  IDEMSK = 0;  m_IDEMSK = 1;  // Identifier Extension Mask
  RTRMSK = 2;  m_RTRMSK = 4;  // Remote Transmission Request Mask
  IDMSK0 = 3;  m_IDMSK0 = 8;  // Identifier Mask
  IDMSK1 = 4;  m_IDMSK1 = 16;  // Identifier Mask
  IDMSK2 = 5;  m_IDMSK2 = 32;  // Identifier Mask
  IDMSK3 = 6;  m_IDMSK3 = 64;  // Identifier Mask
  IDMSK4 = 7;  m_IDMSK4 = 128;  // Identifier Mask

var
  CANIDM3: byte absolute $F5;  // Identifier Mask Register 3
  CANIDM2: byte absolute $F6;  // Identifier Mask Register 2
  CANIDM1: byte absolute $F7;  // Identifier Mask Register 1
  CANSTM: word absolute $F8;  // Time Stamp Register
  CANSTML: byte absolute $F8;
  CANSTMH: byte absolute $F9;
const
  TIMSTM0 = 0;  m_TIMSTM0 = 1;  // Time Stamp Count
  TIMSTM1 = 1;  m_TIMSTM1 = 2;  // Time Stamp Count
  TIMSTM2 = 2;  m_TIMSTM2 = 4;  // Time Stamp Count
  TIMSTM3 = 3;  m_TIMSTM3 = 8;  // Time Stamp Count
  TIMSTM4 = 4;  m_TIMSTM4 = 16;  // Time Stamp Count
  TIMSTM5 = 5;  m_TIMSTM5 = 32;  // Time Stamp Count
  TIMSTM6 = 6;  m_TIMSTM6 = 64;  // Time Stamp Count
  TIMSTM7 = 7;  m_TIMSTM7 = 128;  // Time Stamp Count

type
  TCANMSGset = bitpacked set of (e_MSG0, e_MSG1, e_MSG2, e_MSG3, e_MSG4, e_MSG5, e_MSG6, e_MSG7);
  TCANMSGrec = bitpacked record
    MSG0,
    MSG1,
    MSG2,
    MSG3,
    MSG4,
    MSG5,
    MSG6,
    MSG7: TBitField;
  end;
var
  CANMSG: byte absolute $FA;  // Message Data Register
  CANMSGset: TCANMSGset absolute $FA;
  CANMSGrec: TCANMSGrec absolute $FA;
const
  MSG0 = 0;  m_MSG0 = 1;  // Message Data
  MSG1 = 1;  m_MSG1 = 2;  // Message Data
  MSG2 = 2;  m_MSG2 = 4;  // Message Data
  MSG3 = 3;  m_MSG3 = 8;  // Message Data
  MSG4 = 4;  m_MSG4 = 16;  // Message Data
  MSG5 = 5;  m_MSG5 = 32;  // Message Data
  MSG6 = 6;  m_MSG6 = 64;  // Message Data
  MSG7 = 7;  m_MSG7 = 128;  // Message Data
  // typedefs = 83

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 3 External Interrupt Request 2
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 4 External Interrupt Request 3
procedure INT4_ISR; external name 'INT4_ISR'; // Interrupt 5 External Interrupt Request 4
procedure INT5_ISR; external name 'INT5_ISR'; // Interrupt 6 External Interrupt Request 5
procedure INT6_ISR; external name 'INT6_ISR'; // Interrupt 7 External Interrupt Request 6
procedure INT7_ISR; external name 'INT7_ISR'; // Interrupt 8 External Interrupt Request 7
procedure TIMER2_COMP_ISR; external name 'TIMER2_COMP_ISR'; // Interrupt 9 Timer/Counter2 Compare Match
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 10 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 11 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 12 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 13 Timer/Counter Compare Match B
procedure TIMER1_COMPC_ISR; external name 'TIMER1_COMPC_ISR'; // Interrupt 14 Timer/Counter1 Compare Match C
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 15 Timer/Counter1 Overflow
procedure TIMER0_COMP_ISR; external name 'TIMER0_COMP_ISR'; // Interrupt 16 Timer/Counter0 Compare Match
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 17 Timer/Counter0 Overflow
procedure CANIT_ISR; external name 'CANIT_ISR'; // Interrupt 18 CAN Transfer Complete or Error
procedure OVRIT_ISR; external name 'OVRIT_ISR'; // Interrupt 19 CAN Timer Overrun
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 20 SPI Serial Transfer Complete
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 21 USART0, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 22 USART0 Data Register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 23 USART0, Tx Complete
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 24 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 25 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 26 EEPROM Ready
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 27 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 28 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 29 Timer/Counter3 Compare Match B
procedure TIMER3_COMPC_ISR; external name 'TIMER3_COMPC_ISR'; // Interrupt 30 Timer/Counter3 Compare Match C
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 31 Timer/Counter3 Overflow
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 32 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 33 USART1, Data Register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 34 USART1, Tx Complete
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 35 2-wire Serial Interface
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 36 Store Program Memory Read

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp INT1_ISR
  jmp INT2_ISR
  jmp INT3_ISR
  jmp INT4_ISR
  jmp INT5_ISR
  jmp INT6_ISR
  jmp INT7_ISR
  jmp TIMER2_COMP_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_COMPC_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMP_ISR
  jmp TIMER0_OVF_ISR
  jmp CANIT_ISR
  jmp OVRIT_ISR
  jmp SPI_STC_ISR
  jmp USART0_RX_ISR
  jmp USART0_UDRE_ISR
  jmp USART0_TX_ISR
  jmp ANALOG_COMP_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp TIMER3_CAPT_ISR
  jmp TIMER3_COMPA_ISR
  jmp TIMER3_COMPB_ISR
  jmp TIMER3_COMPC_ISR
  jmp TIMER3_OVF_ISR
  jmp USART1_RX_ISR
  jmp USART1_UDRE_ISR
  jmp USART1_TX_ISR
  jmp TWI_ISR
  jmp SPM_READY_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak INT4_ISR
  .weak INT5_ISR
  .weak INT6_ISR
  .weak INT7_ISR
  .weak TIMER2_COMP_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_COMPC_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMP_ISR
  .weak TIMER0_OVF_ISR
  .weak CANIT_ISR
  .weak OVRIT_ISR
  .weak SPI_STC_ISR
  .weak USART0_RX_ISR
  .weak USART0_UDRE_ISR
  .weak USART0_TX_ISR
  .weak ANALOG_COMP_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak TIMER3_CAPT_ISR
  .weak TIMER3_COMPA_ISR
  .weak TIMER3_COMPB_ISR
  .weak TIMER3_COMPC_ISR
  .weak TIMER3_OVF_ISR
  .weak USART1_RX_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_TX_ISR
  .weak TWI_ISR
  .weak SPM_READY_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set INT4_ISR, Default_IRQ_handler
  .set INT5_ISR, Default_IRQ_handler
  .set INT6_ISR, Default_IRQ_handler
  .set INT7_ISR, Default_IRQ_handler
  .set TIMER2_COMP_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_COMPC_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMP_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set CANIT_ISR, Default_IRQ_handler
  .set OVRIT_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART0_RX_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set TIMER3_CAPT_ISR, Default_IRQ_handler
  .set TIMER3_COMPA_ISR, Default_IRQ_handler
  .set TIMER3_COMPB_ISR, Default_IRQ_handler
  .set TIMER3_COMPC_ISR, Default_IRQ_handler
  .set TIMER3_OVF_ISR, Default_IRQ_handler
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
