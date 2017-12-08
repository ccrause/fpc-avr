unit ATmega2564RFR2;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $20;  // Port A Input Pins Address
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
  PINB: byte absolute $23;  // Port B Input Pins Address
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
  PINC: byte absolute $26;  // Port C Input Pins Address
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
  PIND: byte absolute $29;  // Port D Input Pins Address
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
  PINE: byte absolute $2C;  // Port E Input Pins Address
  DDRE: byte absolute $2D;  // Port E Data Direction Register

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
  PORTE: byte absolute $2E;  // Port E Data Register
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
  PINF: byte absolute $2F;  // Port F Input Pins Address
  DDRF: byte absolute $30;  // Port F Data Direction Register

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
  PORTF: byte absolute $31;  // Port F Data Register
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
  PING: byte absolute $32;  // Port G Input Pins Address
  DDRG: byte absolute $33;  // Port G Data Direction Register

type
  TPORTGset = bitpacked set of (e_PG0, e_PG1, e_PG2, e_PG3, e_PG4, e_PG5, e_PG6, e_PG7);
  TPORTGrec = bitpacked record
    PG0,
    PG1,
    PG2,
    PG3,
    PG4,
    PG5,
    PG6,
    PG7: TBitField;
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
  PG6 = 6;  m_PG6 = 64;
  PG7 = 7;  m_PG7 = 128;

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
  TIFR0: byte absolute $35;  // Timer/Counter0 Interrupt Flag Register
  TIFR0set: TTIFR0set absolute $35;
  TIFR0rec: TTIFR0rec absolute $35;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer/Counter0 Output Compare A Match Flag
  OCF0B = 2;  m_OCF0B = 4;  // Timer/Counter0 Output Compare B Match Flag

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
  TIFR1: byte absolute $36;  // Timer/Counter1 Interrupt Flag Register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Timer/Counter1 Output Compare A Match Flag
  OCF1B = 2;  m_OCF1B = 4;  // Timer/Counter1 Output Compare B Match Flag
  OCF1C = 3;  m_OCF1C = 8;  // Timer/Counter1 Output Compare C Match Flag
  ICF1 = 5;  m_ICF1 = 32;  // Timer/Counter1 Input Capture Flag

type
  TTIFR2set = bitpacked set of (e_TOV2, e_OCF2A, e_OCF2B);
  TTIFR2rec = bitpacked record
    TOV2,
    OCF2A,
    OCF2B,
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
  OCF2A = 1;  m_OCF2A = 2;  // Output Compare Flag 2 A
  OCF2B = 2;  m_OCF2B = 4;  // Output Compare Flag 2 B

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
  TIFR3: byte absolute $38;  // Timer/Counter3 Interrupt Flag Register
  TIFR3set: TTIFR3set absolute $38;
  TIFR3rec: TTIFR3rec absolute $38;
const
  TOV3 = 0;  m_TOV3 = 1;  // Timer/Counter3 Overflow Flag
  OCF3A = 1;  m_OCF3A = 2;  // Timer/Counter3 Output Compare A Match Flag
  OCF3B = 2;  m_OCF3B = 4;  // Timer/Counter3 Output Compare B Match Flag
  OCF3C = 3;  m_OCF3C = 8;  // Timer/Counter3 Output Compare C Match Flag
  ICF3 = 5;  m_ICF3 = 32;  // Timer/Counter3 Input Capture Flag

type
  TTIFR4set = bitpacked set of (e_TOV4, e_OCF4A, e_OCF4B, e_OCF4C, e_ICF4=5);
  TTIFR4rec = bitpacked record
    TOV4,
    OCF4A,
    OCF4B,
    OCF4C,
    ReservedBit4,
    ICF4,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR4: byte absolute $39;  // Timer/Counter4 Interrupt Flag Register
  TIFR4set: TTIFR4set absolute $39;
  TIFR4rec: TTIFR4rec absolute $39;
const
  TOV4 = 0;  m_TOV4 = 1;  // Timer/Counter4 Overflow Flag
  OCF4A = 1;  m_OCF4A = 2;  // Timer/Counter4 Output Compare A Match Flag
  OCF4B = 2;  m_OCF4B = 4;  // Timer/Counter4 Output Compare B Match Flag
  OCF4C = 3;  m_OCF4C = 8;  // Timer/Counter4 Output Compare C Match Flag
  ICF4 = 5;  m_ICF4 = 32;  // Timer/Counter4 Input Capture Flag

type
  TTIFR5set = bitpacked set of (e_TOV5, e_OCF5A, e_OCF5B, e_OCF5C, e_ICF5=5);
  TTIFR5rec = bitpacked record
    TOV5,
    OCF5A,
    OCF5B,
    OCF5C,
    ReservedBit4,
    ICF5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR5: byte absolute $3A;  // Timer/Counter5 Interrupt Flag Register
  TIFR5set: TTIFR5set absolute $3A;
  TIFR5rec: TTIFR5rec absolute $3A;
const
  TOV5 = 0;  m_TOV5 = 1;  // Timer/Counter5 Overflow Flag
  OCF5A = 1;  m_OCF5A = 2;  // Timer/Counter5 Output Compare A Match Flag
  OCF5B = 2;  m_OCF5B = 4;  // Timer/Counter5 Output Compare B Match Flag
  OCF5C = 3;  m_OCF5C = 8;  // Timer/Counter5 Output Compare C Match Flag
  ICF5 = 5;  m_ICF5 = 32;  // Timer/Counter5 Input Capture Flag

type
  TPCIFRset = bitpacked set of (e_PCIF0, e_PCIF1, e_PCIF2);
  TPCIFRrec = bitpacked record
    PCIF0,
    PCIF1,
    PCIF2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCIFR: byte absolute $3B;  // Pin Change Interrupt Flag Register
  PCIFRset: TPCIFRset absolute $3B;
  PCIFRrec: TPCIFRrec absolute $3B;
const
  PCIF0 = 0;  m_PCIF0 = 1;  // Pin Change Interrupt Flags
  PCIF1 = 1;  m_PCIF1 = 2;  // Pin Change Interrupt Flags
  PCIF2 = 2;  m_PCIF2 = 4;  // Pin Change Interrupt Flags

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
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag
  INTF1 = 1;  m_INTF1 = 2;  // External Interrupt Flag
  INTF2 = 2;  m_INTF2 = 4;  // External Interrupt Flag
  INTF3 = 3;  m_INTF3 = 8;  // External Interrupt Flag
  INTF4 = 4;  m_INTF4 = 16;  // External Interrupt Flag
  INTF5 = 5;  m_INTF5 = 32;  // External Interrupt Flag
  INTF6 = 6;  m_INTF6 = 64;  // External Interrupt Flag
  INTF7 = 7;  m_INTF7 = 128;  // External Interrupt Flag

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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request Enable
  INT3 = 3;  m_INT3 = 8;  // External Interrupt Request Enable
  INT4 = 4;  m_INT4 = 16;  // External Interrupt Request Enable
  INT5 = 5;  m_INT5 = 32;  // External Interrupt Request Enable
  INT6 = 6;  m_INT6 = 64;  // External Interrupt Request Enable
  INT7 = 7;  m_INT7 = 128;  // External Interrupt Request Enable

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
  GPIOR00 = 0;  m_GPIOR00 = 1;  // General Purpose I/O Register 0 Value
  GPIOR01 = 1;  m_GPIOR01 = 2;  // General Purpose I/O Register 0 Value
  GPIOR02 = 2;  m_GPIOR02 = 4;  // General Purpose I/O Register 0 Value
  GPIOR03 = 3;  m_GPIOR03 = 8;  // General Purpose I/O Register 0 Value
  GPIOR04 = 4;  m_GPIOR04 = 16;  // General Purpose I/O Register 0 Value
  GPIOR05 = 5;  m_GPIOR05 = 32;  // General Purpose I/O Register 0 Value
  GPIOR06 = 6;  m_GPIOR06 = 64;  // General Purpose I/O Register 0 Value
  GPIOR07 = 7;  m_GPIOR07 = 128;  // General Purpose I/O Register 0 Value

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
  EECR: byte absolute $3F;  // EEPROM Control Register
  EECRset: TEECRset absolute $3F;
  EECRrec: TEECRrec absolute $3F;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEPE = 1;  m_EEPE = 2;  // EEPROM Programming Enable
  EEMPE = 2;  m_EEMPE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register  Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

type
  TGTCCRset = bitpacked set of (e_PSRSYNC, e_PSRASY, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSRSYNC,
    PSRASY,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    TSM: TBitField;
  end;
var
  GTCCR: byte absolute $43;  // General Timer Counter Control register
  GTCCRset: TGTCCRset absolute $43;
  GTCCRrec: TGTCCRrec absolute $43;
const
  PSRSYNC = 0;  m_PSRSYNC = 1;  // Prescaler Reset for Synchronous Timer/Counters
  PSRASY = 1;  m_PSRASY = 2;  // Prescaler Reset Timer/Counter2
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

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
  TCCR0A: byte absolute $44;  // Timer/Counter0 Control Register A
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Match Output B Mode
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Match Output B Mode
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Match Output A Mode
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Match Output A Mode

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
  TCCR0B: byte absolute $45;  // Timer/Counter0 Control Register B
  TCCR0Bset: TTCCR0Bset absolute $45;
  TCCR0Brec: TTCCR0Brec absolute $45;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  WGM02 = 3;  m_WGM02 = 8;
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare A

var
  TCNT0: byte absolute $46;  // Timer/Counter0 Register
  OCR0A: byte absolute $47;  // Timer/Counter0 Output Compare Register
  OCR0B: byte absolute $48;  // Timer/Counter0 Output Compare Register B
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
  GPIOR2: byte absolute $4B;  // General Purpose I/O Register 2
  GPIOR2set: TGPIOR2set absolute $4B;
  GPIOR2rec: TGPIOR2rec absolute $4B;
const
  GPIOR20 = 0;  m_GPIOR20 = 1;  // General Purpose I/O Register 2 Value
  GPIOR21 = 1;  m_GPIOR21 = 2;  // General Purpose I/O Register 2 Value
  GPIOR22 = 2;  m_GPIOR22 = 4;  // General Purpose I/O Register 2 Value
  GPIOR23 = 3;  m_GPIOR23 = 8;  // General Purpose I/O Register 2 Value
  GPIOR24 = 4;  m_GPIOR24 = 16;  // General Purpose I/O Register 2 Value
  GPIOR25 = 5;  m_GPIOR25 = 32;  // General Purpose I/O Register 2 Value
  GPIOR26 = 6;  m_GPIOR26 = 64;  // General Purpose I/O Register 2 Value
  GPIOR27 = 7;  m_GPIOR27 = 128;  // General Purpose I/O Register 2 Value

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
  SPR0 = 0;  m_SPR0 = 1;  // SPI Clock Rate Select 1 and 0
  SPR1 = 1;  m_SPR1 = 2;  // SPI Clock Rate Select 1 and 0
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

var
  SPDR: byte absolute $4E;  // SPI Data Register

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
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select
  ACIC = 2;  m_ACIC = 4;  // Analog Comparator Input Capture Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

type
  TOCDRset = bitpacked set of (e_OCDR0, e_OCDR1, e_OCDR2, e_OCDR3, e_OCDR4, e_OCDR5, e_OCDR6, e_OCDR7);
  TOCDRrec = bitpacked record
    OCDR0,
    OCDR1,
    OCDR2,
    OCDR3,
    OCDR4,
    OCDR5,
    OCDR6,
    OCDR7: TBitField;
  end;
var
  OCDR: byte absolute $51;  // On-Chip Debug Register
  OCDRset: TOCDRset absolute $51;
  OCDRrec: TOCDRrec absolute $51;
const
  OCDR0 = 0;  m_OCDR0 = 1;  // On-Chip Debug Register Data
  OCDR1 = 1;  m_OCDR1 = 2;  // On-Chip Debug Register Data
  OCDR2 = 2;  m_OCDR2 = 4;  // On-Chip Debug Register Data
  OCDR3 = 3;  m_OCDR3 = 8;  // On-Chip Debug Register Data
  OCDR4 = 4;  m_OCDR4 = 16;  // On-Chip Debug Register Data
  OCDR5 = 5;  m_OCDR5 = 32;  // On-Chip Debug Register Data
  OCDR6 = 6;  m_OCDR6 = 64;  // On-Chip Debug Register Data
  OCDR7 = 7;  m_OCDR7 = 128;  // On-Chip Debug Register Data

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
  PORF = 0;  m_PORF = 1;  // Power-on Reset Flag
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
  PUD = 4;  m_PUD = 16;  // Pull-up Disable
  JTD = 7;  m_JTD = 128;  // JTAG Interface Disable

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_BLBSET, e_RWWSRE, e_SIGRD, e_RWWSB, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    BLBSET,
    RWWSRE,
    SIGRD,
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
  RWWSRE = 4;  m_RWWSRE = 16;  // Read While Write Section Read Enable
  SIGRD = 5;  m_SIGRD = 32;  // Signature Row Read
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

type
  TRAMPZset = bitpacked set of (e_RAMPZ0, e_RAMPZ1);
  TRAMPZrec = bitpacked record
    RAMPZ0,
    RAMPZ1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RAMPZ: byte absolute $5B;  // Extended Z-pointer Register for ELPM/SPM
  RAMPZset: TRAMPZset absolute $5B;
  RAMPZrec: TRAMPZrec absolute $5B;
const
  RAMPZ0 = 0;  m_RAMPZ0 = 1;  // Extended Z-Pointer Value
  RAMPZ1 = 1;  m_RAMPZ1 = 2;  // Extended Z-Pointer Value

var
  EIND: byte absolute $5C;  // Extended Indirect Register
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
  WDTCSR: byte absolute $60;  // Watchdog Timer Control Register
  WDTCSRset: TWDTCSRset absolute $60;
  WDTCSRrec: TWDTCSRrec absolute $60;
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
  TPRR2set = bitpacked set of (e_PRRAM0, e_PRRAM1, e_PRRAM2, e_PRRAM3);
  TPRR2rec = bitpacked record
    PRRAM0,
    PRRAM1,
    PRRAM2,
    PRRAM3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR2: byte absolute $63;  // Power Reduction Register 2
  PRR2set: TPRR2set absolute $63;
  PRR2rec: TPRR2rec absolute $63;
const
  PRRAM0 = 0;  m_PRRAM0 = 1;  // Power Reduction SRAM0
  PRRAM1 = 1;  m_PRRAM1 = 2;  // Power Reduction SRAM1
  PRRAM2 = 2;  m_PRRAM2 = 4;  // Power Reduction SRAM2
  PRRAM3 = 3;  m_PRRAM3 = 8;  // Power Reduction SRAM3

type
  TPRR0set = bitpacked set of (e_PRADC, e_PRUSART0, e_PRSPI, e_PRTIM1, e_PRPGA, e_PRTIM0, e_PRTIM2, e_PRTWI);
  TPRR0rec = bitpacked record
    PRADC,
    PRUSART0,
    PRSPI,
    PRTIM1,
    PRPGA,
    PRTIM0,
    PRTIM2,
    PRTWI: TBitField;
  end;
var
  PRR0: byte absolute $64;  // Power Reduction Register0
  PRR0set: TPRR0set absolute $64;
  PRR0rec: TPRR0rec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  m_PRUSART0 = 2;  // Power Reduction USART
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRPGA = 4;  m_PRPGA = 16;  // Power Reduction PGA
  PRTIM0 = 5;  m_PRTIM0 = 32;  // Power Reduction Timer/Counter0
  PRTIM2 = 6;  m_PRTIM2 = 64;  // Power Reduction Timer/Counter2
  PRTWI = 7;  m_PRTWI = 128;  // Power Reduction TWI

type
  TPRR1set = bitpacked set of (e_PRUSART1, e_PRTIM3=3, e_PRTIM4, e_PRTIM5, e_PRTRX24);
  TPRR1rec = bitpacked record
    PRUSART1,
    ReservedBit1,
    ReservedBit2,
    PRTIM3,
    PRTIM4,
    PRTIM5,
    PRTRX24,
    ReservedBit7: TBitField;
  end;
var
  PRR1: byte absolute $65;  // Power Reduction Register 1
  PRR1set: TPRR1set absolute $65;
  PRR1rec: TPRR1rec absolute $65;
const
  PRUSART1 = 0;  m_PRUSART1 = 1;  // Power Reduction USART1
  PRTIM3 = 3;  m_PRTIM3 = 8;  // Power Reduction Timer/Counter3
  PRTIM4 = 4;  m_PRTIM4 = 16;  // Power Reduction Timer/Counter4
  PRTIM5 = 5;  m_PRTIM5 = 32;  // Power Reduction Timer/Counter5
  PRTRX24 = 6;  m_PRTRX24 = 64;  // Power Reduction Transceiver

type
  TOSCCALset = bitpacked set of (e_CAL0, e_CAL1, e_CAL2, e_CAL3, e_CAL4, e_CAL5, e_CAL6, e_CAL7);
  TOSCCALrec = bitpacked record
    CAL0,
    CAL1,
    CAL2,
    CAL3,
    CAL4,
    CAL5,
    CAL6,
    CAL7: TBitField;
  end;
var
  OSCCAL: byte absolute $66;  // Oscillator Calibration Value
  OSCCALset: TOSCCALset absolute $66;
  OSCCALrec: TOSCCALrec absolute $66;
const
  CAL0 = 0;  m_CAL0 = 1;  // Oscillator Calibration Tuning Value
  CAL1 = 1;  m_CAL1 = 2;  // Oscillator Calibration Tuning Value
  CAL2 = 2;  m_CAL2 = 4;  // Oscillator Calibration Tuning Value
  CAL3 = 3;  m_CAL3 = 8;  // Oscillator Calibration Tuning Value
  CAL4 = 4;  m_CAL4 = 16;  // Oscillator Calibration Tuning Value
  CAL5 = 5;  m_CAL5 = 32;  // Oscillator Calibration Tuning Value
  CAL6 = 6;  m_CAL6 = 64;  // Oscillator Calibration Tuning Value
  CAL7 = 7;  m_CAL7 = 128;  // Oscillator Calibration Tuning Value

type
  TBGCRset = bitpacked set of (e_BGCAL0, e_BGCAL1, e_BGCAL2, e_BGCAL_FINE0, e_BGCAL_FINE1, e_BGCAL_FINE2, e_BGCAL_FINE3);
  TBGCRrec = bitpacked record
    BGCAL0,
    BGCAL1,
    BGCAL2,
    BGCAL_FINE0,
    BGCAL_FINE1,
    BGCAL_FINE2,
    BGCAL_FINE3,
    ReservedBit7: TBitField;
  end;
var
  BGCR: byte absolute $67;  // Reference Voltage Calibration Register
  BGCRset: TBGCRset absolute $67;
  BGCRrec: TBGCRrec absolute $67;
const
  BGCAL0 = 0;  m_BGCAL0 = 1;  // Coarse Calibration Bits
  BGCAL1 = 1;  m_BGCAL1 = 2;  // Coarse Calibration Bits
  BGCAL2 = 2;  m_BGCAL2 = 4;  // Coarse Calibration Bits
  BGCAL_FINE0 = 3;  m_BGCAL_FINE0 = 8;  // Fine Calibration Bits
  BGCAL_FINE1 = 4;  m_BGCAL_FINE1 = 16;  // Fine Calibration Bits
  BGCAL_FINE2 = 5;  m_BGCAL_FINE2 = 32;  // Fine Calibration Bits
  BGCAL_FINE3 = 6;  m_BGCAL_FINE3 = 64;  // Fine Calibration Bits

type
  TPCICRset = bitpacked set of (e_PCIE0, e_PCIE1, e_PCIE2);
  TPCICRrec = bitpacked record
    PCIE0,
    PCIE1,
    PCIE2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCICR: byte absolute $68;  // Pin Change Interrupt Control Register
  PCICRset: TPCICRset absolute $68;
  PCICRrec: TPCICRrec absolute $68;
const
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enables
  PCIE1 = 1;  m_PCIE1 = 2;  // Pin Change Interrupt Enables
  PCIE2 = 2;  m_PCIE2 = 4;  // Pin Change Interrupt Enables

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
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt 0 Sense Control Bit
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt 0 Sense Control Bit
  ISC10 = 2;  m_ISC10 = 4;  // External Interrupt 1 Sense Control Bit
  ISC11 = 3;  m_ISC11 = 8;  // External Interrupt 1 Sense Control Bit
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt 2 Sense Control Bit
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt 2 Sense Control Bit
  ISC30 = 6;  m_ISC30 = 64;  // External Interrupt 3 Sense Control Bit
  ISC31 = 7;  m_ISC31 = 128;  // External Interrupt 3 Sense Control Bit

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
  ISC40 = 0;  m_ISC40 = 1;  // External Interrupt 4 Sense Control Bit
  ISC41 = 1;  m_ISC41 = 2;  // External Interrupt 4 Sense Control Bit
  ISC50 = 2;  m_ISC50 = 4;  // External Interrupt 5 Sense Control Bit
  ISC51 = 3;  m_ISC51 = 8;  // External Interrupt 5 Sense Control Bit
  ISC60 = 4;  m_ISC60 = 16;  // External Interrupt 6 Sense Control Bit
  ISC61 = 5;  m_ISC61 = 32;  // External Interrupt 6 Sense Control Bit
  ISC70 = 6;  m_ISC70 = 64;  // External Interrupt 7 Sense Control Bit
  ISC71 = 7;  m_ISC71 = 128;  // External Interrupt 7 Sense Control Bit

var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1

type
  TPCMSK2set = bitpacked set of (e_PCINT16, e_PCINT17, e_PCINT18, e_PCINT19, e_PCINT20, e_PCINT21, e_PCINT22, e_PCINT23);
  TPCMSK2rec = bitpacked record
    PCINT16,
    PCINT17,
    PCINT18,
    PCINT19,
    PCINT20,
    PCINT21,
    PCINT22,
    PCINT23: TBitField;
  end;
var
  PCMSK2: byte absolute $6D;  // Pin Change Mask Register 2
  PCMSK2set: TPCMSK2set absolute $6D;
  PCMSK2rec: TPCMSK2rec absolute $6D;
const
  PCINT16 = 0;  m_PCINT16 = 1;  // Pin Change Enable Mask
  PCINT17 = 1;  m_PCINT17 = 2;  // Pin Change Enable Mask
  PCINT18 = 2;  m_PCINT18 = 4;  // Pin Change Enable Mask
  PCINT19 = 3;  m_PCINT19 = 8;  // Pin Change Enable Mask
  PCINT20 = 4;  m_PCINT20 = 16;  // Pin Change Enable Mask
  PCINT21 = 5;  m_PCINT21 = 32;  // Pin Change Enable Mask
  PCINT22 = 6;  m_PCINT22 = 64;  // Pin Change Enable Mask
  PCINT23 = 7;  m_PCINT23 = 128;  // Pin Change Enable Mask

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
  TIMSK0: byte absolute $6E;  // Timer/Counter0 Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $6E;
  TIMSK0rec: TTIMSK0rec absolute $6E;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter0 Output Compare Match B Interrupt Enable

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
  TIMSK1: byte absolute $6F;  // Timer/Counter1 Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $6F;
  TIMSK1rec: TTIMSK1rec absolute $6F;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output Compare A Match Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output Compare B Match Interrupt Enable
  OCIE1C = 3;  m_OCIE1C = 8;  // Timer/Counter1 Output Compare C Match Interrupt Enable
  ICIE1 = 5;  m_ICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TTIMSK2set = bitpacked set of (e_TOIE2, e_OCIE2A, e_OCIE2B);
  TTIMSK2rec = bitpacked record
    TOIE2,
    OCIE2A,
    OCIE2B,
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
  OCIE2A = 1;  m_OCIE2A = 2;  // Timer/Counter2 Output Compare Match A Interrupt Enable
  OCIE2B = 2;  m_OCIE2B = 4;  // Timer/Counter2 Output Compare Match B Interrupt Enable

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
  TIMSK3: byte absolute $71;  // Timer/Counter3 Interrupt Mask Register
  TIMSK3set: TTIMSK3set absolute $71;
  TIMSK3rec: TTIMSK3rec absolute $71;
const
  TOIE3 = 0;  m_TOIE3 = 1;  // Timer/Counter3 Overflow Interrupt Enable
  OCIE3A = 1;  m_OCIE3A = 2;  // Timer/Counter3 Output Compare A Match Interrupt Enable
  OCIE3B = 2;  m_OCIE3B = 4;  // Timer/Counter3 Output Compare B Match Interrupt Enable
  OCIE3C = 3;  m_OCIE3C = 8;  // Timer/Counter3 Output Compare C Match Interrupt Enable
  ICIE3 = 5;  m_ICIE3 = 32;  // Timer/Counter3 Input Capture Interrupt Enable

type
  TTIMSK4set = bitpacked set of (e_TOIE4, e_OCIE4A, e_OCIE4B, e_OCIE4C, e_ICIE4=5);
  TTIMSK4rec = bitpacked record
    TOIE4,
    OCIE4A,
    OCIE4B,
    OCIE4C,
    ReservedBit4,
    ICIE4,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK4: byte absolute $72;  // Timer/Counter4 Interrupt Mask Register
  TIMSK4set: TTIMSK4set absolute $72;
  TIMSK4rec: TTIMSK4rec absolute $72;
const
  TOIE4 = 0;  m_TOIE4 = 1;  // Timer/Counter4 Overflow Interrupt Enable
  OCIE4A = 1;  m_OCIE4A = 2;  // Timer/Counter4 Output Compare A Match Interrupt Enable
  OCIE4B = 2;  m_OCIE4B = 4;  // Timer/Counter4 Output Compare B Match Interrupt Enable
  OCIE4C = 3;  m_OCIE4C = 8;  // Timer/Counter4 Output Compare C Match Interrupt Enable
  ICIE4 = 5;  m_ICIE4 = 32;  // Timer/Counter4 Input Capture Interrupt Enable

type
  TTIMSK5set = bitpacked set of (e_TOIE5, e_OCIE5A, e_OCIE5B, e_OCIE5C, e_ICIE5=5);
  TTIMSK5rec = bitpacked record
    TOIE5,
    OCIE5A,
    OCIE5B,
    OCIE5C,
    ReservedBit4,
    ICIE5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK5: byte absolute $73;  // Timer/Counter5 Interrupt Mask Register
  TIMSK5set: TTIMSK5set absolute $73;
  TIMSK5rec: TTIMSK5rec absolute $73;
const
  TOIE5 = 0;  m_TOIE5 = 1;  // Timer/Counter5 Overflow Interrupt Enable
  OCIE5A = 1;  m_OCIE5A = 2;  // Timer/Counter5 Output Compare A Match Interrupt Enable
  OCIE5B = 2;  m_OCIE5B = 4;  // Timer/Counter5 Output Compare B Match Interrupt Enable
  OCIE5C = 3;  m_OCIE5C = 8;  // Timer/Counter5 Output Compare C Match Interrupt Enable
  ICIE5 = 5;  m_ICIE5 = 32;  // Timer/Counter5 Input Capture Interrupt Enable

type
  TNEMCRset = bitpacked set of (e_AEAM0=4, e_AEAM1, e_ENEAM);
  TNEMCRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    AEAM0,
    AEAM1,
    ENEAM,
    ReservedBit7: TBitField;
  end;
var
  NEMCR: byte absolute $75;  // Flash Extended-Mode Control-Register
  NEMCRset: TNEMCRset absolute $75;
  NEMCRrec: TNEMCRrec absolute $75;
const
  AEAM0 = 4;  m_AEAM0 = 16;  // Address for Extended Address Mode of Extra Rows
  AEAM1 = 5;  m_AEAM1 = 32;  // Address for Extended Address Mode of Extra Rows
  ENEAM = 6;  m_ENEAM = 64;  // Enable Extended Address Mode for Extra Rows

type
  TADCSRCset = bitpacked set of (e_ADSUT0, e_ADSUT1, e_ADSUT2, e_ADSUT3, e_ADSUT4, e_ADTHT0=6, e_ADTHT1);
  TADCSRCrec = bitpacked record
    ADSUT0,
    ADSUT1,
    ADSUT2,
    ADSUT3,
    ADSUT4,
    ReservedBit5,
    ADTHT0,
    ADTHT1: TBitField;
  end;
var
  ADCSRC: byte absolute $77;  // The ADC Control and Status Register C
  ADCSRCset: TADCSRCset absolute $77;
  ADCSRCrec: TADCSRCrec absolute $77;
const
  ADSUT0 = 0;  m_ADSUT0 = 1;  // ADC Start-up Time
  ADSUT1 = 1;  m_ADSUT1 = 2;  // ADC Start-up Time
  ADSUT2 = 2;  m_ADSUT2 = 4;  // ADC Start-up Time
  ADSUT3 = 3;  m_ADSUT3 = 8;  // ADC Start-up Time
  ADSUT4 = 4;  m_ADSUT4 = 16;  // ADC Start-up Time
  ADTHT0 = 6;  m_ADTHT0 = 64;  // ADC Track-and-Hold Time
  ADTHT1 = 7;  m_ADTHT1 = 128;  // ADC Track-and-Hold Time

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
  ADCSRA: byte absolute $7A;  // The ADC Control and Status Register A
  ADCSRAset: TADCSRAset absolute $7A;
  ADCSRArec: TADCSRArec absolute $7A;
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
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_MUX5, e_ACCH, e_REFOK, e_ACME, e_AVDDOK);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    MUX5,
    ACCH,
    REFOK,
    ACME,
    AVDDOK: TBitField;
  end;
var
  ADCSRB: byte absolute $7B;  // The ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source
  MUX5 = 3;  m_MUX5 = 8;  // Analog Channel and Gain Selection Bits
  ACCH = 4;  m_ACCH = 16;  // Analog Channel Change
  REFOK = 5;  m_REFOK = 32;  // Reference Voltage OK
  ACME = 6;  m_ACME = 64;  // Analog Comparator Multiplexer Enable
  AVDDOK = 7;  m_AVDDOK = 128;  // AVDD Supply Voltage OK

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
  ADMUX: byte absolute $7C;  // The ADC Multiplexer Selection Register
  ADMUXset: TADMUXset absolute $7C;
  ADMUXrec: TADMUXrec absolute $7C;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  MUX4 = 4;  m_MUX4 = 16;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // ADC Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bits

type
  TDIDR2set = bitpacked set of (e_ADC8D, e_ADC9D, e_ADC10D, e_ADC11D, e_ADC12D, e_ADC13D, e_ADC14D, e_ADC15D);
  TDIDR2rec = bitpacked record
    ADC8D,
    ADC9D,
    ADC10D,
    ADC11D,
    ADC12D,
    ADC13D,
    ADC14D,
    ADC15D: TBitField;
  end;
var
  DIDR2: byte absolute $7D;  // Digital Input Disable Register 2
  DIDR2set: TDIDR2set absolute $7D;
  DIDR2rec: TDIDR2rec absolute $7D;
const
  ADC8D = 0;  m_ADC8D = 1;  // Reserved Bits
  ADC9D = 1;  m_ADC9D = 2;  // Reserved Bits
  ADC10D = 2;  m_ADC10D = 4;  // Reserved Bits
  ADC11D = 3;  m_ADC11D = 8;  // Reserved Bits
  ADC12D = 4;  m_ADC12D = 16;  // Reserved Bits
  ADC13D = 5;  m_ADC13D = 32;  // Reserved Bits
  ADC14D = 6;  m_ADC14D = 64;  // Reserved Bits
  ADC15D = 7;  m_ADC15D = 128;  // Reserved Bits

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
  ADC0D = 0;  m_ADC0D = 1;  // Disable ADC7:0 Digital Input
  ADC1D = 1;  m_ADC1D = 2;  // Disable ADC7:0 Digital Input
  ADC2D = 2;  m_ADC2D = 4;  // Disable ADC7:0 Digital Input
  ADC3D = 3;  m_ADC3D = 8;  // Disable ADC7:0 Digital Input
  ADC4D = 4;  m_ADC4D = 16;  // Disable ADC7:0 Digital Input
  ADC5D = 5;  m_ADC5D = 32;  // Disable ADC7:0 Digital Input
  ADC6D = 6;  m_ADC6D = 64;  // Disable ADC7:0 Digital Input
  ADC7D = 7;  m_ADC7D = 128;  // Disable ADC7:0 Digital Input

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
  COM1C0 = 2;  m_COM1C0 = 4;  // Compare Output Mode for Channel C
  COM1C1 = 3;  m_COM1C1 = 8;  // Compare Output Mode for Channel C
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode for Channel B
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode for Channel B
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode for Channel A
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode for Channel A

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
  CS10 = 0;  m_CS10 = 1;  // Clock Select
  CS11 = 1;  m_CS11 = 2;  // Clock Select
  CS12 = 2;  m_CS12 = 4;  // Clock Select
  ICES1 = 6;  m_ICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  m_ICNC1 = 128;  // Input Capture 1 Noise Canceller

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
  TCCR1C: byte absolute $82;  // Timer/Counter1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $82;
  TCCR1Crec: TTCCR1Crec absolute $82;
const
  FOC1C = 5;  m_FOC1C = 32;  // Force Output Compare for Channel C
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare for Channel B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare for Channel A

var
  TCNT1: word absolute $84;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
  ICR1: word absolute $86;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $86;
  ICR1H: byte absolute $87;
  OCR1A: word absolute $88;  // Timer/Counter1 Output Compare Register A  Bytes
  OCR1AL: byte absolute $88;
  OCR1AH: byte absolute $89;
  OCR1B: word absolute $8A;  // Timer/Counter1 Output Compare Register B  Bytes
  OCR1BL: byte absolute $8A;
  OCR1BH: byte absolute $8B;
  OCR1C: word absolute $8C;  // Timer/Counter1 Output Compare Register C  Bytes
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
  COM3C0 = 2;  m_COM3C0 = 4;  // Compare Output Mode for Channel C
  COM3C1 = 3;  m_COM3C1 = 8;  // Compare Output Mode for Channel C
  COM3B0 = 4;  m_COM3B0 = 16;  // Compare Output Mode for Channel B
  COM3B1 = 5;  m_COM3B1 = 32;  // Compare Output Mode for Channel B
  COM3A0 = 6;  m_COM3A0 = 64;  // Compare Output Mode for Channel A
  COM3A1 = 7;  m_COM3A1 = 128;  // Compare Output Mode for Channel A

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
  CS30 = 0;  m_CS30 = 1;  // Clock Select
  CS31 = 1;  m_CS31 = 2;  // Clock Select
  CS32 = 2;  m_CS32 = 4;  // Clock Select
  ICES3 = 6;  m_ICES3 = 64;  // Input Capture 3 Edge Select
  ICNC3 = 7;  m_ICNC3 = 128;  // Input Capture 3 Noise Canceller

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
  TCCR3C: byte absolute $92;  // Timer/Counter3 Control Register C
  TCCR3Cset: TTCCR3Cset absolute $92;
  TCCR3Crec: TTCCR3Crec absolute $92;
const
  FOC3C = 5;  m_FOC3C = 32;  // Force Output Compare for Channel C
  FOC3B = 6;  m_FOC3B = 64;  // Force Output Compare for Channel B
  FOC3A = 7;  m_FOC3A = 128;  // Force Output Compare for Channel A

var
  TCNT3: word absolute $94;  // Timer/Counter3  Bytes
  TCNT3L: byte absolute $94;
  TCNT3H: byte absolute $95;
  ICR3: word absolute $96;  // Timer/Counter3 Input Capture Register  Bytes
  ICR3L: byte absolute $96;
  ICR3H: byte absolute $97;
  OCR3A: word absolute $98;  // Timer/Counter3 Output Compare Register A  Bytes
  OCR3AL: byte absolute $98;
  OCR3AH: byte absolute $99;
  OCR3B: word absolute $9A;  // Timer/Counter3 Output Compare Register B  Bytes
  OCR3BL: byte absolute $9A;
  OCR3BH: byte absolute $9B;
  OCR3C: word absolute $9C;  // Timer/Counter3 Output Compare Register C  Bytes
  OCR3CL: byte absolute $9C;
  OCR3CH: byte absolute $9D;

type
  TTCCR4Aset = bitpacked set of (e_WGM40, e_WGM41, e_COM4C0, e_COM4C1, e_COM4B0, e_COM4B1, e_COM4A0, e_COM4A1);
  TTCCR4Arec = bitpacked record
    WGM40,
    WGM41,
    COM4C0,
    COM4C1,
    COM4B0,
    COM4B1,
    COM4A0,
    COM4A1: TBitField;
  end;
var
  TCCR4A: byte absolute $A0;  // Timer/Counter4 Control Register A
  TCCR4Aset: TTCCR4Aset absolute $A0;
  TCCR4Arec: TTCCR4Arec absolute $A0;
const
  WGM40 = 0;  m_WGM40 = 1;  // Waveform Generation Mode
  WGM41 = 1;  m_WGM41 = 2;  // Waveform Generation Mode
  COM4C0 = 2;  m_COM4C0 = 4;  // Compare Output Mode for Channel C
  COM4C1 = 3;  m_COM4C1 = 8;  // Compare Output Mode for Channel C
  COM4B0 = 4;  m_COM4B0 = 16;  // Compare Output Mode for Channel B
  COM4B1 = 5;  m_COM4B1 = 32;  // Compare Output Mode for Channel B
  COM4A0 = 6;  m_COM4A0 = 64;  // Compare Output Mode for Channel A
  COM4A1 = 7;  m_COM4A1 = 128;  // Compare Output Mode for Channel A

type
  TTCCR4Bset = bitpacked set of (e_CS40, e_CS41, e_CS42, e_ICES4=6, e_ICNC4);
  TTCCR4Brec = bitpacked record
    CS40,
    CS41,
    CS42,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES4,
    ICNC4: TBitField;
  end;
var
  TCCR4B: byte absolute $A1;  // Timer/Counter4 Control Register B
  TCCR4Bset: TTCCR4Bset absolute $A1;
  TCCR4Brec: TTCCR4Brec absolute $A1;
const
  CS40 = 0;  m_CS40 = 1;  // Clock Select
  CS41 = 1;  m_CS41 = 2;  // Clock Select
  CS42 = 2;  m_CS42 = 4;  // Clock Select
  ICES4 = 6;  m_ICES4 = 64;  // Input Capture 4 Edge Select
  ICNC4 = 7;  m_ICNC4 = 128;  // Input Capture 4 Noise Canceller

type
  TTCCR4Cset = bitpacked set of (e_FOC4C=5, e_FOC4B, e_FOC4A);
  TTCCR4Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FOC4C,
    FOC4B,
    FOC4A: TBitField;
  end;
var
  TCCR4C: byte absolute $A2;  // Timer/Counter4 Control Register C
  TCCR4Cset: TTCCR4Cset absolute $A2;
  TCCR4Crec: TTCCR4Crec absolute $A2;
const
  FOC4C = 5;  m_FOC4C = 32;  // Force Output Compare for Channel C
  FOC4B = 6;  m_FOC4B = 64;  // Force Output Compare for Channel B
  FOC4A = 7;  m_FOC4A = 128;  // Force Output Compare for Channel A

var
  TCNT4: word absolute $A4;  // Timer/Counter4  Bytes
  TCNT4L: byte absolute $A4;
  TCNT4H: byte absolute $A5;
  ICR4: word absolute $A6;  // Timer/Counter4 Input Capture Register  Bytes
  ICR4L: byte absolute $A6;
  ICR4H: byte absolute $A7;
  OCR4A: word absolute $A8;  // Timer/Counter4 Output Compare Register A  Bytes
  OCR4AL: byte absolute $A8;
  OCR4AH: byte absolute $A9;
  OCR4B: word absolute $AA;  // Timer/Counter4 Output Compare Register B  Bytes
  OCR4BL: byte absolute $AA;
  OCR4BH: byte absolute $AB;
  OCR4C: word absolute $AC;  // Timer/Counter4 Output Compare Register C  Bytes
  OCR4CL: byte absolute $AC;
  OCR4CH: byte absolute $AD;

type
  TTCCR2Aset = bitpacked set of (e_WGM20, e_WGM21, e_COM2B0=4, e_COM2B1, e_COM2A0, e_COM2A1);
  TTCCR2Arec = bitpacked record
    WGM20,
    WGM21,
    ReservedBit2,
    ReservedBit3,
    COM2B0,
    COM2B1,
    COM2A0,
    COM2A1: TBitField;
  end;
var
  TCCR2A: byte absolute $B0;  // Timer/Counter2 Control Register A
  TCCR2Aset: TTCCR2Aset absolute $B0;
  TCCR2Arec: TTCCR2Arec absolute $B0;
const
  WGM20 = 0;  m_WGM20 = 1;  // Waveform Generation Mode
  WGM21 = 1;  m_WGM21 = 2;  // Waveform Generation Mode
  COM2B0 = 4;  m_COM2B0 = 16;  // Compare Match Output B Mode
  COM2B1 = 5;  m_COM2B1 = 32;  // Compare Match Output B Mode
  COM2A0 = 6;  m_COM2A0 = 64;  // Compare Match Output A Mode
  COM2A1 = 7;  m_COM2A1 = 128;  // Compare Match Output A Mode

type
  TTCCR2Bset = bitpacked set of (e_CS20, e_CS21, e_CS22, e_WGM22, e_FOC2B=6, e_FOC2A);
  TTCCR2Brec = bitpacked record
    CS20,
    CS21,
    CS22,
    WGM22,
    ReservedBit4,
    ReservedBit5,
    FOC2B,
    FOC2A: TBitField;
  end;
var
  TCCR2B: byte absolute $B1;  // Timer/Counter2 Control Register B
  TCCR2Bset: TTCCR2Bset absolute $B1;
  TCCR2Brec: TTCCR2Brec absolute $B1;
const
  CS20 = 0;  m_CS20 = 1;  // Clock Select
  CS21 = 1;  m_CS21 = 2;  // Clock Select
  CS22 = 2;  m_CS22 = 4;  // Clock Select
  WGM22 = 3;  m_WGM22 = 8;  // Waveform Generation Mode
  FOC2B = 6;  m_FOC2B = 64;  // Force Output Compare B
  FOC2A = 7;  m_FOC2A = 128;  // Force Output Compare A

var
  TCNT2: byte absolute $B2;  // Timer/Counter2
  OCR2A: byte absolute $B3;  // Timer/Counter2 Output Compare Register A
  OCR2B: byte absolute $B4;  // Timer/Counter2 Output Compare Register B

type
  TASSRset = bitpacked set of (e_TCR2BUB, e_TCR2AUB, e_OCR2BUB, e_OCR2AUB, e_TCN2UB, e_AS2, e_EXCLK, e_EXCLKAMR);
  TASSRrec = bitpacked record
    TCR2BUB,
    TCR2AUB,
    OCR2BUB,
    OCR2AUB,
    TCN2UB,
    AS2,
    EXCLK,
    EXCLKAMR: TBitField;
  end;
var
  ASSR: byte absolute $B6;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $B6;
  ASSRrec: TASSRrec absolute $B6;
const
  TCR2BUB = 0;  m_TCR2BUB = 1;  // Timer/Counter2 Control Register B Update Busy
  TCR2AUB = 1;  m_TCR2AUB = 2;  // Timer/Counter2 Control Register A Update Busy
  OCR2BUB = 2;  m_OCR2BUB = 4;  // Timer/Counter2 Output Compare Register B Update Busy
  OCR2AUB = 3;  m_OCR2AUB = 8;  // Timer/Counter2 Output Compare Register A Update Busy
  TCN2UB = 4;  m_TCN2UB = 16;  // Timer/Counter2 Update Busy
  AS2 = 5;  m_AS2 = 32;  // Timer/Counter2 Asynchronous Mode
  EXCLK = 6;  m_EXCLK = 64;  // Enable External Clock Input
  EXCLKAMR = 7;  m_EXCLKAMR = 128;  // Enable External Clock Input for AMR

var
  TWBR: byte absolute $B8;  // TWI Bit Rate Register

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
  TWPS0 = 0;  m_TWPS0 = 1;  // TWI Prescaler Bits
  TWPS1 = 1;  m_TWPS1 = 2;  // TWI Prescaler Bits
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
  TWAR: byte absolute $BA;  // TWI (Slave) Address Register
  TWARset: TTWARset absolute $BA;
  TWARrec: TTWARrec absolute $BA;
const
  TWGCE = 0;  m_TWGCE = 1;  // TWI General Call Recognition Enable Bit
  TWA0 = 1;  m_TWA0 = 2;  // TWI (Slave) Address
  TWA1 = 2;  m_TWA1 = 4;  // TWI (Slave) Address
  TWA2 = 3;  m_TWA2 = 8;  // TWI (Slave) Address
  TWA3 = 4;  m_TWA3 = 16;  // TWI (Slave) Address
  TWA4 = 5;  m_TWA4 = 32;  // TWI (Slave) Address
  TWA5 = 6;  m_TWA5 = 64;  // TWI (Slave) Address
  TWA6 = 7;  m_TWA6 = 128;  // TWI (Slave) Address

var
  TWDR: byte absolute $BB;  // TWI Data Register

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
  TWWC = 3;  m_TWWC = 8;  // TWI Write Collision Flag
  TWSTO = 4;  m_TWSTO = 16;  // TWI STOP Condition Bit
  TWSTA = 5;  m_TWSTA = 32;  // TWI START Condition Bit
  TWEA = 6;  m_TWEA = 64;  // TWI Enable Acknowledge Bit
  TWINT = 7;  m_TWINT = 128;  // TWI Interrupt Flag

type
  TTWAMRset = bitpacked set of (e_Res, e_TWAM0, e_TWAM1, e_TWAM2, e_TWAM3, e_TWAM4, e_TWAM5, e_TWAM6);
  TTWAMRrec = bitpacked record
    Res,
    TWAM0,
    TWAM1,
    TWAM2,
    TWAM3,
    TWAM4,
    TWAM5,
    TWAM6: TBitField;
  end;
var
  TWAMR: byte absolute $BD;  // TWI (Slave) Address Mask Register
  TWAMRset: TTWAMRset absolute $BD;
  TWAMRrec: TTWAMRrec absolute $BD;
const
  Res = 0;  m_Res = 1;  // Reserved Bit
  TWAM0 = 1;  m_TWAM0 = 2;  // TWI Address Mask
  TWAM1 = 2;  m_TWAM1 = 4;  // TWI Address Mask
  TWAM2 = 3;  m_TWAM2 = 8;  // TWI Address Mask
  TWAM3 = 4;  m_TWAM3 = 16;  // TWI Address Mask
  TWAM4 = 5;  m_TWAM4 = 32;  // TWI Address Mask
  TWAM5 = 6;  m_TWAM5 = 64;  // TWI Address Mask
  TWAM6 = 7;  m_TWAM6 = 128;  // TWI Address Mask

type
  TIRQ_MASK1set = bitpacked set of (e_TX_START_EN, e_MAF_0_AMI_EN, e_MAF_1_AMI_EN, e_MAF_2_AMI_EN, e_MAF_3_AMI_EN);
  TIRQ_MASK1rec = bitpacked record
    TX_START_EN,
    MAF_0_AMI_EN,
    MAF_1_AMI_EN,
    MAF_2_AMI_EN,
    MAF_3_AMI_EN,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  IRQ_MASK1: byte absolute $BE;  // Transceiver Interrupt Enable Register 1
  IRQ_MASK1set: TIRQ_MASK1set absolute $BE;
  IRQ_MASK1rec: TIRQ_MASK1rec absolute $BE;
const
  TX_START_EN = 0;  m_TX_START_EN = 1;  // Transmit Start Interrupt enable
  MAF_0_AMI_EN = 1;  m_MAF_0_AMI_EN = 2;  // Address Match Interrupt enable Address filter 0
  MAF_1_AMI_EN = 2;  m_MAF_1_AMI_EN = 4;  // Address Match Interrupt enable Address filter 1
  MAF_2_AMI_EN = 3;  m_MAF_2_AMI_EN = 8;  // Address Match Interrupt enable Address filter 2
  MAF_3_AMI_EN = 4;  m_MAF_3_AMI_EN = 16;  // Address Match Interrupt enable Address filter 3

type
  TIRQ_STATUS1set = bitpacked set of (e_TX_START, e_MAF_0_AMI, e_MAF_1_AMI, e_MAF_2_AMI, e_MAF_3_AMI);
  TIRQ_STATUS1rec = bitpacked record
    TX_START,
    MAF_0_AMI,
    MAF_1_AMI,
    MAF_2_AMI,
    MAF_3_AMI,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  IRQ_STATUS1: byte absolute $BF;  // Transceiver Interrupt Status Register 1
  IRQ_STATUS1set: TIRQ_STATUS1set absolute $BF;
  IRQ_STATUS1rec: TIRQ_STATUS1rec absolute $BF;
const
  TX_START = 0;  m_TX_START = 1;  // Transmit Start Interrupt Status
  MAF_0_AMI = 1;  m_MAF_0_AMI = 2;  // Address Match Interrupt Status Address filter 0
  MAF_1_AMI = 2;  m_MAF_1_AMI = 4;  // Address Match Interrupt Status Address filter 1
  MAF_2_AMI = 3;  m_MAF_2_AMI = 8;  // Address Match Interrupt Status Address filter 2
  MAF_3_AMI = 4;  m_MAF_3_AMI = 16;  // Address Match Interrupt Status Address filter 3

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
  UCSR0A: byte absolute $C0;  // USART0 MSPIM Control and Status Register A
  UCSR0Aset: TUCSR0Aset absolute $C0;
  UCSR0Arec: TUCSR0Arec absolute $C0;
const
  MPCM0 = 0;  m_MPCM0 = 1;  // Multi-processor Communication Mode
  U2X0 = 1;  m_U2X0 = 2;  // Double the USART Transmission Speed
  UPE0 = 2;  m_UPE0 = 4;  // USART Parity Error
  DOR0 = 3;  m_DOR0 = 8;  // Data OverRun
  FE0 = 4;  m_FE0 = 16;  // Frame Error
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
  UCSR0B: byte absolute $C1;  // USART0 MSPIM Control and Status Register B
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
  TUCSR0Cset = bitpacked set of (e_UCPOL0, e_UCPHA0, e_UDORD0, e_USBS0, e_UPM00, e_UPM01, e_UMSEL00, e_UMSEL01);
  TUCSR0Crec = bitpacked record
    UCPOL0,
    UCPHA0,
    UDORD0,
    USBS0,
    UPM00,
    UPM01,
    UMSEL00,
    UMSEL01: TBitField;
  end;
var
  UCSR0C: byte absolute $C2;  // USART0 MSPIM Control and Status Register C
  UCSR0Cset: TUCSR0Cset absolute $C2;
  UCSR0Crec: TUCSR0Crec absolute $C2;
const
  UCPOL0 = 0;  m_UCPOL0 = 1;  // Clock Polarity
  UCPHA0 = 1;  m_UCPHA0 = 2;  // Clock Phase
  UDORD0 = 2;  m_UDORD0 = 4;  // Data Order
  USBS0 = 3;  m_USBS0 = 8;  // Stop Bit Select
  UPM00 = 4;  m_UPM00 = 16;  // Parity Mode
  UPM01 = 5;  m_UPM01 = 32;  // Parity Mode
  UMSEL00 = 6;  m_UMSEL00 = 64;  // USART Mode Select
  UMSEL01 = 7;  m_UMSEL01 = 128;  // USART Mode Select

var
  UBRR0: word absolute $C4;  // USART0 Baud Rate Register  Bytes
  UBRR0L: byte absolute $C4;
  UBRR0H: byte absolute $C5;
  UDR0: byte absolute $C6;  // USART0 I/O Data Register

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
  UCSR1A: byte absolute $C8;  // USART1 MSPIM Control and Status Register A
  UCSR1Aset: TUCSR1Aset absolute $C8;
  UCSR1Arec: TUCSR1Arec absolute $C8;
const
  MPCM1 = 0;  m_MPCM1 = 1;  // Multi-processor Communication Mode
  U2X1 = 1;  m_U2X1 = 2;  // Double the USART Transmission Speed
  UPE1 = 2;  m_UPE1 = 4;  // USART Parity Error
  DOR1 = 3;  m_DOR1 = 8;  // Data OverRun
  FE1 = 4;  m_FE1 = 16;  // Frame Error
  UDRE1 = 5;  m_UDRE1 = 32;  // USART Data Register Empty
  TXC1 = 6;  m_TXC1 = 64;  // USART Transmit Complete
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
  UCSR1B: byte absolute $C9;  // USART1 MSPIM Control and Status Register B
  UCSR1Bset: TUCSR1Bset absolute $C9;
  UCSR1Brec: TUCSR1Brec absolute $C9;
const
  TXB81 = 0;  m_TXB81 = 1;  // Transmit Data Bit 8
  RXB81 = 1;  m_RXB81 = 2;  // Receive Data Bit 8
  UCSZ12 = 2;  m_UCSZ12 = 4;  // Character Size
  TXEN1 = 3;  m_TXEN1 = 8;  // Transmitter Enable
  RXEN1 = 4;  m_RXEN1 = 16;  // Receiver Enable
  UDRIE1 = 5;  m_UDRIE1 = 32;  // USART Data Register Empty Interrupt Enable
  TXCIE1 = 6;  m_TXCIE1 = 64;  // TX Complete Interrupt Enable
  RXCIE1 = 7;  m_RXCIE1 = 128;  // RX Complete Interrupt Enable

type
  TUCSR1Cset = bitpacked set of (e_UCPOL1, e_UCPHA1, e_UDORD1, e_USBS1, e_UPM10, e_UPM11, e_UMSEL10, e_UMSEL11);
  TUCSR1Crec = bitpacked record
    UCPOL1,
    UCPHA1,
    UDORD1,
    USBS1,
    UPM10,
    UPM11,
    UMSEL10,
    UMSEL11: TBitField;
  end;
var
  UCSR1C: byte absolute $CA;  // USART1 MSPIM Control and Status Register C
  UCSR1Cset: TUCSR1Cset absolute $CA;
  UCSR1Crec: TUCSR1Crec absolute $CA;
const
  UCPOL1 = 0;  m_UCPOL1 = 1;  // Clock Polarity
  UCPHA1 = 1;  m_UCPHA1 = 2;  // Clock Phase
  UDORD1 = 2;  m_UDORD1 = 4;  // Data Order
  USBS1 = 3;  m_USBS1 = 8;  // Stop Bit Select
  UPM10 = 4;  m_UPM10 = 16;  // Parity Mode
  UPM11 = 5;  m_UPM11 = 32;  // Parity Mode
  UMSEL10 = 6;  m_UMSEL10 = 64;  // USART Mode Select
  UMSEL11 = 7;  m_UMSEL11 = 128;  // USART Mode Select

var
  UBRR1: word absolute $CC;  // USART1 Baud Rate Register  Bytes
  UBRR1L: byte absolute $CC;
  UBRR1H: byte absolute $CD;
  UDR1: byte absolute $CE;  // USART1 I/O Data Register

type
  TSCRSTRLLset = bitpacked set of (e_SCRSTRLL0, e_SCRSTRLL1, e_SCRSTRLL2, e_SCRSTRLL3, e_SCRSTRLL4, e_SCRSTRLL5, e_SCRSTRLL6, e_SCRSTRLL7);
  TSCRSTRLLrec = bitpacked record
    SCRSTRLL0,
    SCRSTRLL1,
    SCRSTRLL2,
    SCRSTRLL3,
    SCRSTRLL4,
    SCRSTRLL5,
    SCRSTRLL6,
    SCRSTRLL7: TBitField;
  end;
var
  SCRSTRLL: byte absolute $D7;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLLset: TSCRSTRLLset absolute $D7;
  SCRSTRLLrec: TSCRSTRLLrec absolute $D7;
const
  SCRSTRLL0 = 0;  m_SCRSTRLL0 = 1;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL1 = 1;  m_SCRSTRLL1 = 2;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL2 = 2;  m_SCRSTRLL2 = 4;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL3 = 3;  m_SCRSTRLL3 = 8;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL4 = 4;  m_SCRSTRLL4 = 16;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL5 = 5;  m_SCRSTRLL5 = 32;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL6 = 6;  m_SCRSTRLL6 = 64;  // Symbol Counter Received Frame Timestamp Register LL-Byte
  SCRSTRLL7 = 7;  m_SCRSTRLL7 = 128;  // Symbol Counter Received Frame Timestamp Register LL-Byte

type
  TSCRSTRLHset = bitpacked set of (e_SCRSTRLH0, e_SCRSTRLH1, e_SCRSTRLH2, e_SCRSTRLH3, e_SCRSTRLH4, e_SCRSTRLH5, e_SCRSTRLH6, e_SCRSTRLH7);
  TSCRSTRLHrec = bitpacked record
    SCRSTRLH0,
    SCRSTRLH1,
    SCRSTRLH2,
    SCRSTRLH3,
    SCRSTRLH4,
    SCRSTRLH5,
    SCRSTRLH6,
    SCRSTRLH7: TBitField;
  end;
var
  SCRSTRLH: byte absolute $D8;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLHset: TSCRSTRLHset absolute $D8;
  SCRSTRLHrec: TSCRSTRLHrec absolute $D8;
const
  SCRSTRLH0 = 0;  m_SCRSTRLH0 = 1;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH1 = 1;  m_SCRSTRLH1 = 2;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH2 = 2;  m_SCRSTRLH2 = 4;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH3 = 3;  m_SCRSTRLH3 = 8;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH4 = 4;  m_SCRSTRLH4 = 16;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH5 = 5;  m_SCRSTRLH5 = 32;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH6 = 6;  m_SCRSTRLH6 = 64;  // Symbol Counter Received Frame Timestamp Register LH-Byte
  SCRSTRLH7 = 7;  m_SCRSTRLH7 = 128;  // Symbol Counter Received Frame Timestamp Register LH-Byte

type
  TSCRSTRHLset = bitpacked set of (e_SCRSTRHL0, e_SCRSTRHL1, e_SCRSTRHL2, e_SCRSTRHL3, e_SCRSTRHL4, e_SCRSTRHL5, e_SCRSTRHL6, e_SCRSTRHL7);
  TSCRSTRHLrec = bitpacked record
    SCRSTRHL0,
    SCRSTRHL1,
    SCRSTRHL2,
    SCRSTRHL3,
    SCRSTRHL4,
    SCRSTRHL5,
    SCRSTRHL6,
    SCRSTRHL7: TBitField;
  end;
var
  SCRSTRHL: byte absolute $D9;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHLset: TSCRSTRHLset absolute $D9;
  SCRSTRHLrec: TSCRSTRHLrec absolute $D9;
const
  SCRSTRHL0 = 0;  m_SCRSTRHL0 = 1;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL1 = 1;  m_SCRSTRHL1 = 2;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL2 = 2;  m_SCRSTRHL2 = 4;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL3 = 3;  m_SCRSTRHL3 = 8;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL4 = 4;  m_SCRSTRHL4 = 16;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL5 = 5;  m_SCRSTRHL5 = 32;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL6 = 6;  m_SCRSTRHL6 = 64;  // Symbol Counter Received Frame Timestamp Register HL-Byte
  SCRSTRHL7 = 7;  m_SCRSTRHL7 = 128;  // Symbol Counter Received Frame Timestamp Register HL-Byte

type
  TSCRSTRHHset = bitpacked set of (e_SCRSTRHH0, e_SCRSTRHH1, e_SCRSTRHH2, e_SCRSTRHH3, e_SCRSTRHH4, e_SCRSTRHH5, e_SCRSTRHH6, e_SCRSTRHH7);
  TSCRSTRHHrec = bitpacked record
    SCRSTRHH0,
    SCRSTRHH1,
    SCRSTRHH2,
    SCRSTRHH3,
    SCRSTRHH4,
    SCRSTRHH5,
    SCRSTRHH6,
    SCRSTRHH7: TBitField;
  end;
var
  SCRSTRHH: byte absolute $DA;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHHset: TSCRSTRHHset absolute $DA;
  SCRSTRHHrec: TSCRSTRHHrec absolute $DA;
const
  SCRSTRHH0 = 0;  m_SCRSTRHH0 = 1;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH1 = 1;  m_SCRSTRHH1 = 2;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH2 = 2;  m_SCRSTRHH2 = 4;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH3 = 3;  m_SCRSTRHH3 = 8;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH4 = 4;  m_SCRSTRHH4 = 16;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH5 = 5;  m_SCRSTRHH5 = 32;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH6 = 6;  m_SCRSTRHH6 = 64;  // Symbol Counter Received Frame Timestamp Register HH-Byte
  SCRSTRHH7 = 7;  m_SCRSTRHH7 = 128;  // Symbol Counter Received Frame Timestamp Register HH-Byte

type
  TSCCSRset = bitpacked set of (e_SCCS10, e_SCCS11, e_SCCS20, e_SCCS21, e_SCCS30, e_SCCS31);
  TSCCSRrec = bitpacked record
    SCCS10,
    SCCS11,
    SCCS20,
    SCCS21,
    SCCS30,
    SCCS31,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCCSR: byte absolute $DB;  // Symbol Counter Compare Source Register
  SCCSRset: TSCCSRset absolute $DB;
  SCCSRrec: TSCCSRrec absolute $DB;
const
  SCCS10 = 0;  m_SCCS10 = 1;  // Symbol Counter Compare Source select register for Compare Units
  SCCS11 = 1;  m_SCCS11 = 2;  // Symbol Counter Compare Source select register for Compare Units
  SCCS20 = 2;  m_SCCS20 = 4;  // Symbol Counter Compare Source select register for Compare Unit 2
  SCCS21 = 3;  m_SCCS21 = 8;  // Symbol Counter Compare Source select register for Compare Unit 2
  SCCS30 = 4;  m_SCCS30 = 16;  // Symbol Counter Compare Source select register for Compare Unit 3
  SCCS31 = 5;  m_SCCS31 = 32;  // Symbol Counter Compare Source select register for Compare Unit 3

type
  TSCCR0set = bitpacked set of (e_SCCMP1, e_SCCMP2, e_SCCMP3, e_SCTSE, e_SCCKSEL, e_SCEN, e_SCMBTS, e_SCRES);
  TSCCR0rec = bitpacked record
    SCCMP1,
    SCCMP2,
    SCCMP3,
    SCTSE,
    SCCKSEL,
    SCEN,
    SCMBTS,
    SCRES: TBitField;
  end;
var
  SCCR0: byte absolute $DC;  // Symbol Counter Control Register 0
  SCCR0set: TSCCR0set absolute $DC;
  SCCR0rec: TSCCR0rec absolute $DC;
const
  SCCMP1 = 0;  m_SCCMP1 = 1;  // Symbol Counter Compare Unit 3 Mode select
  SCCMP2 = 1;  m_SCCMP2 = 2;  // Symbol Counter Compare Unit 3 Mode select
  SCCMP3 = 2;  m_SCCMP3 = 4;  // Symbol Counter Compare Unit 3 Mode select
  SCTSE = 3;  m_SCTSE = 8;  // Symbol Counter Automatic Timestamping enable
  SCCKSEL = 4;  m_SCCKSEL = 16;  // Symbol Counter Clock Source select
  SCEN = 5;  m_SCEN = 32;  // Symbol Counter enable
  SCMBTS = 6;  m_SCMBTS = 64;  // Manual Beacon Timestamp
  SCRES = 7;  m_SCRES = 128;  // Symbol Counter Synchronization

type
  TSCCR1set = bitpacked set of (e_SCENBO, e_SCEECLK, e_SCCKDIV0, e_SCCKDIV1, e_SCCKDIV2, e_SCBTSM);
  TSCCR1rec = bitpacked record
    SCENBO,
    SCEECLK,
    SCCKDIV0,
    SCCKDIV1,
    SCCKDIV2,
    SCBTSM,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCCR1: byte absolute $DD;  // Symbol Counter Control Register 1
  SCCR1set: TSCCR1set absolute $DD;
  SCCR1rec: TSCCR1rec absolute $DD;
const
  SCENBO = 0;  m_SCENBO = 1;  // Backoff Slot Counter enable
  SCEECLK = 1;  m_SCEECLK = 2;  // Enable External Clock Source on PG2
  SCCKDIV0 = 2;  m_SCCKDIV0 = 4;  // Clock divider for synchronous clock source (16MHz Transceiver Clock)
  SCCKDIV1 = 3;  m_SCCKDIV1 = 8;  // Clock divider for synchronous clock source (16MHz Transceiver Clock)
  SCCKDIV2 = 4;  m_SCCKDIV2 = 16;  // Clock divider for synchronous clock source (16MHz Transceiver Clock)
  SCBTSM = 5;  m_SCBTSM = 32;  // Symbol Counter Beacon Timestamp Mask Register

type
  TSCSRset = bitpacked set of (e_SCBSY);
  TSCSRrec = bitpacked record
    SCBSY,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCSR: byte absolute $DE;  // Symbol Counter Status Register
  SCSRset: TSCSRset absolute $DE;
  SCSRrec: TSCSRrec absolute $DE;
const
  SCBSY = 0;  m_SCBSY = 1;  // Symbol Counter busy

type
  TSCIRQMset = bitpacked set of (e_IRQMCP1, e_IRQMCP2, e_IRQMCP3, e_IRQMOF, e_IRQMBO);
  TSCIRQMrec = bitpacked record
    IRQMCP1,
    IRQMCP2,
    IRQMCP3,
    IRQMOF,
    IRQMBO,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCIRQM: byte absolute $DF;  // Symbol Counter Interrupt Mask Register
  SCIRQMset: TSCIRQMset absolute $DF;
  SCIRQMrec: TSCIRQMrec absolute $DF;
const
  IRQMCP1 = 0;  m_IRQMCP1 = 1;  // Symbol Counter Compare Match 3 IRQ enable
  IRQMCP2 = 1;  m_IRQMCP2 = 2;  // Symbol Counter Compare Match 3 IRQ enable
  IRQMCP3 = 2;  m_IRQMCP3 = 4;  // Symbol Counter Compare Match 3 IRQ enable
  IRQMOF = 3;  m_IRQMOF = 8;  // Symbol Counter Overflow IRQ enable
  IRQMBO = 4;  m_IRQMBO = 16;  // Backoff Slot Counter IRQ enable

type
  TSCIRQSset = bitpacked set of (e_IRQSCP1, e_IRQSCP2, e_IRQSCP3, e_IRQSOF, e_IRQSBO);
  TSCIRQSrec = bitpacked record
    IRQSCP1,
    IRQSCP2,
    IRQSCP3,
    IRQSOF,
    IRQSBO,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCIRQS: byte absolute $E0;  // Symbol Counter Interrupt Status Register
  SCIRQSset: TSCIRQSset absolute $E0;
  SCIRQSrec: TSCIRQSrec absolute $E0;
const
  IRQSCP1 = 0;  m_IRQSCP1 = 1;  // Compare Unit 3 Compare Match IRQ
  IRQSCP2 = 1;  m_IRQSCP2 = 2;  // Compare Unit 3 Compare Match IRQ
  IRQSCP3 = 2;  m_IRQSCP3 = 4;  // Compare Unit 3 Compare Match IRQ
  IRQSOF = 3;  m_IRQSOF = 8;  // Symbol Counter Overflow IRQ
  IRQSBO = 4;  m_IRQSBO = 16;  // Backoff Slot Counter IRQ

type
  TSCCNTLLset = bitpacked set of (e_SCCNTLL0, e_SCCNTLL1, e_SCCNTLL2, e_SCCNTLL3, e_SCCNTLL4, e_SCCNTLL5, e_SCCNTLL6, e_SCCNTLL7);
  TSCCNTLLrec = bitpacked record
    SCCNTLL0,
    SCCNTLL1,
    SCCNTLL2,
    SCCNTLL3,
    SCCNTLL4,
    SCCNTLL5,
    SCCNTLL6,
    SCCNTLL7: TBitField;
  end;
var
  SCCNTLL: byte absolute $E1;  // Symbol Counter Register LL-Byte
  SCCNTLLset: TSCCNTLLset absolute $E1;
  SCCNTLLrec: TSCCNTLLrec absolute $E1;
const
  SCCNTLL0 = 0;  m_SCCNTLL0 = 1;  // Symbol Counter Register LL-Byte
  SCCNTLL1 = 1;  m_SCCNTLL1 = 2;  // Symbol Counter Register LL-Byte
  SCCNTLL2 = 2;  m_SCCNTLL2 = 4;  // Symbol Counter Register LL-Byte
  SCCNTLL3 = 3;  m_SCCNTLL3 = 8;  // Symbol Counter Register LL-Byte
  SCCNTLL4 = 4;  m_SCCNTLL4 = 16;  // Symbol Counter Register LL-Byte
  SCCNTLL5 = 5;  m_SCCNTLL5 = 32;  // Symbol Counter Register LL-Byte
  SCCNTLL6 = 6;  m_SCCNTLL6 = 64;  // Symbol Counter Register LL-Byte
  SCCNTLL7 = 7;  m_SCCNTLL7 = 128;  // Symbol Counter Register LL-Byte

type
  TSCCNTLHset = bitpacked set of (e_SCCNTLH0, e_SCCNTLH1, e_SCCNTLH2, e_SCCNTLH3, e_SCCNTLH4, e_SCCNTLH5, e_SCCNTLH6, e_SCCNTLH7);
  TSCCNTLHrec = bitpacked record
    SCCNTLH0,
    SCCNTLH1,
    SCCNTLH2,
    SCCNTLH3,
    SCCNTLH4,
    SCCNTLH5,
    SCCNTLH6,
    SCCNTLH7: TBitField;
  end;
var
  SCCNTLH: byte absolute $E2;  // Symbol Counter Register LH-Byte
  SCCNTLHset: TSCCNTLHset absolute $E2;
  SCCNTLHrec: TSCCNTLHrec absolute $E2;
const
  SCCNTLH0 = 0;  m_SCCNTLH0 = 1;  // Symbol Counter Register LH-Byte
  SCCNTLH1 = 1;  m_SCCNTLH1 = 2;  // Symbol Counter Register LH-Byte
  SCCNTLH2 = 2;  m_SCCNTLH2 = 4;  // Symbol Counter Register LH-Byte
  SCCNTLH3 = 3;  m_SCCNTLH3 = 8;  // Symbol Counter Register LH-Byte
  SCCNTLH4 = 4;  m_SCCNTLH4 = 16;  // Symbol Counter Register LH-Byte
  SCCNTLH5 = 5;  m_SCCNTLH5 = 32;  // Symbol Counter Register LH-Byte
  SCCNTLH6 = 6;  m_SCCNTLH6 = 64;  // Symbol Counter Register LH-Byte
  SCCNTLH7 = 7;  m_SCCNTLH7 = 128;  // Symbol Counter Register LH-Byte

type
  TSCCNTHLset = bitpacked set of (e_SCCNTHL0, e_SCCNTHL1, e_SCCNTHL2, e_SCCNTHL3, e_SCCNTHL4, e_SCCNTHL5, e_SCCNTHL6, e_SCCNTHL7);
  TSCCNTHLrec = bitpacked record
    SCCNTHL0,
    SCCNTHL1,
    SCCNTHL2,
    SCCNTHL3,
    SCCNTHL4,
    SCCNTHL5,
    SCCNTHL6,
    SCCNTHL7: TBitField;
  end;
var
  SCCNTHL: byte absolute $E3;  // Symbol Counter Register HL-Byte
  SCCNTHLset: TSCCNTHLset absolute $E3;
  SCCNTHLrec: TSCCNTHLrec absolute $E3;
const
  SCCNTHL0 = 0;  m_SCCNTHL0 = 1;  // Symbol Counter Register HL-Byte
  SCCNTHL1 = 1;  m_SCCNTHL1 = 2;  // Symbol Counter Register HL-Byte
  SCCNTHL2 = 2;  m_SCCNTHL2 = 4;  // Symbol Counter Register HL-Byte
  SCCNTHL3 = 3;  m_SCCNTHL3 = 8;  // Symbol Counter Register HL-Byte
  SCCNTHL4 = 4;  m_SCCNTHL4 = 16;  // Symbol Counter Register HL-Byte
  SCCNTHL5 = 5;  m_SCCNTHL5 = 32;  // Symbol Counter Register HL-Byte
  SCCNTHL6 = 6;  m_SCCNTHL6 = 64;  // Symbol Counter Register HL-Byte
  SCCNTHL7 = 7;  m_SCCNTHL7 = 128;  // Symbol Counter Register HL-Byte

type
  TSCCNTHHset = bitpacked set of (e_SCCNTHH0, e_SCCNTHH1, e_SCCNTHH2, e_SCCNTHH3, e_SCCNTHH4, e_SCCNTHH5, e_SCCNTHH6, e_SCCNTHH7);
  TSCCNTHHrec = bitpacked record
    SCCNTHH0,
    SCCNTHH1,
    SCCNTHH2,
    SCCNTHH3,
    SCCNTHH4,
    SCCNTHH5,
    SCCNTHH6,
    SCCNTHH7: TBitField;
  end;
var
  SCCNTHH: byte absolute $E4;  // Symbol Counter Register HH-Byte
  SCCNTHHset: TSCCNTHHset absolute $E4;
  SCCNTHHrec: TSCCNTHHrec absolute $E4;
const
  SCCNTHH0 = 0;  m_SCCNTHH0 = 1;  // Symbol Counter Register HH-Byte
  SCCNTHH1 = 1;  m_SCCNTHH1 = 2;  // Symbol Counter Register HH-Byte
  SCCNTHH2 = 2;  m_SCCNTHH2 = 4;  // Symbol Counter Register HH-Byte
  SCCNTHH3 = 3;  m_SCCNTHH3 = 8;  // Symbol Counter Register HH-Byte
  SCCNTHH4 = 4;  m_SCCNTHH4 = 16;  // Symbol Counter Register HH-Byte
  SCCNTHH5 = 5;  m_SCCNTHH5 = 32;  // Symbol Counter Register HH-Byte
  SCCNTHH6 = 6;  m_SCCNTHH6 = 64;  // Symbol Counter Register HH-Byte
  SCCNTHH7 = 7;  m_SCCNTHH7 = 128;  // Symbol Counter Register HH-Byte

type
  TSCBTSRLLset = bitpacked set of (e_SCBTSRLL0, e_SCBTSRLL1, e_SCBTSRLL2, e_SCBTSRLL3, e_SCBTSRLL4, e_SCBTSRLL5, e_SCBTSRLL6, e_SCBTSRLL7);
  TSCBTSRLLrec = bitpacked record
    SCBTSRLL0,
    SCBTSRLL1,
    SCBTSRLL2,
    SCBTSRLL3,
    SCBTSRLL4,
    SCBTSRLL5,
    SCBTSRLL6,
    SCBTSRLL7: TBitField;
  end;
var
  SCBTSRLL: byte absolute $E5;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLLset: TSCBTSRLLset absolute $E5;
  SCBTSRLLrec: TSCBTSRLLrec absolute $E5;
const
  SCBTSRLL0 = 0;  m_SCBTSRLL0 = 1;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL1 = 1;  m_SCBTSRLL1 = 2;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL2 = 2;  m_SCBTSRLL2 = 4;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL3 = 3;  m_SCBTSRLL3 = 8;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL4 = 4;  m_SCBTSRLL4 = 16;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL5 = 5;  m_SCBTSRLL5 = 32;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL6 = 6;  m_SCBTSRLL6 = 64;  // Symbol Counter Beacon Timestamp Register LL-Byte
  SCBTSRLL7 = 7;  m_SCBTSRLL7 = 128;  // Symbol Counter Beacon Timestamp Register LL-Byte

type
  TSCBTSRLHset = bitpacked set of (e_SCBTSRLH0, e_SCBTSRLH1, e_SCBTSRLH2, e_SCBTSRLH3, e_SCBTSRLH4, e_SCBTSRLH5, e_SCBTSRLH6, e_SCBTSRLH7);
  TSCBTSRLHrec = bitpacked record
    SCBTSRLH0,
    SCBTSRLH1,
    SCBTSRLH2,
    SCBTSRLH3,
    SCBTSRLH4,
    SCBTSRLH5,
    SCBTSRLH6,
    SCBTSRLH7: TBitField;
  end;
var
  SCBTSRLH: byte absolute $E6;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLHset: TSCBTSRLHset absolute $E6;
  SCBTSRLHrec: TSCBTSRLHrec absolute $E6;
const
  SCBTSRLH0 = 0;  m_SCBTSRLH0 = 1;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH1 = 1;  m_SCBTSRLH1 = 2;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH2 = 2;  m_SCBTSRLH2 = 4;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH3 = 3;  m_SCBTSRLH3 = 8;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH4 = 4;  m_SCBTSRLH4 = 16;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH5 = 5;  m_SCBTSRLH5 = 32;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH6 = 6;  m_SCBTSRLH6 = 64;  // Symbol Counter Beacon Timestamp Register LH-Byte
  SCBTSRLH7 = 7;  m_SCBTSRLH7 = 128;  // Symbol Counter Beacon Timestamp Register LH-Byte

type
  TSCBTSRHLset = bitpacked set of (e_SCBTSRHL0, e_SCBTSRHL1, e_SCBTSRHL2, e_SCBTSRHL3, e_SCBTSRHL4, e_SCBTSRHL5, e_SCBTSRHL6, e_SCBTSRHL7);
  TSCBTSRHLrec = bitpacked record
    SCBTSRHL0,
    SCBTSRHL1,
    SCBTSRHL2,
    SCBTSRHL3,
    SCBTSRHL4,
    SCBTSRHL5,
    SCBTSRHL6,
    SCBTSRHL7: TBitField;
  end;
var
  SCBTSRHL: byte absolute $E7;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHLset: TSCBTSRHLset absolute $E7;
  SCBTSRHLrec: TSCBTSRHLrec absolute $E7;
const
  SCBTSRHL0 = 0;  m_SCBTSRHL0 = 1;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL1 = 1;  m_SCBTSRHL1 = 2;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL2 = 2;  m_SCBTSRHL2 = 4;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL3 = 3;  m_SCBTSRHL3 = 8;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL4 = 4;  m_SCBTSRHL4 = 16;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL5 = 5;  m_SCBTSRHL5 = 32;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL6 = 6;  m_SCBTSRHL6 = 64;  // Symbol Counter Beacon Timestamp Register HL-Byte
  SCBTSRHL7 = 7;  m_SCBTSRHL7 = 128;  // Symbol Counter Beacon Timestamp Register HL-Byte

type
  TSCBTSRHHset = bitpacked set of (e_SCBTSRHH0, e_SCBTSRHH1, e_SCBTSRHH2, e_SCBTSRHH3, e_SCBTSRHH4, e_SCBTSRHH5, e_SCBTSRHH6, e_SCBTSRHH7);
  TSCBTSRHHrec = bitpacked record
    SCBTSRHH0,
    SCBTSRHH1,
    SCBTSRHH2,
    SCBTSRHH3,
    SCBTSRHH4,
    SCBTSRHH5,
    SCBTSRHH6,
    SCBTSRHH7: TBitField;
  end;
var
  SCBTSRHH: byte absolute $E8;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHHset: TSCBTSRHHset absolute $E8;
  SCBTSRHHrec: TSCBTSRHHrec absolute $E8;
const
  SCBTSRHH0 = 0;  m_SCBTSRHH0 = 1;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH1 = 1;  m_SCBTSRHH1 = 2;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH2 = 2;  m_SCBTSRHH2 = 4;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH3 = 3;  m_SCBTSRHH3 = 8;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH4 = 4;  m_SCBTSRHH4 = 16;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH5 = 5;  m_SCBTSRHH5 = 32;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH6 = 6;  m_SCBTSRHH6 = 64;  // Symbol Counter Beacon Timestamp Register HH-Byte
  SCBTSRHH7 = 7;  m_SCBTSRHH7 = 128;  // Symbol Counter Beacon Timestamp Register HH-Byte

type
  TSCTSRLLset = bitpacked set of (e_SCTSRLL0, e_SCTSRLL1, e_SCTSRLL2, e_SCTSRLL3, e_SCTSRLL4, e_SCTSRLL5, e_SCTSRLL6, e_SCTSRLL7);
  TSCTSRLLrec = bitpacked record
    SCTSRLL0,
    SCTSRLL1,
    SCTSRLL2,
    SCTSRLL3,
    SCTSRLL4,
    SCTSRLL5,
    SCTSRLL6,
    SCTSRLL7: TBitField;
  end;
var
  SCTSRLL: byte absolute $E9;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLLset: TSCTSRLLset absolute $E9;
  SCTSRLLrec: TSCTSRLLrec absolute $E9;
const
  SCTSRLL0 = 0;  m_SCTSRLL0 = 1;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL1 = 1;  m_SCTSRLL1 = 2;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL2 = 2;  m_SCTSRLL2 = 4;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL3 = 3;  m_SCTSRLL3 = 8;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL4 = 4;  m_SCTSRLL4 = 16;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL5 = 5;  m_SCTSRLL5 = 32;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL6 = 6;  m_SCTSRLL6 = 64;  // Symbol Counter Frame Timestamp Register LL-Byte
  SCTSRLL7 = 7;  m_SCTSRLL7 = 128;  // Symbol Counter Frame Timestamp Register LL-Byte

type
  TSCTSRLHset = bitpacked set of (e_SCTSRLH0, e_SCTSRLH1, e_SCTSRLH2, e_SCTSRLH3, e_SCTSRLH4, e_SCTSRLH5, e_SCTSRLH6, e_SCTSRLH7);
  TSCTSRLHrec = bitpacked record
    SCTSRLH0,
    SCTSRLH1,
    SCTSRLH2,
    SCTSRLH3,
    SCTSRLH4,
    SCTSRLH5,
    SCTSRLH6,
    SCTSRLH7: TBitField;
  end;
var
  SCTSRLH: byte absolute $EA;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLHset: TSCTSRLHset absolute $EA;
  SCTSRLHrec: TSCTSRLHrec absolute $EA;
const
  SCTSRLH0 = 0;  m_SCTSRLH0 = 1;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH1 = 1;  m_SCTSRLH1 = 2;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH2 = 2;  m_SCTSRLH2 = 4;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH3 = 3;  m_SCTSRLH3 = 8;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH4 = 4;  m_SCTSRLH4 = 16;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH5 = 5;  m_SCTSRLH5 = 32;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH6 = 6;  m_SCTSRLH6 = 64;  // Symbol Counter Frame Timestamp Register LH-Byte
  SCTSRLH7 = 7;  m_SCTSRLH7 = 128;  // Symbol Counter Frame Timestamp Register LH-Byte

type
  TSCTSRHLset = bitpacked set of (e_SCTSRHL0, e_SCTSRHL1, e_SCTSRHL2, e_SCTSRHL3, e_SCTSRHL4, e_SCTSRHL5, e_SCTSRHL6, e_SCTSRHL7);
  TSCTSRHLrec = bitpacked record
    SCTSRHL0,
    SCTSRHL1,
    SCTSRHL2,
    SCTSRHL3,
    SCTSRHL4,
    SCTSRHL5,
    SCTSRHL6,
    SCTSRHL7: TBitField;
  end;
var
  SCTSRHL: byte absolute $EB;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHLset: TSCTSRHLset absolute $EB;
  SCTSRHLrec: TSCTSRHLrec absolute $EB;
const
  SCTSRHL0 = 0;  m_SCTSRHL0 = 1;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL1 = 1;  m_SCTSRHL1 = 2;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL2 = 2;  m_SCTSRHL2 = 4;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL3 = 3;  m_SCTSRHL3 = 8;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL4 = 4;  m_SCTSRHL4 = 16;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL5 = 5;  m_SCTSRHL5 = 32;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL6 = 6;  m_SCTSRHL6 = 64;  // Symbol Counter Frame Timestamp Register HL-Byte
  SCTSRHL7 = 7;  m_SCTSRHL7 = 128;  // Symbol Counter Frame Timestamp Register HL-Byte

type
  TSCTSRHHset = bitpacked set of (e_SCTSRHH0, e_SCTSRHH1, e_SCTSRHH2, e_SCTSRHH3, e_SCTSRHH4, e_SCTSRHH5, e_SCTSRHH6, e_SCTSRHH7);
  TSCTSRHHrec = bitpacked record
    SCTSRHH0,
    SCTSRHH1,
    SCTSRHH2,
    SCTSRHH3,
    SCTSRHH4,
    SCTSRHH5,
    SCTSRHH6,
    SCTSRHH7: TBitField;
  end;
var
  SCTSRHH: byte absolute $EC;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHHset: TSCTSRHHset absolute $EC;
  SCTSRHHrec: TSCTSRHHrec absolute $EC;
const
  SCTSRHH0 = 0;  m_SCTSRHH0 = 1;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH1 = 1;  m_SCTSRHH1 = 2;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH2 = 2;  m_SCTSRHH2 = 4;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH3 = 3;  m_SCTSRHH3 = 8;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH4 = 4;  m_SCTSRHH4 = 16;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH5 = 5;  m_SCTSRHH5 = 32;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH6 = 6;  m_SCTSRHH6 = 64;  // Symbol Counter Frame Timestamp Register HH-Byte
  SCTSRHH7 = 7;  m_SCTSRHH7 = 128;  // Symbol Counter Frame Timestamp Register HH-Byte

type
  TSCOCR3LLset = bitpacked set of (e_SCOCR3LL0, e_SCOCR3LL1, e_SCOCR3LL2, e_SCOCR3LL3, e_SCOCR3LL4, e_SCOCR3LL5, e_SCOCR3LL6, e_SCOCR3LL7);
  TSCOCR3LLrec = bitpacked record
    SCOCR3LL0,
    SCOCR3LL1,
    SCOCR3LL2,
    SCOCR3LL3,
    SCOCR3LL4,
    SCOCR3LL5,
    SCOCR3LL6,
    SCOCR3LL7: TBitField;
  end;
var
  SCOCR3LL: byte absolute $ED;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LLset: TSCOCR3LLset absolute $ED;
  SCOCR3LLrec: TSCOCR3LLrec absolute $ED;
const
  SCOCR3LL0 = 0;  m_SCOCR3LL0 = 1;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL1 = 1;  m_SCOCR3LL1 = 2;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL2 = 2;  m_SCOCR3LL2 = 4;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL3 = 3;  m_SCOCR3LL3 = 8;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL4 = 4;  m_SCOCR3LL4 = 16;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL5 = 5;  m_SCOCR3LL5 = 32;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL6 = 6;  m_SCOCR3LL6 = 64;  // Symbol Counter Output Compare Register 3 LL-Byte
  SCOCR3LL7 = 7;  m_SCOCR3LL7 = 128;  // Symbol Counter Output Compare Register 3 LL-Byte

type
  TSCOCR3LHset = bitpacked set of (e_SCOCR3LH0, e_SCOCR3LH1, e_SCOCR3LH2, e_SCOCR3LH3, e_SCOCR3LH4, e_SCOCR3LH5, e_SCOCR3LH6, e_SCOCR3LH7);
  TSCOCR3LHrec = bitpacked record
    SCOCR3LH0,
    SCOCR3LH1,
    SCOCR3LH2,
    SCOCR3LH3,
    SCOCR3LH4,
    SCOCR3LH5,
    SCOCR3LH6,
    SCOCR3LH7: TBitField;
  end;
var
  SCOCR3LH: byte absolute $EE;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LHset: TSCOCR3LHset absolute $EE;
  SCOCR3LHrec: TSCOCR3LHrec absolute $EE;
const
  SCOCR3LH0 = 0;  m_SCOCR3LH0 = 1;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH1 = 1;  m_SCOCR3LH1 = 2;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH2 = 2;  m_SCOCR3LH2 = 4;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH3 = 3;  m_SCOCR3LH3 = 8;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH4 = 4;  m_SCOCR3LH4 = 16;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH5 = 5;  m_SCOCR3LH5 = 32;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH6 = 6;  m_SCOCR3LH6 = 64;  // Symbol Counter Output Compare Register 3 LH-Byte
  SCOCR3LH7 = 7;  m_SCOCR3LH7 = 128;  // Symbol Counter Output Compare Register 3 LH-Byte

type
  TSCOCR3HLset = bitpacked set of (e_SCOCR3HL0, e_SCOCR3HL1, e_SCOCR3HL2, e_SCOCR3HL3, e_SCOCR3HL4, e_SCOCR3HL5, e_SCOCR3HL6, e_SCOCR3HL7);
  TSCOCR3HLrec = bitpacked record
    SCOCR3HL0,
    SCOCR3HL1,
    SCOCR3HL2,
    SCOCR3HL3,
    SCOCR3HL4,
    SCOCR3HL5,
    SCOCR3HL6,
    SCOCR3HL7: TBitField;
  end;
var
  SCOCR3HL: byte absolute $EF;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HLset: TSCOCR3HLset absolute $EF;
  SCOCR3HLrec: TSCOCR3HLrec absolute $EF;
const
  SCOCR3HL0 = 0;  m_SCOCR3HL0 = 1;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL1 = 1;  m_SCOCR3HL1 = 2;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL2 = 2;  m_SCOCR3HL2 = 4;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL3 = 3;  m_SCOCR3HL3 = 8;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL4 = 4;  m_SCOCR3HL4 = 16;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL5 = 5;  m_SCOCR3HL5 = 32;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL6 = 6;  m_SCOCR3HL6 = 64;  // Symbol Counter Output Compare Register 3 HL-Byte
  SCOCR3HL7 = 7;  m_SCOCR3HL7 = 128;  // Symbol Counter Output Compare Register 3 HL-Byte

type
  TSCOCR3HHset = bitpacked set of (e_SCOCR3HH0, e_SCOCR3HH1, e_SCOCR3HH2, e_SCOCR3HH3, e_SCOCR3HH4, e_SCOCR3HH5, e_SCOCR3HH6, e_SCOCR3HH7);
  TSCOCR3HHrec = bitpacked record
    SCOCR3HH0,
    SCOCR3HH1,
    SCOCR3HH2,
    SCOCR3HH3,
    SCOCR3HH4,
    SCOCR3HH5,
    SCOCR3HH6,
    SCOCR3HH7: TBitField;
  end;
var
  SCOCR3HH: byte absolute $F0;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HHset: TSCOCR3HHset absolute $F0;
  SCOCR3HHrec: TSCOCR3HHrec absolute $F0;
const
  SCOCR3HH0 = 0;  m_SCOCR3HH0 = 1;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH1 = 1;  m_SCOCR3HH1 = 2;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH2 = 2;  m_SCOCR3HH2 = 4;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH3 = 3;  m_SCOCR3HH3 = 8;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH4 = 4;  m_SCOCR3HH4 = 16;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH5 = 5;  m_SCOCR3HH5 = 32;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH6 = 6;  m_SCOCR3HH6 = 64;  // Symbol Counter Output Compare Register 3 HH-Byte
  SCOCR3HH7 = 7;  m_SCOCR3HH7 = 128;  // Symbol Counter Output Compare Register 3 HH-Byte

type
  TSCOCR2LLset = bitpacked set of (e_SCOCR2LL0, e_SCOCR2LL1, e_SCOCR2LL2, e_SCOCR2LL3, e_SCOCR2LL4, e_SCOCR2LL5, e_SCOCR2LL6, e_SCOCR2LL7);
  TSCOCR2LLrec = bitpacked record
    SCOCR2LL0,
    SCOCR2LL1,
    SCOCR2LL2,
    SCOCR2LL3,
    SCOCR2LL4,
    SCOCR2LL5,
    SCOCR2LL6,
    SCOCR2LL7: TBitField;
  end;
var
  SCOCR2LL: byte absolute $F1;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LLset: TSCOCR2LLset absolute $F1;
  SCOCR2LLrec: TSCOCR2LLrec absolute $F1;
const
  SCOCR2LL0 = 0;  m_SCOCR2LL0 = 1;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL1 = 1;  m_SCOCR2LL1 = 2;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL2 = 2;  m_SCOCR2LL2 = 4;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL3 = 3;  m_SCOCR2LL3 = 8;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL4 = 4;  m_SCOCR2LL4 = 16;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL5 = 5;  m_SCOCR2LL5 = 32;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL6 = 6;  m_SCOCR2LL6 = 64;  // Symbol Counter Output Compare Register 2 LL-Byte
  SCOCR2LL7 = 7;  m_SCOCR2LL7 = 128;  // Symbol Counter Output Compare Register 2 LL-Byte

type
  TSCOCR2LHset = bitpacked set of (e_SCOCR2LH0, e_SCOCR2LH1, e_SCOCR2LH2, e_SCOCR2LH3, e_SCOCR2LH4, e_SCOCR2LH5, e_SCOCR2LH6, e_SCOCR2LH7);
  TSCOCR2LHrec = bitpacked record
    SCOCR2LH0,
    SCOCR2LH1,
    SCOCR2LH2,
    SCOCR2LH3,
    SCOCR2LH4,
    SCOCR2LH5,
    SCOCR2LH6,
    SCOCR2LH7: TBitField;
  end;
var
  SCOCR2LH: byte absolute $F2;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LHset: TSCOCR2LHset absolute $F2;
  SCOCR2LHrec: TSCOCR2LHrec absolute $F2;
const
  SCOCR2LH0 = 0;  m_SCOCR2LH0 = 1;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH1 = 1;  m_SCOCR2LH1 = 2;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH2 = 2;  m_SCOCR2LH2 = 4;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH3 = 3;  m_SCOCR2LH3 = 8;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH4 = 4;  m_SCOCR2LH4 = 16;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH5 = 5;  m_SCOCR2LH5 = 32;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH6 = 6;  m_SCOCR2LH6 = 64;  // Symbol Counter Output Compare Register 2 LH-Byte
  SCOCR2LH7 = 7;  m_SCOCR2LH7 = 128;  // Symbol Counter Output Compare Register 2 LH-Byte

type
  TSCOCR2HLset = bitpacked set of (e_SCOCR2HL0, e_SCOCR2HL1, e_SCOCR2HL2, e_SCOCR2HL3, e_SCOCR2HL4, e_SCOCR2HL5, e_SCOCR2HL6, e_SCOCR2HL7);
  TSCOCR2HLrec = bitpacked record
    SCOCR2HL0,
    SCOCR2HL1,
    SCOCR2HL2,
    SCOCR2HL3,
    SCOCR2HL4,
    SCOCR2HL5,
    SCOCR2HL6,
    SCOCR2HL7: TBitField;
  end;
var
  SCOCR2HL: byte absolute $F3;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HLset: TSCOCR2HLset absolute $F3;
  SCOCR2HLrec: TSCOCR2HLrec absolute $F3;
const
  SCOCR2HL0 = 0;  m_SCOCR2HL0 = 1;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL1 = 1;  m_SCOCR2HL1 = 2;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL2 = 2;  m_SCOCR2HL2 = 4;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL3 = 3;  m_SCOCR2HL3 = 8;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL4 = 4;  m_SCOCR2HL4 = 16;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL5 = 5;  m_SCOCR2HL5 = 32;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL6 = 6;  m_SCOCR2HL6 = 64;  // Symbol Counter Output Compare Register 2 HL-Byte
  SCOCR2HL7 = 7;  m_SCOCR2HL7 = 128;  // Symbol Counter Output Compare Register 2 HL-Byte

type
  TSCOCR2HHset = bitpacked set of (e_SCOCR2HH0, e_SCOCR2HH1, e_SCOCR2HH2, e_SCOCR2HH3, e_SCOCR2HH4, e_SCOCR2HH5, e_SCOCR2HH6, e_SCOCR2HH7);
  TSCOCR2HHrec = bitpacked record
    SCOCR2HH0,
    SCOCR2HH1,
    SCOCR2HH2,
    SCOCR2HH3,
    SCOCR2HH4,
    SCOCR2HH5,
    SCOCR2HH6,
    SCOCR2HH7: TBitField;
  end;
var
  SCOCR2HH: byte absolute $F4;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HHset: TSCOCR2HHset absolute $F4;
  SCOCR2HHrec: TSCOCR2HHrec absolute $F4;
const
  SCOCR2HH0 = 0;  m_SCOCR2HH0 = 1;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH1 = 1;  m_SCOCR2HH1 = 2;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH2 = 2;  m_SCOCR2HH2 = 4;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH3 = 3;  m_SCOCR2HH3 = 8;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH4 = 4;  m_SCOCR2HH4 = 16;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH5 = 5;  m_SCOCR2HH5 = 32;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH6 = 6;  m_SCOCR2HH6 = 64;  // Symbol Counter Output Compare Register 2 HH-Byte
  SCOCR2HH7 = 7;  m_SCOCR2HH7 = 128;  // Symbol Counter Output Compare Register 2 HH-Byte

type
  TSCOCR1LLset = bitpacked set of (e_SCOCR1LL0, e_SCOCR1LL1, e_SCOCR1LL2, e_SCOCR1LL3, e_SCOCR1LL4, e_SCOCR1LL5, e_SCOCR1LL6, e_SCOCR1LL7);
  TSCOCR1LLrec = bitpacked record
    SCOCR1LL0,
    SCOCR1LL1,
    SCOCR1LL2,
    SCOCR1LL3,
    SCOCR1LL4,
    SCOCR1LL5,
    SCOCR1LL6,
    SCOCR1LL7: TBitField;
  end;
var
  SCOCR1LL: byte absolute $F5;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LLset: TSCOCR1LLset absolute $F5;
  SCOCR1LLrec: TSCOCR1LLrec absolute $F5;
const
  SCOCR1LL0 = 0;  m_SCOCR1LL0 = 1;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL1 = 1;  m_SCOCR1LL1 = 2;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL2 = 2;  m_SCOCR1LL2 = 4;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL3 = 3;  m_SCOCR1LL3 = 8;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL4 = 4;  m_SCOCR1LL4 = 16;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL5 = 5;  m_SCOCR1LL5 = 32;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL6 = 6;  m_SCOCR1LL6 = 64;  // Symbol Counter Output Compare Register 1 LL-Byte
  SCOCR1LL7 = 7;  m_SCOCR1LL7 = 128;  // Symbol Counter Output Compare Register 1 LL-Byte

type
  TSCOCR1LHset = bitpacked set of (e_SCOCR1LH0, e_SCOCR1LH1, e_SCOCR1LH2, e_SCOCR1LH3, e_SCOCR1LH4, e_SCOCR1LH5, e_SCOCR1LH6, e_SCOCR1LH7);
  TSCOCR1LHrec = bitpacked record
    SCOCR1LH0,
    SCOCR1LH1,
    SCOCR1LH2,
    SCOCR1LH3,
    SCOCR1LH4,
    SCOCR1LH5,
    SCOCR1LH6,
    SCOCR1LH7: TBitField;
  end;
var
  SCOCR1LH: byte absolute $F6;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LHset: TSCOCR1LHset absolute $F6;
  SCOCR1LHrec: TSCOCR1LHrec absolute $F6;
const
  SCOCR1LH0 = 0;  m_SCOCR1LH0 = 1;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH1 = 1;  m_SCOCR1LH1 = 2;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH2 = 2;  m_SCOCR1LH2 = 4;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH3 = 3;  m_SCOCR1LH3 = 8;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH4 = 4;  m_SCOCR1LH4 = 16;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH5 = 5;  m_SCOCR1LH5 = 32;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH6 = 6;  m_SCOCR1LH6 = 64;  // Symbol Counter Output Compare Register 1 LH-Byte
  SCOCR1LH7 = 7;  m_SCOCR1LH7 = 128;  // Symbol Counter Output Compare Register 1 LH-Byte

type
  TSCOCR1HLset = bitpacked set of (e_SCOCR1HL0, e_SCOCR1HL1, e_SCOCR1HL2, e_SCOCR1HL3, e_SCOCR1HL4, e_SCOCR1HL5, e_SCOCR1HL6, e_SCOCR1HL7);
  TSCOCR1HLrec = bitpacked record
    SCOCR1HL0,
    SCOCR1HL1,
    SCOCR1HL2,
    SCOCR1HL3,
    SCOCR1HL4,
    SCOCR1HL5,
    SCOCR1HL6,
    SCOCR1HL7: TBitField;
  end;
var
  SCOCR1HL: byte absolute $F7;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HLset: TSCOCR1HLset absolute $F7;
  SCOCR1HLrec: TSCOCR1HLrec absolute $F7;
const
  SCOCR1HL0 = 0;  m_SCOCR1HL0 = 1;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL1 = 1;  m_SCOCR1HL1 = 2;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL2 = 2;  m_SCOCR1HL2 = 4;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL3 = 3;  m_SCOCR1HL3 = 8;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL4 = 4;  m_SCOCR1HL4 = 16;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL5 = 5;  m_SCOCR1HL5 = 32;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL6 = 6;  m_SCOCR1HL6 = 64;  // Symbol Counter Output Compare Register 1 HL-Byte
  SCOCR1HL7 = 7;  m_SCOCR1HL7 = 128;  // Symbol Counter Output Compare Register 1 HL-Byte

type
  TSCOCR1HHset = bitpacked set of (e_SCOCR1HH0, e_SCOCR1HH1, e_SCOCR1HH2, e_SCOCR1HH3, e_SCOCR1HH4, e_SCOCR1HH5, e_SCOCR1HH6, e_SCOCR1HH7);
  TSCOCR1HHrec = bitpacked record
    SCOCR1HH0,
    SCOCR1HH1,
    SCOCR1HH2,
    SCOCR1HH3,
    SCOCR1HH4,
    SCOCR1HH5,
    SCOCR1HH6,
    SCOCR1HH7: TBitField;
  end;
var
  SCOCR1HH: byte absolute $F8;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HHset: TSCOCR1HHset absolute $F8;
  SCOCR1HHrec: TSCOCR1HHrec absolute $F8;
const
  SCOCR1HH0 = 0;  m_SCOCR1HH0 = 1;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH1 = 1;  m_SCOCR1HH1 = 2;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH2 = 2;  m_SCOCR1HH2 = 4;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH3 = 3;  m_SCOCR1HH3 = 8;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH4 = 4;  m_SCOCR1HH4 = 16;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH5 = 5;  m_SCOCR1HH5 = 32;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH6 = 6;  m_SCOCR1HH6 = 64;  // Symbol Counter Output Compare Register 1 HH-Byte
  SCOCR1HH7 = 7;  m_SCOCR1HH7 = 128;  // Symbol Counter Output Compare Register 1 HH-Byte

type
  TSCTSTRLLset = bitpacked set of (e_SCTSTRLL0, e_SCTSTRLL1, e_SCTSTRLL2, e_SCTSTRLL3, e_SCTSTRLL4, e_SCTSTRLL5, e_SCTSTRLL6, e_SCTSTRLL7);
  TSCTSTRLLrec = bitpacked record
    SCTSTRLL0,
    SCTSTRLL1,
    SCTSTRLL2,
    SCTSTRLL3,
    SCTSTRLL4,
    SCTSTRLL5,
    SCTSTRLL6,
    SCTSTRLL7: TBitField;
  end;
var
  SCTSTRLL: byte absolute $F9;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLLset: TSCTSTRLLset absolute $F9;
  SCTSTRLLrec: TSCTSTRLLrec absolute $F9;
const
  SCTSTRLL0 = 0;  m_SCTSTRLL0 = 1;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL1 = 1;  m_SCTSTRLL1 = 2;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL2 = 2;  m_SCTSTRLL2 = 4;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL3 = 3;  m_SCTSTRLL3 = 8;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL4 = 4;  m_SCTSTRLL4 = 16;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL5 = 5;  m_SCTSTRLL5 = 32;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL6 = 6;  m_SCTSTRLL6 = 64;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte
  SCTSTRLL7 = 7;  m_SCTSTRLL7 = 128;  // Symbol Counter Transmit Frame Timestamp Register LL-Byte

type
  TSCTSTRLHset = bitpacked set of (e_SCTSTRLH0, e_SCTSTRLH1, e_SCTSTRLH2, e_SCTSTRLH3, e_SCTSTRLH4, e_SCTSTRLH5, e_SCTSTRLH6, e_SCTSTRLH7);
  TSCTSTRLHrec = bitpacked record
    SCTSTRLH0,
    SCTSTRLH1,
    SCTSTRLH2,
    SCTSTRLH3,
    SCTSTRLH4,
    SCTSTRLH5,
    SCTSTRLH6,
    SCTSTRLH7: TBitField;
  end;
var
  SCTSTRLH: byte absolute $FA;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLHset: TSCTSTRLHset absolute $FA;
  SCTSTRLHrec: TSCTSTRLHrec absolute $FA;
const
  SCTSTRLH0 = 0;  m_SCTSTRLH0 = 1;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH1 = 1;  m_SCTSTRLH1 = 2;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH2 = 2;  m_SCTSTRLH2 = 4;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH3 = 3;  m_SCTSTRLH3 = 8;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH4 = 4;  m_SCTSTRLH4 = 16;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH5 = 5;  m_SCTSTRLH5 = 32;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH6 = 6;  m_SCTSTRLH6 = 64;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte
  SCTSTRLH7 = 7;  m_SCTSTRLH7 = 128;  // Symbol Counter Transmit Frame Timestamp Register LH-Byte

type
  TSCTSTRHLset = bitpacked set of (e_SCTSTRHL0, e_SCTSTRHL1, e_SCTSTRHL2, e_SCTSTRHL3, e_SCTSTRHL4, e_SCTSTRHL5, e_SCTSTRHL6, e_SCTSTRHL7);
  TSCTSTRHLrec = bitpacked record
    SCTSTRHL0,
    SCTSTRHL1,
    SCTSTRHL2,
    SCTSTRHL3,
    SCTSTRHL4,
    SCTSTRHL5,
    SCTSTRHL6,
    SCTSTRHL7: TBitField;
  end;
var
  SCTSTRHL: byte absolute $FB;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHLset: TSCTSTRHLset absolute $FB;
  SCTSTRHLrec: TSCTSTRHLrec absolute $FB;
const
  SCTSTRHL0 = 0;  m_SCTSTRHL0 = 1;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL1 = 1;  m_SCTSTRHL1 = 2;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL2 = 2;  m_SCTSTRHL2 = 4;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL3 = 3;  m_SCTSTRHL3 = 8;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL4 = 4;  m_SCTSTRHL4 = 16;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL5 = 5;  m_SCTSTRHL5 = 32;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL6 = 6;  m_SCTSTRHL6 = 64;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte
  SCTSTRHL7 = 7;  m_SCTSTRHL7 = 128;  // Symbol Counter Transmit Frame Timestamp Register HL-Byte

type
  TSCTSTRHHset = bitpacked set of (e_SCTSTRHH0, e_SCTSTRHH1, e_SCTSTRHH2, e_SCTSTRHH3, e_SCTSTRHH4, e_SCTSTRHH5, e_SCTSTRHH6, e_SCTSTRHH7);
  TSCTSTRHHrec = bitpacked record
    SCTSTRHH0,
    SCTSTRHH1,
    SCTSTRHH2,
    SCTSTRHH3,
    SCTSTRHH4,
    SCTSTRHH5,
    SCTSTRHH6,
    SCTSTRHH7: TBitField;
  end;
var
  SCTSTRHH: byte absolute $FC;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHHset: TSCTSTRHHset absolute $FC;
  SCTSTRHHrec: TSCTSTRHHrec absolute $FC;
const
  SCTSTRHH0 = 0;  m_SCTSTRHH0 = 1;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH1 = 1;  m_SCTSTRHH1 = 2;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH2 = 2;  m_SCTSTRHH2 = 4;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH3 = 3;  m_SCTSTRHH3 = 8;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH4 = 4;  m_SCTSTRHH4 = 16;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH5 = 5;  m_SCTSTRHH5 = 32;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH6 = 6;  m_SCTSTRHH6 = 64;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte
  SCTSTRHH7 = 7;  m_SCTSTRHH7 = 128;  // Symbol Counter Transmit Frame Timestamp Register HH-Byte

type
  TMAFCR0set = bitpacked set of (e_MAF0EN, e_MAF1EN, e_MAF2EN, e_MAF3EN);
  TMAFCR0rec = bitpacked record
    MAF0EN,
    MAF1EN,
    MAF2EN,
    MAF3EN,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MAFCR0: byte absolute $10C;  // Multiple Address Filter Configuration Register 0
  MAFCR0set: TMAFCR0set absolute $10C;
  MAFCR0rec: TMAFCR0rec absolute $10C;
const
  MAF0EN = 0;  m_MAF0EN = 1;  // Multiple Address Filter 0 Enable
  MAF1EN = 1;  m_MAF1EN = 2;  // Multiple Address Filter 1 Enable
  MAF2EN = 2;  m_MAF2EN = 4;  // Multiple Address Filter 2 Enable
  MAF3EN = 3;  m_MAF3EN = 8;  // Multiple Address Filter 3 Enable

type
  TMAFCR1set = bitpacked set of (e_AACK_0_I_AM_COORD, e_AACK_0_SET_PD, e_AACK_1_I_AM_COORD, e_AACK_1_SET_PD, e_AACK_2_I_AM_COORD, e_AACK_2_SET_PD, e_AACK_3_I_AM_COORD, e_AACK_3_SET_PD);
  TMAFCR1rec = bitpacked record
    AACK_0_I_AM_COORD,
    AACK_0_SET_PD,
    AACK_1_I_AM_COORD,
    AACK_1_SET_PD,
    AACK_2_I_AM_COORD,
    AACK_2_SET_PD,
    AACK_3_I_AM_COORD,
    AACK_3_SET_PD: TBitField;
  end;
var
  MAFCR1: byte absolute $10D;  // Multiple Address Filter Configuration Register 1
  MAFCR1set: TMAFCR1set absolute $10D;
  MAFCR1rec: TMAFCR1rec absolute $10D;
const
  AACK_0_I_AM_COORD = 0;  m_AACK_0_I_AM_COORD = 1;  // Enable PAN Coordinator mode for address filter 0.
  AACK_0_SET_PD = 1;  m_AACK_0_SET_PD = 2;  // Set Data Pending bit for address filter 0.
  AACK_1_I_AM_COORD = 2;  m_AACK_1_I_AM_COORD = 4;  // Enable PAN Coordinator mode for address filter 1.
  AACK_1_SET_PD = 3;  m_AACK_1_SET_PD = 8;  // Set Data Pending bit for address filter 1.
  AACK_2_I_AM_COORD = 4;  m_AACK_2_I_AM_COORD = 16;  // Enable PAN Coordinator mode for address filter 2.
  AACK_2_SET_PD = 5;  m_AACK_2_SET_PD = 32;  // Set Data Pending bit for address filter 2.
  AACK_3_I_AM_COORD = 6;  m_AACK_3_I_AM_COORD = 64;  // Enable PAN Coordinator mode for address filter 3.
  AACK_3_SET_PD = 7;  m_AACK_3_SET_PD = 128;  // Set Data Pending bit for address filter 3.

type
  TMAFSA0Lset = bitpacked set of (e_MAFSA0L0, e_MAFSA0L1, e_MAFSA0L2, e_MAFSA0L3, e_MAFSA0L4, e_MAFSA0L5, e_MAFSA0L6, e_MAFSA0L7);
  TMAFSA0Lrec = bitpacked record
    MAFSA0L0,
    MAFSA0L1,
    MAFSA0L2,
    MAFSA0L3,
    MAFSA0L4,
    MAFSA0L5,
    MAFSA0L6,
    MAFSA0L7: TBitField;
  end;
var
  MAFSA0L: byte absolute $10E;  // Transceiver MAC Short Address Register for Frame Filter 0 (Low Byte)
  MAFSA0Lset: TMAFSA0Lset absolute $10E;
  MAFSA0Lrec: TMAFSA0Lrec absolute $10E;
const
  MAFSA0L0 = 0;  m_MAFSA0L0 = 1;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L1 = 1;  m_MAFSA0L1 = 2;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L2 = 2;  m_MAFSA0L2 = 4;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L3 = 3;  m_MAFSA0L3 = 8;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L4 = 4;  m_MAFSA0L4 = 16;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L5 = 5;  m_MAFSA0L5 = 32;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L6 = 6;  m_MAFSA0L6 = 64;  // MAC Short Address low Byte for Frame Filter 0
  MAFSA0L7 = 7;  m_MAFSA0L7 = 128;  // MAC Short Address low Byte for Frame Filter 0

type
  TMAFSA0Hset = bitpacked set of (e_MAFSA0H0, e_MAFSA0H1, e_MAFSA0H2, e_MAFSA0H3, e_MAFSA0H4, e_MAFSA0H5, e_MAFSA0H6, e_MAFSA0H7);
  TMAFSA0Hrec = bitpacked record
    MAFSA0H0,
    MAFSA0H1,
    MAFSA0H2,
    MAFSA0H3,
    MAFSA0H4,
    MAFSA0H5,
    MAFSA0H6,
    MAFSA0H7: TBitField;
  end;
var
  MAFSA0H: byte absolute $10F;  // Transceiver MAC Short Address Register for Frame Filter 0 (High Byte)
  MAFSA0Hset: TMAFSA0Hset absolute $10F;
  MAFSA0Hrec: TMAFSA0Hrec absolute $10F;
const
  MAFSA0H0 = 0;  m_MAFSA0H0 = 1;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H1 = 1;  m_MAFSA0H1 = 2;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H2 = 2;  m_MAFSA0H2 = 4;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H3 = 3;  m_MAFSA0H3 = 8;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H4 = 4;  m_MAFSA0H4 = 16;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H5 = 5;  m_MAFSA0H5 = 32;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H6 = 6;  m_MAFSA0H6 = 64;  // MAC Short Address high Byte for Frame Filter 0
  MAFSA0H7 = 7;  m_MAFSA0H7 = 128;  // MAC Short Address high Byte for Frame Filter 0

type
  TMAFPA0Lset = bitpacked set of (e_MAFPA0L0, e_MAFPA0L1, e_MAFPA0L2, e_MAFPA0L3, e_MAFPA0L4, e_MAFPA0L5, e_MAFPA0L6, e_MAFPA0L7);
  TMAFPA0Lrec = bitpacked record
    MAFPA0L0,
    MAFPA0L1,
    MAFPA0L2,
    MAFPA0L3,
    MAFPA0L4,
    MAFPA0L5,
    MAFPA0L6,
    MAFPA0L7: TBitField;
  end;
var
  MAFPA0L: byte absolute $110;  // Transceiver Personal Area Network ID Register for Frame Filter 0 (Low Byte)
  MAFPA0Lset: TMAFPA0Lset absolute $110;
  MAFPA0Lrec: TMAFPA0Lrec absolute $110;
const
  MAFPA0L0 = 0;  m_MAFPA0L0 = 1;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L1 = 1;  m_MAFPA0L1 = 2;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L2 = 2;  m_MAFPA0L2 = 4;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L3 = 3;  m_MAFPA0L3 = 8;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L4 = 4;  m_MAFPA0L4 = 16;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L5 = 5;  m_MAFPA0L5 = 32;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L6 = 6;  m_MAFPA0L6 = 64;  // MAC Personal Area Network ID low Byte for Frame Filter 0
  MAFPA0L7 = 7;  m_MAFPA0L7 = 128;  // MAC Personal Area Network ID low Byte for Frame Filter 0

type
  TMAFPA0Hset = bitpacked set of (e_MAFPA0H0, e_MAFPA0H1, e_MAFPA0H2, e_MAFPA0H3, e_MAFPA0H4, e_MAFPA0H5, e_MAFPA0H6, e_MAFPA0H7);
  TMAFPA0Hrec = bitpacked record
    MAFPA0H0,
    MAFPA0H1,
    MAFPA0H2,
    MAFPA0H3,
    MAFPA0H4,
    MAFPA0H5,
    MAFPA0H6,
    MAFPA0H7: TBitField;
  end;
var
  MAFPA0H: byte absolute $111;  // Transceiver Personal Area Network ID Register for Frame Filter 0 (High Byte)
  MAFPA0Hset: TMAFPA0Hset absolute $111;
  MAFPA0Hrec: TMAFPA0Hrec absolute $111;
const
  MAFPA0H0 = 0;  m_MAFPA0H0 = 1;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H1 = 1;  m_MAFPA0H1 = 2;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H2 = 2;  m_MAFPA0H2 = 4;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H3 = 3;  m_MAFPA0H3 = 8;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H4 = 4;  m_MAFPA0H4 = 16;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H5 = 5;  m_MAFPA0H5 = 32;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H6 = 6;  m_MAFPA0H6 = 64;  // MAC Personal Area Network ID high Byte for Frame Filter 0
  MAFPA0H7 = 7;  m_MAFPA0H7 = 128;  // MAC Personal Area Network ID high Byte for Frame Filter 0

type
  TMAFSA1Lset = bitpacked set of (e_MAFSA1L0, e_MAFSA1L1, e_MAFSA1L2, e_MAFSA1L3, e_MAFSA1L4, e_MAFSA1L5, e_MAFSA1L6, e_MAFSA1L7);
  TMAFSA1Lrec = bitpacked record
    MAFSA1L0,
    MAFSA1L1,
    MAFSA1L2,
    MAFSA1L3,
    MAFSA1L4,
    MAFSA1L5,
    MAFSA1L6,
    MAFSA1L7: TBitField;
  end;
var
  MAFSA1L: byte absolute $112;  // Transceiver MAC Short Address Register for Frame Filter 1 (Low Byte)
  MAFSA1Lset: TMAFSA1Lset absolute $112;
  MAFSA1Lrec: TMAFSA1Lrec absolute $112;
const
  MAFSA1L0 = 0;  m_MAFSA1L0 = 1;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L1 = 1;  m_MAFSA1L1 = 2;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L2 = 2;  m_MAFSA1L2 = 4;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L3 = 3;  m_MAFSA1L3 = 8;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L4 = 4;  m_MAFSA1L4 = 16;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L5 = 5;  m_MAFSA1L5 = 32;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L6 = 6;  m_MAFSA1L6 = 64;  // MAC Short Address low Byte for Frame Filter 1
  MAFSA1L7 = 7;  m_MAFSA1L7 = 128;  // MAC Short Address low Byte for Frame Filter 1

type
  TMAFSA1Hset = bitpacked set of (e_MAFSA1H0, e_MAFSA1H1, e_MAFSA1H2, e_MAFSA1H3, e_MAFSA1H4, e_MAFSA1H5, e_MAFSA1H6, e_MAFSA1H7);
  TMAFSA1Hrec = bitpacked record
    MAFSA1H0,
    MAFSA1H1,
    MAFSA1H2,
    MAFSA1H3,
    MAFSA1H4,
    MAFSA1H5,
    MAFSA1H6,
    MAFSA1H7: TBitField;
  end;
var
  MAFSA1H: byte absolute $113;  // Transceiver MAC Short Address Register for Frame Filter 1 (High Byte)
  MAFSA1Hset: TMAFSA1Hset absolute $113;
  MAFSA1Hrec: TMAFSA1Hrec absolute $113;
const
  MAFSA1H0 = 0;  m_MAFSA1H0 = 1;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H1 = 1;  m_MAFSA1H1 = 2;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H2 = 2;  m_MAFSA1H2 = 4;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H3 = 3;  m_MAFSA1H3 = 8;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H4 = 4;  m_MAFSA1H4 = 16;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H5 = 5;  m_MAFSA1H5 = 32;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H6 = 6;  m_MAFSA1H6 = 64;  // MAC Short Address high Byte for Frame Filter 1
  MAFSA1H7 = 7;  m_MAFSA1H7 = 128;  // MAC Short Address high Byte for Frame Filter 1

type
  TMAFPA1Lset = bitpacked set of (e_MAFPA1L0, e_MAFPA1L1, e_MAFPA1L2, e_MAFPA1L3, e_MAFPA1L4, e_MAFPA1L5, e_MAFPA1L6, e_MAFPA1L7);
  TMAFPA1Lrec = bitpacked record
    MAFPA1L0,
    MAFPA1L1,
    MAFPA1L2,
    MAFPA1L3,
    MAFPA1L4,
    MAFPA1L5,
    MAFPA1L6,
    MAFPA1L7: TBitField;
  end;
var
  MAFPA1L: byte absolute $114;  // Transceiver Personal Area Network ID Register for Frame Filter 1 (Low Byte)
  MAFPA1Lset: TMAFPA1Lset absolute $114;
  MAFPA1Lrec: TMAFPA1Lrec absolute $114;
const
  MAFPA1L0 = 0;  m_MAFPA1L0 = 1;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L1 = 1;  m_MAFPA1L1 = 2;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L2 = 2;  m_MAFPA1L2 = 4;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L3 = 3;  m_MAFPA1L3 = 8;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L4 = 4;  m_MAFPA1L4 = 16;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L5 = 5;  m_MAFPA1L5 = 32;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L6 = 6;  m_MAFPA1L6 = 64;  // MAC Personal Area Network ID low Byte for Frame Filter 1
  MAFPA1L7 = 7;  m_MAFPA1L7 = 128;  // MAC Personal Area Network ID low Byte for Frame Filter 1

type
  TMAFPA1Hset = bitpacked set of (e_MAFPA1H0, e_MAFPA1H1, e_MAFPA1H2, e_MAFPA1H3, e_MAFPA1H4, e_MAFPA1H5, e_MAFPA1H6, e_MAFPA1H7);
  TMAFPA1Hrec = bitpacked record
    MAFPA1H0,
    MAFPA1H1,
    MAFPA1H2,
    MAFPA1H3,
    MAFPA1H4,
    MAFPA1H5,
    MAFPA1H6,
    MAFPA1H7: TBitField;
  end;
var
  MAFPA1H: byte absolute $115;  // Transceiver Personal Area Network ID Register for Frame Filter 1 (High Byte)
  MAFPA1Hset: TMAFPA1Hset absolute $115;
  MAFPA1Hrec: TMAFPA1Hrec absolute $115;
const
  MAFPA1H0 = 0;  m_MAFPA1H0 = 1;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H1 = 1;  m_MAFPA1H1 = 2;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H2 = 2;  m_MAFPA1H2 = 4;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H3 = 3;  m_MAFPA1H3 = 8;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H4 = 4;  m_MAFPA1H4 = 16;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H5 = 5;  m_MAFPA1H5 = 32;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H6 = 6;  m_MAFPA1H6 = 64;  // MAC Personal Area Network ID high Byte for Frame Filter 1
  MAFPA1H7 = 7;  m_MAFPA1H7 = 128;  // MAC Personal Area Network ID high Byte for Frame Filter 1

type
  TMAFSA2Lset = bitpacked set of (e_MAFSA2L0, e_MAFSA2L1, e_MAFSA2L2, e_MAFSA2L3, e_MAFSA2L4, e_MAFSA2L5, e_MAFSA2L6, e_MAFSA2L7);
  TMAFSA2Lrec = bitpacked record
    MAFSA2L0,
    MAFSA2L1,
    MAFSA2L2,
    MAFSA2L3,
    MAFSA2L4,
    MAFSA2L5,
    MAFSA2L6,
    MAFSA2L7: TBitField;
  end;
var
  MAFSA2L: byte absolute $116;  // Transceiver MAC Short Address Register for Frame Filter 2 (Low Byte)
  MAFSA2Lset: TMAFSA2Lset absolute $116;
  MAFSA2Lrec: TMAFSA2Lrec absolute $116;
const
  MAFSA2L0 = 0;  m_MAFSA2L0 = 1;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L1 = 1;  m_MAFSA2L1 = 2;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L2 = 2;  m_MAFSA2L2 = 4;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L3 = 3;  m_MAFSA2L3 = 8;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L4 = 4;  m_MAFSA2L4 = 16;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L5 = 5;  m_MAFSA2L5 = 32;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L6 = 6;  m_MAFSA2L6 = 64;  // MAC Short Address low Byte for Frame Filter 2
  MAFSA2L7 = 7;  m_MAFSA2L7 = 128;  // MAC Short Address low Byte for Frame Filter 2

type
  TMAFSA2Hset = bitpacked set of (e_MAFSA2H0, e_MAFSA2H1, e_MAFSA2H2, e_MAFSA2H3, e_MAFSA2H4, e_MAFSA2H5, e_MAFSA2H6, e_MAFSA2H7);
  TMAFSA2Hrec = bitpacked record
    MAFSA2H0,
    MAFSA2H1,
    MAFSA2H2,
    MAFSA2H3,
    MAFSA2H4,
    MAFSA2H5,
    MAFSA2H6,
    MAFSA2H7: TBitField;
  end;
var
  MAFSA2H: byte absolute $117;  // Transceiver MAC Short Address Register for Frame Filter 2 (High Byte)
  MAFSA2Hset: TMAFSA2Hset absolute $117;
  MAFSA2Hrec: TMAFSA2Hrec absolute $117;
const
  MAFSA2H0 = 0;  m_MAFSA2H0 = 1;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H1 = 1;  m_MAFSA2H1 = 2;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H2 = 2;  m_MAFSA2H2 = 4;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H3 = 3;  m_MAFSA2H3 = 8;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H4 = 4;  m_MAFSA2H4 = 16;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H5 = 5;  m_MAFSA2H5 = 32;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H6 = 6;  m_MAFSA2H6 = 64;  // MAC Short Address high Byte for Frame Filter 2
  MAFSA2H7 = 7;  m_MAFSA2H7 = 128;  // MAC Short Address high Byte for Frame Filter 2

type
  TMAFPA2Lset = bitpacked set of (e_MAFPA2L0, e_MAFPA2L1, e_MAFPA2L2, e_MAFPA2L3, e_MAFPA2L4, e_MAFPA2L5, e_MAFPA2L6, e_MAFPA2L7);
  TMAFPA2Lrec = bitpacked record
    MAFPA2L0,
    MAFPA2L1,
    MAFPA2L2,
    MAFPA2L3,
    MAFPA2L4,
    MAFPA2L5,
    MAFPA2L6,
    MAFPA2L7: TBitField;
  end;
var
  MAFPA2L: byte absolute $118;  // Transceiver Personal Area Network ID Register for Frame Filter 2 (Low Byte)
  MAFPA2Lset: TMAFPA2Lset absolute $118;
  MAFPA2Lrec: TMAFPA2Lrec absolute $118;
const
  MAFPA2L0 = 0;  m_MAFPA2L0 = 1;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L1 = 1;  m_MAFPA2L1 = 2;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L2 = 2;  m_MAFPA2L2 = 4;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L3 = 3;  m_MAFPA2L3 = 8;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L4 = 4;  m_MAFPA2L4 = 16;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L5 = 5;  m_MAFPA2L5 = 32;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L6 = 6;  m_MAFPA2L6 = 64;  // MAC Personal Area Network ID low Byte for Frame Filter 2
  MAFPA2L7 = 7;  m_MAFPA2L7 = 128;  // MAC Personal Area Network ID low Byte for Frame Filter 2

type
  TMAFPA2Hset = bitpacked set of (e_MAFPA2H0, e_MAFPA2H1, e_MAFPA2H2, e_MAFPA2H3, e_MAFPA2H4, e_MAFPA2H5, e_MAFPA2H6, e_MAFPA2H7);
  TMAFPA2Hrec = bitpacked record
    MAFPA2H0,
    MAFPA2H1,
    MAFPA2H2,
    MAFPA2H3,
    MAFPA2H4,
    MAFPA2H5,
    MAFPA2H6,
    MAFPA2H7: TBitField;
  end;
var
  MAFPA2H: byte absolute $119;  // Transceiver Personal Area Network ID Register for Frame Filter 2 (High Byte)
  MAFPA2Hset: TMAFPA2Hset absolute $119;
  MAFPA2Hrec: TMAFPA2Hrec absolute $119;
const
  MAFPA2H0 = 0;  m_MAFPA2H0 = 1;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H1 = 1;  m_MAFPA2H1 = 2;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H2 = 2;  m_MAFPA2H2 = 4;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H3 = 3;  m_MAFPA2H3 = 8;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H4 = 4;  m_MAFPA2H4 = 16;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H5 = 5;  m_MAFPA2H5 = 32;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H6 = 6;  m_MAFPA2H6 = 64;  // MAC Personal Area Network ID high Byte for Frame Filter 2
  MAFPA2H7 = 7;  m_MAFPA2H7 = 128;  // MAC Personal Area Network ID high Byte for Frame Filter 2

type
  TMAFSA3Lset = bitpacked set of (e_MAFSA3L0, e_MAFSA3L1, e_MAFSA3L2, e_MAFSA3L3, e_MAFSA3L4, e_MAFSA3L5, e_MAFSA3L6, e_MAFSA3L7);
  TMAFSA3Lrec = bitpacked record
    MAFSA3L0,
    MAFSA3L1,
    MAFSA3L2,
    MAFSA3L3,
    MAFSA3L4,
    MAFSA3L5,
    MAFSA3L6,
    MAFSA3L7: TBitField;
  end;
var
  MAFSA3L: byte absolute $11A;  // Transceiver MAC Short Address Register for Frame Filter 3 (Low Byte)
  MAFSA3Lset: TMAFSA3Lset absolute $11A;
  MAFSA3Lrec: TMAFSA3Lrec absolute $11A;
const
  MAFSA3L0 = 0;  m_MAFSA3L0 = 1;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L1 = 1;  m_MAFSA3L1 = 2;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L2 = 2;  m_MAFSA3L2 = 4;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L3 = 3;  m_MAFSA3L3 = 8;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L4 = 4;  m_MAFSA3L4 = 16;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L5 = 5;  m_MAFSA3L5 = 32;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L6 = 6;  m_MAFSA3L6 = 64;  // MAC Short Address low Byte for Frame Filter 3
  MAFSA3L7 = 7;  m_MAFSA3L7 = 128;  // MAC Short Address low Byte for Frame Filter 3

type
  TMAFSA3Hset = bitpacked set of (e_MAFSA3H0, e_MAFSA3H1, e_MAFSA3H2, e_MAFSA3H3, e_MAFSA3H4, e_MAFSA3H5, e_MAFSA3H6, e_MAFSA3H7);
  TMAFSA3Hrec = bitpacked record
    MAFSA3H0,
    MAFSA3H1,
    MAFSA3H2,
    MAFSA3H3,
    MAFSA3H4,
    MAFSA3H5,
    MAFSA3H6,
    MAFSA3H7: TBitField;
  end;
var
  MAFSA3H: byte absolute $11B;  // Transceiver MAC Short Address Register for Frame Filter 3 (High Byte)
  MAFSA3Hset: TMAFSA3Hset absolute $11B;
  MAFSA3Hrec: TMAFSA3Hrec absolute $11B;
const
  MAFSA3H0 = 0;  m_MAFSA3H0 = 1;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H1 = 1;  m_MAFSA3H1 = 2;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H2 = 2;  m_MAFSA3H2 = 4;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H3 = 3;  m_MAFSA3H3 = 8;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H4 = 4;  m_MAFSA3H4 = 16;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H5 = 5;  m_MAFSA3H5 = 32;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H6 = 6;  m_MAFSA3H6 = 64;  // MAC Short Address high Byte for Frame Filter 3
  MAFSA3H7 = 7;  m_MAFSA3H7 = 128;  // MAC Short Address high Byte for Frame Filter 3

type
  TMAFPA3Lset = bitpacked set of (e_MAFPA3L0, e_MAFPA3L1, e_MAFPA3L2, e_MAFPA3L3, e_MAFPA3L4, e_MAFPA3L5, e_MAFPA3L6, e_MAFPA3L7);
  TMAFPA3Lrec = bitpacked record
    MAFPA3L0,
    MAFPA3L1,
    MAFPA3L2,
    MAFPA3L3,
    MAFPA3L4,
    MAFPA3L5,
    MAFPA3L6,
    MAFPA3L7: TBitField;
  end;
var
  MAFPA3L: byte absolute $11C;  // Transceiver Personal Area Network ID Register for Frame Filter 3 (Low Byte)
  MAFPA3Lset: TMAFPA3Lset absolute $11C;
  MAFPA3Lrec: TMAFPA3Lrec absolute $11C;
const
  MAFPA3L0 = 0;  m_MAFPA3L0 = 1;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L1 = 1;  m_MAFPA3L1 = 2;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L2 = 2;  m_MAFPA3L2 = 4;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L3 = 3;  m_MAFPA3L3 = 8;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L4 = 4;  m_MAFPA3L4 = 16;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L5 = 5;  m_MAFPA3L5 = 32;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L6 = 6;  m_MAFPA3L6 = 64;  // MAC Personal Area Network ID low Byte for Frame Filter 3
  MAFPA3L7 = 7;  m_MAFPA3L7 = 128;  // MAC Personal Area Network ID low Byte for Frame Filter 3

type
  TMAFPA3Hset = bitpacked set of (e_MAFPA3H0, e_MAFPA3H1, e_MAFPA3H2, e_MAFPA3H3, e_MAFPA3H4, e_MAFPA3H5, e_MAFPA3H6, e_MAFPA3H7);
  TMAFPA3Hrec = bitpacked record
    MAFPA3H0,
    MAFPA3H1,
    MAFPA3H2,
    MAFPA3H3,
    MAFPA3H4,
    MAFPA3H5,
    MAFPA3H6,
    MAFPA3H7: TBitField;
  end;
var
  MAFPA3H: byte absolute $11D;  // Transceiver Personal Area Network ID Register for Frame Filter 3 (High Byte)
  MAFPA3Hset: TMAFPA3Hset absolute $11D;
  MAFPA3Hrec: TMAFPA3Hrec absolute $11D;
const
  MAFPA3H0 = 0;  m_MAFPA3H0 = 1;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H1 = 1;  m_MAFPA3H1 = 2;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H2 = 2;  m_MAFPA3H2 = 4;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H3 = 3;  m_MAFPA3H3 = 8;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H4 = 4;  m_MAFPA3H4 = 16;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H5 = 5;  m_MAFPA3H5 = 32;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H6 = 6;  m_MAFPA3H6 = 64;  // MAC Personal Area Network ID high Byte for Frame Filter 3
  MAFPA3H7 = 7;  m_MAFPA3H7 = 128;  // MAC Personal Area Network ID high Byte for Frame Filter 3

type
  TTCCR5Aset = bitpacked set of (e_WGM50, e_WGM51, e_COM5C0, e_COM5C1, e_COM5B0, e_COM5B1, e_COM5A0, e_COM5A1);
  TTCCR5Arec = bitpacked record
    WGM50,
    WGM51,
    COM5C0,
    COM5C1,
    COM5B0,
    COM5B1,
    COM5A0,
    COM5A1: TBitField;
  end;
var
  TCCR5A: byte absolute $120;  // Timer/Counter5 Control Register A
  TCCR5Aset: TTCCR5Aset absolute $120;
  TCCR5Arec: TTCCR5Arec absolute $120;
const
  WGM50 = 0;  m_WGM50 = 1;  // Waveform Generation Mode
  WGM51 = 1;  m_WGM51 = 2;  // Waveform Generation Mode
  COM5C0 = 2;  m_COM5C0 = 4;  // Compare Output Mode for Channel C
  COM5C1 = 3;  m_COM5C1 = 8;  // Compare Output Mode for Channel C
  COM5B0 = 4;  m_COM5B0 = 16;  // Compare Output Mode for Channel B
  COM5B1 = 5;  m_COM5B1 = 32;  // Compare Output Mode for Channel B
  COM5A0 = 6;  m_COM5A0 = 64;  // Compare Output Mode for Channel A
  COM5A1 = 7;  m_COM5A1 = 128;  // Compare Output Mode for Channel A

type
  TTCCR5Bset = bitpacked set of (e_CS50, e_CS51, e_CS52, e_ICES5=6, e_ICNC5);
  TTCCR5Brec = bitpacked record
    CS50,
    CS51,
    CS52,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES5,
    ICNC5: TBitField;
  end;
var
  TCCR5B: byte absolute $121;  // Timer/Counter5 Control Register B
  TCCR5Bset: TTCCR5Bset absolute $121;
  TCCR5Brec: TTCCR5Brec absolute $121;
const
  CS50 = 0;  m_CS50 = 1;  // Clock Select
  CS51 = 1;  m_CS51 = 2;  // Clock Select
  CS52 = 2;  m_CS52 = 4;  // Clock Select
  ICES5 = 6;  m_ICES5 = 64;  // Input Capture 5 Edge Select
  ICNC5 = 7;  m_ICNC5 = 128;  // Input Capture 5 Noise Canceller

type
  TTCCR5Cset = bitpacked set of (e_FOC5C=5, e_FOC5B, e_FOC5A);
  TTCCR5Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FOC5C,
    FOC5B,
    FOC5A: TBitField;
  end;
var
  TCCR5C: byte absolute $122;  // Timer/Counter5 Control Register C
  TCCR5Cset: TTCCR5Cset absolute $122;
  TCCR5Crec: TTCCR5Crec absolute $122;
const
  FOC5C = 5;  m_FOC5C = 32;  // Force Output Compare for Channel C
  FOC5B = 6;  m_FOC5B = 64;  // Force Output Compare for Channel B
  FOC5A = 7;  m_FOC5A = 128;  // Force Output Compare for Channel A

var
  TCNT5: word absolute $124;  // Timer/Counter5  Bytes
  TCNT5L: byte absolute $124;
  TCNT5H: byte absolute $125;
  ICR5: word absolute $126;  // Timer/Counter5 Input Capture Register  Bytes
  ICR5L: byte absolute $126;
  ICR5H: byte absolute $127;
  OCR5A: word absolute $128;  // Timer/Counter5 Output Compare Register A  Bytes
  OCR5AL: byte absolute $128;
  OCR5AH: byte absolute $129;
  OCR5B: word absolute $12A;  // Timer/Counter5 Output Compare Register B  Bytes
  OCR5BL: byte absolute $12A;
  OCR5BH: byte absolute $12B;
  OCR5C: word absolute $12C;  // Timer/Counter5 Output Compare Register C  Bytes
  OCR5CL: byte absolute $12C;
  OCR5CH: byte absolute $12D;

type
  TLLCRset = bitpacked set of (e_LLENCAL, e_LLSHORT, e_LLTCO, e_LLCAL, e_LLCOMP, e_LLDONE);
  TLLCRrec = bitpacked record
    LLENCAL,
    LLSHORT,
    LLTCO,
    LLCAL,
    LLCOMP,
    LLDONE,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LLCR: byte absolute $12F;  // Low Leakage Voltage Regulator Control Register
  LLCRset: TLLCRset absolute $12F;
  LLCRrec: TLLCRrec absolute $12F;
const
  LLENCAL = 0;  m_LLENCAL = 1;  // Enable Automatic Calibration
  LLSHORT = 1;  m_LLSHORT = 2;  // Short Lower Calibration Circuit
  LLTCO = 2;  m_LLTCO = 4;  // Temperature Coefficient of Current Source
  LLCAL = 3;  m_LLCAL = 8;  // Calibration Active
  LLCOMP = 4;  m_LLCOMP = 16;  // Comparator Output
  LLDONE = 5;  m_LLDONE = 32;  // Calibration Done

type
  TLLDRLset = bitpacked set of (e_LLDRL0, e_LLDRL1, e_LLDRL2, e_LLDRL3);
  TLLDRLrec = bitpacked record
    LLDRL0,
    LLDRL1,
    LLDRL2,
    LLDRL3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LLDRL: byte absolute $130;  // Low Leakage Voltage Regulator Data Register (Low-Byte)
  LLDRLset: TLLDRLset absolute $130;
  LLDRLrec: TLLDRLrec absolute $130;
const
  LLDRL0 = 0;  m_LLDRL0 = 1;  // Low-Byte Data Register Bits
  LLDRL1 = 1;  m_LLDRL1 = 2;  // Low-Byte Data Register Bits
  LLDRL2 = 2;  m_LLDRL2 = 4;  // Low-Byte Data Register Bits
  LLDRL3 = 3;  m_LLDRL3 = 8;  // Low-Byte Data Register Bits

type
  TLLDRHset = bitpacked set of (e_LLDRH0, e_LLDRH1, e_LLDRH2, e_LLDRH3, e_LLDRH4);
  TLLDRHrec = bitpacked record
    LLDRH0,
    LLDRH1,
    LLDRH2,
    LLDRH3,
    LLDRH4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LLDRH: byte absolute $131;  // Low Leakage Voltage Regulator Data Register (High-Byte)
  LLDRHset: TLLDRHset absolute $131;
  LLDRHrec: TLLDRHrec absolute $131;
const
  LLDRH0 = 0;  m_LLDRH0 = 1;  // High-Byte Data Register Bits
  LLDRH1 = 1;  m_LLDRH1 = 2;  // High-Byte Data Register Bits
  LLDRH2 = 2;  m_LLDRH2 = 4;  // High-Byte Data Register Bits
  LLDRH3 = 3;  m_LLDRH3 = 8;  // High-Byte Data Register Bits
  LLDRH4 = 4;  m_LLDRH4 = 16;  // High-Byte Data Register Bits

var
  DRTRAM3: byte absolute $132;  // Data Retention Configuration Register #3
  DRTRAM2: byte absolute $133;  // Data Retention Configuration Register #2
  DRTRAM1: byte absolute $134;  // Data Retention Configuration Register #1

type
  TDRTRAM0set = bitpacked set of (e_ENDRT=4, e_DRTSWOK);
  TDRTRAM0rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ENDRT,
    DRTSWOK,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DRTRAM0: byte absolute $135;  // Data Retention Configuration Register #0
  DRTRAM0set: TDRTRAM0set absolute $135;
  DRTRAM0rec: TDRTRAM0rec absolute $135;
const
  ENDRT = 4;  m_ENDRT = 16;  // Enable SRAM Data Retention
  DRTSWOK = 5;  m_DRTSWOK = 32;  // DRT Switch OK

type
  TDPDS0set = bitpacked set of (e_PBDRV0, e_PBDRV1, e_PDDRV0, e_PDDRV1, e_PEDRV0, e_PEDRV1, e_PFDRV0, e_PFDRV1);
  TDPDS0rec = bitpacked record
    PBDRV0,
    PBDRV1,
    PDDRV0,
    PDDRV1,
    PEDRV0,
    PEDRV1,
    PFDRV0,
    PFDRV1: TBitField;
  end;
var
  DPDS0: byte absolute $136;  // Port Driver Strength Register 0
  DPDS0set: TDPDS0set absolute $136;
  DPDS0rec: TDPDS0rec absolute $136;
const
  PBDRV0 = 0;  m_PBDRV0 = 1;  // Driver Strength Port B
  PBDRV1 = 1;  m_PBDRV1 = 2;  // Driver Strength Port B
  PDDRV0 = 2;  m_PDDRV0 = 4;  // Driver Strength Port D
  PDDRV1 = 3;  m_PDDRV1 = 8;  // Driver Strength Port D
  PEDRV0 = 4;  m_PEDRV0 = 16;  // Driver Strength Port E
  PEDRV1 = 5;  m_PEDRV1 = 32;  // Driver Strength Port E
  PFDRV0 = 6;  m_PFDRV0 = 64;  // Driver Strength Port F
  PFDRV1 = 7;  m_PFDRV1 = 128;  // Driver Strength Port F

type
  TDPDS1set = bitpacked set of (e_PGDRV0, e_PGDRV1);
  TDPDS1rec = bitpacked record
    PGDRV0,
    PGDRV1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DPDS1: byte absolute $137;  // Port Driver Strength Register 1
  DPDS1set: TDPDS1set absolute $137;
  DPDS1rec: TDPDS1rec absolute $137;
const
  PGDRV0 = 0;  m_PGDRV0 = 1;  // Driver Strength Port G
  PGDRV1 = 1;  m_PGDRV1 = 2;  // Driver Strength Port G

type
  TPARCRset = bitpacked set of (e_PARUFI, e_PARDFI, e_PALTU0, e_PALTU1, e_PALTU2, e_PALTD0, e_PALTD1, e_PALTD2);
  TPARCRrec = bitpacked record
    PARUFI,
    PARDFI,
    PALTU0,
    PALTU1,
    PALTU2,
    PALTD0,
    PALTD1,
    PALTD2: TBitField;
  end;
var
  PARCR: byte absolute $138;  // Power Amplifier Ramp up/down Control Register
  PARCRset: TPARCRset absolute $138;
  PARCRrec: TPARCRrec absolute $138;
const
  PARUFI = 0;  m_PARUFI = 1;  // Power Amplifier Ramp Up Frequency Inversion
  PARDFI = 1;  m_PARDFI = 2;  // Power Amplifier Ramp Down Frequency Inversion
  PALTU0 = 2;  m_PALTU0 = 4;  // ext. PA Ramp Up Lead Time
  PALTU1 = 3;  m_PALTU1 = 8;  // ext. PA Ramp Up Lead Time
  PALTU2 = 4;  m_PALTU2 = 16;  // ext. PA Ramp Up Lead Time
  PALTD0 = 5;  m_PALTD0 = 32;  // ext. PA Ramp Down Lead Time
  PALTD1 = 6;  m_PALTD1 = 64;  // ext. PA Ramp Down Lead Time
  PALTD2 = 7;  m_PALTD2 = 128;  // ext. PA Ramp Down Lead Time

type
  TTRXPRset = bitpacked set of (e_TRXRST, e_SLPTR);
  TTRXPRrec = bitpacked record
    TRXRST,
    SLPTR,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TRXPR: byte absolute $139;  // Transceiver Pin Register
  TRXPRset: TTRXPRset absolute $139;
  TRXPRrec: TTRXPRrec absolute $139;
const
  TRXRST = 0;  m_TRXRST = 1;  // Force Transceiver Reset
  SLPTR = 1;  m_SLPTR = 2;  // Multi-purpose Transceiver Control Bit

type
  TAES_CTRLset = bitpacked set of (e_AES_IM=2, e_AES_DIR, e_AES_MODE=5, e_AES_REQUEST=7);
  TAES_CTRLrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    AES_IM,
    AES_DIR,
    ReservedBit4,
    AES_MODE,
    ReservedBit6,
    AES_REQUEST: TBitField;
  end;
var
  AES_CTRL: byte absolute $13C;  // AES Control Register
  AES_CTRLset: TAES_CTRLset absolute $13C;
  AES_CTRLrec: TAES_CTRLrec absolute $13C;
const
  AES_IM = 2;  m_AES_IM = 4;  // AES Interrupt Enable
  AES_DIR = 3;  m_AES_DIR = 8;  // Set AES Operation Direction
  AES_MODE = 5;  m_AES_MODE = 32;  // Set AES Operation Mode
  AES_REQUEST = 7;  m_AES_REQUEST = 128;  // Request AES Operation.

type
  TAES_STATUSset = bitpacked set of (e_AES_DONE, e_AES_ER=7);
  TAES_STATUSrec = bitpacked record
    AES_DONE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    AES_ER: TBitField;
  end;
var
  AES_STATUS: byte absolute $13D;  // AES Status Register
  AES_STATUSset: TAES_STATUSset absolute $13D;
  AES_STATUSrec: TAES_STATUSrec absolute $13D;
const
  AES_DONE = 0;  m_AES_DONE = 1;  // AES Operation Finished with Success
  AES_ER = 7;  m_AES_ER = 128;  // AES Operation Finished with Error

type
  TAES_STATEset = bitpacked set of (e_AES_STATE0, e_AES_STATE1, e_AES_STATE2, e_AES_STATE3, e_AES_STATE4, e_AES_STATE5, e_AES_STATE6, e_AES_STATE7);
  TAES_STATErec = bitpacked record
    AES_STATE0,
    AES_STATE1,
    AES_STATE2,
    AES_STATE3,
    AES_STATE4,
    AES_STATE5,
    AES_STATE6,
    AES_STATE7: TBitField;
  end;
var
  AES_STATE: byte absolute $13E;  // AES Plain and Cipher Text Buffer Register
  AES_STATEset: TAES_STATEset absolute $13E;
  AES_STATErec: TAES_STATErec absolute $13E;
const
  AES_STATE0 = 0;  m_AES_STATE0 = 1;  // AES Plain and Cipher Text Buffer
  AES_STATE1 = 1;  m_AES_STATE1 = 2;  // AES Plain and Cipher Text Buffer
  AES_STATE2 = 2;  m_AES_STATE2 = 4;  // AES Plain and Cipher Text Buffer
  AES_STATE3 = 3;  m_AES_STATE3 = 8;  // AES Plain and Cipher Text Buffer
  AES_STATE4 = 4;  m_AES_STATE4 = 16;  // AES Plain and Cipher Text Buffer
  AES_STATE5 = 5;  m_AES_STATE5 = 32;  // AES Plain and Cipher Text Buffer
  AES_STATE6 = 6;  m_AES_STATE6 = 64;  // AES Plain and Cipher Text Buffer
  AES_STATE7 = 7;  m_AES_STATE7 = 128;  // AES Plain and Cipher Text Buffer

type
  TAES_KEYset = bitpacked set of (e_AES_KEY0, e_AES_KEY1, e_AES_KEY2, e_AES_KEY3, e_AES_KEY4, e_AES_KEY5, e_AES_KEY6, e_AES_KEY7);
  TAES_KEYrec = bitpacked record
    AES_KEY0,
    AES_KEY1,
    AES_KEY2,
    AES_KEY3,
    AES_KEY4,
    AES_KEY5,
    AES_KEY6,
    AES_KEY7: TBitField;
  end;
var
  AES_KEY: byte absolute $13F;  // AES Encryption and Decryption Key Buffer Register
  AES_KEYset: TAES_KEYset absolute $13F;
  AES_KEYrec: TAES_KEYrec absolute $13F;
const
  AES_KEY0 = 0;  m_AES_KEY0 = 1;  // AES Encryption/Decryption Key Buffer
  AES_KEY1 = 1;  m_AES_KEY1 = 2;  // AES Encryption/Decryption Key Buffer
  AES_KEY2 = 2;  m_AES_KEY2 = 4;  // AES Encryption/Decryption Key Buffer
  AES_KEY3 = 3;  m_AES_KEY3 = 8;  // AES Encryption/Decryption Key Buffer
  AES_KEY4 = 4;  m_AES_KEY4 = 16;  // AES Encryption/Decryption Key Buffer
  AES_KEY5 = 5;  m_AES_KEY5 = 32;  // AES Encryption/Decryption Key Buffer
  AES_KEY6 = 6;  m_AES_KEY6 = 64;  // AES Encryption/Decryption Key Buffer
  AES_KEY7 = 7;  m_AES_KEY7 = 128;  // AES Encryption/Decryption Key Buffer

type
  TTRX_STATUSset = bitpacked set of (e_TRX_STATUS0, e_TRX_STATUS1, e_TRX_STATUS2, e_TRX_STATUS3, e_TRX_STATUS4, e_TST_STATUS, e_CCA_STATUS, e_CCA_DONE);
  TTRX_STATUSrec = bitpacked record
    TRX_STATUS0,
    TRX_STATUS1,
    TRX_STATUS2,
    TRX_STATUS3,
    TRX_STATUS4,
    TST_STATUS,
    CCA_STATUS,
    CCA_DONE: TBitField;
  end;
var
  TRX_STATUS: byte absolute $141;  // Transceiver Status Register
  TRX_STATUSset: TTRX_STATUSset absolute $141;
  TRX_STATUSrec: TTRX_STATUSrec absolute $141;
const
  TRX_STATUS0 = 0;  m_TRX_STATUS0 = 1;  // Transceiver Main Status
  TRX_STATUS1 = 1;  m_TRX_STATUS1 = 2;  // Transceiver Main Status
  TRX_STATUS2 = 2;  m_TRX_STATUS2 = 4;  // Transceiver Main Status
  TRX_STATUS3 = 3;  m_TRX_STATUS3 = 8;  // Transceiver Main Status
  TRX_STATUS4 = 4;  m_TRX_STATUS4 = 16;  // Transceiver Main Status
  TST_STATUS = 5;  m_TST_STATUS = 32;  // Test mode status
  CCA_STATUS = 6;  m_CCA_STATUS = 64;  // CCA Status Result
  CCA_DONE = 7;  m_CCA_DONE = 128;  // CCA Algorithm Status

type
  TTRX_STATEset = bitpacked set of (e_TRX_CMD0, e_TRX_CMD1, e_TRX_CMD2, e_TRX_CMD3, e_TRX_CMD4, e_TRAC_STATUS0, e_TRAC_STATUS1, e_TRAC_STATUS2);
  TTRX_STATErec = bitpacked record
    TRX_CMD0,
    TRX_CMD1,
    TRX_CMD2,
    TRX_CMD3,
    TRX_CMD4,
    TRAC_STATUS0,
    TRAC_STATUS1,
    TRAC_STATUS2: TBitField;
  end;
var
  TRX_STATE: byte absolute $142;  // Transceiver State Control Register
  TRX_STATEset: TTRX_STATEset absolute $142;
  TRX_STATErec: TTRX_STATErec absolute $142;
const
  TRX_CMD0 = 0;  m_TRX_CMD0 = 1;  // State Control Command
  TRX_CMD1 = 1;  m_TRX_CMD1 = 2;  // State Control Command
  TRX_CMD2 = 2;  m_TRX_CMD2 = 4;  // State Control Command
  TRX_CMD3 = 3;  m_TRX_CMD3 = 8;  // State Control Command
  TRX_CMD4 = 4;  m_TRX_CMD4 = 16;  // State Control Command
  TRAC_STATUS0 = 5;  m_TRAC_STATUS0 = 32;  // Transaction Status
  TRAC_STATUS1 = 6;  m_TRAC_STATUS1 = 64;  // Transaction Status
  TRAC_STATUS2 = 7;  m_TRAC_STATUS2 = 128;  // Transaction Status

type
  TTRX_CTRL_0set = bitpacked set of (e_PMU_IF_INV=4, e_PMU_START, e_PMU_EN, e_Res7);
  TTRX_CTRL_0rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PMU_IF_INV,
    PMU_START,
    PMU_EN,
    Res7: TBitField;
  end;
var
  TRX_CTRL_0: byte absolute $143;  // Reserved
  TRX_CTRL_0set: TTRX_CTRL_0set absolute $143;
  TRX_CTRL_0rec: TTRX_CTRL_0rec absolute $143;
const
  PMU_IF_INV = 4;  m_PMU_IF_INV = 16;  // PMU IF Inverse
  PMU_START = 5;  m_PMU_START = 32;  // Start of Phase Measurement Unit
  PMU_EN = 6;  m_PMU_EN = 64;  // Enable Phase Measurement Unit
  Res7 = 7;  m_Res7 = 128;  // Reserved

type
  TTRX_CTRL_1set = bitpacked set of (e_PLL_TX_FLT=4, e_TX_AUTO_CRC_ON, e_IRQ_2_EXT_EN, e_PA_EXT_EN);
  TTRX_CTRL_1rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PLL_TX_FLT,
    TX_AUTO_CRC_ON,
    IRQ_2_EXT_EN,
    PA_EXT_EN: TBitField;
  end;
var
  TRX_CTRL_1: byte absolute $144;  // Transceiver Control Register 1
  TRX_CTRL_1set: TTRX_CTRL_1set absolute $144;
  TRX_CTRL_1rec: TTRX_CTRL_1rec absolute $144;
const
  PLL_TX_FLT = 4;  m_PLL_TX_FLT = 16;  // Enable PLL TX filter
  TX_AUTO_CRC_ON = 5;  m_TX_AUTO_CRC_ON = 32;  // Enable Automatic CRC Calculation
  IRQ_2_EXT_EN = 6;  m_IRQ_2_EXT_EN = 64;  // Connect Frame Start IRQ to TC1
  PA_EXT_EN = 7;  m_PA_EXT_EN = 128;  // External PA support enable

type
  TPHY_TX_PWRset = bitpacked set of (e_TX_PWR0, e_TX_PWR1, e_TX_PWR2, e_TX_PWR3);
  TPHY_TX_PWRrec = bitpacked record
    TX_PWR0,
    TX_PWR1,
    TX_PWR2,
    TX_PWR3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PHY_TX_PWR: byte absolute $145;  // Transceiver Transmit Power Control Register
  PHY_TX_PWRset: TPHY_TX_PWRset absolute $145;
  PHY_TX_PWRrec: TPHY_TX_PWRrec absolute $145;
const
  TX_PWR0 = 0;  m_TX_PWR0 = 1;  // Transmit Power Setting
  TX_PWR1 = 1;  m_TX_PWR1 = 2;  // Transmit Power Setting
  TX_PWR2 = 2;  m_TX_PWR2 = 4;  // Transmit Power Setting
  TX_PWR3 = 3;  m_TX_PWR3 = 8;  // Transmit Power Setting

type
  TPHY_RSSIset = bitpacked set of (e_RSSI0, e_RSSI1, e_RSSI2, e_RSSI3, e_RSSI4, e_RND_VALUE0, e_RND_VALUE1, e_RX_CRC_VALID);
  TPHY_RSSIrec = bitpacked record
    RSSI0,
    RSSI1,
    RSSI2,
    RSSI3,
    RSSI4,
    RND_VALUE0,
    RND_VALUE1,
    RX_CRC_VALID: TBitField;
  end;
var
  PHY_RSSI: byte absolute $146;  // Receiver Signal Strength Indicator Register
  PHY_RSSIset: TPHY_RSSIset absolute $146;
  PHY_RSSIrec: TPHY_RSSIrec absolute $146;
const
  RSSI0 = 0;  m_RSSI0 = 1;  // Receiver Signal Strength Indicator
  RSSI1 = 1;  m_RSSI1 = 2;  // Receiver Signal Strength Indicator
  RSSI2 = 2;  m_RSSI2 = 4;  // Receiver Signal Strength Indicator
  RSSI3 = 3;  m_RSSI3 = 8;  // Receiver Signal Strength Indicator
  RSSI4 = 4;  m_RSSI4 = 16;  // Receiver Signal Strength Indicator
  RND_VALUE0 = 5;  m_RND_VALUE0 = 32;  // Random Value
  RND_VALUE1 = 6;  m_RND_VALUE1 = 64;  // Random Value
  RX_CRC_VALID = 7;  m_RX_CRC_VALID = 128;  // Received Frame CRC Status

type
  TPHY_ED_LEVELset = bitpacked set of (e_ED_LEVEL0, e_ED_LEVEL1, e_ED_LEVEL2, e_ED_LEVEL3, e_ED_LEVEL4, e_ED_LEVEL5, e_ED_LEVEL6, e_ED_LEVEL7);
  TPHY_ED_LEVELrec = bitpacked record
    ED_LEVEL0,
    ED_LEVEL1,
    ED_LEVEL2,
    ED_LEVEL3,
    ED_LEVEL4,
    ED_LEVEL5,
    ED_LEVEL6,
    ED_LEVEL7: TBitField;
  end;
var
  PHY_ED_LEVEL: byte absolute $147;  // Transceiver Energy Detection Level Register
  PHY_ED_LEVELset: TPHY_ED_LEVELset absolute $147;
  PHY_ED_LEVELrec: TPHY_ED_LEVELrec absolute $147;
const
  ED_LEVEL0 = 0;  m_ED_LEVEL0 = 1;  // Energy Detection Level
  ED_LEVEL1 = 1;  m_ED_LEVEL1 = 2;  // Energy Detection Level
  ED_LEVEL2 = 2;  m_ED_LEVEL2 = 4;  // Energy Detection Level
  ED_LEVEL3 = 3;  m_ED_LEVEL3 = 8;  // Energy Detection Level
  ED_LEVEL4 = 4;  m_ED_LEVEL4 = 16;  // Energy Detection Level
  ED_LEVEL5 = 5;  m_ED_LEVEL5 = 32;  // Energy Detection Level
  ED_LEVEL6 = 6;  m_ED_LEVEL6 = 64;  // Energy Detection Level
  ED_LEVEL7 = 7;  m_ED_LEVEL7 = 128;  // Energy Detection Level

type
  TPHY_CC_CCAset = bitpacked set of (e_CHANNEL0, e_CHANNEL1, e_CHANNEL2, e_CHANNEL3, e_CHANNEL4, e_CCA_MODE0, e_CCA_MODE1, e_CCA_REQUEST);
  TPHY_CC_CCArec = bitpacked record
    CHANNEL0,
    CHANNEL1,
    CHANNEL2,
    CHANNEL3,
    CHANNEL4,
    CCA_MODE0,
    CCA_MODE1,
    CCA_REQUEST: TBitField;
  end;
var
  PHY_CC_CCA: byte absolute $148;  // Transceiver Clear Channel Assessment (CCA) Control Register
  PHY_CC_CCAset: TPHY_CC_CCAset absolute $148;
  PHY_CC_CCArec: TPHY_CC_CCArec absolute $148;
const
  CHANNEL0 = 0;  m_CHANNEL0 = 1;  // RX/TX Channel Selection
  CHANNEL1 = 1;  m_CHANNEL1 = 2;  // RX/TX Channel Selection
  CHANNEL2 = 2;  m_CHANNEL2 = 4;  // RX/TX Channel Selection
  CHANNEL3 = 3;  m_CHANNEL3 = 8;  // RX/TX Channel Selection
  CHANNEL4 = 4;  m_CHANNEL4 = 16;  // RX/TX Channel Selection
  CCA_MODE0 = 5;  m_CCA_MODE0 = 32;  // Select CCA Measurement Mode
  CCA_MODE1 = 6;  m_CCA_MODE1 = 64;  // Select CCA Measurement Mode
  CCA_REQUEST = 7;  m_CCA_REQUEST = 128;  // Manual CCA Measurement Request

type
  TCCA_THRESset = bitpacked set of (e_CCA_ED_THRES0, e_CCA_ED_THRES1, e_CCA_ED_THRES2, e_CCA_ED_THRES3, e_CCA_CS_THRES0, e_CCA_CS_THRES1, e_CCA_CS_THRES2, e_CCA_CS_THRES3);
  TCCA_THRESrec = bitpacked record
    CCA_ED_THRES0,
    CCA_ED_THRES1,
    CCA_ED_THRES2,
    CCA_ED_THRES3,
    CCA_CS_THRES0,
    CCA_CS_THRES1,
    CCA_CS_THRES2,
    CCA_CS_THRES3: TBitField;
  end;
var
  CCA_THRES: byte absolute $149;  // Transceiver CCA Threshold Setting Register
  CCA_THRESset: TCCA_THRESset absolute $149;
  CCA_THRESrec: TCCA_THRESrec absolute $149;
const
  CCA_ED_THRES0 = 0;  m_CCA_ED_THRES0 = 1;  // ED Threshold Level for CCA Measurement
  CCA_ED_THRES1 = 1;  m_CCA_ED_THRES1 = 2;  // ED Threshold Level for CCA Measurement
  CCA_ED_THRES2 = 2;  m_CCA_ED_THRES2 = 4;  // ED Threshold Level for CCA Measurement
  CCA_ED_THRES3 = 3;  m_CCA_ED_THRES3 = 8;  // ED Threshold Level for CCA Measurement
  CCA_CS_THRES0 = 4;  m_CCA_CS_THRES0 = 16;  // CS Threshold Level for CCA Measurement
  CCA_CS_THRES1 = 5;  m_CCA_CS_THRES1 = 32;  // CS Threshold Level for CCA Measurement
  CCA_CS_THRES2 = 6;  m_CCA_CS_THRES2 = 64;  // CS Threshold Level for CCA Measurement
  CCA_CS_THRES3 = 7;  m_CCA_CS_THRES3 = 128;  // CS Threshold Level for CCA Measurement

type
  TRX_CTRLset = bitpacked set of (e_PDT_THRES0, e_PDT_THRES1, e_PDT_THRES2, e_PDT_THRES3);
  TRX_CTRLrec = bitpacked record
    PDT_THRES0,
    PDT_THRES1,
    PDT_THRES2,
    PDT_THRES3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RX_CTRL: byte absolute $14A;  // Transceiver Receive Control Register
  RX_CTRLset: TRX_CTRLset absolute $14A;
  RX_CTRLrec: TRX_CTRLrec absolute $14A;
const
  PDT_THRES0 = 0;  m_PDT_THRES0 = 1;  // Receiver Sensitivity Control
  PDT_THRES1 = 1;  m_PDT_THRES1 = 2;  // Receiver Sensitivity Control
  PDT_THRES2 = 2;  m_PDT_THRES2 = 4;  // Receiver Sensitivity Control
  PDT_THRES3 = 3;  m_PDT_THRES3 = 8;  // Receiver Sensitivity Control

type
  TSFD_VALUEset = bitpacked set of (e_SFD_VALUE0, e_SFD_VALUE1, e_SFD_VALUE2, e_SFD_VALUE3, e_SFD_VALUE4, e_SFD_VALUE5, e_SFD_VALUE6, e_SFD_VALUE7);
  TSFD_VALUErec = bitpacked record
    SFD_VALUE0,
    SFD_VALUE1,
    SFD_VALUE2,
    SFD_VALUE3,
    SFD_VALUE4,
    SFD_VALUE5,
    SFD_VALUE6,
    SFD_VALUE7: TBitField;
  end;
var
  SFD_VALUE: byte absolute $14B;  // Start of Frame Delimiter Value Register
  SFD_VALUEset: TSFD_VALUEset absolute $14B;
  SFD_VALUErec: TSFD_VALUErec absolute $14B;
const
  SFD_VALUE0 = 0;  m_SFD_VALUE0 = 1;  // Start of Frame Delimiter Value
  SFD_VALUE1 = 1;  m_SFD_VALUE1 = 2;  // Start of Frame Delimiter Value
  SFD_VALUE2 = 2;  m_SFD_VALUE2 = 4;  // Start of Frame Delimiter Value
  SFD_VALUE3 = 3;  m_SFD_VALUE3 = 8;  // Start of Frame Delimiter Value
  SFD_VALUE4 = 4;  m_SFD_VALUE4 = 16;  // Start of Frame Delimiter Value
  SFD_VALUE5 = 5;  m_SFD_VALUE5 = 32;  // Start of Frame Delimiter Value
  SFD_VALUE6 = 6;  m_SFD_VALUE6 = 64;  // Start of Frame Delimiter Value
  SFD_VALUE7 = 7;  m_SFD_VALUE7 = 128;  // Start of Frame Delimiter Value

type
  TTRX_CTRL_2set = bitpacked set of (e_OQPSK_DATA_RATE0, e_OQPSK_DATA_RATE1, e_RX_SAFE_MODE=7);
  TTRX_CTRL_2rec = bitpacked record
    OQPSK_DATA_RATE0,
    OQPSK_DATA_RATE1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    RX_SAFE_MODE: TBitField;
  end;
var
  TRX_CTRL_2: byte absolute $14C;  // Transceiver Control Register 2
  TRX_CTRL_2set: TTRX_CTRL_2set absolute $14C;
  TRX_CTRL_2rec: TTRX_CTRL_2rec absolute $14C;
const
  OQPSK_DATA_RATE0 = 0;  m_OQPSK_DATA_RATE0 = 1;  // Data Rate Selection
  OQPSK_DATA_RATE1 = 1;  m_OQPSK_DATA_RATE1 = 2;  // Data Rate Selection
  RX_SAFE_MODE = 7;  m_RX_SAFE_MODE = 128;  // RX Safe Mode

type
  TANT_DIVset = bitpacked set of (e_ANT_CTRL0, e_ANT_CTRL1, e_ANT_EXT_SW_EN, e_ANT_DIV_EN, e_ANT_SEL=7);
  TANT_DIVrec = bitpacked record
    ANT_CTRL0,
    ANT_CTRL1,
    ANT_EXT_SW_EN,
    ANT_DIV_EN,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ANT_SEL: TBitField;
  end;
var
  ANT_DIV: byte absolute $14D;  // Antenna Diversity Control Register
  ANT_DIVset: TANT_DIVset absolute $14D;
  ANT_DIVrec: TANT_DIVrec absolute $14D;
const
  ANT_CTRL0 = 0;  m_ANT_CTRL0 = 1;  // Static Antenna Diversity Switch Control
  ANT_CTRL1 = 1;  m_ANT_CTRL1 = 2;  // Static Antenna Diversity Switch Control
  ANT_EXT_SW_EN = 2;  m_ANT_EXT_SW_EN = 4;  // Enable External Antenna Switch Control
  ANT_DIV_EN = 3;  m_ANT_DIV_EN = 8;  // Enable Antenna Diversity
  ANT_SEL = 7;  m_ANT_SEL = 128;  // Antenna Diversity Antenna Status

type
  TIRQ_MASKset = bitpacked set of (e_PLL_LOCK_EN, e_PLL_UNLOCK_EN, e_RX_START_EN, e_RX_END_EN, e_CCA_ED_DONE_EN, e_AMI_EN, e_TX_END_EN, e_AWAKE_EN);
  TIRQ_MASKrec = bitpacked record
    PLL_LOCK_EN,
    PLL_UNLOCK_EN,
    RX_START_EN,
    RX_END_EN,
    CCA_ED_DONE_EN,
    AMI_EN,
    TX_END_EN,
    AWAKE_EN: TBitField;
  end;
var
  IRQ_MASK: byte absolute $14E;  // Transceiver Interrupt Enable Register
  IRQ_MASKset: TIRQ_MASKset absolute $14E;
  IRQ_MASKrec: TIRQ_MASKrec absolute $14E;
const
  PLL_LOCK_EN = 0;  m_PLL_LOCK_EN = 1;  // PLL Lock Interrupt Enable
  PLL_UNLOCK_EN = 1;  m_PLL_UNLOCK_EN = 2;  // PLL Unlock Interrupt Enable
  RX_START_EN = 2;  m_RX_START_EN = 4;  // RX_START Interrupt Enable
  RX_END_EN = 3;  m_RX_END_EN = 8;  // RX_END Interrupt Enable
  CCA_ED_DONE_EN = 4;  m_CCA_ED_DONE_EN = 16;  // End of ED Measurement Interrupt Enable
  AMI_EN = 5;  m_AMI_EN = 32;  // Address Match Interrupt Enable
  TX_END_EN = 6;  m_TX_END_EN = 64;  // TX_END Interrupt Enable
  AWAKE_EN = 7;  m_AWAKE_EN = 128;  // Awake Interrupt Enable

type
  TIRQ_STATUSset = bitpacked set of (e_PLL_LOCK, e_PLL_UNLOCK, e_RX_START, e_RX_END, e_CCA_ED_DONE, e_AMI, e_TX_END, e_AWAKE);
  TIRQ_STATUSrec = bitpacked record
    PLL_LOCK,
    PLL_UNLOCK,
    RX_START,
    RX_END,
    CCA_ED_DONE,
    AMI,
    TX_END,
    AWAKE: TBitField;
  end;
var
  IRQ_STATUS: byte absolute $14F;  // Transceiver Interrupt Status Register
  IRQ_STATUSset: TIRQ_STATUSset absolute $14F;
  IRQ_STATUSrec: TIRQ_STATUSrec absolute $14F;
const
  PLL_LOCK = 0;  m_PLL_LOCK = 1;  // PLL Lock Interrupt Status
  PLL_UNLOCK = 1;  m_PLL_UNLOCK = 2;  // PLL Unlock Interrupt Status
  RX_START = 2;  m_RX_START = 4;  // RX_START Interrupt Status
  RX_END = 3;  m_RX_END = 8;  // RX_END Interrupt Status
  CCA_ED_DONE = 4;  m_CCA_ED_DONE = 16;  // End of ED Measurement Interrupt Status
  AMI = 5;  m_AMI = 32;  // Address Match Interrupt Status
  TX_END = 6;  m_TX_END = 64;  // TX_END Interrupt Status
  AWAKE = 7;  m_AWAKE = 128;  // Awake Interrupt Status

type
  TVREG_CTRLset = bitpacked set of (e_DVDD_OK=2, e_DVREG_EXT, e_AVDD_OK=6, e_AVREG_EXT);
  TVREG_CTRLrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    DVDD_OK,
    DVREG_EXT,
    ReservedBit4,
    ReservedBit5,
    AVDD_OK,
    AVREG_EXT: TBitField;
  end;
var
  VREG_CTRL: byte absolute $150;  // Voltage Regulator Control and Status Register
  VREG_CTRLset: TVREG_CTRLset absolute $150;
  VREG_CTRLrec: TVREG_CTRLrec absolute $150;
const
  DVDD_OK = 2;  m_DVDD_OK = 4;  // DVDD Supply Voltage Valid
  DVREG_EXT = 3;  m_DVREG_EXT = 8;  // Use External DVDD Regulator
  AVDD_OK = 6;  m_AVDD_OK = 64;  // AVDD Supply Voltage Valid
  AVREG_EXT = 7;  m_AVREG_EXT = 128;  // Use External AVDD Regulator

type
  TBATMONset = bitpacked set of (e_BATMON_VTH0, e_BATMON_VTH1, e_BATMON_VTH2, e_BATMON_VTH3, e_BATMON_HR, e_BATMON_OK, e_BAT_LOW_EN, e_BAT_LOW);
  TBATMONrec = bitpacked record
    BATMON_VTH0,
    BATMON_VTH1,
    BATMON_VTH2,
    BATMON_VTH3,
    BATMON_HR,
    BATMON_OK,
    BAT_LOW_EN,
    BAT_LOW: TBitField;
  end;
var
  BATMON: byte absolute $151;  // Battery Monitor Control and Status Register
  BATMONset: TBATMONset absolute $151;
  BATMONrec: TBATMONrec absolute $151;
const
  BATMON_VTH0 = 0;  m_BATMON_VTH0 = 1;  // Battery Monitor Threshold Voltage
  BATMON_VTH1 = 1;  m_BATMON_VTH1 = 2;  // Battery Monitor Threshold Voltage
  BATMON_VTH2 = 2;  m_BATMON_VTH2 = 4;  // Battery Monitor Threshold Voltage
  BATMON_VTH3 = 3;  m_BATMON_VTH3 = 8;  // Battery Monitor Threshold Voltage
  BATMON_HR = 4;  m_BATMON_HR = 16;  // Battery Monitor Voltage Range
  BATMON_OK = 5;  m_BATMON_OK = 32;  // Battery Monitor Status
  BAT_LOW_EN = 6;  m_BAT_LOW_EN = 64;  // Battery Monitor Interrupt Enable
  BAT_LOW = 7;  m_BAT_LOW = 128;  // Battery Monitor Interrupt Status

type
  TXOSC_CTRLset = bitpacked set of (e_XTAL_TRIM0, e_XTAL_TRIM1, e_XTAL_TRIM2, e_XTAL_TRIM3, e_XTAL_MODE0, e_XTAL_MODE1, e_XTAL_MODE2, e_XTAL_MODE3);
  TXOSC_CTRLrec = bitpacked record
    XTAL_TRIM0,
    XTAL_TRIM1,
    XTAL_TRIM2,
    XTAL_TRIM3,
    XTAL_MODE0,
    XTAL_MODE1,
    XTAL_MODE2,
    XTAL_MODE3: TBitField;
  end;
var
  XOSC_CTRL: byte absolute $152;  // Crystal Oscillator Control Register
  XOSC_CTRLset: TXOSC_CTRLset absolute $152;
  XOSC_CTRLrec: TXOSC_CTRLrec absolute $152;
const
  XTAL_TRIM0 = 0;  m_XTAL_TRIM0 = 1;  // Crystal Oscillator Load Capacitance Trimming
  XTAL_TRIM1 = 1;  m_XTAL_TRIM1 = 2;  // Crystal Oscillator Load Capacitance Trimming
  XTAL_TRIM2 = 2;  m_XTAL_TRIM2 = 4;  // Crystal Oscillator Load Capacitance Trimming
  XTAL_TRIM3 = 3;  m_XTAL_TRIM3 = 8;  // Crystal Oscillator Load Capacitance Trimming
  XTAL_MODE0 = 4;  m_XTAL_MODE0 = 16;  // Crystal Oscillator Operating Mode
  XTAL_MODE1 = 5;  m_XTAL_MODE1 = 32;  // Crystal Oscillator Operating Mode
  XTAL_MODE2 = 6;  m_XTAL_MODE2 = 64;  // Crystal Oscillator Operating Mode
  XTAL_MODE3 = 7;  m_XTAL_MODE3 = 128;  // Crystal Oscillator Operating Mode

type
  TCC_CTRL_0set = bitpacked set of (e_CC_NUMBER0, e_CC_NUMBER1, e_CC_NUMBER2, e_CC_NUMBER3, e_CC_NUMBER4, e_CC_NUMBER5, e_CC_NUMBER6, e_CC_NUMBER7);
  TCC_CTRL_0rec = bitpacked record
    CC_NUMBER0,
    CC_NUMBER1,
    CC_NUMBER2,
    CC_NUMBER3,
    CC_NUMBER4,
    CC_NUMBER5,
    CC_NUMBER6,
    CC_NUMBER7: TBitField;
  end;
var
  CC_CTRL_0: byte absolute $153;  // Channel Control Register 0
  CC_CTRL_0set: TCC_CTRL_0set absolute $153;
  CC_CTRL_0rec: TCC_CTRL_0rec absolute $153;
const
  CC_NUMBER0 = 0;  m_CC_NUMBER0 = 1;  // Channel Number
  CC_NUMBER1 = 1;  m_CC_NUMBER1 = 2;  // Channel Number
  CC_NUMBER2 = 2;  m_CC_NUMBER2 = 4;  // Channel Number
  CC_NUMBER3 = 3;  m_CC_NUMBER3 = 8;  // Channel Number
  CC_NUMBER4 = 4;  m_CC_NUMBER4 = 16;  // Channel Number
  CC_NUMBER5 = 5;  m_CC_NUMBER5 = 32;  // Channel Number
  CC_NUMBER6 = 6;  m_CC_NUMBER6 = 64;  // Channel Number
  CC_NUMBER7 = 7;  m_CC_NUMBER7 = 128;  // Channel Number

type
  TCC_CTRL_1set = bitpacked set of (e_CC_BAND0, e_CC_BAND1, e_CC_BAND2, e_CC_BAND3);
  TCC_CTRL_1rec = bitpacked record
    CC_BAND0,
    CC_BAND1,
    CC_BAND2,
    CC_BAND3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CC_CTRL_1: byte absolute $154;  // Channel Control Register 1
  CC_CTRL_1set: TCC_CTRL_1set absolute $154;
  CC_CTRL_1rec: TCC_CTRL_1rec absolute $154;
const
  CC_BAND0 = 0;  m_CC_BAND0 = 1;  // Channel Band
  CC_BAND1 = 1;  m_CC_BAND1 = 2;  // Channel Band
  CC_BAND2 = 2;  m_CC_BAND2 = 4;  // Channel Band
  CC_BAND3 = 3;  m_CC_BAND3 = 8;  // Channel Band

type
  TRX_SYNset = bitpacked set of (e_RX_PDT_LEVEL0, e_RX_PDT_LEVEL1, e_RX_PDT_LEVEL2, e_RX_PDT_LEVEL3, e_RX_OVERRIDE=6, e_RX_PDT_DIS);
  TRX_SYNrec = bitpacked record
    RX_PDT_LEVEL0,
    RX_PDT_LEVEL1,
    RX_PDT_LEVEL2,
    RX_PDT_LEVEL3,
    ReservedBit4,
    ReservedBit5,
    RX_OVERRIDE,
    RX_PDT_DIS: TBitField;
  end;
var
  RX_SYN: byte absolute $155;  // Transceiver Receiver Sensitivity Control Register
  RX_SYNset: TRX_SYNset absolute $155;
  RX_SYNrec: TRX_SYNrec absolute $155;
const
  RX_PDT_LEVEL0 = 0;  m_RX_PDT_LEVEL0 = 1;  // Reduce Receiver Sensitivity
  RX_PDT_LEVEL1 = 1;  m_RX_PDT_LEVEL1 = 2;  // Reduce Receiver Sensitivity
  RX_PDT_LEVEL2 = 2;  m_RX_PDT_LEVEL2 = 4;  // Reduce Receiver Sensitivity
  RX_PDT_LEVEL3 = 3;  m_RX_PDT_LEVEL3 = 8;  // Reduce Receiver Sensitivity
  RX_OVERRIDE = 6;  m_RX_OVERRIDE = 64;  // Receiver Override Function
  RX_PDT_DIS = 7;  m_RX_PDT_DIS = 128;  // Prevent Frame Reception

type
  TTRX_RPCset = bitpacked set of (e_XAH_RPC_EN, e_IPAN_RPC_EN, e_Res0, e_PLL_RPC_EN, e_PDT_RPC_EN, e_RX_RPC_EN, e_RX_RPC_CTRL0, e_RX_RPC_CTRL1);
  TTRX_RPCrec = bitpacked record
    XAH_RPC_EN,
    IPAN_RPC_EN,
    Res0,
    PLL_RPC_EN,
    PDT_RPC_EN,
    RX_RPC_EN,
    RX_RPC_CTRL0,
    RX_RPC_CTRL1: TBitField;
  end;
var
  TRX_RPC: byte absolute $156;  // Transceiver Reduced Power Consumption Control
  TRX_RPCset: TTRX_RPCset absolute $156;
  TRX_RPCrec: TTRX_RPCrec absolute $156;
const
  XAH_RPC_EN = 0;  m_XAH_RPC_EN = 1;  // Smart Receiving in Extended Operating Modes Enable
  IPAN_RPC_EN = 1;  m_IPAN_RPC_EN = 2;  // Smart Receiving Mode IPAN Handling Enable
  Res0 = 2;  m_Res0 = 4;  // Reserved
  PLL_RPC_EN = 3;  m_PLL_RPC_EN = 8;  // PLL Smart Receiving Mode Enable
  PDT_RPC_EN = 4;  m_PDT_RPC_EN = 16;  // Smart Receiving Mode Reduced Sensitivity Enable
  RX_RPC_EN = 5;  m_RX_RPC_EN = 32;  // Reciver Smart Receiving Mode Enable
  RX_RPC_CTRL0 = 6;  m_RX_RPC_CTRL0 = 64;  // Smart Receiving Mode Timing
  RX_RPC_CTRL1 = 7;  m_RX_RPC_CTRL1 = 128;  // Smart Receiving Mode Timing

type
  TXAH_CTRL_1set = bitpacked set of (e_AACK_PROM_MODE=1, e_AACK_ACK_TIME, e_AACK_UPLD_RES_FT=4, e_AACK_FLTR_RES_FT);
  TXAH_CTRL_1rec = bitpacked record
    ReservedBit0,
    AACK_PROM_MODE,
    AACK_ACK_TIME,
    ReservedBit3,
    AACK_UPLD_RES_FT,
    AACK_FLTR_RES_FT,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  XAH_CTRL_1: byte absolute $157;  // Transceiver Acknowledgment Frame Control Register 1
  XAH_CTRL_1set: TXAH_CTRL_1set absolute $157;
  XAH_CTRL_1rec: TXAH_CTRL_1rec absolute $157;
const
  AACK_PROM_MODE = 1;  m_AACK_PROM_MODE = 2;  // Enable Promiscuous Mode
  AACK_ACK_TIME = 2;  m_AACK_ACK_TIME = 4;  // Reduce Acknowledgment Time
  AACK_UPLD_RES_FT = 4;  m_AACK_UPLD_RES_FT = 16;  // Process Reserved Frames
  AACK_FLTR_RES_FT = 5;  m_AACK_FLTR_RES_FT = 32;  // Filter Reserved Frames

type
  TFTN_CTRLset = bitpacked set of (e_FTN_START=7);
  TFTN_CTRLrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    FTN_START: TBitField;
  end;
var
  FTN_CTRL: byte absolute $158;  // Transceiver Filter Tuning Control Register
  FTN_CTRLset: TFTN_CTRLset absolute $158;
  FTN_CTRLrec: TFTN_CTRLrec absolute $158;
const
  FTN_START = 7;  m_FTN_START = 128;  // Start Calibration Loop of Filter Tuning Network

type
  TPLL_CFset = bitpacked set of (e_PLL_CF_START=7);
  TPLL_CFrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    PLL_CF_START: TBitField;
  end;
var
  PLL_CF: byte absolute $15A;  // Transceiver Center Frequency Calibration Control Register
  PLL_CFset: TPLL_CFset absolute $15A;
  PLL_CFrec: TPLL_CFrec absolute $15A;
const
  PLL_CF_START = 7;  m_PLL_CF_START = 128;  // Start Center Frequency Calibration

type
  TPLL_DCUset = bitpacked set of (e_PLL_DCU_START=7);
  TPLL_DCUrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    PLL_DCU_START: TBitField;
  end;
var
  PLL_DCU: byte absolute $15B;  // Transceiver Delay Cell Calibration Control Register
  PLL_DCUset: TPLL_DCUset absolute $15B;
  PLL_DCUrec: TPLL_DCUrec absolute $15B;
const
  PLL_DCU_START = 7;  m_PLL_DCU_START = 128;  // Start Delay Cell Calibration

type
  TPART_NUMset = bitpacked set of (e_PART_NUM0, e_PART_NUM1, e_PART_NUM2, e_PART_NUM3, e_PART_NUM4, e_PART_NUM5, e_PART_NUM6, e_PART_NUM7);
  TPART_NUMrec = bitpacked record
    PART_NUM0,
    PART_NUM1,
    PART_NUM2,
    PART_NUM3,
    PART_NUM4,
    PART_NUM5,
    PART_NUM6,
    PART_NUM7: TBitField;
  end;
var
  PART_NUM: byte absolute $15C;  // Device Identification Register (Part Number)
  PART_NUMset: TPART_NUMset absolute $15C;
  PART_NUMrec: TPART_NUMrec absolute $15C;
const
  PART_NUM0 = 0;  m_PART_NUM0 = 1;  // Part Number
  PART_NUM1 = 1;  m_PART_NUM1 = 2;  // Part Number
  PART_NUM2 = 2;  m_PART_NUM2 = 4;  // Part Number
  PART_NUM3 = 3;  m_PART_NUM3 = 8;  // Part Number
  PART_NUM4 = 4;  m_PART_NUM4 = 16;  // Part Number
  PART_NUM5 = 5;  m_PART_NUM5 = 32;  // Part Number
  PART_NUM6 = 6;  m_PART_NUM6 = 64;  // Part Number
  PART_NUM7 = 7;  m_PART_NUM7 = 128;  // Part Number

type
  TVERSION_NUMset = bitpacked set of (e_VERSION_NUM0, e_VERSION_NUM1, e_VERSION_NUM2, e_VERSION_NUM3, e_VERSION_NUM4, e_VERSION_NUM5, e_VERSION_NUM6, e_VERSION_NUM7);
  TVERSION_NUMrec = bitpacked record
    VERSION_NUM0,
    VERSION_NUM1,
    VERSION_NUM2,
    VERSION_NUM3,
    VERSION_NUM4,
    VERSION_NUM5,
    VERSION_NUM6,
    VERSION_NUM7: TBitField;
  end;
var
  VERSION_NUM: byte absolute $15D;  // Device Identification Register (Version Number)
  VERSION_NUMset: TVERSION_NUMset absolute $15D;
  VERSION_NUMrec: TVERSION_NUMrec absolute $15D;
const
  VERSION_NUM0 = 0;  m_VERSION_NUM0 = 1;  // Version Number
  VERSION_NUM1 = 1;  m_VERSION_NUM1 = 2;  // Version Number
  VERSION_NUM2 = 2;  m_VERSION_NUM2 = 4;  // Version Number
  VERSION_NUM3 = 3;  m_VERSION_NUM3 = 8;  // Version Number
  VERSION_NUM4 = 4;  m_VERSION_NUM4 = 16;  // Version Number
  VERSION_NUM5 = 5;  m_VERSION_NUM5 = 32;  // Version Number
  VERSION_NUM6 = 6;  m_VERSION_NUM6 = 64;  // Version Number
  VERSION_NUM7 = 7;  m_VERSION_NUM7 = 128;  // Version Number

type
  TMAN_ID_0set = bitpacked set of (e_MAN_ID_00, e_MAN_ID_01, e_MAN_ID_02, e_MAN_ID_03, e_MAN_ID_04, e_MAN_ID_05, e_MAN_ID_06, e_MAN_ID_07);
  TMAN_ID_0rec = bitpacked record
    MAN_ID_00,
    MAN_ID_01,
    MAN_ID_02,
    MAN_ID_03,
    MAN_ID_04,
    MAN_ID_05,
    MAN_ID_06,
    MAN_ID_07: TBitField;
  end;
var
  MAN_ID_0: byte absolute $15E;  // Device Identification Register (Manufacture ID Low Byte)
  MAN_ID_0set: TMAN_ID_0set absolute $15E;
  MAN_ID_0rec: TMAN_ID_0rec absolute $15E;
const
  MAN_ID_00 = 0;  m_MAN_ID_00 = 1;  // Manufacturer ID (Low Byte)
  MAN_ID_01 = 1;  m_MAN_ID_01 = 2;  // Manufacturer ID (Low Byte)
  MAN_ID_02 = 2;  m_MAN_ID_02 = 4;  // Manufacturer ID (Low Byte)
  MAN_ID_03 = 3;  m_MAN_ID_03 = 8;  // Manufacturer ID (Low Byte)
  MAN_ID_04 = 4;  m_MAN_ID_04 = 16;  // Manufacturer ID (Low Byte)
  MAN_ID_05 = 5;  m_MAN_ID_05 = 32;  // Manufacturer ID (Low Byte)
  MAN_ID_06 = 6;  m_MAN_ID_06 = 64;  // Manufacturer ID (Low Byte)
  MAN_ID_07 = 7;  m_MAN_ID_07 = 128;  // Manufacturer ID (Low Byte)

type
  TMAN_ID_1set = bitpacked set of (e_MAN_ID_10, e_MAN_ID_11, e_MAN_ID_12, e_MAN_ID_13, e_MAN_ID_14, e_MAN_ID_15, e_MAN_ID_16, e_MAN_ID_17);
  TMAN_ID_1rec = bitpacked record
    MAN_ID_10,
    MAN_ID_11,
    MAN_ID_12,
    MAN_ID_13,
    MAN_ID_14,
    MAN_ID_15,
    MAN_ID_16,
    MAN_ID_17: TBitField;
  end;
var
  MAN_ID_1: byte absolute $15F;  // Device Identification Register (Manufacture ID High Byte)
  MAN_ID_1set: TMAN_ID_1set absolute $15F;
  MAN_ID_1rec: TMAN_ID_1rec absolute $15F;
const
  MAN_ID_10 = 0;  m_MAN_ID_10 = 1;  // Manufacturer ID (High Byte)
  MAN_ID_11 = 1;  m_MAN_ID_11 = 2;  // Manufacturer ID (High Byte)
  MAN_ID_12 = 2;  m_MAN_ID_12 = 4;  // Manufacturer ID (High Byte)
  MAN_ID_13 = 3;  m_MAN_ID_13 = 8;  // Manufacturer ID (High Byte)
  MAN_ID_14 = 4;  m_MAN_ID_14 = 16;  // Manufacturer ID (High Byte)
  MAN_ID_15 = 5;  m_MAN_ID_15 = 32;  // Manufacturer ID (High Byte)
  MAN_ID_16 = 6;  m_MAN_ID_16 = 64;  // Manufacturer ID (High Byte)
  MAN_ID_17 = 7;  m_MAN_ID_17 = 128;  // Manufacturer ID (High Byte)

type
  TSHORT_ADDR_0set = bitpacked set of (e_SHORT_ADDR_00, e_SHORT_ADDR_01, e_SHORT_ADDR_02, e_SHORT_ADDR_03, e_SHORT_ADDR_04, e_SHORT_ADDR_05, e_SHORT_ADDR_06, e_SHORT_ADDR_07);
  TSHORT_ADDR_0rec = bitpacked record
    SHORT_ADDR_00,
    SHORT_ADDR_01,
    SHORT_ADDR_02,
    SHORT_ADDR_03,
    SHORT_ADDR_04,
    SHORT_ADDR_05,
    SHORT_ADDR_06,
    SHORT_ADDR_07: TBitField;
  end;
var
  SHORT_ADDR_0: byte absolute $160;  // Transceiver MAC Short Address Register (Low Byte)
  SHORT_ADDR_0set: TSHORT_ADDR_0set absolute $160;
  SHORT_ADDR_0rec: TSHORT_ADDR_0rec absolute $160;
const
  SHORT_ADDR_00 = 0;  m_SHORT_ADDR_00 = 1;  // MAC Short Address
  SHORT_ADDR_01 = 1;  m_SHORT_ADDR_01 = 2;  // MAC Short Address
  SHORT_ADDR_02 = 2;  m_SHORT_ADDR_02 = 4;  // MAC Short Address
  SHORT_ADDR_03 = 3;  m_SHORT_ADDR_03 = 8;  // MAC Short Address
  SHORT_ADDR_04 = 4;  m_SHORT_ADDR_04 = 16;  // MAC Short Address
  SHORT_ADDR_05 = 5;  m_SHORT_ADDR_05 = 32;  // MAC Short Address
  SHORT_ADDR_06 = 6;  m_SHORT_ADDR_06 = 64;  // MAC Short Address
  SHORT_ADDR_07 = 7;  m_SHORT_ADDR_07 = 128;  // MAC Short Address

type
  TSHORT_ADDR_1set = bitpacked set of (e_SHORT_ADDR_10, e_SHORT_ADDR_11, e_SHORT_ADDR_12, e_SHORT_ADDR_13, e_SHORT_ADDR_14, e_SHORT_ADDR_15, e_SHORT_ADDR_16, e_SHORT_ADDR_17);
  TSHORT_ADDR_1rec = bitpacked record
    SHORT_ADDR_10,
    SHORT_ADDR_11,
    SHORT_ADDR_12,
    SHORT_ADDR_13,
    SHORT_ADDR_14,
    SHORT_ADDR_15,
    SHORT_ADDR_16,
    SHORT_ADDR_17: TBitField;
  end;
var
  SHORT_ADDR_1: byte absolute $161;  // Transceiver MAC Short Address Register (High Byte)
  SHORT_ADDR_1set: TSHORT_ADDR_1set absolute $161;
  SHORT_ADDR_1rec: TSHORT_ADDR_1rec absolute $161;
const
  SHORT_ADDR_10 = 0;  m_SHORT_ADDR_10 = 1;  // MAC Short Address
  SHORT_ADDR_11 = 1;  m_SHORT_ADDR_11 = 2;  // MAC Short Address
  SHORT_ADDR_12 = 2;  m_SHORT_ADDR_12 = 4;  // MAC Short Address
  SHORT_ADDR_13 = 3;  m_SHORT_ADDR_13 = 8;  // MAC Short Address
  SHORT_ADDR_14 = 4;  m_SHORT_ADDR_14 = 16;  // MAC Short Address
  SHORT_ADDR_15 = 5;  m_SHORT_ADDR_15 = 32;  // MAC Short Address
  SHORT_ADDR_16 = 6;  m_SHORT_ADDR_16 = 64;  // MAC Short Address
  SHORT_ADDR_17 = 7;  m_SHORT_ADDR_17 = 128;  // MAC Short Address

type
  TPAN_ID_0set = bitpacked set of (e_PAN_ID_00, e_PAN_ID_01, e_PAN_ID_02, e_PAN_ID_03, e_PAN_ID_04, e_PAN_ID_05, e_PAN_ID_06, e_PAN_ID_07);
  TPAN_ID_0rec = bitpacked record
    PAN_ID_00,
    PAN_ID_01,
    PAN_ID_02,
    PAN_ID_03,
    PAN_ID_04,
    PAN_ID_05,
    PAN_ID_06,
    PAN_ID_07: TBitField;
  end;
var
  PAN_ID_0: byte absolute $162;  // Transceiver Personal Area Network ID Register (Low Byte)
  PAN_ID_0set: TPAN_ID_0set absolute $162;
  PAN_ID_0rec: TPAN_ID_0rec absolute $162;
const
  PAN_ID_00 = 0;  m_PAN_ID_00 = 1;  // MAC Personal Area Network ID
  PAN_ID_01 = 1;  m_PAN_ID_01 = 2;  // MAC Personal Area Network ID
  PAN_ID_02 = 2;  m_PAN_ID_02 = 4;  // MAC Personal Area Network ID
  PAN_ID_03 = 3;  m_PAN_ID_03 = 8;  // MAC Personal Area Network ID
  PAN_ID_04 = 4;  m_PAN_ID_04 = 16;  // MAC Personal Area Network ID
  PAN_ID_05 = 5;  m_PAN_ID_05 = 32;  // MAC Personal Area Network ID
  PAN_ID_06 = 6;  m_PAN_ID_06 = 64;  // MAC Personal Area Network ID
  PAN_ID_07 = 7;  m_PAN_ID_07 = 128;  // MAC Personal Area Network ID

type
  TPAN_ID_1set = bitpacked set of (e_PAN_ID_10, e_PAN_ID_11, e_PAN_ID_12, e_PAN_ID_13, e_PAN_ID_14, e_PAN_ID_15, e_PAN_ID_16, e_PAN_ID_17);
  TPAN_ID_1rec = bitpacked record
    PAN_ID_10,
    PAN_ID_11,
    PAN_ID_12,
    PAN_ID_13,
    PAN_ID_14,
    PAN_ID_15,
    PAN_ID_16,
    PAN_ID_17: TBitField;
  end;
var
  PAN_ID_1: byte absolute $163;  // Transceiver Personal Area Network ID Register (High Byte)
  PAN_ID_1set: TPAN_ID_1set absolute $163;
  PAN_ID_1rec: TPAN_ID_1rec absolute $163;
const
  PAN_ID_10 = 0;  m_PAN_ID_10 = 1;  // MAC Personal Area Network ID
  PAN_ID_11 = 1;  m_PAN_ID_11 = 2;  // MAC Personal Area Network ID
  PAN_ID_12 = 2;  m_PAN_ID_12 = 4;  // MAC Personal Area Network ID
  PAN_ID_13 = 3;  m_PAN_ID_13 = 8;  // MAC Personal Area Network ID
  PAN_ID_14 = 4;  m_PAN_ID_14 = 16;  // MAC Personal Area Network ID
  PAN_ID_15 = 5;  m_PAN_ID_15 = 32;  // MAC Personal Area Network ID
  PAN_ID_16 = 6;  m_PAN_ID_16 = 64;  // MAC Personal Area Network ID
  PAN_ID_17 = 7;  m_PAN_ID_17 = 128;  // MAC Personal Area Network ID

type
  TIEEE_ADDR_0set = bitpacked set of (e_IEEE_ADDR_00, e_IEEE_ADDR_01, e_IEEE_ADDR_02, e_IEEE_ADDR_03, e_IEEE_ADDR_04, e_IEEE_ADDR_05, e_IEEE_ADDR_06, e_IEEE_ADDR_07);
  TIEEE_ADDR_0rec = bitpacked record
    IEEE_ADDR_00,
    IEEE_ADDR_01,
    IEEE_ADDR_02,
    IEEE_ADDR_03,
    IEEE_ADDR_04,
    IEEE_ADDR_05,
    IEEE_ADDR_06,
    IEEE_ADDR_07: TBitField;
  end;
var
  IEEE_ADDR_0: byte absolute $164;  // Transceiver MAC IEEE Address Register 0
  IEEE_ADDR_0set: TIEEE_ADDR_0set absolute $164;
  IEEE_ADDR_0rec: TIEEE_ADDR_0rec absolute $164;
const
  IEEE_ADDR_00 = 0;  m_IEEE_ADDR_00 = 1;  // MAC IEEE Address
  IEEE_ADDR_01 = 1;  m_IEEE_ADDR_01 = 2;  // MAC IEEE Address
  IEEE_ADDR_02 = 2;  m_IEEE_ADDR_02 = 4;  // MAC IEEE Address
  IEEE_ADDR_03 = 3;  m_IEEE_ADDR_03 = 8;  // MAC IEEE Address
  IEEE_ADDR_04 = 4;  m_IEEE_ADDR_04 = 16;  // MAC IEEE Address
  IEEE_ADDR_05 = 5;  m_IEEE_ADDR_05 = 32;  // MAC IEEE Address
  IEEE_ADDR_06 = 6;  m_IEEE_ADDR_06 = 64;  // MAC IEEE Address
  IEEE_ADDR_07 = 7;  m_IEEE_ADDR_07 = 128;  // MAC IEEE Address

type
  TIEEE_ADDR_1set = bitpacked set of (e_IEEE_ADDR_10, e_IEEE_ADDR_11, e_IEEE_ADDR_12, e_IEEE_ADDR_13, e_IEEE_ADDR_14, e_IEEE_ADDR_15, e_IEEE_ADDR_16, e_IEEE_ADDR_17);
  TIEEE_ADDR_1rec = bitpacked record
    IEEE_ADDR_10,
    IEEE_ADDR_11,
    IEEE_ADDR_12,
    IEEE_ADDR_13,
    IEEE_ADDR_14,
    IEEE_ADDR_15,
    IEEE_ADDR_16,
    IEEE_ADDR_17: TBitField;
  end;
var
  IEEE_ADDR_1: byte absolute $165;  // Transceiver MAC IEEE Address Register 1
  IEEE_ADDR_1set: TIEEE_ADDR_1set absolute $165;
  IEEE_ADDR_1rec: TIEEE_ADDR_1rec absolute $165;
const
  IEEE_ADDR_10 = 0;  m_IEEE_ADDR_10 = 1;  // MAC IEEE Address
  IEEE_ADDR_11 = 1;  m_IEEE_ADDR_11 = 2;  // MAC IEEE Address
  IEEE_ADDR_12 = 2;  m_IEEE_ADDR_12 = 4;  // MAC IEEE Address
  IEEE_ADDR_13 = 3;  m_IEEE_ADDR_13 = 8;  // MAC IEEE Address
  IEEE_ADDR_14 = 4;  m_IEEE_ADDR_14 = 16;  // MAC IEEE Address
  IEEE_ADDR_15 = 5;  m_IEEE_ADDR_15 = 32;  // MAC IEEE Address
  IEEE_ADDR_16 = 6;  m_IEEE_ADDR_16 = 64;  // MAC IEEE Address
  IEEE_ADDR_17 = 7;  m_IEEE_ADDR_17 = 128;  // MAC IEEE Address

var
  IEEE_ADDR_2: byte absolute $166;  // Transceiver MAC IEEE Address Register 2
  IEEE_ADDR_3: byte absolute $167;  // Transceiver MAC IEEE Address Register 3
  IEEE_ADDR_4: byte absolute $168;  // Transceiver MAC IEEE Address Register 4
  IEEE_ADDR_5: byte absolute $169;  // Transceiver MAC IEEE Address Register 5
  IEEE_ADDR_6: byte absolute $16A;  // Transceiver MAC IEEE Address Register 6
  IEEE_ADDR_7: byte absolute $16B;  // Transceiver MAC IEEE Address Register 7

type
  TXAH_CTRL_0set = bitpacked set of (e_SLOTTED_OPERATION, e_MAX_CSMA_RETRIES0, e_MAX_CSMA_RETRIES1, e_MAX_CSMA_RETRIES2, e_MAX_FRAME_RETRIES0, e_MAX_FRAME_RETRIES1, e_MAX_FRAME_RETRIES2, e_MAX_FRAME_RETRIES3);
  TXAH_CTRL_0rec = bitpacked record
    SLOTTED_OPERATION,
    MAX_CSMA_RETRIES0,
    MAX_CSMA_RETRIES1,
    MAX_CSMA_RETRIES2,
    MAX_FRAME_RETRIES0,
    MAX_FRAME_RETRIES1,
    MAX_FRAME_RETRIES2,
    MAX_FRAME_RETRIES3: TBitField;
  end;
var
  XAH_CTRL_0: byte absolute $16C;  // Transceiver Extended Operating Mode Control Register
  XAH_CTRL_0set: TXAH_CTRL_0set absolute $16C;
  XAH_CTRL_0rec: TXAH_CTRL_0rec absolute $16C;
const
  SLOTTED_OPERATION = 0;  m_SLOTTED_OPERATION = 1;  // Set Slotted Acknowledgment
  MAX_CSMA_RETRIES0 = 1;  m_MAX_CSMA_RETRIES0 = 2;  // Maximum Number of CSMA-CA Procedure Repetition Attempts
  MAX_CSMA_RETRIES1 = 2;  m_MAX_CSMA_RETRIES1 = 4;  // Maximum Number of CSMA-CA Procedure Repetition Attempts
  MAX_CSMA_RETRIES2 = 3;  m_MAX_CSMA_RETRIES2 = 8;  // Maximum Number of CSMA-CA Procedure Repetition Attempts
  MAX_FRAME_RETRIES0 = 4;  m_MAX_FRAME_RETRIES0 = 16;  // Maximum Number of Frame Re-transmission Attempts
  MAX_FRAME_RETRIES1 = 5;  m_MAX_FRAME_RETRIES1 = 32;  // Maximum Number of Frame Re-transmission Attempts
  MAX_FRAME_RETRIES2 = 6;  m_MAX_FRAME_RETRIES2 = 64;  // Maximum Number of Frame Re-transmission Attempts
  MAX_FRAME_RETRIES3 = 7;  m_MAX_FRAME_RETRIES3 = 128;  // Maximum Number of Frame Re-transmission Attempts

type
  TCSMA_SEED_0set = bitpacked set of (e_CSMA_SEED_00, e_CSMA_SEED_01, e_CSMA_SEED_02, e_CSMA_SEED_03, e_CSMA_SEED_04, e_CSMA_SEED_05, e_CSMA_SEED_06, e_CSMA_SEED_07);
  TCSMA_SEED_0rec = bitpacked record
    CSMA_SEED_00,
    CSMA_SEED_01,
    CSMA_SEED_02,
    CSMA_SEED_03,
    CSMA_SEED_04,
    CSMA_SEED_05,
    CSMA_SEED_06,
    CSMA_SEED_07: TBitField;
  end;
var
  CSMA_SEED_0: byte absolute $16D;  // Transceiver CSMA-CA Random Number Generator Seed Register
  CSMA_SEED_0set: TCSMA_SEED_0set absolute $16D;
  CSMA_SEED_0rec: TCSMA_SEED_0rec absolute $16D;
const
  CSMA_SEED_00 = 0;  m_CSMA_SEED_00 = 1;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_01 = 1;  m_CSMA_SEED_01 = 2;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_02 = 2;  m_CSMA_SEED_02 = 4;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_03 = 3;  m_CSMA_SEED_03 = 8;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_04 = 4;  m_CSMA_SEED_04 = 16;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_05 = 5;  m_CSMA_SEED_05 = 32;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_06 = 6;  m_CSMA_SEED_06 = 64;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_07 = 7;  m_CSMA_SEED_07 = 128;  // Seed Value for CSMA Random Number Generator

type
  TCSMA_SEED_1set = bitpacked set of (e_CSMA_SEED_10, e_CSMA_SEED_11, e_CSMA_SEED_12, e_AACK_I_AM_COORD, e_AACK_DIS_ACK, e_AACK_SET_PD, e_AACK_FVN_MODE0, e_AACK_FVN_MODE1);
  TCSMA_SEED_1rec = bitpacked record
    CSMA_SEED_10,
    CSMA_SEED_11,
    CSMA_SEED_12,
    AACK_I_AM_COORD,
    AACK_DIS_ACK,
    AACK_SET_PD,
    AACK_FVN_MODE0,
    AACK_FVN_MODE1: TBitField;
  end;
var
  CSMA_SEED_1: byte absolute $16E;  // Transceiver Acknowledgment Frame Control Register 2
  CSMA_SEED_1set: TCSMA_SEED_1set absolute $16E;
  CSMA_SEED_1rec: TCSMA_SEED_1rec absolute $16E;
const
  CSMA_SEED_10 = 0;  m_CSMA_SEED_10 = 1;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_11 = 1;  m_CSMA_SEED_11 = 2;  // Seed Value for CSMA Random Number Generator
  CSMA_SEED_12 = 2;  m_CSMA_SEED_12 = 4;  // Seed Value for CSMA Random Number Generator
  AACK_I_AM_COORD = 3;  m_AACK_I_AM_COORD = 8;  // Set Personal Area Network Coordinator
  AACK_DIS_ACK = 4;  m_AACK_DIS_ACK = 16;  // Disable Acknowledgment Frame Transmission
  AACK_SET_PD = 5;  m_AACK_SET_PD = 32;  // Set Frame Pending Sub-field
  AACK_FVN_MODE0 = 6;  m_AACK_FVN_MODE0 = 64;  // Acknowledgment Frame Filter Mode
  AACK_FVN_MODE1 = 7;  m_AACK_FVN_MODE1 = 128;  // Acknowledgment Frame Filter Mode

type
  TCSMA_BEset = bitpacked set of (e_MIN_BE0, e_MIN_BE1, e_MIN_BE2, e_MIN_BE3, e_MAX_BE0, e_MAX_BE1, e_MAX_BE2, e_MAX_BE3);
  TCSMA_BErec = bitpacked record
    MIN_BE0,
    MIN_BE1,
    MIN_BE2,
    MIN_BE3,
    MAX_BE0,
    MAX_BE1,
    MAX_BE2,
    MAX_BE3: TBitField;
  end;
var
  CSMA_BE: byte absolute $16F;  // Transceiver CSMA-CA Back-off Exponent Control Register
  CSMA_BEset: TCSMA_BEset absolute $16F;
  CSMA_BErec: TCSMA_BErec absolute $16F;
const
  MIN_BE0 = 0;  m_MIN_BE0 = 1;  // Minimum Back-off Exponent
  MIN_BE1 = 1;  m_MIN_BE1 = 2;  // Minimum Back-off Exponent
  MIN_BE2 = 2;  m_MIN_BE2 = 4;  // Minimum Back-off Exponent
  MIN_BE3 = 3;  m_MIN_BE3 = 8;  // Minimum Back-off Exponent
  MAX_BE0 = 4;  m_MAX_BE0 = 16;  // Maximum Back-off Exponent
  MAX_BE1 = 5;  m_MAX_BE1 = 32;  // Maximum Back-off Exponent
  MAX_BE2 = 6;  m_MAX_BE2 = 64;  // Maximum Back-off Exponent
  MAX_BE3 = 7;  m_MAX_BE3 = 128;  // Maximum Back-off Exponent

type
  TTST_CTRL_DIGIset = bitpacked set of (e_TST_CTRL_DIG0, e_TST_CTRL_DIG1, e_TST_CTRL_DIG2, e_TST_CTRL_DIG3);
  TTST_CTRL_DIGIrec = bitpacked record
    TST_CTRL_DIG0,
    TST_CTRL_DIG1,
    TST_CTRL_DIG2,
    TST_CTRL_DIG3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TST_CTRL_DIGI: byte absolute $176;  // Transceiver Digital Test Control Register
  TST_CTRL_DIGIset: TTST_CTRL_DIGIset absolute $176;
  TST_CTRL_DIGIrec: TTST_CTRL_DIGIrec absolute $176;
const
  TST_CTRL_DIG0 = 0;  m_TST_CTRL_DIG0 = 1;  // Digital Test Controller Register
  TST_CTRL_DIG1 = 1;  m_TST_CTRL_DIG1 = 2;  // Digital Test Controller Register
  TST_CTRL_DIG2 = 2;  m_TST_CTRL_DIG2 = 4;  // Digital Test Controller Register
  TST_CTRL_DIG3 = 3;  m_TST_CTRL_DIG3 = 8;  // Digital Test Controller Register

type
  TTST_RX_LENGTHset = bitpacked set of (e_RX_LENGTH0, e_RX_LENGTH1, e_RX_LENGTH2, e_RX_LENGTH3, e_RX_LENGTH4, e_RX_LENGTH5, e_RX_LENGTH6, e_RX_LENGTH7);
  TTST_RX_LENGTHrec = bitpacked record
    RX_LENGTH0,
    RX_LENGTH1,
    RX_LENGTH2,
    RX_LENGTH3,
    RX_LENGTH4,
    RX_LENGTH5,
    RX_LENGTH6,
    RX_LENGTH7: TBitField;
  end;
var
  TST_RX_LENGTH: byte absolute $17B;  // Transceiver Received Frame Length Register
  TST_RX_LENGTHset: TTST_RX_LENGTHset absolute $17B;
  TST_RX_LENGTHrec: TTST_RX_LENGTHrec absolute $17B;
const
  RX_LENGTH0 = 0;  m_RX_LENGTH0 = 1;  // Received Frame Length
  RX_LENGTH1 = 1;  m_RX_LENGTH1 = 2;  // Received Frame Length
  RX_LENGTH2 = 2;  m_RX_LENGTH2 = 4;  // Received Frame Length
  RX_LENGTH3 = 3;  m_RX_LENGTH3 = 8;  // Received Frame Length
  RX_LENGTH4 = 4;  m_RX_LENGTH4 = 16;  // Received Frame Length
  RX_LENGTH5 = 5;  m_RX_LENGTH5 = 32;  // Received Frame Length
  RX_LENGTH6 = 6;  m_RX_LENGTH6 = 64;  // Received Frame Length
  RX_LENGTH7 = 7;  m_RX_LENGTH7 = 128;  // Received Frame Length

var
  TRXFBST: byte absolute $180;  // Start of frame buffer
  TRXFBEND: byte absolute $1FF;  // End of frame buffer
  // typedefs = 194

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
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 9 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 10 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 11 Pin Change Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 12 Watchdog Time-out Interrupt
procedure TIMER2_COMPA_ISR; external name 'TIMER2_COMPA_ISR'; // Interrupt 13 Timer/Counter2 Compare Match A
procedure TIMER2_COMPB_ISR; external name 'TIMER2_COMPB_ISR'; // Interrupt 14 Timer/Counter2 Compare Match B
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 15 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 16 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 17 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 18 Timer/Counter1 Compare Match B
procedure TIMER1_COMPC_ISR; external name 'TIMER1_COMPC_ISR'; // Interrupt 19 Timer/Counter1 Compare Match C
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 20 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 21 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 22 Timer/Counter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 23 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 24 SPI Serial Transfer Complete
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 25 USART0, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 26 USART0 Data register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 27 USART0, Tx Complete
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 28 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 29 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 30 EEPROM Ready
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 31 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 32 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 33 Timer/Counter3 Compare Match B
procedure TIMER3_COMPC_ISR; external name 'TIMER3_COMPC_ISR'; // Interrupt 34 Timer/Counter3 Compare Match C
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 35 Timer/Counter3 Overflow
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 36 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 37 USART1 Data register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 38 USART1, Tx Complete
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 39 2-wire Serial Interface
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 40 Store Program Memory Read
procedure TIMER4_CAPT_ISR; external name 'TIMER4_CAPT_ISR'; // Interrupt 41 Timer/Counter4 Capture Event
procedure TIMER4_COMPA_ISR; external name 'TIMER4_COMPA_ISR'; // Interrupt 42 Timer/Counter4 Compare Match A
procedure TIMER4_COMPB_ISR; external name 'TIMER4_COMPB_ISR'; // Interrupt 43 Timer/Counter4 Compare Match B
procedure TIMER4_COMPC_ISR; external name 'TIMER4_COMPC_ISR'; // Interrupt 44 Timer/Counter4 Compare Match C
procedure TIMER4_OVF_ISR; external name 'TIMER4_OVF_ISR'; // Interrupt 45 Timer/Counter4 Overflow
procedure TIMER5_CAPT_ISR; external name 'TIMER5_CAPT_ISR'; // Interrupt 46 Timer/Counter5 Capture Event
procedure TIMER5_COMPA_ISR; external name 'TIMER5_COMPA_ISR'; // Interrupt 47 Timer/Counter5 Compare Match A
procedure TIMER5_COMPB_ISR; external name 'TIMER5_COMPB_ISR'; // Interrupt 48 Timer/Counter5 Compare Match B
procedure TIMER5_COMPC_ISR; external name 'TIMER5_COMPC_ISR'; // Interrupt 49 Timer/Counter5 Compare Match C
procedure TIMER5_OVF_ISR; external name 'TIMER5_OVF_ISR'; // Interrupt 50 Timer/Counter5 Overflow
procedure TRX24_PLL_LOCK_ISR; external name 'TRX24_PLL_LOCK_ISR'; // Interrupt 57 TRX24 - PLL lock interrupt
procedure TRX24_PLL_UNLOCK_ISR; external name 'TRX24_PLL_UNLOCK_ISR'; // Interrupt 58 TRX24 - PLL unlock interrupt
procedure TRX24_RX_START_ISR; external name 'TRX24_RX_START_ISR'; // Interrupt 59 TRX24 - Receive start interrupt
procedure TRX24_RX_END_ISR; external name 'TRX24_RX_END_ISR'; // Interrupt 60 TRX24 - RX_END interrupt
procedure TRX24_CCA_ED_DONE_ISR; external name 'TRX24_CCA_ED_DONE_ISR'; // Interrupt 61 TRX24 - CCA/ED done interrupt
procedure TRX24_XAH_AMI_ISR; external name 'TRX24_XAH_AMI_ISR'; // Interrupt 62 TRX24 - XAH - AMI
procedure TRX24_TX_END_ISR; external name 'TRX24_TX_END_ISR'; // Interrupt 63 TRX24 - TX_END interrupt
procedure TRX24_AWAKE_ISR; external name 'TRX24_AWAKE_ISR'; // Interrupt 64 TRX24 AWAKE - tranceiver is reaching state TRX_OFF
procedure SCNT_CMP1_ISR; external name 'SCNT_CMP1_ISR'; // Interrupt 65 Symbol counter - compare match 1 interrupt
procedure SCNT_CMP2_ISR; external name 'SCNT_CMP2_ISR'; // Interrupt 66 Symbol counter - compare match 2 interrupt
procedure SCNT_CMP3_ISR; external name 'SCNT_CMP3_ISR'; // Interrupt 67 Symbol counter - compare match 3 interrupt
procedure SCNT_OVFL_ISR; external name 'SCNT_OVFL_ISR'; // Interrupt 68 Symbol counter - overflow interrupt
procedure SCNT_BACKOFF_ISR; external name 'SCNT_BACKOFF_ISR'; // Interrupt 69 Symbol counter - backoff interrupt
procedure AES_READY_ISR; external name 'AES_READY_ISR'; // Interrupt 70 AES engine ready interrupt
procedure BAT_LOW_ISR; external name 'BAT_LOW_ISR'; // Interrupt 71 Battery monitor indicates supply voltage below threshold
procedure TRX24_TX_START_ISR; external name 'TRX24_TX_START_ISR'; // Interrupt 72 TRX24 TX start interrupt
procedure TRX24_AMI0_ISR; external name 'TRX24_AMI0_ISR'; // Interrupt 73 Address match interrupt of address filter 0
procedure TRX24_AMI1_ISR; external name 'TRX24_AMI1_ISR'; // Interrupt 74 Address match interrupt of address filter 1
procedure TRX24_AMI2_ISR; external name 'TRX24_AMI2_ISR'; // Interrupt 75 Address match interrupt of address filter 2
procedure TRX24_AMI3_ISR; external name 'TRX24_AMI3_ISR'; // Interrupt 76 Address match interrupt of address filter 3

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
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp PCINT2_ISR
  jmp WDT_ISR
  jmp TIMER2_COMPA_ISR
  jmp TIMER2_COMPB_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_COMPC_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
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
  jmp TIMER4_CAPT_ISR
  jmp TIMER4_COMPA_ISR
  jmp TIMER4_COMPB_ISR
  jmp TIMER4_COMPC_ISR
  jmp TIMER4_OVF_ISR
  jmp TIMER5_CAPT_ISR
  jmp TIMER5_COMPA_ISR
  jmp TIMER5_COMPB_ISR
  jmp TIMER5_COMPC_ISR
  jmp TIMER5_OVF_ISR
  jmp TRX24_PLL_LOCK_ISR
  jmp TRX24_PLL_UNLOCK_ISR
  jmp TRX24_RX_START_ISR
  jmp TRX24_RX_END_ISR
  jmp TRX24_CCA_ED_DONE_ISR
  jmp TRX24_XAH_AMI_ISR
  jmp TRX24_TX_END_ISR
  jmp TRX24_AWAKE_ISR
  jmp SCNT_CMP1_ISR
  jmp SCNT_CMP2_ISR
  jmp SCNT_CMP3_ISR
  jmp SCNT_OVFL_ISR
  jmp SCNT_BACKOFF_ISR
  jmp AES_READY_ISR
  jmp BAT_LOW_ISR
  jmp TRX24_TX_START_ISR
  jmp TRX24_AMI0_ISR
  jmp TRX24_AMI1_ISR
  jmp TRX24_AMI2_ISR
  jmp TRX24_AMI3_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak INT4_ISR
  .weak INT5_ISR
  .weak INT6_ISR
  .weak INT7_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
  .weak WDT_ISR
  .weak TIMER2_COMPA_ISR
  .weak TIMER2_COMPB_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_COMPC_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
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
  .weak TIMER4_CAPT_ISR
  .weak TIMER4_COMPA_ISR
  .weak TIMER4_COMPB_ISR
  .weak TIMER4_COMPC_ISR
  .weak TIMER4_OVF_ISR
  .weak TIMER5_CAPT_ISR
  .weak TIMER5_COMPA_ISR
  .weak TIMER5_COMPB_ISR
  .weak TIMER5_COMPC_ISR
  .weak TIMER5_OVF_ISR
  .weak TRX24_PLL_LOCK_ISR
  .weak TRX24_PLL_UNLOCK_ISR
  .weak TRX24_RX_START_ISR
  .weak TRX24_RX_END_ISR
  .weak TRX24_CCA_ED_DONE_ISR
  .weak TRX24_XAH_AMI_ISR
  .weak TRX24_TX_END_ISR
  .weak TRX24_AWAKE_ISR
  .weak SCNT_CMP1_ISR
  .weak SCNT_CMP2_ISR
  .weak SCNT_CMP3_ISR
  .weak SCNT_OVFL_ISR
  .weak SCNT_BACKOFF_ISR
  .weak AES_READY_ISR
  .weak BAT_LOW_ISR
  .weak TRX24_TX_START_ISR
  .weak TRX24_AMI0_ISR
  .weak TRX24_AMI1_ISR
  .weak TRX24_AMI2_ISR
  .weak TRX24_AMI3_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set INT4_ISR, Default_IRQ_handler
  .set INT5_ISR, Default_IRQ_handler
  .set INT6_ISR, Default_IRQ_handler
  .set INT7_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER2_COMPA_ISR, Default_IRQ_handler
  .set TIMER2_COMPB_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_COMPC_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
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
  .set TIMER4_CAPT_ISR, Default_IRQ_handler
  .set TIMER4_COMPA_ISR, Default_IRQ_handler
  .set TIMER4_COMPB_ISR, Default_IRQ_handler
  .set TIMER4_COMPC_ISR, Default_IRQ_handler
  .set TIMER4_OVF_ISR, Default_IRQ_handler
  .set TIMER5_CAPT_ISR, Default_IRQ_handler
  .set TIMER5_COMPA_ISR, Default_IRQ_handler
  .set TIMER5_COMPB_ISR, Default_IRQ_handler
  .set TIMER5_COMPC_ISR, Default_IRQ_handler
  .set TIMER5_OVF_ISR, Default_IRQ_handler
  .set TRX24_PLL_LOCK_ISR, Default_IRQ_handler
  .set TRX24_PLL_UNLOCK_ISR, Default_IRQ_handler
  .set TRX24_RX_START_ISR, Default_IRQ_handler
  .set TRX24_RX_END_ISR, Default_IRQ_handler
  .set TRX24_CCA_ED_DONE_ISR, Default_IRQ_handler
  .set TRX24_XAH_AMI_ISR, Default_IRQ_handler
  .set TRX24_TX_END_ISR, Default_IRQ_handler
  .set TRX24_AWAKE_ISR, Default_IRQ_handler
  .set SCNT_CMP1_ISR, Default_IRQ_handler
  .set SCNT_CMP2_ISR, Default_IRQ_handler
  .set SCNT_CMP3_ISR, Default_IRQ_handler
  .set SCNT_OVFL_ISR, Default_IRQ_handler
  .set SCNT_BACKOFF_ISR, Default_IRQ_handler
  .set AES_READY_ISR, Default_IRQ_handler
  .set BAT_LOW_ISR, Default_IRQ_handler
  .set TRX24_TX_START_ISR, Default_IRQ_handler
  .set TRX24_AMI0_ISR, Default_IRQ_handler
  .set TRX24_AMI1_ISR, Default_IRQ_handler
  .set TRX24_AMI2_ISR, Default_IRQ_handler
  .set TRX24_AMI3_ISR, Default_IRQ_handler
end;

end.
