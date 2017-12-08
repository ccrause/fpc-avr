unit ATmega16HVB;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $20;  // Port A Input Pins
  DDRA: byte absolute $21;  // Port A Data Direction Register

type
  TPORTAset = bitpacked set of (e_PA0, e_PA1, e_PA2, e_PA3);
  TPORTArec = bitpacked record
    PA0,
    PA1,
    PA2,
    PA3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
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

type
  TTIFR0set = bitpacked set of (e_TOV0, e_OCF0A, e_OCF0B, e_ICF0);
  TTIFR0rec = bitpacked record
    TOV0,
    OCF0A,
    OCF0B,
    ICF0,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR0: byte absolute $35;  // Timer/Counter Interrupt Flag register
  TIFR0set: TTIFR0set absolute $35;
  TIFR0rec: TTIFR0rec absolute $35;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer/Counter0 Output Compare Flag A
  OCF0B = 2;  m_OCF0B = 4;  // Timer/Counter0 Output Compare Flag B
  ICF0 = 3;  m_ICF0 = 8;  // Timer/Counter 0 Input Capture Flag

type
  TTIFR1set = bitpacked set of (e_TOV1, e_OCF1A, e_OCF1B, e_ICF1);
  TTIFR1rec = bitpacked record
    TOV1,
    OCF1A,
    OCF1B,
    ICF1,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR1: byte absolute $36;  // Timer/Counter Interrupt Flag register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Timer/Counter1 Output Compare Flag A
  OCF1B = 2;  m_OCF1B = 4;  // Timer/Counter1 Output Compare Flag B
  ICF1 = 3;  m_ICF1 = 8;  // Timer/Counter 1 Input Capture Flag

type
  TOSICSRset = bitpacked set of (e_OSIEN, e_OSIST, e_OSISEL0=4);
  TOSICSRrec = bitpacked record
    OSIEN,
    OSIST,
    ReservedBit2,
    ReservedBit3,
    OSISEL0,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  OSICSR: byte absolute $37;  // Oscillator Sampling Interface Control and Status Register
  OSICSRset: TOSICSRset absolute $37;
  OSICSRrec: TOSICSRrec absolute $37;
const
  OSIEN = 0;  m_OSIEN = 1;  // Oscillator Sampling Interface Enable
  OSIST = 1;  m_OSIST = 2;  // Oscillator Sampling Interface Status
  OSISEL0 = 4;  m_OSISEL0 = 16;  // Oscillator Sampling Interface Select 0

type
  TPCIFRset = bitpacked set of (e_PCIF0, e_PCIF1);
  TPCIFRrec = bitpacked record
    PCIF0,
    PCIF1,
    ReservedBit2,
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

type
  TEIFRset = bitpacked set of (e_INTF0, e_INTF1, e_INTF2, e_INTF3);
  TEIFRrec = bitpacked record
    INTF0,
    INTF1,
    INTF2,
    INTF3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
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

type
  TEIMSKset = bitpacked set of (e_INT0, e_INT1, e_INT2, e_INT3);
  TEIMSKrec = bitpacked record
    INT0,
    INT1,
    INT2,
    INT3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EIMSK: byte absolute $3D;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $3D;
  EIMSKrec: TEIMSKrec absolute $3D;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 3 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 3 Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request 3 Enable
  INT3 = 3;  m_INT3 = 8;  // External Interrupt Request 3 Enable

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
  GPIOR00 = 0;  m_GPIOR00 = 1;  // General Purpose IO bits
  GPIOR01 = 1;  m_GPIOR01 = 2;  // General Purpose IO bits
  GPIOR02 = 2;  m_GPIOR02 = 4;  // General Purpose IO bits
  GPIOR03 = 3;  m_GPIOR03 = 8;  // General Purpose IO bits
  GPIOR04 = 4;  m_GPIOR04 = 16;  // General Purpose IO bits
  GPIOR05 = 5;  m_GPIOR05 = 32;  // General Purpose IO bits
  GPIOR06 = 6;  m_GPIOR06 = 64;  // General Purpose IO bits
  GPIOR07 = 7;  m_GPIOR07 = 128;  // General Purpose IO bits

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
  EEPE = 1;  m_EEPE = 2;  // EEPROM Write Enable
  EEMPE = 2;  m_EEMPE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;
  EEPM1 = 5;  m_EEPM1 = 32;

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
  EEAR: word absolute $41;  // EEPROM Read/Write Access
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
  TGTCCRset = bitpacked set of (e_PSRSYNC, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSRSYNC,
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
  PSRSYNC = 0;  m_PSRSYNC = 1;  // Prescaler Reset
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

type
  TTCCR0Aset = bitpacked set of (e_WGM00, e_ICS0=3, e_ICES0, e_ICNC0, e_ICEN0, e_TCW0);
  TTCCR0Arec = bitpacked record
    WGM00,
    ReservedBit1,
    ReservedBit2,
    ICS0,
    ICES0,
    ICNC0,
    ICEN0,
    TCW0: TBitField;
  end;
var
  TCCR0A: byte absolute $44;  // Timer/Counter 0 Control Register A
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  ICS0 = 3;  m_ICS0 = 8;  // Input Capture Select
  ICES0 = 4;  m_ICES0 = 16;  // Input Capture Edge Select
  ICNC0 = 5;  m_ICNC0 = 32;  // Input Capture Noise Canceler
  ICEN0 = 6;  m_ICEN0 = 64;  // Input Capture Mode Enable
  TCW0 = 7;  m_TCW0 = 128;  // Timer/Counter Width

type
  TTCCR0Bset = bitpacked set of (e_CS00, e_CS01, e_CS02);
  TTCCR0Brec = bitpacked record
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
  TCCR0B: byte absolute $45;  // Timer/Counter0 Control Register B
  TCCR0Bset: TTCCR0Bset absolute $45;
  TCCR0Brec: TTCCR0Brec absolute $45;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select0 bit 0
  CS01 = 1;  m_CS01 = 2;  // Clock Select0 bit 1
  CS02 = 2;  m_CS02 = 4;  // Clock Select0 bit 2

var
  TCNT0: word absolute $46;  // Timer Counter 0 Bytes
  TCNT0L: byte absolute $46;
  TCNT0H: byte absolute $47;
const
  TCNT00 = 0;  m_TCNT00 = 1;  // Timer Counter 0 bits
  TCNT01 = 1;  m_TCNT01 = 2;  // Timer Counter 0 bits
  TCNT02 = 2;  m_TCNT02 = 4;  // Timer Counter 0 bits
  TCNT03 = 3;  m_TCNT03 = 8;  // Timer Counter 0 bits
  TCNT04 = 4;  m_TCNT04 = 16;  // Timer Counter 0 bits
  TCNT05 = 5;  m_TCNT05 = 32;  // Timer Counter 0 bits
  TCNT06 = 6;  m_TCNT06 = 64;  // Timer Counter 0 bits
  TCNT07 = 7;  m_TCNT07 = 128;  // Timer Counter 0 bits

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
  OCR0A: byte absolute $48;  // Output Compare Register A
  OCR0Aset: TOCR0Aset absolute $48;
  OCR0Arec: TOCR0Arec absolute $48;
const
  OCR0A0 = 0;  m_OCR0A0 = 1;  // Output Compare 0 A bits
  OCR0A1 = 1;  m_OCR0A1 = 2;  // Output Compare 0 A bits
  OCR0A2 = 2;  m_OCR0A2 = 4;  // Output Compare 0 A bits
  OCR0A3 = 3;  m_OCR0A3 = 8;  // Output Compare 0 A bits
  OCR0A4 = 4;  m_OCR0A4 = 16;  // Output Compare 0 A bits
  OCR0A5 = 5;  m_OCR0A5 = 32;  // Output Compare 0 A bits
  OCR0A6 = 6;  m_OCR0A6 = 64;  // Output Compare 0 A bits
  OCR0A7 = 7;  m_OCR0A7 = 128;  // Output Compare 0 A bits

type
  TOCR0Bset = bitpacked set of (e_OCR0B0, e_OCR0B1, e_OCR0B2, e_OCR0B3, e_OCR0B4, e_OCR0B5, e_OCR0B6, e_OCR0B7);
  TOCR0Brec = bitpacked record
    OCR0B0,
    OCR0B1,
    OCR0B2,
    OCR0B3,
    OCR0B4,
    OCR0B5,
    OCR0B6,
    OCR0B7: TBitField;
  end;
var
  OCR0B: byte absolute $49;  // Output Compare Register B
  OCR0Bset: TOCR0Bset absolute $49;
  OCR0Brec: TOCR0Brec absolute $49;
const
  OCR0B0 = 0;  m_OCR0B0 = 1;  // Output Compare 0 B bits
  OCR0B1 = 1;  m_OCR0B1 = 2;  // Output Compare 0 B bits
  OCR0B2 = 2;  m_OCR0B2 = 4;  // Output Compare 0 B bits
  OCR0B3 = 3;  m_OCR0B3 = 8;  // Output Compare 0 B bits
  OCR0B4 = 4;  m_OCR0B4 = 16;  // Output Compare 0 B bits
  OCR0B5 = 5;  m_OCR0B5 = 32;  // Output Compare 0 B bits
  OCR0B6 = 6;  m_OCR0B6 = 64;  // Output Compare 0 B bits
  OCR0B7 = 7;  m_OCR0B7 = 128;  // Output Compare 0 B bits

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
  GPIOR10 = 0;  m_GPIOR10 = 1;  // General Purpose IO bits
  GPIOR11 = 1;  m_GPIOR11 = 2;  // General Purpose IO bits
  GPIOR12 = 2;  m_GPIOR12 = 4;  // General Purpose IO bits
  GPIOR13 = 3;  m_GPIOR13 = 8;  // General Purpose IO bits
  GPIOR14 = 4;  m_GPIOR14 = 16;  // General Purpose IO bits
  GPIOR15 = 5;  m_GPIOR15 = 32;  // General Purpose IO bits
  GPIOR16 = 6;  m_GPIOR16 = 64;  // General Purpose IO bits
  GPIOR17 = 7;  m_GPIOR17 = 128;  // General Purpose IO bits

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
  GPIOR20 = 0;  m_GPIOR20 = 1;  // General Purpose IO bits
  GPIOR21 = 1;  m_GPIOR21 = 2;  // General Purpose IO bits
  GPIOR22 = 2;  m_GPIOR22 = 4;  // General Purpose IO bits
  GPIOR23 = 3;  m_GPIOR23 = 8;  // General Purpose IO bits
  GPIOR24 = 4;  m_GPIOR24 = 16;  // General Purpose IO bits
  GPIOR25 = 5;  m_GPIOR25 = 32;  // General Purpose IO bits
  GPIOR26 = 6;  m_GPIOR26 = 64;  // General Purpose IO bits
  GPIOR27 = 7;  m_GPIOR27 = 128;  // General Purpose IO bits

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
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BODRF, e_WDRF, e_OCDRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BODRF,
    WDRF,
    OCDRF,
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
  BODRF = 2;  m_BODRF = 4;  // Brown-out Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag
  OCDRF = 4;  m_OCDRF = 16;  // OCD Reset Flag

type
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_PUD=4, e_CKOE);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    PUD,
    CKOE,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  IVCE = 0;  m_IVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select
  PUD = 4;  m_PUD = 16;  // Pull-up disable
  CKOE = 5;  m_CKOE = 32;  // Clock Output Enable

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_LBSET, e_RWWSRE, e_SIGRD, e_RWWSB, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    LBSET,
    RWWSRE,
    SIGRD,
    RWWSB,
    SPMIE: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  LBSET = 3;  m_LBSET = 8;  // Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read-While-Write Section Read Enable
  SIGRD = 5;  m_SIGRD = 32;  // Signature Row Read
  RWWSB = 6;  m_RWWSB = 64;  // Read-While-Write Section Busy
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
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPCE=7);
  TCLKPRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    ReservedBit2,
    ReservedBit3,
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
  CLKPCE = 7;  m_CLKPCE = 128;  // Clock Prescaler Change Enable

type
  TPRR0set = bitpacked set of (e_PRVADC, e_PRTIM0, e_PRTIM1, e_PRSPI, e_PRVRM=5, e_PRTWI);
  TPRR0rec = bitpacked record
    PRVADC,
    PRTIM0,
    PRTIM1,
    PRSPI,
    ReservedBit4,
    PRVRM,
    PRTWI,
    ReservedBit7: TBitField;
  end;
var
  PRR0: byte absolute $64;  // Power Reduction Register 0
  PRR0set: TPRR0set absolute $64;
  PRR0rec: TPRR0rec absolute $64;
const
  PRVADC = 0;  m_PRVADC = 1;  // Power Reduction V-ADC
  PRTIM0 = 1;  m_PRTIM0 = 2;  // Power Reduction Timer/Counter0
  PRTIM1 = 2;  m_PRTIM1 = 4;  // Power Reduction Timer/Counter1
  PRSPI = 3;  m_PRSPI = 8;  // Power reduction SPI
  PRVRM = 5;  m_PRVRM = 32;  // Power Reduction Voltage Regulator Monitor
  PRTWI = 6;  m_PRTWI = 64;  // Power Reduction TWI

type
  TFOSCCALset = bitpacked set of (e_FCAL0, e_FCAL1, e_FCAL2, e_FCAL3, e_FCAL4, e_FCAL5, e_FCAL6, e_FCAL7);
  TFOSCCALrec = bitpacked record
    FCAL0,
    FCAL1,
    FCAL2,
    FCAL3,
    FCAL4,
    FCAL5,
    FCAL6,
    FCAL7: TBitField;
  end;
var
  FOSCCAL: byte absolute $66;  // Fast Oscillator Calibration Value
  FOSCCALset: TFOSCCALset absolute $66;
  FOSCCALrec: TFOSCCALrec absolute $66;
const
  FCAL0 = 0;  m_FCAL0 = 1;  // Fast Oscillator Calibration Value
  FCAL1 = 1;  m_FCAL1 = 2;  // Fast Oscillator Calibration Value
  FCAL2 = 2;  m_FCAL2 = 4;  // Fast Oscillator Calibration Value
  FCAL3 = 3;  m_FCAL3 = 8;  // Fast Oscillator Calibration Value
  FCAL4 = 4;  m_FCAL4 = 16;  // Fast Oscillator Calibration Value
  FCAL5 = 5;  m_FCAL5 = 32;  // Fast Oscillator Calibration Value
  FCAL6 = 6;  m_FCAL6 = 64;  // Fast Oscillator Calibration Value
  FCAL7 = 7;  m_FCAL7 = 128;  // Fast Oscillator Calibration Value

type
  TPCICRset = bitpacked set of (e_PCIE0, e_PCIE1);
  TPCICRrec = bitpacked record
    PCIE0,
    PCIE1,
    ReservedBit2,
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
  EICRA: byte absolute $69;  // External Interrupt Control Register
  EICRAset: TEICRAset absolute $69;
  EICRArec: TEICRArec absolute $69;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control 0 Bits
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control 0 Bits
  ISC10 = 2;  m_ISC10 = 4;  // External Interrupt Sense Control 1 Bits
  ISC11 = 3;  m_ISC11 = 8;  // External Interrupt Sense Control 1 Bits
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt Sense Control 2 Bits
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt Sense Control 2 Bits
  ISC30 = 6;  m_ISC30 = 64;  // External Interrupt Sense Control 3 Bits
  ISC31 = 7;  m_ISC31 = 128;  // External Interrupt Sense Control 3 Bits

var
  PCMSK0: byte absolute $6B;  // Pin Change Enable Mask Register 0

type
  TPCMSK1set = bitpacked set of (e_PCINT4, e_PCINT5, e_PCINT6, e_PCINT7, e_PCINT8, e_PCINT9, e_PCINT10, e_PCINT11);
  TPCMSK1rec = bitpacked record
    PCINT4,
    PCINT5,
    PCINT6,
    PCINT7,
    PCINT8,
    PCINT9,
    PCINT10,
    PCINT11: TBitField;
  end;
var
  PCMSK1: byte absolute $6C;  // Pin Change Enable Mask Register 1
  PCMSK1set: TPCMSK1set absolute $6C;
  PCMSK1rec: TPCMSK1rec absolute $6C;
const
  PCINT4 = 0;  m_PCINT4 = 1;  // Pin Change Enable Mask
  PCINT5 = 1;  m_PCINT5 = 2;  // Pin Change Enable Mask
  PCINT6 = 2;  m_PCINT6 = 4;  // Pin Change Enable Mask
  PCINT7 = 3;  m_PCINT7 = 8;  // Pin Change Enable Mask
  PCINT8 = 4;  m_PCINT8 = 16;  // Pin Change Enable Mask
  PCINT9 = 5;  m_PCINT9 = 32;  // Pin Change Enable Mask
  PCINT10 = 6;  m_PCINT10 = 64;  // Pin Change Enable Mask
  PCINT11 = 7;  m_PCINT11 = 128;  // Pin Change Enable Mask

type
  TTIMSK0set = bitpacked set of (e_TOIE0, e_OCIE0A, e_OCIE0B, e_ICIE0);
  TTIMSK0rec = bitpacked record
    TOIE0,
    OCIE0A,
    OCIE0B,
    ICIE0,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK0: byte absolute $6E;  // Timer/Counter Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $6E;
  TIMSK0rec: TTIMSK0rec absolute $6E;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare A Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter0 Output Compare B Interrupt Enable
  ICIE0 = 3;  m_ICIE0 = 8;  // Timer/Counter n Input Capture Interrupt Enable

type
  TTIMSK1set = bitpacked set of (e_TOIE1, e_OCIE1A, e_OCIE1B, e_ICIE1);
  TTIMSK1rec = bitpacked record
    TOIE1,
    OCIE1A,
    OCIE1B,
    ICIE1,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK1: byte absolute $6F;  // Timer/Counter Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $6F;
  TIMSK1rec: TTIMSK1rec absolute $6F;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output Compare A Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output Compare B Interrupt Enable
  ICIE1 = 3;  m_ICIE1 = 8;  // Timer/Counter n Input Capture Interrupt Enable

var
  VADC: word absolute $78;  // VADC Data Register Bytes
  VADCL: byte absolute $78;
  VADCH: byte absolute $79;
const
  VADC0 = 0;  m_VADC0 = 1;  // VADC Data bits
  VADC1 = 1;  m_VADC1 = 2;  // VADC Data bits
  VADC2 = 2;  m_VADC2 = 4;  // VADC Data bits
  VADC3 = 3;  m_VADC3 = 8;  // VADC Data bits
  VADC4 = 4;  m_VADC4 = 16;  // VADC Data bits
  VADC5 = 5;  m_VADC5 = 32;  // VADC Data bits
  VADC6 = 6;  m_VADC6 = 64;  // VADC Data bits
  VADC7 = 7;  m_VADC7 = 128;  // VADC Data bits

type
  TVADCSRset = bitpacked set of (e_VADCCIE, e_VADCCIF, e_VADSC, e_VADEN);
  TVADCSRrec = bitpacked record
    VADCCIE,
    VADCCIF,
    VADSC,
    VADEN,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VADCSR: byte absolute $7A;  // The VADC Control and Status register
  VADCSRset: TVADCSRset absolute $7A;
  VADCSRrec: TVADCSRrec absolute $7A;
const
  VADCCIE = 0;  m_VADCCIE = 1;  // VADC Conversion Complete Interrupt Enable
  VADCCIF = 1;  m_VADCCIF = 2;  // VADC Conversion Complete Interrupt Flag
  VADSC = 2;  m_VADSC = 4;  // VADC Satrt Conversion
  VADEN = 3;  m_VADEN = 8;  // VADC Enable

type
  TVADMUXset = bitpacked set of (e_VADMUX0, e_VADMUX1, e_VADMUX2, e_VADMUX3);
  TVADMUXrec = bitpacked record
    VADMUX0,
    VADMUX1,
    VADMUX2,
    VADMUX3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VADMUX: byte absolute $7C;  // The VADC multiplexer Selection Register
  VADMUXset: TVADMUXset absolute $7C;
  VADMUXrec: TVADMUXrec absolute $7C;
const
  VADMUX0 = 0;  m_VADMUX0 = 1;  // Analog Channel and Gain Selection Bits
  VADMUX1 = 1;  m_VADMUX1 = 2;  // Analog Channel and Gain Selection Bits
  VADMUX2 = 2;  m_VADMUX2 = 4;  // Analog Channel and Gain Selection Bits
  VADMUX3 = 3;  m_VADMUX3 = 8;  // Analog Channel and Gain Selection Bits

type
  TDIDR0set = bitpacked set of (e_PA0DID, e_PA1DID);
  TDIDR0rec = bitpacked record
    PA0DID,
    PA1DID,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR0: byte absolute $7E;  // Digital Input Disable Register
  DIDR0set: TDIDR0set absolute $7E;
  DIDR0rec: TDIDR0rec absolute $7E;
const
  PA0DID = 0;  m_PA0DID = 1;  // When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
  PA1DID = 1;  m_PA1DID = 2;  // When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.

type
  TTCCR1Aset = bitpacked set of (e_WGM10, e_ICS1=3, e_ICES1, e_ICNC1, e_ICEN1, e_TCW1);
  TTCCR1Arec = bitpacked record
    WGM10,
    ReservedBit1,
    ReservedBit2,
    ICS1,
    ICES1,
    ICNC1,
    ICEN1,
    TCW1: TBitField;
  end;
var
  TCCR1A: byte absolute $80;  // Timer/Counter 1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $80;
  TCCR1Arec: TTCCR1Arec absolute $80;
const
  WGM10 = 0;  m_WGM10 = 1;  // Waveform Generation Mode
  ICS1 = 3;  m_ICS1 = 8;  // Input Capture Select
  ICES1 = 4;  m_ICES1 = 16;  // Input Capture Edge Select
  ICNC1 = 5;  m_ICNC1 = 32;  // Input Capture Noise Canceler
  ICEN1 = 6;  m_ICEN1 = 64;  // Input Capture Mode Enable
  TCW1 = 7;  m_TCW1 = 128;  // Timer/Counter Width

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12);
  TTCCR1Brec = bitpacked record
    CS10,
    CS11,
    CS12,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TCCR1B: byte absolute $81;  // Timer/Counter1 Control Register B
  TCCR1Bset: TTCCR1Bset absolute $81;
  TCCR1Brec: TTCCR1Brec absolute $81;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select1 bis
  CS11 = 1;  m_CS11 = 2;  // Clock Select1 bis
  CS12 = 2;  m_CS12 = 4;  // Clock Select1 bis

var
  TCNT1: word absolute $84;  // Timer Counter 1 Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
const
  TCNT10 = 0;  m_TCNT10 = 1;  // Timer Counter 1 bits
  TCNT11 = 1;  m_TCNT11 = 2;  // Timer Counter 1 bits
  TCNT12 = 2;  m_TCNT12 = 4;  // Timer Counter 1 bits
  TCNT13 = 3;  m_TCNT13 = 8;  // Timer Counter 1 bits
  TCNT14 = 4;  m_TCNT14 = 16;  // Timer Counter 1 bits
  TCNT15 = 5;  m_TCNT15 = 32;  // Timer Counter 1 bits
  TCNT16 = 6;  m_TCNT16 = 64;  // Timer Counter 1 bits
  TCNT17 = 7;  m_TCNT17 = 128;  // Timer Counter 1 bits

type
  TOCR1Aset = bitpacked set of (e_OCR1A0, e_OCR1A1, e_OCR1A2, e_OCR1A3, e_OCR1A4, e_OCR1A5, e_OCR1A6, e_OCR1A7);
  TOCR1Arec = bitpacked record
    OCR1A0,
    OCR1A1,
    OCR1A2,
    OCR1A3,
    OCR1A4,
    OCR1A5,
    OCR1A6,
    OCR1A7: TBitField;
  end;
var
  OCR1A: byte absolute $88;  // Output Compare Register 1A
  OCR1Aset: TOCR1Aset absolute $88;
  OCR1Arec: TOCR1Arec absolute $88;
const
  OCR1A0 = 0;  m_OCR1A0 = 1;  // Output Compare 1 A bits
  OCR1A1 = 1;  m_OCR1A1 = 2;  // Output Compare 1 A bits
  OCR1A2 = 2;  m_OCR1A2 = 4;  // Output Compare 1 A bits
  OCR1A3 = 3;  m_OCR1A3 = 8;  // Output Compare 1 A bits
  OCR1A4 = 4;  m_OCR1A4 = 16;  // Output Compare 1 A bits
  OCR1A5 = 5;  m_OCR1A5 = 32;  // Output Compare 1 A bits
  OCR1A6 = 6;  m_OCR1A6 = 64;  // Output Compare 1 A bits
  OCR1A7 = 7;  m_OCR1A7 = 128;  // Output Compare 1 A bits

type
  TOCR1Bset = bitpacked set of (e_OCR1B0, e_OCR1B1, e_OCR1B2, e_OCR1B3, e_OCR1B4, e_OCR1B5, e_OCR1B6, e_OCR1B7);
  TOCR1Brec = bitpacked record
    OCR1B0,
    OCR1B1,
    OCR1B2,
    OCR1B3,
    OCR1B4,
    OCR1B5,
    OCR1B6,
    OCR1B7: TBitField;
  end;
var
  OCR1B: byte absolute $89;  // Output Compare Register B
  OCR1Bset: TOCR1Bset absolute $89;
  OCR1Brec: TOCR1Brec absolute $89;
const
  OCR1B0 = 0;  m_OCR1B0 = 1;  // Output Compare 1 B bits
  OCR1B1 = 1;  m_OCR1B1 = 2;  // Output Compare 1 B bits
  OCR1B2 = 2;  m_OCR1B2 = 4;  // Output Compare 1 B bits
  OCR1B3 = 3;  m_OCR1B3 = 8;  // Output Compare 1 B bits
  OCR1B4 = 4;  m_OCR1B4 = 16;  // Output Compare 1 B bits
  OCR1B5 = 5;  m_OCR1B5 = 32;  // Output Compare 1 B bits
  OCR1B6 = 6;  m_OCR1B6 = 64;  // Output Compare 1 B bits
  OCR1B7 = 7;  m_OCR1B7 = 128;  // Output Compare 1 B bits

type
  TTWBRset = bitpacked set of (e_TWBR0, e_TWBR1, e_TWBR2, e_TWBR3, e_TWBR4, e_TWBR5, e_TWBR6, e_TWBR7);
  TTWBRrec = bitpacked record
    TWBR0,
    TWBR1,
    TWBR2,
    TWBR3,
    TWBR4,
    TWBR5,
    TWBR6,
    TWBR7: TBitField;
  end;
var
  TWBR: byte absolute $B8;  // TWI Bit Rate register
  TWBRset: TTWBRset absolute $B8;
  TWBRrec: TTWBRrec absolute $B8;
const
  TWBR0 = 0;  m_TWBR0 = 1;  // TWI Bit Rate bits
  TWBR1 = 1;  m_TWBR1 = 2;  // TWI Bit Rate bits
  TWBR2 = 2;  m_TWBR2 = 4;  // TWI Bit Rate bits
  TWBR3 = 3;  m_TWBR3 = 8;  // TWI Bit Rate bits
  TWBR4 = 4;  m_TWBR4 = 16;  // TWI Bit Rate bits
  TWBR5 = 5;  m_TWBR5 = 32;  // TWI Bit Rate bits
  TWBR6 = 6;  m_TWBR6 = 64;  // TWI Bit Rate bits
  TWBR7 = 7;  m_TWBR7 = 128;  // TWI Bit Rate bits

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

type
  TTWDRset = bitpacked set of (e_TWD0, e_TWD1, e_TWD2, e_TWD3, e_TWD4, e_TWD5, e_TWD6, e_TWD7);
  TTWDRrec = bitpacked record
    TWD0,
    TWD1,
    TWD2,
    TWD3,
    TWD4,
    TWD5,
    TWD6,
    TWD7: TBitField;
  end;
var
  TWDR: byte absolute $BB;  // TWI Data register
  TWDRset: TTWDRset absolute $BB;
  TWDRrec: TTWDRrec absolute $BB;
const
  TWD0 = 0;  m_TWD0 = 1;  // TWI Data Bits
  TWD1 = 1;  m_TWD1 = 2;  // TWI Data Bits
  TWD2 = 2;  m_TWD2 = 4;  // TWI Data Bits
  TWD3 = 3;  m_TWD3 = 8;  // TWI Data Bits
  TWD4 = 4;  m_TWD4 = 16;  // TWI Data Bits
  TWD5 = 5;  m_TWD5 = 32;  // TWI Data Bits
  TWD6 = 6;  m_TWD6 = 64;  // TWI Data Bits
  TWD7 = 7;  m_TWD7 = 128;  // TWI Data Bits

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
  TTWAMRset = bitpacked set of (e_TWAM0=1, e_TWAM1, e_TWAM2, e_TWAM3, e_TWAM4, e_TWAM5, e_TWAM6);
  TTWAMRrec = bitpacked record
    ReservedBit0,
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
  TWAM0 = 1;  m_TWAM0 = 2;
  TWAM1 = 2;  m_TWAM1 = 4;
  TWAM2 = 3;  m_TWAM2 = 8;
  TWAM3 = 4;  m_TWAM3 = 16;
  TWAM4 = 5;  m_TWAM4 = 32;
  TWAM5 = 6;  m_TWAM5 = 64;
  TWAM6 = 7;  m_TWAM6 = 128;

type
  TTWBCSRset = bitpacked set of (e_TWBCIP, e_TWBDT0, e_TWBDT1, e_TWBCIE=6, e_TWBCIF);
  TTWBCSRrec = bitpacked record
    TWBCIP,
    TWBDT0,
    TWBDT1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    TWBCIE,
    TWBCIF: TBitField;
  end;
var
  TWBCSR: byte absolute $BE;  // TWI Bus Control and Status Register
  TWBCSRset: TTWBCSRset absolute $BE;
  TWBCSRrec: TTWBCSRrec absolute $BE;
const
  TWBCIP = 0;  m_TWBCIP = 1;  // TWI Bus Connect/Disconnect Interrupt Polarity
  TWBDT0 = 1;  m_TWBDT0 = 2;  // TWI Bus Disconnect Time-out Period
  TWBDT1 = 2;  m_TWBDT1 = 4;  // TWI Bus Disconnect Time-out Period
  TWBCIE = 6;  m_TWBCIE = 64;  // TWI Bus Connect/Disconnect Interrupt Enable
  TWBCIF = 7;  m_TWBCIF = 128;  // TWI Bus Connect/Disconnect Interrupt Flag

type
  TROCRset = bitpacked set of (e_ROCWIE, e_ROCWIF, e_ROCD=4, e_ROCS=7);
  TROCRrec = bitpacked record
    ROCWIE,
    ROCWIF,
    ReservedBit2,
    ReservedBit3,
    ROCD,
    ReservedBit5,
    ReservedBit6,
    ROCS: TBitField;
  end;
var
  ROCR: byte absolute $C8;  // Regulator Operating Condition Register
  ROCRset: TROCRset absolute $C8;
  ROCRrec: TROCRrec absolute $C8;
const
  ROCWIE = 0;  m_ROCWIE = 1;  // ROC Warning Interrupt Enable
  ROCWIF = 1;  m_ROCWIF = 2;  // ROC Warning Interrupt Flag
  ROCD = 4;  m_ROCD = 16;  // ROC Disable
  ROCS = 7;  m_ROCS = 128;  // ROC Status

type
  TBGCCRset = bitpacked set of (e_BGCC0, e_BGCC1, e_BGCC2, e_BGCC3, e_BGCC4, e_BGCC5);
  TBGCCRrec = bitpacked record
    BGCC0,
    BGCC1,
    BGCC2,
    BGCC3,
    BGCC4,
    BGCC5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BGCCR: byte absolute $D0;  // Bandgap Calibration Register
  BGCCRset: TBGCCRset absolute $D0;
  BGCCRrec: TBGCCRrec absolute $D0;
const
  BGCC0 = 0;  m_BGCC0 = 1;  // BG Calibration of PTAT Current Bits
  BGCC1 = 1;  m_BGCC1 = 2;  // BG Calibration of PTAT Current Bits
  BGCC2 = 2;  m_BGCC2 = 4;  // BG Calibration of PTAT Current Bits
  BGCC3 = 3;  m_BGCC3 = 8;  // BG Calibration of PTAT Current Bits
  BGCC4 = 4;  m_BGCC4 = 16;  // BG Calibration of PTAT Current Bits
  BGCC5 = 5;  m_BGCC5 = 32;  // BG Calibration of PTAT Current Bits

type
  TBGCRRset = bitpacked set of (e_BGCR0, e_BGCR1, e_BGCR2, e_BGCR3, e_BGCR4, e_BGCR5, e_BGCR6, e_BGCR7);
  TBGCRRrec = bitpacked record
    BGCR0,
    BGCR1,
    BGCR2,
    BGCR3,
    BGCR4,
    BGCR5,
    BGCR6,
    BGCR7: TBitField;
  end;
var
  BGCRR: byte absolute $D1;  // Bandgap Calibration of Resistor Ladder
  BGCRRset: TBGCRRset absolute $D1;
  BGCRRrec: TBGCRRrec absolute $D1;
const
  BGCR0 = 0;  m_BGCR0 = 1;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR1 = 1;  m_BGCR1 = 2;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR2 = 2;  m_BGCR2 = 4;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR3 = 3;  m_BGCR3 = 8;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR4 = 4;  m_BGCR4 = 16;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR5 = 5;  m_BGCR5 = 32;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR6 = 6;  m_BGCR6 = 64;  // Bandgap Calibration of Resistor Ladder Bits
  BGCR7 = 7;  m_BGCR7 = 128;  // Bandgap Calibration of Resistor Ladder Bits

type
  TBGCSRset = bitpacked set of (e_BGSCDIE, e_BGSCDIF, e_BGSCDE=4, e_BGD);
  TBGCSRrec = bitpacked record
    BGSCDIE,
    BGSCDIF,
    ReservedBit2,
    ReservedBit3,
    BGSCDE,
    BGD,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BGCSR: byte absolute $D2;  // Bandgap Control and Status Register
  BGCSRset: TBGCSRset absolute $D2;
  BGCSRrec: TBGCSRrec absolute $D2;
const
  BGSCDIE = 0;  m_BGSCDIE = 1;  // Bandgap Short Circuit Detection Interrupt Enable
  BGSCDIF = 1;  m_BGSCDIF = 2;  // Bandgap Short Circuit Detection Interrupt Flag
  BGSCDE = 4;  m_BGSCDE = 16;  // Bandgap Short Circuit Detection Enabled
  BGD = 5;  m_BGD = 32;  // Bandgap Disable

type
  TCHGDCSRset = bitpacked set of (e_CHGDIE, e_CHGDIF, e_CHGDISC0, e_CHGDISC1, e_BATTPVL);
  TCHGDCSRrec = bitpacked record
    CHGDIE,
    CHGDIF,
    CHGDISC0,
    CHGDISC1,
    BATTPVL,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CHGDCSR: byte absolute $D4;  // Charger Detect Control and Status Register
  CHGDCSRset: TCHGDCSRset absolute $D4;
  CHGDCSRrec: TCHGDCSRrec absolute $D4;
const
  CHGDIE = 0;  m_CHGDIE = 1;  // Charger Detect Interrupt Enable
  CHGDIF = 1;  m_CHGDIF = 2;  // Charger Detect Interrupt Flag
  CHGDISC0 = 2;  m_CHGDISC0 = 4;  // Charger Detect Interrupt Sense Control
  CHGDISC1 = 3;  m_CHGDISC1 = 8;  // Charger Detect Interrupt Sense Control
  BATTPVL = 4;  m_BATTPVL = 16;  // BATT Pin Voltage Level

var
  CADAC0: byte absolute $E0;  // ADC Accumulate Current

type
  TCADAC1set = bitpacked set of (e_CADAC08, e_CADAC09);
  TCADAC1rec = bitpacked record
    CADAC08,
    CADAC09,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CADAC1: byte absolute $E1;  // ADC Accumulate Current
  CADAC1set: TCADAC1set absolute $E1;
  CADAC1rec: TCADAC1rec absolute $E1;
const
  CADAC08 = 0;  m_CADAC08 = 1;  // ADC accumulate current bits
  CADAC09 = 1;  m_CADAC09 = 2;  // ADC accumulate current bits

var
  CADAC2: byte absolute $E2;  // ADC Accumulate Current

type
  TCADAC3set = bitpacked set of (e_CADAC24, e_CADAC25, e_CADAC26, e_CADAC27, e_CADAC28, e_CADAC29, e_CADAC30, e_CADAC31);
  TCADAC3rec = bitpacked record
    CADAC24,
    CADAC25,
    CADAC26,
    CADAC27,
    CADAC28,
    CADAC29,
    CADAC30,
    CADAC31: TBitField;
  end;
var
  CADAC3: byte absolute $E3;  // ADC Accumulate Current
  CADAC3set: TCADAC3set absolute $E3;
  CADAC3rec: TCADAC3rec absolute $E3;
const
  CADAC24 = 0;  m_CADAC24 = 1;  // ADC accumulate current bits
  CADAC25 = 1;  m_CADAC25 = 2;  // ADC accumulate current bits
  CADAC26 = 2;  m_CADAC26 = 4;  // ADC accumulate current bits
  CADAC27 = 3;  m_CADAC27 = 8;  // ADC accumulate current bits
  CADAC28 = 4;  m_CADAC28 = 16;  // ADC accumulate current bits
  CADAC29 = 5;  m_CADAC29 = 32;  // ADC accumulate current bits
  CADAC30 = 6;  m_CADAC30 = 64;  // ADC accumulate current bits
  CADAC31 = 7;  m_CADAC31 = 128;  // ADC accumulate current bits

var
  CADIC: word absolute $E4;  // CC-ADC Instantaneous Current
  CADICL: byte absolute $E4;
  CADICH: byte absolute $E5;
const
  CADIC0 = 0;  m_CADIC0 = 1;  // CC-ADC Instantaneous Current
  CADIC1 = 1;  m_CADIC1 = 2;  // CC-ADC Instantaneous Current
  CADIC2 = 2;  m_CADIC2 = 4;  // CC-ADC Instantaneous Current
  CADIC3 = 3;  m_CADIC3 = 8;  // CC-ADC Instantaneous Current
  CADIC4 = 4;  m_CADIC4 = 16;  // CC-ADC Instantaneous Current
  CADIC5 = 5;  m_CADIC5 = 32;  // CC-ADC Instantaneous Current
  CADIC6 = 6;  m_CADIC6 = 64;  // CC-ADC Instantaneous Current
  CADIC7 = 7;  m_CADIC7 = 128;  // CC-ADC Instantaneous Current

type
  TCADCSRAset = bitpacked set of (e_CADSE, e_CADSI0, e_CADSI1, e_CADAS0, e_CADAS1, e_CADUB, e_CADPOL, e_CADEN);
  TCADCSRArec = bitpacked record
    CADSE,
    CADSI0,
    CADSI1,
    CADAS0,
    CADAS1,
    CADUB,
    CADPOL,
    CADEN: TBitField;
  end;
var
  CADCSRA: byte absolute $E6;  // CC-ADC Control and Status Register A
  CADCSRAset: TCADCSRAset absolute $E6;
  CADCSRArec: TCADCSRArec absolute $E6;
const
  CADSE = 0;  m_CADSE = 1;  // When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
  CADSI0 = 1;  m_CADSI0 = 2;  // The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
  CADSI1 = 2;  m_CADSI1 = 4;  // The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
  CADAS0 = 3;  m_CADAS0 = 8;  // CC_ADC Accumulate Current Select Bits
  CADAS1 = 4;  m_CADAS1 = 16;  // CC_ADC Accumulate Current Select Bits
  CADUB = 5;  m_CADUB = 32;  // CC_ADC Update Busy
  CADPOL = 6;  m_CADPOL = 64;
  CADEN = 7;  m_CADEN = 128;  // When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.

type
  TCADCSRBset = bitpacked set of (e_CADICIF, e_CADRCIF, e_CADACIF, e_CADICIE=4, e_CADRCIE, e_CADACIE);
  TCADCSRBrec = bitpacked record
    CADICIF,
    CADRCIF,
    CADACIF,
    ReservedBit3,
    CADICIE,
    CADRCIE,
    CADACIE,
    ReservedBit7: TBitField;
  end;
var
  CADCSRB: byte absolute $E7;  // CC-ADC Control and Status Register B
  CADCSRBset: TCADCSRBset absolute $E7;
  CADCSRBrec: TCADCSRBrec absolute $E7;
const
  CADICIF = 0;  m_CADICIF = 1;  // CC-ADC Instantaneous Current Interrupt Flag
  CADRCIF = 1;  m_CADRCIF = 2;  // CC-ADC Accumulate Current Interrupt Flag
  CADACIF = 2;  m_CADACIF = 4;  // CC-ADC Accumulate Current Interrupt Flag
  CADICIE = 4;  m_CADICIE = 16;  // CAD Instantenous Current Interrupt Enable
  CADRCIE = 5;  m_CADRCIE = 32;  // Regular Current Interrupt Enable
  CADACIE = 6;  m_CADACIE = 64;

type
  TCADCSRCset = bitpacked set of (e_CADVSE);
  TCADCSRCrec = bitpacked record
    CADVSE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CADCSRC: byte absolute $E8;  // CC-ADC Control and Status Register C
  CADCSRCset: TCADCSRCset absolute $E8;
  CADCSRCrec: TCADCSRCrec absolute $E8;
const
  CADVSE = 0;  m_CADVSE = 1;  // CC-ADC Voltage Scaling Enable

type
  TCADRCCset = bitpacked set of (e_CADRCC0, e_CADRCC1, e_CADRCC2, e_CADRCC3, e_CADRCC4, e_CADRCC5, e_CADRCC6, e_CADRCC7);
  TCADRCCrec = bitpacked record
    CADRCC0,
    CADRCC1,
    CADRCC2,
    CADRCC3,
    CADRCC4,
    CADRCC5,
    CADRCC6,
    CADRCC7: TBitField;
  end;
var
  CADRCC: byte absolute $E9;  // CC-ADC Regular Charge Current
  CADRCCset: TCADRCCset absolute $E9;
  CADRCCrec: TCADRCCrec absolute $E9;
const
  CADRCC0 = 0;  m_CADRCC0 = 1;  // CC-ADC Regular Charge Current
  CADRCC1 = 1;  m_CADRCC1 = 2;  // CC-ADC Regular Charge Current
  CADRCC2 = 2;  m_CADRCC2 = 4;  // CC-ADC Regular Charge Current
  CADRCC3 = 3;  m_CADRCC3 = 8;  // CC-ADC Regular Charge Current
  CADRCC4 = 4;  m_CADRCC4 = 16;  // CC-ADC Regular Charge Current
  CADRCC5 = 5;  m_CADRCC5 = 32;  // CC-ADC Regular Charge Current
  CADRCC6 = 6;  m_CADRCC6 = 64;  // CC-ADC Regular Charge Current
  CADRCC7 = 7;  m_CADRCC7 = 128;  // CC-ADC Regular Charge Current

type
  TCADRDCset = bitpacked set of (e_CADRDC0, e_CADRDC1, e_CADRDC2, e_CADRDC3, e_CADRDC4, e_CADRDC5, e_CADRDC6, e_CADRDC7);
  TCADRDCrec = bitpacked record
    CADRDC0,
    CADRDC1,
    CADRDC2,
    CADRDC3,
    CADRDC4,
    CADRDC5,
    CADRDC6,
    CADRDC7: TBitField;
  end;
var
  CADRDC: byte absolute $EA;  // CC-ADC Regular Discharge Current
  CADRDCset: TCADRDCset absolute $EA;
  CADRDCrec: TCADRDCrec absolute $EA;
const
  CADRDC0 = 0;  m_CADRDC0 = 1;  // CC-ADC Regular Discharge Current
  CADRDC1 = 1;  m_CADRDC1 = 2;  // CC-ADC Regular Discharge Current
  CADRDC2 = 2;  m_CADRDC2 = 4;  // CC-ADC Regular Discharge Current
  CADRDC3 = 3;  m_CADRDC3 = 8;  // CC-ADC Regular Discharge Current
  CADRDC4 = 4;  m_CADRDC4 = 16;  // CC-ADC Regular Discharge Current
  CADRDC5 = 5;  m_CADRDC5 = 32;  // CC-ADC Regular Discharge Current
  CADRDC6 = 6;  m_CADRDC6 = 64;  // CC-ADC Regular Discharge Current
  CADRDC7 = 7;  m_CADRDC7 = 128;  // CC-ADC Regular Discharge Current

type
  TFCSRset = bitpacked set of (e_CFE, e_DFE, e_CPS, e_DUVRD);
  TFCSRrec = bitpacked record
    CFE,
    DFE,
    CPS,
    DUVRD,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FCSR: byte absolute $F0;  // FET Control and Status Register
  FCSRset: TFCSRset absolute $F0;
  FCSRrec: TFCSRrec absolute $F0;
const
  CFE = 0;  m_CFE = 1;  // Charge FET Enable
  DFE = 1;  m_DFE = 2;  // Discharge FET Enable
  CPS = 2;  m_CPS = 4;  // Current Protection Status
  DUVRD = 3;  m_DUVRD = 8;  // Deep Under-Voltage Recovery Disable

type
  TCBCRset = bitpacked set of (e_CBE1, e_CBE2, e_CBE3, e_CBE4);
  TCBCRrec = bitpacked record
    CBE1,
    CBE2,
    CBE3,
    CBE4,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CBCR: byte absolute $F1;  // Cell Balancing Control Register
  CBCRset: TCBCRset absolute $F1;
  CBCRrec: TCBCRrec absolute $F1;
const
  CBE1 = 0;  m_CBE1 = 1;  // Cell Balancing Enables
  CBE2 = 1;  m_CBE2 = 2;  // Cell Balancing Enables
  CBE3 = 2;  m_CBE3 = 4;  // Cell Balancing Enables
  CBE4 = 3;  m_CBE4 = 8;  // Cell Balancing Enables

type
  TBPIMSKset = bitpacked set of (e_CHCIE, e_DHCIE, e_COCIE, e_DOCIE, e_SCIE);
  TBPIMSKrec = bitpacked record
    CHCIE,
    DHCIE,
    COCIE,
    DOCIE,
    SCIE,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPIMSK: byte absolute $F2;  // Battery Protection Interrupt Mask Register
  BPIMSKset: TBPIMSKset absolute $F2;
  BPIMSKrec: TBPIMSKrec absolute $F2;
const
  CHCIE = 0;  m_CHCIE = 1;  // Charger High-current Protection Activated Interrupt
  DHCIE = 1;  m_DHCIE = 2;  // Discharger High-current Protection Activated Interrupt
  COCIE = 2;  m_COCIE = 4;  // Charge Over-current Protection Activated Interrupt Enable
  DOCIE = 3;  m_DOCIE = 8;  // Discharge Over-current Protection Activated Interrupt Enable
  SCIE = 4;  m_SCIE = 16;  // Short-circuit Protection Activated Interrupt Enable

type
  TBPIFRset = bitpacked set of (e_CHCIF, e_DHCIF, e_COCIF, e_DOCIF, e_SCIF);
  TBPIFRrec = bitpacked record
    CHCIF,
    DHCIF,
    COCIF,
    DOCIF,
    SCIF,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPIFR: byte absolute $F3;  // Battery Protection Interrupt Flag Register
  BPIFRset: TBPIFRset absolute $F3;
  BPIFRrec: TBPIFRrec absolute $F3;
const
  CHCIF = 0;  m_CHCIF = 1;  // Charge High-current Protection Activated Interrupt
  DHCIF = 1;  m_DHCIF = 2;  // Disharge High-current Protection Activated Interrupt
  COCIF = 2;  m_COCIF = 4;  // Charge Over-current Protection Activated Interrupt Flag
  DOCIF = 3;  m_DOCIF = 8;  // Discharge Over-current Protection Activated Interrupt Flag
  SCIF = 4;  m_SCIF = 16;  // Short-circuit Protection Activated Interrupt Flag

type
  TBPSCDset = bitpacked set of (e_SCDL0, e_SCDL1, e_SCDL2, e_SCDL3, e_SCDL4, e_SCDL5, e_SCDL6, e_SCDL7);
  TBPSCDrec = bitpacked record
    SCDL0,
    SCDL1,
    SCDL2,
    SCDL3,
    SCDL4,
    SCDL5,
    SCDL6,
    SCDL7: TBitField;
  end;
var
  BPSCD: byte absolute $F5;  // Battery Protection Short-Circuit Detection Level Register
  BPSCDset: TBPSCDset absolute $F5;
  BPSCDrec: TBPSCDrec absolute $F5;
const
  SCDL0 = 0;  m_SCDL0 = 1;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL1 = 1;  m_SCDL1 = 2;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL2 = 2;  m_SCDL2 = 4;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL3 = 3;  m_SCDL3 = 8;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL4 = 4;  m_SCDL4 = 16;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL5 = 5;  m_SCDL5 = 32;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL6 = 6;  m_SCDL6 = 64;  // Battery Protection Short-Circuit Detection Level Register bits
  SCDL7 = 7;  m_SCDL7 = 128;  // Battery Protection Short-Circuit Detection Level Register bits

type
  TBPDOCDset = bitpacked set of (e_DOCDL0, e_DOCDL1, e_DOCDL2, e_DOCDL3, e_DOCDL4, e_DOCDL5, e_DOCDL6, e_DOCDL7);
  TBPDOCDrec = bitpacked record
    DOCDL0,
    DOCDL1,
    DOCDL2,
    DOCDL3,
    DOCDL4,
    DOCDL5,
    DOCDL6,
    DOCDL7: TBitField;
  end;
var
  BPDOCD: byte absolute $F6;  // Battery Protection Discharge-Over-current Detection Level Register
  BPDOCDset: TBPDOCDset absolute $F6;
  BPDOCDrec: TBPDOCDrec absolute $F6;
const
  DOCDL0 = 0;  m_DOCDL0 = 1;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL1 = 1;  m_DOCDL1 = 2;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL2 = 2;  m_DOCDL2 = 4;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL3 = 3;  m_DOCDL3 = 8;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL4 = 4;  m_DOCDL4 = 16;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL5 = 5;  m_DOCDL5 = 32;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL6 = 6;  m_DOCDL6 = 64;  // Battery Protection Discharge-Over-current Detection Level bits
  DOCDL7 = 7;  m_DOCDL7 = 128;  // Battery Protection Discharge-Over-current Detection Level bits

type
  TBPCOCDset = bitpacked set of (e_COCDL0, e_COCDL1, e_COCDL2, e_COCDL3, e_COCDL4, e_COCDL5, e_COCDL6, e_COCDL7);
  TBPCOCDrec = bitpacked record
    COCDL0,
    COCDL1,
    COCDL2,
    COCDL3,
    COCDL4,
    COCDL5,
    COCDL6,
    COCDL7: TBitField;
  end;
var
  BPCOCD: byte absolute $F7;  // Battery Protection Charge-Over-current Detection Level Register
  BPCOCDset: TBPCOCDset absolute $F7;
  BPCOCDrec: TBPCOCDrec absolute $F7;
const
  COCDL0 = 0;  m_COCDL0 = 1;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL1 = 1;  m_COCDL1 = 2;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL2 = 2;  m_COCDL2 = 4;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL3 = 3;  m_COCDL3 = 8;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL4 = 4;  m_COCDL4 = 16;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL5 = 5;  m_COCDL5 = 32;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL6 = 6;  m_COCDL6 = 64;  // Battery Protection Charge-Over-current Detection Level bits
  COCDL7 = 7;  m_COCDL7 = 128;  // Battery Protection Charge-Over-current Detection Level bits

type
  TBPDHCDset = bitpacked set of (e_DHCDL0, e_DHCDL1, e_DHCDL2, e_DHCDL3, e_DHCDL4, e_DHCDL5, e_DHCDL6, e_DHCDL7);
  TBPDHCDrec = bitpacked record
    DHCDL0,
    DHCDL1,
    DHCDL2,
    DHCDL3,
    DHCDL4,
    DHCDL5,
    DHCDL6,
    DHCDL7: TBitField;
  end;
var
  BPDHCD: byte absolute $F8;  // Battery Protection Discharge-High-current Detection Level Register
  BPDHCDset: TBPDHCDset absolute $F8;
  BPDHCDrec: TBPDHCDrec absolute $F8;
const
  DHCDL0 = 0;  m_DHCDL0 = 1;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL1 = 1;  m_DHCDL1 = 2;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL2 = 2;  m_DHCDL2 = 4;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL3 = 3;  m_DHCDL3 = 8;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL4 = 4;  m_DHCDL4 = 16;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL5 = 5;  m_DHCDL5 = 32;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL6 = 6;  m_DHCDL6 = 64;  // Battery Protection Discharge-High-current Detection Level bits
  DHCDL7 = 7;  m_DHCDL7 = 128;  // Battery Protection Discharge-High-current Detection Level bits

type
  TBPCHCDset = bitpacked set of (e_CHCDL0, e_CHCDL1, e_CHCDL2, e_CHCDL3, e_CHCDL4, e_CHCDL5, e_CHCDL6, e_CHCDL7);
  TBPCHCDrec = bitpacked record
    CHCDL0,
    CHCDL1,
    CHCDL2,
    CHCDL3,
    CHCDL4,
    CHCDL5,
    CHCDL6,
    CHCDL7: TBitField;
  end;
var
  BPCHCD: byte absolute $F9;  // Battery Protection Charge-High-current Detection Level Register
  BPCHCDset: TBPCHCDset absolute $F9;
  BPCHCDrec: TBPCHCDrec absolute $F9;
const
  CHCDL0 = 0;  m_CHCDL0 = 1;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL1 = 1;  m_CHCDL1 = 2;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL2 = 2;  m_CHCDL2 = 4;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL3 = 3;  m_CHCDL3 = 8;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL4 = 4;  m_CHCDL4 = 16;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL5 = 5;  m_CHCDL5 = 32;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL6 = 6;  m_CHCDL6 = 64;  // Battery Protection Charge-High-current Detection Level bits
  CHCDL7 = 7;  m_CHCDL7 = 128;  // Battery Protection Charge-High-current Detection Level bits

type
  TBPSCTRset = bitpacked set of (e_SCPT0, e_SCPT1, e_SCPT2, e_SCPT3, e_SCPT4, e_SCPT5, e_SCPT6);
  TBPSCTRrec = bitpacked record
    SCPT0,
    SCPT1,
    SCPT2,
    SCPT3,
    SCPT4,
    SCPT5,
    SCPT6,
    ReservedBit7: TBitField;
  end;
var
  BPSCTR: byte absolute $FA;  // Battery Protection Short-current Timing Register
  BPSCTRset: TBPSCTRset absolute $FA;
  BPSCTRrec: TBPSCTRrec absolute $FA;
const
  SCPT0 = 0;  m_SCPT0 = 1;  // Battery Protection Short-current Timing bits
  SCPT1 = 1;  m_SCPT1 = 2;  // Battery Protection Short-current Timing bits
  SCPT2 = 2;  m_SCPT2 = 4;  // Battery Protection Short-current Timing bits
  SCPT3 = 3;  m_SCPT3 = 8;  // Battery Protection Short-current Timing bits
  SCPT4 = 4;  m_SCPT4 = 16;  // Battery Protection Short-current Timing bits
  SCPT5 = 5;  m_SCPT5 = 32;  // Battery Protection Short-current Timing bits
  SCPT6 = 6;  m_SCPT6 = 64;  // Battery Protection Short-current Timing bits

type
  TBPOCTRset = bitpacked set of (e_OCPT0, e_OCPT1, e_OCPT2, e_OCPT3, e_OCPT4, e_OCPT5);
  TBPOCTRrec = bitpacked record
    OCPT0,
    OCPT1,
    OCPT2,
    OCPT3,
    OCPT4,
    OCPT5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPOCTR: byte absolute $FB;  // Battery Protection Over-current Timing Register
  BPOCTRset: TBPOCTRset absolute $FB;
  BPOCTRrec: TBPOCTRrec absolute $FB;
const
  OCPT0 = 0;  m_OCPT0 = 1;  // Battery Protection Over-current Timing bits
  OCPT1 = 1;  m_OCPT1 = 2;  // Battery Protection Over-current Timing bits
  OCPT2 = 2;  m_OCPT2 = 4;  // Battery Protection Over-current Timing bits
  OCPT3 = 3;  m_OCPT3 = 8;  // Battery Protection Over-current Timing bits
  OCPT4 = 4;  m_OCPT4 = 16;  // Battery Protection Over-current Timing bits
  OCPT5 = 5;  m_OCPT5 = 32;  // Battery Protection Over-current Timing bits

type
  TBPHCTRset = bitpacked set of (e_HCPT0, e_HCPT1, e_HCPT2, e_HCPT3, e_HCPT4, e_HCPT5);
  TBPHCTRrec = bitpacked record
    HCPT0,
    HCPT1,
    HCPT2,
    HCPT3,
    HCPT4,
    HCPT5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPHCTR: byte absolute $FC;  // Battery Protection Short-current Timing Register
  BPHCTRset: TBPHCTRset absolute $FC;
  BPHCTRrec: TBPHCTRrec absolute $FC;
const
  HCPT0 = 0;  m_HCPT0 = 1;  // Battery Protection Short-current Timing bits
  HCPT1 = 1;  m_HCPT1 = 2;  // Battery Protection Short-current Timing bits
  HCPT2 = 2;  m_HCPT2 = 4;  // Battery Protection Short-current Timing bits
  HCPT3 = 3;  m_HCPT3 = 8;  // Battery Protection Short-current Timing bits
  HCPT4 = 4;  m_HCPT4 = 16;  // Battery Protection Short-current Timing bits
  HCPT5 = 5;  m_HCPT5 = 32;  // Battery Protection Short-current Timing bits

type
  TBPCRset = bitpacked set of (e_CHCD, e_DHCD, e_COCD, e_DOCD, e_SCD, e_EPID);
  TBPCRrec = bitpacked record
    CHCD,
    DHCD,
    COCD,
    DOCD,
    SCD,
    EPID,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPCR: byte absolute $FD;  // Battery Protection Control Register
  BPCRset: TBPCRset absolute $FD;
  BPCRrec: TBPCRrec absolute $FD;
const
  CHCD = 0;  m_CHCD = 1;  // Charge High-current Protection Disable
  DHCD = 1;  m_DHCD = 2;  // Discharge High-current Protection Disable
  COCD = 2;  m_COCD = 4;  // Charge Over-current Protection Disabled
  DOCD = 3;  m_DOCD = 8;  // Discharge Over-current Protection Disabled
  SCD = 4;  m_SCD = 16;  // Short Circuit Protection Disabled
  EPID = 5;  m_EPID = 32;  // External Protection Input Disable

type
  TBPPLRset = bitpacked set of (e_BPPL, e_BPPLE);
  TBPPLRrec = bitpacked record
    BPPL,
    BPPLE,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPPLR: byte absolute $FE;  // Battery Protection Parameter Lock Register
  BPPLRset: TBPPLRset absolute $FE;
  BPPLRrec: TBPPLRrec absolute $FE;
const
  BPPL = 0;  m_BPPL = 1;  // Battery Protection Parameter Lock
  BPPLE = 1;  m_BPPLE = 2;  // Battery Protection Parameter Lock Enable
  // typedefs = 76

implementation

{$i avrcommon.inc}

procedure BPINT_ISR; external name 'BPINT_ISR'; // Interrupt 1 Battery Protection Interrupt
procedure VREGMON_ISR; external name 'VREGMON_ISR'; // Interrupt 2 Voltage regulator monitor interrupt
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 3 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 4 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 5 External Interrupt Request 2
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 6 External Interrupt Request 3
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 7 Pin Change Interrupt 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 8 Pin Change Interrupt 1
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 9 Watchdog Timeout Interrupt
procedure BGSCD_ISR; external name 'BGSCD_ISR'; // Interrupt 10 Bandgap Buffer Short Circuit Detected
procedure CHDET_ISR; external name 'CHDET_ISR'; // Interrupt 11 Charger Detect
procedure TIMER1_IC_ISR; external name 'TIMER1_IC_ISR'; // Interrupt 12 Timer 1 Input capture
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 13 Timer 1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 14 Timer 1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 15 Timer 1 overflow
procedure TIMER0_IC_ISR; external name 'TIMER0_IC_ISR'; // Interrupt 16 Timer 0 Input Capture
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 17 Timer 0 Comapre Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 18 Timer 0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 19 Timer 0 Overflow
procedure TWIBUSCD_ISR; external name 'TWIBUSCD_ISR'; // Interrupt 20 Two-Wire Bus Connect/Disconnect
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 21 Two-Wire Serial Interface
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 22 SPI Serial transfer complete
procedure VADC_ISR; external name 'VADC_ISR'; // Interrupt 23 Voltage ADC Conversion Complete
procedure CCADC_CONV_ISR; external name 'CCADC_CONV_ISR'; // Interrupt 24 Coulomb Counter ADC Conversion Complete
procedure CCADC_REG_CUR_ISR; external name 'CCADC_REG_CUR_ISR'; // Interrupt 25 Coloumb Counter ADC Regular Current
procedure CCADC_ACC_ISR; external name 'CCADC_ACC_ISR'; // Interrupt 26 Coloumb Counter ADC Accumulator
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 27 EEPROM Ready
procedure SPM_ISR; external name 'SPM_ISR'; // Interrupt 28 SPM Ready

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp BPINT_ISR
  jmp VREGMON_ISR
  jmp INT0_ISR
  jmp INT1_ISR
  jmp INT2_ISR
  jmp INT3_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp WDT_ISR
  jmp BGSCD_ISR
  jmp CHDET_ISR
  jmp TIMER1_IC_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_IC_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp TWIBUSCD_ISR
  jmp TWI_ISR
  jmp SPI_STC_ISR
  jmp VADC_ISR
  jmp CCADC_CONV_ISR
  jmp CCADC_REG_CUR_ISR
  jmp CCADC_ACC_ISR
  jmp EE_READY_ISR
  jmp SPM_ISR

  {$i start.inc}

  .weak BPINT_ISR
  .weak VREGMON_ISR
  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak WDT_ISR
  .weak BGSCD_ISR
  .weak CHDET_ISR
  .weak TIMER1_IC_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_IC_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak TWIBUSCD_ISR
  .weak TWI_ISR
  .weak SPI_STC_ISR
  .weak VADC_ISR
  .weak CCADC_CONV_ISR
  .weak CCADC_REG_CUR_ISR
  .weak CCADC_ACC_ISR
  .weak EE_READY_ISR
  .weak SPM_ISR

  .set BPINT_ISR, Default_IRQ_handler
  .set VREGMON_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set BGSCD_ISR, Default_IRQ_handler
  .set CHDET_ISR, Default_IRQ_handler
  .set TIMER1_IC_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_IC_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set TWIBUSCD_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set VADC_ISR, Default_IRQ_handler
  .set CCADC_CONV_ISR, Default_IRQ_handler
  .set CCADC_REG_CUR_ISR, Default_IRQ_handler
  .set CCADC_ACC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_ISR, Default_IRQ_handler
end;

end.
