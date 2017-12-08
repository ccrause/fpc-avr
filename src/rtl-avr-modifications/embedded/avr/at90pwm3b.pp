unit AT90PWM3B;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

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
  PINE: byte absolute $2C;  // Port E Input Pins
  DDRE: byte absolute $2D;  // Port E Data Direction Register

type
  TPORTEset = bitpacked set of (e_PE0, e_PE1, e_PE2);
  TPORTErec = bitpacked record
    PE0,
    PE1,
    PE2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTE: byte absolute $2E;  // Port E Data Register
  PORTEset: TPORTEset absolute $2E;
  PORTErec: TPORTErec absolute $2E;
const
  PE0 = 0;  m_PE0 = 1;
  PE1 = 1;  m_PE1 = 2;
  PE2 = 2;  m_PE2 = 4;

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
  TIFR0: byte absolute $35;  // Timer/Counter0 Interrupt Flag register
  TIFR0set: TTIFR0set absolute $35;
  TIFR0rec: TTIFR0rec absolute $35;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer/Counter0 Output Compare Flag 0A
  OCF0B = 2;  m_OCF0B = 4;  // Timer/Counter0 Output Compare Flag 0B

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
  TIFR1: byte absolute $36;  // Timer/Counter Interrupt Flag register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Output Compare Flag 1A
  OCF1B = 2;  m_OCF1B = 4;  // Output Compare Flag 1B
  ICF1 = 5;  m_ICF1 = 32;  // Input Capture Flag 1

var
  GPIOR1: byte absolute $39;  // General Purpose IO Register 1
  GPIOR2: byte absolute $3A;  // General Purpose IO Register 2

type
  TGPIOR3set = bitpacked set of (e_GPIOR30, e_GPIOR31, e_GPIOR32, e_GPIOR33, e_GPIOR34, e_GPIOR35, e_GPIOR36, e_GPIOR37);
  TGPIOR3rec = bitpacked record
    GPIOR30,
    GPIOR31,
    GPIOR32,
    GPIOR33,
    GPIOR34,
    GPIOR35,
    GPIOR36,
    GPIOR37: TBitField;
  end;
var
  GPIOR3: byte absolute $3B;  // General Purpose IO Register 3
  GPIOR3set: TGPIOR3set absolute $3B;
  GPIOR3rec: TGPIOR3rec absolute $3B;
const
  GPIOR30 = 0;  m_GPIOR30 = 1;  // General Purpose IO Register 3 bis
  GPIOR31 = 1;  m_GPIOR31 = 2;  // General Purpose IO Register 3 bis
  GPIOR32 = 2;  m_GPIOR32 = 4;  // General Purpose IO Register 3 bis
  GPIOR33 = 3;  m_GPIOR33 = 8;  // General Purpose IO Register 3 bis
  GPIOR34 = 4;  m_GPIOR34 = 16;  // General Purpose IO Register 3 bis
  GPIOR35 = 5;  m_GPIOR35 = 32;  // General Purpose IO Register 3 bis
  GPIOR36 = 6;  m_GPIOR36 = 64;  // General Purpose IO Register 3 bis
  GPIOR37 = 7;  m_GPIOR37 = 128;  // General Purpose IO Register 3 bis

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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request Enable
  INT3 = 3;  m_INT3 = 8;  // External Interrupt Request Enable

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
  EECR: byte absolute $3F;  // EEPROM Control Register
  EECRset: TEECRset absolute $3F;
  EECRrec: TEECRrec absolute $3F;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode

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
  EEAR: word absolute $41;  // EEPROM Read/Write Access Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;
const
  EEAR0 = 0;  m_EEAR0 = 1;  // EEPROM Address bytes
  EEAR1 = 1;  m_EEAR1 = 2;  // EEPROM Address bytes
  EEAR2 = 2;  m_EEAR2 = 4;  // EEPROM Address bytes
  EEAR3 = 3;  m_EEAR3 = 8;  // EEPROM Address bytes
  EEAR4 = 4;  m_EEAR4 = 16;  // EEPROM Address bytes
  EEAR5 = 5;  m_EEAR5 = 32;  // EEPROM Address bytes
  EEAR6 = 6;  m_EEAR6 = 64;  // EEPROM Address bytes
  EEAR7 = 7;  m_EEAR7 = 128;  // EEPROM Address bytes

type
  TGTCCRset = bitpacked set of (e_PSR10, e_ICPSEL1=6, e_TSM);
  TGTCCRrec = bitpacked record
    PSR10,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICPSEL1,
    TSM: TBitField;
  end;
var
  GTCCR: byte absolute $43;  // General Timer/Counter Control Register
  GTCCRset: TGTCCRset absolute $43;
  GTCCRrec: TGTCCRrec absolute $43;
const
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
  ICPSEL1 = 6;  m_ICPSEL1 = 64;  // Timer1 Input Capture Selection Bit
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
  TCCR0A: byte absolute $44;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Output Mode, Fast PWm
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Output Mode, Fast PWm
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Output Mode, Phase Correct PWM Mode
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Output Mode, Phase Correct PWM Mode

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
  TCCR0B: byte absolute $45;  // Timer/Counter Control Register B
  TCCR0Bset: TTCCR0Bset absolute $45;
  TCCR0Brec: TTCCR0Brec absolute $45;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  WGM02 = 3;  m_WGM02 = 8;
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare A

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
  TCNT00 = 0;  m_TCNT00 = 1;  // Timer Counter 0 value
  TCNT01 = 1;  m_TCNT01 = 2;  // Timer Counter 0 value
  TCNT02 = 2;  m_TCNT02 = 4;  // Timer Counter 0 value
  TCNT03 = 3;  m_TCNT03 = 8;  // Timer Counter 0 value
  TCNT04 = 4;  m_TCNT04 = 16;  // Timer Counter 0 value
  TCNT05 = 5;  m_TCNT05 = 32;  // Timer Counter 0 value
  TCNT06 = 6;  m_TCNT06 = 64;  // Timer Counter 0 value
  TCNT07 = 7;  m_TCNT07 = 128;  // Timer Counter 0 value

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
  OCR0B: byte absolute $48;  // Timer/Counter0 Output Compare Register
  OCR0Bset: TOCR0Bset absolute $48;
  OCR0Brec: TOCR0Brec absolute $48;
const
  OCR0B0 = 0;  m_OCR0B0 = 1;  // Timer/Counter0 Output Compare B
  OCR0B1 = 1;  m_OCR0B1 = 2;  // Timer/Counter0 Output Compare B
  OCR0B2 = 2;  m_OCR0B2 = 4;  // Timer/Counter0 Output Compare B
  OCR0B3 = 3;  m_OCR0B3 = 8;  // Timer/Counter0 Output Compare B
  OCR0B4 = 4;  m_OCR0B4 = 16;  // Timer/Counter0 Output Compare B
  OCR0B5 = 5;  m_OCR0B5 = 32;  // Timer/Counter0 Output Compare B
  OCR0B6 = 6;  m_OCR0B6 = 64;  // Timer/Counter0 Output Compare B
  OCR0B7 = 7;  m_OCR0B7 = 128;  // Timer/Counter0 Output Compare B

type
  TPLLCSRset = bitpacked set of (e_PLOCK, e_PLLE, e_PLLF);
  TPLLCSRrec = bitpacked record
    PLOCK,
    PLLE,
    PLLF,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PLLCSR: byte absolute $49;  // PLL Control And Status Register
  PLLCSRset: TPLLCSRset absolute $49;
  PLLCSRrec: TPLLCSRrec absolute $49;
const
  PLOCK = 0;  m_PLOCK = 1;  // PLL Lock Detector
  PLLE = 1;  m_PLLE = 2;  // PLL Enable
  PLLF = 2;  m_PLLF = 4;  // PLL Factor

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
  SPD0 = 0;  m_SPD0 = 1;  // SPI Data bits
  SPD1 = 1;  m_SPD1 = 2;  // SPI Data bits
  SPD2 = 2;  m_SPD2 = 4;  // SPI Data bits
  SPD3 = 3;  m_SPD3 = 8;  // SPI Data bits
  SPD4 = 4;  m_SPD4 = 16;  // SPI Data bits
  SPD5 = 5;  m_SPD5 = 32;  // SPI Data bits
  SPD6 = 6;  m_SPD6 = 64;  // SPI Data bits
  SPD7 = 7;  m_SPD7 = 128;  // SPI Data bits

type
  TACSRset = bitpacked set of (e_AC0O, e_AC1O, e_AC2O, e_AC0IF=4, e_AC1IF, e_AC2IF, e_ACCKDIV);
  TACSRrec = bitpacked record
    AC0O,
    AC1O,
    AC2O,
    ReservedBit3,
    AC0IF,
    AC1IF,
    AC2IF,
    ACCKDIV: TBitField;
  end;
var
  ACSR: byte absolute $50;  // Analog Comparator Status Register
  ACSRset: TACSRset absolute $50;
  ACSRrec: TACSRrec absolute $50;
const
  AC0O = 0;  m_AC0O = 1;  // Analog Comparator 0 Output Bit
  AC1O = 1;  m_AC1O = 2;  // Analog Comparator 1 Output Bit
  AC2O = 2;  m_AC2O = 4;  // Analog Comparator 2 Output Bit
  AC0IF = 4;  m_AC0IF = 16;  // Analog Comparator 0 Interrupt Flag Bit
  AC1IF = 5;  m_AC1IF = 32;  // Analog Comparator 1  Interrupt Flag Bit
  AC2IF = 6;  m_AC2IF = 64;  // Analog Comparator 2 Interrupt Flag Bit
  ACCKDIV = 7;  m_ACCKDIV = 128;  // Analog Comparator Clock Divider

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
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_PUD=4, e_SPIPS=7);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    PUD,
    ReservedBit5,
    ReservedBit6,
    SPIPS: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  IVCE = 0;  m_IVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select
  PUD = 4;  m_PUD = 16;  // Pull-up disable
  SPIPS = 7;  m_SPIPS = 128;  // SPI Pin Select

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
  CLKPR: byte absolute $61;
  CLKPRset: TCLKPRset absolute $61;
  CLKPRrec: TCLKPRrec absolute $61;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;
  CLKPS1 = 1;  m_CLKPS1 = 2;
  CLKPS2 = 2;  m_CLKPS2 = 4;
  CLKPS3 = 3;  m_CLKPS3 = 8;
  CLKPCE = 7;  m_CLKPCE = 128;

type
  TPRRset = bitpacked set of (e_PRADC, e_PRUSART0, e_PRSPI, e_PRTIM0, e_PRTIM1, e_PRPSC0, e_PRPSC1, e_PRPSC2);
  TPRRrec = bitpacked record
    PRADC,
    PRUSART0,
    PRSPI,
    PRTIM0,
    PRTIM1,
    PRPSC0,
    PRPSC1,
    PRPSC2: TBitField;
  end;
var
  PRR: byte absolute $64;  // Power Reduction Register
  PRRset: TPRRset absolute $64;
  PRRrec: TPRRrec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  m_PRUSART0 = 2;  // Power Reduction USART
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM0 = 3;  m_PRTIM0 = 8;  // Power Reduction Timer/Counter0
  PRTIM1 = 4;  m_PRTIM1 = 16;  // Power Reduction Timer/Counter1
  PRPSC0 = 5;  m_PRPSC0 = 32;  // Power Reduction PSC0
  PRPSC1 = 6;  m_PRPSC1 = 64;  // Power Reduction PSC1
  PRPSC2 = 7;  m_PRPSC2 = 128;  // Power Reduction PSC2

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
  TIMSK1: byte absolute $6F;  // Timer/Counter Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $6F;
  TIMSK1rec: TTIMSK1rec absolute $6F;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  ICIE1 = 5;  m_ICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TAMP0CSRset = bitpacked set of (e_AMP0TS0, e_AMP0TS1, e_AMP0G0=4, e_AMP0G1, e_AMP0IS, e_AMP0EN);
  TAMP0CSRrec = bitpacked record
    AMP0TS0,
    AMP0TS1,
    ReservedBit2,
    ReservedBit3,
    AMP0G0,
    AMP0G1,
    AMP0IS,
    AMP0EN: TBitField;
  end;
var
  AMP0CSR: byte absolute $76;
  AMP0CSRset: TAMP0CSRset absolute $76;
  AMP0CSRrec: TAMP0CSRrec absolute $76;
const
  AMP0TS0 = 0;  m_AMP0TS0 = 1;
  AMP0TS1 = 1;  m_AMP0TS1 = 2;
  AMP0G0 = 4;  m_AMP0G0 = 16;
  AMP0G1 = 5;  m_AMP0G1 = 32;
  AMP0IS = 6;  m_AMP0IS = 64;
  AMP0EN = 7;  m_AMP0EN = 128;

type
  TAMP1CSRset = bitpacked set of (e_AMP1TS0, e_AMP1TS1, e_AMP1G0=4, e_AMP1G1, e_AMP1IS, e_AMP1EN);
  TAMP1CSRrec = bitpacked record
    AMP1TS0,
    AMP1TS1,
    ReservedBit2,
    ReservedBit3,
    AMP1G0,
    AMP1G1,
    AMP1IS,
    AMP1EN: TBitField;
  end;
var
  AMP1CSR: byte absolute $77;
  AMP1CSRset: TAMP1CSRset absolute $77;
  AMP1CSRrec: TAMP1CSRrec absolute $77;
const
  AMP1TS0 = 0;  m_AMP1TS0 = 1;
  AMP1TS1 = 1;  m_AMP1TS1 = 2;
  AMP1G0 = 4;  m_AMP1G0 = 16;
  AMP1G1 = 5;  m_AMP1G1 = 32;
  AMP1IS = 6;  m_AMP1IS = 64;
  AMP1EN = 7;  m_AMP1EN = 128;

var
  ADC: word absolute $78;  // ADC Data Register Bytes
  ADCL: byte absolute $78;
  ADCH: byte absolute $79;
const
  ADC0 = 0;  m_ADC0 = 1;  // ADC Data Register
  ADC1 = 1;  m_ADC1 = 2;  // ADC Data Register
  ADC2 = 2;  m_ADC2 = 4;  // ADC Data Register
  ADC3 = 3;  m_ADC3 = 8;  // ADC Data Register
  ADC4 = 4;  m_ADC4 = 16;  // ADC Data Register
  ADC5 = 5;  m_ADC5 = 32;  // ADC Data Register
  ADC6 = 6;  m_ADC6 = 64;  // ADC Data Register
  ADC7 = 7;  m_ADC7 = 128;  // ADC Data Register

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
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC Auto Trigger Enable
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADTS3, e_ADHSM=7);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADTS3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ADHSM: TBitField;
  end;
var
  ADCSRB: byte absolute $7B;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source
  ADTS3 = 3;  m_ADTS3 = 8;  // ADC Auto Trigger Source
  ADHSM = 7;  m_ADHSM = 128;  // ADC High Speed Mode

type
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_ADLAR=5, e_REFS0, e_REFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    ReservedBit4,
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
  ADC0D = 0;  m_ADC0D = 1;
  ADC1D = 1;  m_ADC1D = 2;
  ADC2D = 2;  m_ADC2D = 4;
  ADC3D = 3;  m_ADC3D = 8;
  ADC4D = 4;  m_ADC4D = 16;
  ADC5D = 5;  m_ADC5D = 32;
  ADC6D = 6;  m_ADC6D = 64;
  ADC7D = 7;  m_ADC7D = 128;

type
  TDIDR1set = bitpacked set of (e_ADC8D, e_ADC9D, e_ADC10D, e_AMP0ND, e_AMP0PD, e_ACMP0D);
  TDIDR1rec = bitpacked record
    ADC8D,
    ADC9D,
    ADC10D,
    AMP0ND,
    AMP0PD,
    ACMP0D,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR1: byte absolute $7F;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  ADC8D = 0;  m_ADC8D = 1;
  ADC9D = 1;  m_ADC9D = 2;
  ADC10D = 2;  m_ADC10D = 4;
  AMP0ND = 3;  m_AMP0ND = 8;
  AMP0PD = 4;  m_AMP0PD = 16;
  ACMP0D = 5;  m_ACMP0D = 32;

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
  TCCR1C: byte absolute $82;  // Timer/Counter1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $82;
  TCCR1Crec: TTCCR1Crec absolute $82;
const
  FOC1B = 6;  m_FOC1B = 64;
  FOC1A = 7;  m_FOC1A = 128;

var
  TCNT1: word absolute $84;  // Timer/Counter1 Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
const
  TCNT10 = 0;  m_TCNT10 = 1;  // Timer/Counter1
  TCNT11 = 1;  m_TCNT11 = 2;  // Timer/Counter1
  TCNT12 = 2;  m_TCNT12 = 4;  // Timer/Counter1
  TCNT13 = 3;  m_TCNT13 = 8;  // Timer/Counter1
  TCNT14 = 4;  m_TCNT14 = 16;  // Timer/Counter1
  TCNT15 = 5;  m_TCNT15 = 32;  // Timer/Counter1
  TCNT16 = 6;  m_TCNT16 = 64;  // Timer/Counter1
  TCNT17 = 7;  m_TCNT17 = 128;  // Timer/Counter1

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
  OCR1A: word absolute $88;  // Timer/Counter1 Output Compare Register  Bytes
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
  OCR1B: word absolute $8A;  // Timer/Counter1 Output Compare Register  Bytes
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
  TPIFR0set = bitpacked set of (e_PEOP0, e_PRN00, e_PRN01, e_PEV0A, e_PEV0B, e_PSEI0, e_POAC0A, e_POAC0B);
  TPIFR0rec = bitpacked record
    PEOP0,
    PRN00,
    PRN01,
    PEV0A,
    PEV0B,
    PSEI0,
    POAC0A,
    POAC0B: TBitField;
  end;
var
  PIFR0: byte absolute $A0;  // PSC0 Interrupt Flag Register
  PIFR0set: TPIFR0set absolute $A0;
  PIFR0rec: TPIFR0rec absolute $A0;
const
  PEOP0 = 0;  m_PEOP0 = 1;  // End of PSC0 Interrupt
  PRN00 = 1;  m_PRN00 = 2;  // Ramp Number
  PRN01 = 2;  m_PRN01 = 4;  // Ramp Number
  PEV0A = 3;  m_PEV0A = 8;  // External Event A Interrupt
  PEV0B = 4;  m_PEV0B = 16;  // External Event B Interrupt
  PSEI0 = 5;  m_PSEI0 = 32;  // PSC 0 Synchro Error Interrupt
  POAC0A = 6;  m_POAC0A = 64;  // PSC 0 Output A Activity
  POAC0B = 7;  m_POAC0B = 128;  // PSC 0 Output A Activity

type
  TPIM0set = bitpacked set of (e_PEOPE0, e_PEVE0A=3, e_PEVE0B, e_PSEIE0);
  TPIM0rec = bitpacked record
    PEOPE0,
    ReservedBit1,
    ReservedBit2,
    PEVE0A,
    PEVE0B,
    PSEIE0,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIM0: byte absolute $A1;  // PSC0 Interrupt Mask Register
  PIM0set: TPIM0set absolute $A1;
  PIM0rec: TPIM0rec absolute $A1;
const
  PEOPE0 = 0;  m_PEOPE0 = 1;  // End of Cycle Interrupt Enable
  PEVE0A = 3;  m_PEVE0A = 8;  // External Event A Interrupt Enable
  PEVE0B = 4;  m_PEVE0B = 16;  // External Event B Interrupt Enable
  PSEIE0 = 5;  m_PSEIE0 = 32;  // PSC 0 Synchro Error Interrupt Enable

type
  TPIFR1set = bitpacked set of (e_PEOP1, e_PRN10, e_PRN11, e_PEV1A, e_PEV1B, e_PSEI1, e_POAC1A, e_POAC1B);
  TPIFR1rec = bitpacked record
    PEOP1,
    PRN10,
    PRN11,
    PEV1A,
    PEV1B,
    PSEI1,
    POAC1A,
    POAC1B: TBitField;
  end;
var
  PIFR1: byte absolute $A2;  // PSC1 Interrupt Flag Register
  PIFR1set: TPIFR1set absolute $A2;
  PIFR1rec: TPIFR1rec absolute $A2;
const
  PEOP1 = 0;  m_PEOP1 = 1;  // End of PSC1 Interrupt
  PRN10 = 1;  m_PRN10 = 2;  // Ramp Number
  PRN11 = 2;  m_PRN11 = 4;  // Ramp Number
  PEV1A = 3;  m_PEV1A = 8;  // External Event A Interrupt
  PEV1B = 4;  m_PEV1B = 16;  // External Event B Interrupt
  PSEI1 = 5;  m_PSEI1 = 32;  // PSC 1 Synchro Error Interrupt
  POAC1A = 6;  m_POAC1A = 64;  // PSC 1 Output A Activity
  POAC1B = 7;  m_POAC1B = 128;  // PSC 1 Output B Activity

type
  TPIM1set = bitpacked set of (e_PEOPE1, e_PEVE1A=3, e_PEVE1B, e_PSEIE1);
  TPIM1rec = bitpacked record
    PEOPE1,
    ReservedBit1,
    ReservedBit2,
    PEVE1A,
    PEVE1B,
    PSEIE1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIM1: byte absolute $A3;  // PSC1 Interrupt Mask Register
  PIM1set: TPIM1set absolute $A3;
  PIM1rec: TPIM1rec absolute $A3;
const
  PEOPE1 = 0;  m_PEOPE1 = 1;  // End of Cycle Interrupt Enable
  PEVE1A = 3;  m_PEVE1A = 8;  // External Event A Interrupt Enable
  PEVE1B = 4;  m_PEVE1B = 16;  // External Event B Interrupt Enable
  PSEIE1 = 5;  m_PSEIE1 = 32;  // PSC 1 Synchro Error Interrupt Enable

type
  TPIFR2set = bitpacked set of (e_PEOP2, e_PRN20, e_PRN21, e_PEV2A, e_PEV2B, e_PSEI2, e_POAC2A, e_POAC2B);
  TPIFR2rec = bitpacked record
    PEOP2,
    PRN20,
    PRN21,
    PEV2A,
    PEV2B,
    PSEI2,
    POAC2A,
    POAC2B: TBitField;
  end;
var
  PIFR2: byte absolute $A4;  // PSC2 Interrupt Flag Register
  PIFR2set: TPIFR2set absolute $A4;
  PIFR2rec: TPIFR2rec absolute $A4;
const
  PEOP2 = 0;  m_PEOP2 = 1;  // End of PSC2 Interrupt
  PRN20 = 1;  m_PRN20 = 2;  // Ramp Number
  PRN21 = 2;  m_PRN21 = 4;  // Ramp Number
  PEV2A = 3;  m_PEV2A = 8;  // External Event A Interrupt
  PEV2B = 4;  m_PEV2B = 16;  // External Event B Interrupt
  PSEI2 = 5;  m_PSEI2 = 32;  // PSC 2 Synchro Error Interrupt
  POAC2A = 6;  m_POAC2A = 64;  // PSC 2 Output A Activity
  POAC2B = 7;  m_POAC2B = 128;  // PSC 2 Output A Activity

type
  TPIM2set = bitpacked set of (e_PEOPE2, e_PEVE2A=3, e_PEVE2B, e_PSEIE2);
  TPIM2rec = bitpacked record
    PEOPE2,
    ReservedBit1,
    ReservedBit2,
    PEVE2A,
    PEVE2B,
    PSEIE2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIM2: byte absolute $A5;  // PSC2 Interrupt Mask Register
  PIM2set: TPIM2set absolute $A5;
  PIM2rec: TPIM2rec absolute $A5;
const
  PEOPE2 = 0;  m_PEOPE2 = 1;  // End of Cycle Interrupt Enable
  PEVE2A = 3;  m_PEVE2A = 8;  // External Event A Interrupt Enable
  PEVE2B = 4;  m_PEVE2B = 16;  // External Event B Interrupt Enable
  PSEIE2 = 5;  m_PSEIE2 = 32;  // PSC 2 Synchro Error Interrupt Enable

type
  TDACONset = bitpacked set of (e_DAEN, e_DAOE, e_DALA, e_DATS0=4, e_DATS1, e_DATS2, e_DAATE);
  TDACONrec = bitpacked record
    DAEN,
    DAOE,
    DALA,
    ReservedBit3,
    DATS0,
    DATS1,
    DATS2,
    DAATE: TBitField;
  end;
var
  DACON: byte absolute $AA;  // DAC Control Register
  DACONset: TDACONset absolute $AA;
  DACONrec: TDACONrec absolute $AA;
const
  DAEN = 0;  m_DAEN = 1;  // DAC Enable Bit
  DAOE = 1;  m_DAOE = 2;  // DAC Output Enable
  DALA = 2;  m_DALA = 4;  // DAC Left Adjust
  DATS0 = 4;  m_DATS0 = 16;  // DAC Trigger Selection Bits
  DATS1 = 5;  m_DATS1 = 32;  // DAC Trigger Selection Bits
  DATS2 = 6;  m_DATS2 = 64;  // DAC Trigger Selection Bits
  DAATE = 7;  m_DAATE = 128;  // DAC Auto Trigger Enable Bit

var
  DAC: word absolute $AB;  // DAC Data Register
  DACL: byte absolute $AB;
  DACH: byte absolute $AC;
const
  DAC0 = 0;  m_DAC0 = 1;  // DAC Data Register Bits
  DAC1 = 1;  m_DAC1 = 2;  // DAC Data Register Bits
  DAC2 = 2;  m_DAC2 = 4;  // DAC Data Register Bits
  DAC3 = 3;  m_DAC3 = 8;  // DAC Data Register Bits
  DAC4 = 4;  m_DAC4 = 16;  // DAC Data Register Bits
  DAC5 = 5;  m_DAC5 = 32;  // DAC Data Register Bits
  DAC6 = 6;  m_DAC6 = 64;  // DAC Data Register Bits
  DAC7 = 7;  m_DAC7 = 128;  // DAC Data Register Bits

type
  TAC0CONset = bitpacked set of (e_AC0M0, e_AC0M1, e_AC0M2, e_AC0IS0=4, e_AC0IS1, e_AC0IE, e_AC0EN);
  TAC0CONrec = bitpacked record
    AC0M0,
    AC0M1,
    AC0M2,
    ReservedBit3,
    AC0IS0,
    AC0IS1,
    AC0IE,
    AC0EN: TBitField;
  end;
var
  AC0CON: byte absolute $AD;  // Analog Comparator 0 Control Register
  AC0CONset: TAC0CONset absolute $AD;
  AC0CONrec: TAC0CONrec absolute $AD;
const
  AC0M0 = 0;  m_AC0M0 = 1;  // Analog Comparator 0 Multiplexer Register
  AC0M1 = 1;  m_AC0M1 = 2;  // Analog Comparator 0 Multiplexer Register
  AC0M2 = 2;  m_AC0M2 = 4;  // Analog Comparator 0 Multiplexer Register
  AC0IS0 = 4;  m_AC0IS0 = 16;  // Analog Comparator 0  Interrupt Select Bit
  AC0IS1 = 5;  m_AC0IS1 = 32;  // Analog Comparator 0  Interrupt Select Bit
  AC0IE = 6;  m_AC0IE = 64;  // Analog Comparator 0 Interrupt Enable Bit
  AC0EN = 7;  m_AC0EN = 128;  // Analog Comparator 0 Enable Bit

type
  TAC1CONset = bitpacked set of (e_AC1M0, e_AC1M1, e_AC1M2, e_AC1ICE, e_AC1IS0, e_AC1IS1, e_AC1IE, e_AC1EN);
  TAC1CONrec = bitpacked record
    AC1M0,
    AC1M1,
    AC1M2,
    AC1ICE,
    AC1IS0,
    AC1IS1,
    AC1IE,
    AC1EN: TBitField;
  end;
var
  AC1CON: byte absolute $AE;  // Analog Comparator 1 Control Register
  AC1CONset: TAC1CONset absolute $AE;
  AC1CONrec: TAC1CONrec absolute $AE;
const
  AC1M0 = 0;  m_AC1M0 = 1;  // Analog Comparator 1 Multiplexer Register
  AC1M1 = 1;  m_AC1M1 = 2;  // Analog Comparator 1 Multiplexer Register
  AC1M2 = 2;  m_AC1M2 = 4;  // Analog Comparator 1 Multiplexer Register
  AC1ICE = 3;  m_AC1ICE = 8;  // Analog Comparator 1 Interrupt Capture Enable Bit
  AC1IS0 = 4;  m_AC1IS0 = 16;  // Analog Comparator 1  Interrupt Select Bit
  AC1IS1 = 5;  m_AC1IS1 = 32;  // Analog Comparator 1  Interrupt Select Bit
  AC1IE = 6;  m_AC1IE = 64;  // Analog Comparator 1 Interrupt Enable Bit
  AC1EN = 7;  m_AC1EN = 128;  // Analog Comparator 1 Enable Bit

type
  TAC2CONset = bitpacked set of (e_AC2M0, e_AC2M1, e_AC2M2, e_AC2IS0=4, e_AC2IS1, e_AC2IE, e_AC2EN);
  TAC2CONrec = bitpacked record
    AC2M0,
    AC2M1,
    AC2M2,
    ReservedBit3,
    AC2IS0,
    AC2IS1,
    AC2IE,
    AC2EN: TBitField;
  end;
var
  AC2CON: byte absolute $AF;  // Analog Comparator 2 Control Register
  AC2CONset: TAC2CONset absolute $AF;
  AC2CONrec: TAC2CONrec absolute $AF;
const
  AC2M0 = 0;  m_AC2M0 = 1;  // Analog Comparator 2 Multiplexer Register
  AC2M1 = 1;  m_AC2M1 = 2;  // Analog Comparator 2 Multiplexer Register
  AC2M2 = 2;  m_AC2M2 = 4;  // Analog Comparator 2 Multiplexer Register
  AC2IS0 = 4;  m_AC2IS0 = 16;  // Analog Comparator 2  Interrupt Select Bit
  AC2IS1 = 5;  m_AC2IS1 = 32;  // Analog Comparator 2  Interrupt Select Bit
  AC2IE = 6;  m_AC2IE = 64;  // Analog Comparator 2 Interrupt Enable Bit
  AC2EN = 7;  m_AC2EN = 128;  // Analog Comparator 2 Enable Bit

type
  TUCSRAset = bitpacked set of (e_MPCM, e_U2X, e_UPE, e_DOR, e_FE, e_UDRE, e_TXC, e_RXC);
  TUCSRArec = bitpacked record
    MPCM,
    U2X,
    UPE,
    DOR,
    FE,
    UDRE,
    TXC,
    RXC: TBitField;
  end;
var
  UCSRA: byte absolute $C0;  // USART Control and Status register A
  UCSRAset: TUCSRAset absolute $C0;
  UCSRArec: TUCSRArec absolute $C0;
const
  MPCM = 0;  m_MPCM = 1;  // Multi-processor Communication Mode
  U2X = 1;  m_U2X = 2;  // Double USART Transmission Bit
  UPE = 2;  m_UPE = 4;  // USART Parity Error
  DOR = 3;  m_DOR = 8;  // Data Overrun
  FE = 4;  m_FE = 16;  // Framing Error
  UDRE = 5;  m_UDRE = 32;  // USART Data Register Empty
  TXC = 6;  m_TXC = 64;  // USART Transmitt Complete
  RXC = 7;  m_RXC = 128;  // USART Receive Complete

type
  TUCSRBset = bitpacked set of (e_TXB8, e_RXB8, e_UCSZ2, e_TXEN, e_RXEN, e_UDRIE, e_TXCIE, e_RXCIE);
  TUCSRBrec = bitpacked record
    TXB8,
    RXB8,
    UCSZ2,
    TXEN,
    RXEN,
    UDRIE,
    TXCIE,
    RXCIE: TBitField;
  end;
var
  UCSRB: byte absolute $C1;  // USART Control an Status register B
  UCSRBset: TUCSRBset absolute $C1;
  UCSRBrec: TUCSRBrec absolute $C1;
const
  TXB8 = 0;  m_TXB8 = 1;  // Transmit Data Bit 8
  RXB8 = 1;  m_RXB8 = 2;  // Receive Data Bit 8
  UCSZ2 = 2;  m_UCSZ2 = 4;  // Character Size
  TXEN = 3;  m_TXEN = 8;  // Transmitter Enable
  RXEN = 4;  m_RXEN = 16;  // Receiver Enable
  UDRIE = 5;  m_UDRIE = 32;  // USART Data Register Empty Interrupt Enable
  TXCIE = 6;  m_TXCIE = 64;  // TX Complete Interrupt Enable
  RXCIE = 7;  m_RXCIE = 128;  // RX Complete Interrupt Enable

type
  TUCSRCset = bitpacked set of (e_UCPOL, e_UCSZ0, e_UCSZ1, e_USBS, e_UPM0, e_UPM1, e_UMSEL0);
  TUCSRCrec = bitpacked record
    UCPOL,
    UCSZ0,
    UCSZ1,
    USBS,
    UPM0,
    UPM1,
    UMSEL0,
    ReservedBit7: TBitField;
  end;
var
  UCSRC: byte absolute $C2;  // USART Control an Status register C
  UCSRCset: TUCSRCset absolute $C2;
  UCSRCrec: TUCSRCrec absolute $C2;
const
  UCPOL = 0;  m_UCPOL = 1;  // Clock Polarity
  UCSZ0 = 1;  m_UCSZ0 = 2;  // Character Size Bits
  UCSZ1 = 2;  m_UCSZ1 = 4;  // Character Size Bits
  USBS = 3;  m_USBS = 8;  // Stop Bit Select
  UPM0 = 4;  m_UPM0 = 16;  // Parity Mode Bits
  UPM1 = 5;  m_UPM1 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select

var
  UBRR: word absolute $C4;  // USART Baud Rate Register
  UBRRL: byte absolute $C4;
  UBRRH: byte absolute $C5;
const
  UBRR0 = 0;  m_UBRR0 = 1;  // USART Baud Rate Register Bits
  UBRR1 = 1;  m_UBRR1 = 2;  // USART Baud Rate Register Bits
  UBRR2 = 2;  m_UBRR2 = 4;  // USART Baud Rate Register Bits
  UBRR3 = 3;  m_UBRR3 = 8;  // USART Baud Rate Register Bits
  UBRR4 = 4;  m_UBRR4 = 16;  // USART Baud Rate Register Bits
  UBRR5 = 5;  m_UBRR5 = 32;  // USART Baud Rate Register Bits
  UBRR6 = 6;  m_UBRR6 = 64;  // USART Baud Rate Register Bits
  UBRR7 = 7;  m_UBRR7 = 128;  // USART Baud Rate Register Bits

type
  TUDRset = bitpacked set of (e_UDR0, e_UDR1, e_UDR2, e_UDR3, e_UDR4, e_UDR5, e_UDR6, e_UDR7);
  TUDRrec = bitpacked record
    UDR0,
    UDR1,
    UDR2,
    UDR3,
    UDR4,
    UDR5,
    UDR6,
    UDR7: TBitField;
  end;
var
  UDR: byte absolute $C6;  // USART I/O Data Register
  UDRset: TUDRset absolute $C6;
  UDRrec: TUDRrec absolute $C6;
const
  UDR0 = 0;  m_UDR0 = 1;  // USART I/O Data
  UDR1 = 1;  m_UDR1 = 2;  // USART I/O Data
  UDR2 = 2;  m_UDR2 = 4;  // USART I/O Data
  UDR3 = 3;  m_UDR3 = 8;  // USART I/O Data
  UDR4 = 4;  m_UDR4 = 16;  // USART I/O Data
  UDR5 = 5;  m_UDR5 = 32;  // USART I/O Data
  UDR6 = 6;  m_UDR6 = 64;  // USART I/O Data
  UDR7 = 7;  m_UDR7 = 128;  // USART I/O Data

type
  TEUCSRAset = bitpacked set of (e_URxS0, e_URxS1, e_URxS2, e_URxS3, e_UTxS0, e_UTxS1, e_UTxS2, e_UTxS3);
  TEUCSRArec = bitpacked record
    URxS0,
    URxS1,
    URxS2,
    URxS3,
    UTxS0,
    UTxS1,
    UTxS2,
    UTxS3: TBitField;
  end;
var
  EUCSRA: byte absolute $C8;  // EUSART Control and Status Register A
  EUCSRAset: TEUCSRAset absolute $C8;
  EUCSRArec: TEUCSRArec absolute $C8;
const
  URxS0 = 0;  m_URxS0 = 1;  // EUSART Control and Status Register A Bits
  URxS1 = 1;  m_URxS1 = 2;  // EUSART Control and Status Register A Bits
  URxS2 = 2;  m_URxS2 = 4;  // EUSART Control and Status Register A Bits
  URxS3 = 3;  m_URxS3 = 8;  // EUSART Control and Status Register A Bits
  UTxS0 = 4;  m_UTxS0 = 16;  // EUSART Control and Status Register A Bits
  UTxS1 = 5;  m_UTxS1 = 32;  // EUSART Control and Status Register A Bits
  UTxS2 = 6;  m_UTxS2 = 64;  // EUSART Control and Status Register A Bits
  UTxS3 = 7;  m_UTxS3 = 128;  // EUSART Control and Status Register A Bits

type
  TEUCSRBset = bitpacked set of (e_BODR, e_EMCH, e_EUSBS=3, e_EUSART);
  TEUCSRBrec = bitpacked record
    BODR,
    EMCH,
    ReservedBit2,
    EUSBS,
    EUSART,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EUCSRB: byte absolute $C9;  // EUSART Control Register B
  EUCSRBset: TEUCSRBset absolute $C9;
  EUCSRBrec: TEUCSRBrec absolute $C9;
const
  BODR = 0;  m_BODR = 1;  // Order Bit
  EMCH = 1;  m_EMCH = 2;  // Manchester Mode Bit
  EUSBS = 3;  m_EUSBS = 8;  // EUSBS Enable Bit
  EUSART = 4;  m_EUSART = 16;  // EUSART Enable Bit

type
  TEUCSRCset = bitpacked set of (e_STP0, e_STP1, e_F1617, e_FEM);
  TEUCSRCrec = bitpacked record
    STP0,
    STP1,
    F1617,
    FEM,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EUCSRC: byte absolute $CA;  // EUSART Status Register C
  EUCSRCset: TEUCSRCset absolute $CA;
  EUCSRCrec: TEUCSRCrec absolute $CA;
const
  STP0 = 0;  m_STP0 = 1;  // Stop Bits
  STP1 = 1;  m_STP1 = 2;  // Stop Bits
  F1617 = 2;  m_F1617 = 4;  // F1617 Bit
  FEM = 3;  m_FEM = 8;  // Frame Error Manchester Bit

var
  MUBRR: word absolute $CC;  // Manchester Receiver Baud Rate Register
  MUBRRL: byte absolute $CC;
  MUBRRH: byte absolute $CD;
const
  MUBRR0 = 0;  m_MUBRR0 = 1;  // Manchester Receiver Baud Rate Register Bits
  MUBRR1 = 1;  m_MUBRR1 = 2;  // Manchester Receiver Baud Rate Register Bits
  MUBRR2 = 2;  m_MUBRR2 = 4;  // Manchester Receiver Baud Rate Register Bits
  MUBRR3 = 3;  m_MUBRR3 = 8;  // Manchester Receiver Baud Rate Register Bits
  MUBRR4 = 4;  m_MUBRR4 = 16;  // Manchester Receiver Baud Rate Register Bits
  MUBRR5 = 5;  m_MUBRR5 = 32;  // Manchester Receiver Baud Rate Register Bits
  MUBRR6 = 6;  m_MUBRR6 = 64;  // Manchester Receiver Baud Rate Register Bits
  MUBRR7 = 7;  m_MUBRR7 = 128;  // Manchester Receiver Baud Rate Register Bits

type
  TEUDRset = bitpacked set of (e_EUDR0, e_EUDR1, e_EUDR2, e_EUDR3, e_EUDR4, e_EUDR5, e_EUDR6, e_EUDR7);
  TEUDRrec = bitpacked record
    EUDR0,
    EUDR1,
    EUDR2,
    EUDR3,
    EUDR4,
    EUDR5,
    EUDR6,
    EUDR7: TBitField;
  end;
var
  EUDR: byte absolute $CE;  // EUSART I/O Data Register
  EUDRset: TEUDRset absolute $CE;
  EUDRrec: TEUDRrec absolute $CE;
const
  EUDR0 = 0;  m_EUDR0 = 1;  // EUSART Extended data bits
  EUDR1 = 1;  m_EUDR1 = 2;  // EUSART Extended data bits
  EUDR2 = 2;  m_EUDR2 = 4;  // EUSART Extended data bits
  EUDR3 = 3;  m_EUDR3 = 8;  // EUSART Extended data bits
  EUDR4 = 4;  m_EUDR4 = 16;  // EUSART Extended data bits
  EUDR5 = 5;  m_EUDR5 = 32;  // EUSART Extended data bits
  EUDR6 = 6;  m_EUDR6 = 64;  // EUSART Extended data bits
  EUDR7 = 7;  m_EUDR7 = 128;  // EUSART Extended data bits

type
  TPSOC0set = bitpacked set of (e_POEN0A, e_POEN0B=2, e_PSYNC00=4, e_PSYNC01);
  TPSOC0rec = bitpacked record
    POEN0A,
    ReservedBit1,
    POEN0B,
    ReservedBit3,
    PSYNC00,
    PSYNC01,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PSOC0: byte absolute $D0;  // PSC0 Synchro and Output Configuration
  PSOC0set: TPSOC0set absolute $D0;
  PSOC0rec: TPSOC0rec absolute $D0;
const
  POEN0A = 0;  m_POEN0A = 1;  // PSCOUT00 Output Enable
  POEN0B = 2;  m_POEN0B = 4;  // PSCOUT01 Output Enable
  PSYNC00 = 4;  m_PSYNC00 = 16;  // Synchronization Out for ADC Selection
  PSYNC01 = 5;  m_PSYNC01 = 32;  // Synchronization Out for ADC Selection

var
  OCR0SA: word absolute $D2;  // Output Compare 0 SA Register
  OCR0SAL: byte absolute $D2;
  OCR0SAH: byte absolute $D3;
const
  OCR0SA0 = 0;  m_OCR0SA0 = 1;  // Output Compare SA
  OCR0SA1 = 1;  m_OCR0SA1 = 2;  // Output Compare SA
  OCR0SA2 = 2;  m_OCR0SA2 = 4;  // Output Compare SA
  OCR0SA3 = 3;  m_OCR0SA3 = 8;  // Output Compare SA
  OCR0SA4 = 4;  m_OCR0SA4 = 16;  // Output Compare SA
  OCR0SA5 = 5;  m_OCR0SA5 = 32;  // Output Compare SA
  OCR0SA6 = 6;  m_OCR0SA6 = 64;  // Output Compare SA
  OCR0SA7 = 7;  m_OCR0SA7 = 128;  // Output Compare SA

var
  OCR0RA: word absolute $D4;  // Output Compare 0 RA Register
  OCR0RAL: byte absolute $D4;
  OCR0RAH: byte absolute $D5;
const
  OCR0RA0 = 0;  m_OCR0RA0 = 1;  // Output Compare RA
  OCR0RA1 = 1;  m_OCR0RA1 = 2;  // Output Compare RA
  OCR0RA2 = 2;  m_OCR0RA2 = 4;  // Output Compare RA
  OCR0RA3 = 3;  m_OCR0RA3 = 8;  // Output Compare RA
  OCR0RA4 = 4;  m_OCR0RA4 = 16;  // Output Compare RA
  OCR0RA5 = 5;  m_OCR0RA5 = 32;  // Output Compare RA
  OCR0RA6 = 6;  m_OCR0RA6 = 64;  // Output Compare RA
  OCR0RA7 = 7;  m_OCR0RA7 = 128;  // Output Compare RA

var
  OCR0SB: word absolute $D6;  // Output Compare 0 SB Register
  OCR0SBL: byte absolute $D6;
  OCR0SBH: byte absolute $D7;
const
  OCR0SB0 = 0;  m_OCR0SB0 = 1;  // Output Compare SB
  OCR0SB1 = 1;  m_OCR0SB1 = 2;  // Output Compare SB
  OCR0SB2 = 2;  m_OCR0SB2 = 4;  // Output Compare SB
  OCR0SB3 = 3;  m_OCR0SB3 = 8;  // Output Compare SB
  OCR0SB4 = 4;  m_OCR0SB4 = 16;  // Output Compare SB
  OCR0SB5 = 5;  m_OCR0SB5 = 32;  // Output Compare SB
  OCR0SB6 = 6;  m_OCR0SB6 = 64;  // Output Compare SB
  OCR0SB7 = 7;  m_OCR0SB7 = 128;  // Output Compare SB

var
  OCR0RB: word absolute $D8;  // Output Compare 0 RB Register
  OCR0RBL: byte absolute $D8;
  OCR0RBH: byte absolute $D9;
const
  OCR0RB0 = 0;  m_OCR0RB0 = 1;  // Output Compare RB
  OCR0RB1 = 1;  m_OCR0RB1 = 2;  // Output Compare RB
  OCR0RB2 = 2;  m_OCR0RB2 = 4;  // Output Compare RB
  OCR0RB3 = 3;  m_OCR0RB3 = 8;  // Output Compare RB
  OCR0RB4 = 4;  m_OCR0RB4 = 16;  // Output Compare RB
  OCR0RB5 = 5;  m_OCR0RB5 = 32;  // Output Compare RB
  OCR0RB6 = 6;  m_OCR0RB6 = 64;  // Output Compare RB
  OCR0RB7 = 7;  m_OCR0RB7 = 128;  // Output Compare RB

type
  TPCNF0set = bitpacked set of (e_PCLKSEL0=1, e_POP0, e_PMODE00, e_PMODE01, e_PLOCK0, e_PALOCK0, e_PFIFTY0);
  TPCNF0rec = bitpacked record
    ReservedBit0,
    PCLKSEL0,
    POP0,
    PMODE00,
    PMODE01,
    PLOCK0,
    PALOCK0,
    PFIFTY0: TBitField;
  end;
var
  PCNF0: byte absolute $DA;  // PSC 0 Configuration Register
  PCNF0set: TPCNF0set absolute $DA;
  PCNF0rec: TPCNF0rec absolute $DA;
const
  PCLKSEL0 = 1;  m_PCLKSEL0 = 2;  // PSC 0 Input Clock Select
  POP0 = 2;  m_POP0 = 4;  // PSC 0 Output Polarity
  PMODE00 = 3;  m_PMODE00 = 8;  // PSC 0 Mode
  PMODE01 = 4;  m_PMODE01 = 16;  // PSC 0 Mode
  PLOCK0 = 5;  m_PLOCK0 = 32;  // PSC 0 Lock
  PALOCK0 = 6;  m_PALOCK0 = 64;  // PSC 0 Autolock
  PFIFTY0 = 7;  m_PFIFTY0 = 128;  // PSC 0 Fifty

type
  TPCTL0set = bitpacked set of (e_PRUN0, e_PCCYC0, e_PARUN0, e_PAOC0A, e_PAOC0B, e_PBFM0, e_PPRE00, e_PPRE01);
  TPCTL0rec = bitpacked record
    PRUN0,
    PCCYC0,
    PARUN0,
    PAOC0A,
    PAOC0B,
    PBFM0,
    PPRE00,
    PPRE01: TBitField;
  end;
var
  PCTL0: byte absolute $DB;  // PSC 0 Control Register
  PCTL0set: TPCTL0set absolute $DB;
  PCTL0rec: TPCTL0rec absolute $DB;
const
  PRUN0 = 0;  m_PRUN0 = 1;  // PSC 0 Run
  PCCYC0 = 1;  m_PCCYC0 = 2;  // PSC0 Complete Cycle
  PARUN0 = 2;  m_PARUN0 = 4;  // PSC0 Auto Run
  PAOC0A = 3;  m_PAOC0A = 8;  // PSC 0 Asynchronous Output Control A
  PAOC0B = 4;  m_PAOC0B = 16;  // PSC 0 Asynchronous Output Control B
  PBFM0 = 5;  m_PBFM0 = 32;  // PSC 0 Balance Flank Width Modulation
  PPRE00 = 6;  m_PPRE00 = 64;  // PSC 0 Prescaler Selects
  PPRE01 = 7;  m_PPRE01 = 128;  // PSC 0 Prescaler Selects

type
  TPFRC0Aset = bitpacked set of (e_PRFM0A0, e_PRFM0A1, e_PRFM0A2, e_PRFM0A3, e_PFLTE0A, e_PELEV0A, e_PISEL0A, e_PCAE0A);
  TPFRC0Arec = bitpacked record
    PRFM0A0,
    PRFM0A1,
    PRFM0A2,
    PRFM0A3,
    PFLTE0A,
    PELEV0A,
    PISEL0A,
    PCAE0A: TBitField;
  end;
var
  PFRC0A: byte absolute $DC;  // PSC 0 Input A Control
  PFRC0Aset: TPFRC0Aset absolute $DC;
  PFRC0Arec: TPFRC0Arec absolute $DC;
const
  PRFM0A0 = 0;  m_PRFM0A0 = 1;  // PSC 0 Retrigger and Fault Mode for Part A
  PRFM0A1 = 1;  m_PRFM0A1 = 2;  // PSC 0 Retrigger and Fault Mode for Part A
  PRFM0A2 = 2;  m_PRFM0A2 = 4;  // PSC 0 Retrigger and Fault Mode for Part A
  PRFM0A3 = 3;  m_PRFM0A3 = 8;  // PSC 0 Retrigger and Fault Mode for Part A
  PFLTE0A = 4;  m_PFLTE0A = 16;  // PSC 0 Filter Enable on Input Part A
  PELEV0A = 5;  m_PELEV0A = 32;  // PSC 0 Edge Level Selector on Input Part A
  PISEL0A = 6;  m_PISEL0A = 64;  // PSC 0 Input Select for Part A
  PCAE0A = 7;  m_PCAE0A = 128;  // PSC 0 Capture Enable Input Part A

type
  TPFRC0Bset = bitpacked set of (e_PRFM0B0, e_PRFM0B1, e_PRFM0B2, e_PRFM0B3, e_PFLTE0B, e_PELEV0B, e_PISEL0B, e_PCAE0B);
  TPFRC0Brec = bitpacked record
    PRFM0B0,
    PRFM0B1,
    PRFM0B2,
    PRFM0B3,
    PFLTE0B,
    PELEV0B,
    PISEL0B,
    PCAE0B: TBitField;
  end;
var
  PFRC0B: byte absolute $DD;  // PSC 0 Input B Control
  PFRC0Bset: TPFRC0Bset absolute $DD;
  PFRC0Brec: TPFRC0Brec absolute $DD;
const
  PRFM0B0 = 0;  m_PRFM0B0 = 1;  // PSC 0 Retrigger and Fault Mode for Part B
  PRFM0B1 = 1;  m_PRFM0B1 = 2;  // PSC 0 Retrigger and Fault Mode for Part B
  PRFM0B2 = 2;  m_PRFM0B2 = 4;  // PSC 0 Retrigger and Fault Mode for Part B
  PRFM0B3 = 3;  m_PRFM0B3 = 8;  // PSC 0 Retrigger and Fault Mode for Part B
  PFLTE0B = 4;  m_PFLTE0B = 16;  // PSC 0 Filter Enable on Input Part B
  PELEV0B = 5;  m_PELEV0B = 32;  // PSC 0 Edge Level Selector on Input Part B
  PISEL0B = 6;  m_PISEL0B = 64;  // PSC 0 Input Select for Part B
  PCAE0B = 7;  m_PCAE0B = 128;  // PSC 0 Capture Enable Input Part B

var
  PICR0: word absolute $DE;  // PSC 0 Input Capture Register 
  PICR0L: byte absolute $DE;
  PICR0H: byte absolute $DF;
const
  PICR00 = 0;  m_PICR00 = 1;  // PSC 0 Input Capture Bytes
  PICR01 = 1;  m_PICR01 = 2;  // PSC 0 Input Capture Bytes
  PICR02 = 2;  m_PICR02 = 4;  // PSC 0 Input Capture Bytes
  PICR03 = 3;  m_PICR03 = 8;  // PSC 0 Input Capture Bytes
  PICR04 = 4;  m_PICR04 = 16;  // PSC 0 Input Capture Bytes
  PICR05 = 5;  m_PICR05 = 32;  // PSC 0 Input Capture Bytes
  PICR06 = 6;  m_PICR06 = 64;  // PSC 0 Input Capture Bytes
  PICR07 = 7;  m_PICR07 = 128;  // PSC 0 Input Capture Bytes

type
  TPSOC1set = bitpacked set of (e_POEN1A, e_POEN1B=2, e_PSYNC1_0=4, e_PSYNC1_1);
  TPSOC1rec = bitpacked record
    POEN1A,
    ReservedBit1,
    POEN1B,
    ReservedBit3,
    PSYNC1_0,
    PSYNC1_1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PSOC1: byte absolute $E0;  // PSC1 Synchro and Output Configuration
  PSOC1set: TPSOC1set absolute $E0;
  PSOC1rec: TPSOC1rec absolute $E0;
const
  POEN1A = 0;  m_POEN1A = 1;  // PSCOUT10 Output Enable
  POEN1B = 2;  m_POEN1B = 4;  // PSCOUT11 Output Enable
  PSYNC1_0 = 4;  m_PSYNC1_0 = 16;  // Synchronization Out for ADC Selection
  PSYNC1_1 = 5;  m_PSYNC1_1 = 32;  // Synchronization Out for ADC Selection

var
  OCR1SA: word absolute $E2;  // Output Compare SA Register 
  OCR1SAL: byte absolute $E2;
  OCR1SAH: byte absolute $E3;
const
  OCR1SA0 = 0;  m_OCR1SA0 = 1;  // Output Compare 1 SA
  OCR1SA1 = 1;  m_OCR1SA1 = 2;  // Output Compare 1 SA
  OCR1SA2 = 2;  m_OCR1SA2 = 4;  // Output Compare 1 SA
  OCR1SA3 = 3;  m_OCR1SA3 = 8;  // Output Compare 1 SA
  OCR1SA4 = 4;  m_OCR1SA4 = 16;  // Output Compare 1 SA
  OCR1SA5 = 5;  m_OCR1SA5 = 32;  // Output Compare 1 SA
  OCR1SA6 = 6;  m_OCR1SA6 = 64;  // Output Compare 1 SA
  OCR1SA7 = 7;  m_OCR1SA7 = 128;  // Output Compare 1 SA

var
  OCR1RA: word absolute $E4;  // Output Compare RA Register 
  OCR1RAL: byte absolute $E4;
  OCR1RAH: byte absolute $E5;
const
  OCR1RA0 = 0;  m_OCR1RA0 = 1;  // Output Compare 1 RA
  OCR1RA1 = 1;  m_OCR1RA1 = 2;  // Output Compare 1 RA
  OCR1RA2 = 2;  m_OCR1RA2 = 4;  // Output Compare 1 RA
  OCR1RA3 = 3;  m_OCR1RA3 = 8;  // Output Compare 1 RA
  OCR1RA4 = 4;  m_OCR1RA4 = 16;  // Output Compare 1 RA
  OCR1RA5 = 5;  m_OCR1RA5 = 32;  // Output Compare 1 RA
  OCR1RA6 = 6;  m_OCR1RA6 = 64;  // Output Compare 1 RA
  OCR1RA7 = 7;  m_OCR1RA7 = 128;  // Output Compare 1 RA

var
  OCR1SB: word absolute $E6;  // Output Compare SB Register 
  OCR1SBL: byte absolute $E6;
  OCR1SBH: byte absolute $E7;
const
  OCR1SB0 = 0;  m_OCR1SB0 = 1;  // Output Compare 1 SB
  OCR1SB1 = 1;  m_OCR1SB1 = 2;  // Output Compare 1 SB
  OCR1SB2 = 2;  m_OCR1SB2 = 4;  // Output Compare 1 SB
  OCR1SB3 = 3;  m_OCR1SB3 = 8;  // Output Compare 1 SB
  OCR1SB4 = 4;  m_OCR1SB4 = 16;  // Output Compare 1 SB
  OCR1SB5 = 5;  m_OCR1SB5 = 32;  // Output Compare 1 SB
  OCR1SB6 = 6;  m_OCR1SB6 = 64;  // Output Compare 1 SB
  OCR1SB7 = 7;  m_OCR1SB7 = 128;  // Output Compare 1 SB

var
  OCR1RB: word absolute $E8;  // Output Compare RB Register 
  OCR1RBL: byte absolute $E8;
  OCR1RBH: byte absolute $E9;
const
  OCR1RB0 = 0;  m_OCR1RB0 = 1;  // Output Compare 1 RB
  OCR1RB1 = 1;  m_OCR1RB1 = 2;  // Output Compare 1 RB
  OCR1RB2 = 2;  m_OCR1RB2 = 4;  // Output Compare 1 RB
  OCR1RB3 = 3;  m_OCR1RB3 = 8;  // Output Compare 1 RB
  OCR1RB4 = 4;  m_OCR1RB4 = 16;  // Output Compare 1 RB
  OCR1RB5 = 5;  m_OCR1RB5 = 32;  // Output Compare 1 RB
  OCR1RB6 = 6;  m_OCR1RB6 = 64;  // Output Compare 1 RB
  OCR1RB7 = 7;  m_OCR1RB7 = 128;  // Output Compare 1 RB

type
  TPCNF1set = bitpacked set of (e_PCLKSEL1=1, e_POP1, e_PMODE10, e_PMODE11, e_PLOCK1, e_PALOCK1, e_PFIFTY1);
  TPCNF1rec = bitpacked record
    ReservedBit0,
    PCLKSEL1,
    POP1,
    PMODE10,
    PMODE11,
    PLOCK1,
    PALOCK1,
    PFIFTY1: TBitField;
  end;
var
  PCNF1: byte absolute $EA;  // PSC 1 Configuration Register
  PCNF1set: TPCNF1set absolute $EA;
  PCNF1rec: TPCNF1rec absolute $EA;
const
  PCLKSEL1 = 1;  m_PCLKSEL1 = 2;  // PSC 1 Input Clock Select
  POP1 = 2;  m_POP1 = 4;  // PSC 1 Output Polarity
  PMODE10 = 3;  m_PMODE10 = 8;  // PSC 1 Mode
  PMODE11 = 4;  m_PMODE11 = 16;  // PSC 1 Mode
  PLOCK1 = 5;  m_PLOCK1 = 32;  // PSC 1 Lock
  PALOCK1 = 6;  m_PALOCK1 = 64;  // PSC 1 Autolock
  PFIFTY1 = 7;  m_PFIFTY1 = 128;  // PSC 1 Fifty

type
  TPCTL1set = bitpacked set of (e_PRUN1, e_PCCYC1, e_PARUN1, e_PAOC1A, e_PAOC1B, e_PBFM1, e_PPRE10, e_PPRE11);
  TPCTL1rec = bitpacked record
    PRUN1,
    PCCYC1,
    PARUN1,
    PAOC1A,
    PAOC1B,
    PBFM1,
    PPRE10,
    PPRE11: TBitField;
  end;
var
  PCTL1: byte absolute $EB;  // PSC 1 Control Register
  PCTL1set: TPCTL1set absolute $EB;
  PCTL1rec: TPCTL1rec absolute $EB;
const
  PRUN1 = 0;  m_PRUN1 = 1;  // PSC 1 Run
  PCCYC1 = 1;  m_PCCYC1 = 2;  // PSC1 Complete Cycle
  PARUN1 = 2;  m_PARUN1 = 4;  // PSC1 Auto Run
  PAOC1A = 3;  m_PAOC1A = 8;  // PSC 1 Asynchronous Output Control A
  PAOC1B = 4;  m_PAOC1B = 16;  // PSC 1 Asynchronous Output Control B
  PBFM1 = 5;  m_PBFM1 = 32;  // Balance Flank Width Modulation
  PPRE10 = 6;  m_PPRE10 = 64;  // PSC 1 Prescaler Selects
  PPRE11 = 7;  m_PPRE11 = 128;  // PSC 1 Prescaler Selects

type
  TPFRC1Aset = bitpacked set of (e_PRFM1A0, e_PRFM1A1, e_PRFM1A2, e_PRFM1A3, e_PFLTE1A, e_PELEV1A, e_PISEL1A, e_PCAE1A);
  TPFRC1Arec = bitpacked record
    PRFM1A0,
    PRFM1A1,
    PRFM1A2,
    PRFM1A3,
    PFLTE1A,
    PELEV1A,
    PISEL1A,
    PCAE1A: TBitField;
  end;
var
  PFRC1A: byte absolute $EC;  // PSC 1 Input B Control
  PFRC1Aset: TPFRC1Aset absolute $EC;
  PFRC1Arec: TPFRC1Arec absolute $EC;
const
  PRFM1A0 = 0;  m_PRFM1A0 = 1;  // PSC 1 Retrigger and Fault Mode for Part A
  PRFM1A1 = 1;  m_PRFM1A1 = 2;  // PSC 1 Retrigger and Fault Mode for Part A
  PRFM1A2 = 2;  m_PRFM1A2 = 4;  // PSC 1 Retrigger and Fault Mode for Part A
  PRFM1A3 = 3;  m_PRFM1A3 = 8;  // PSC 1 Retrigger and Fault Mode for Part A
  PFLTE1A = 4;  m_PFLTE1A = 16;  // PSC 1 Filter Enable on Input Part A
  PELEV1A = 5;  m_PELEV1A = 32;  // PSC 1 Edge Level Selector on Input Part A
  PISEL1A = 6;  m_PISEL1A = 64;  // PSC 1 Input Select for Part A
  PCAE1A = 7;  m_PCAE1A = 128;  // PSC 1 Capture Enable Input Part A

type
  TPFRC1Bset = bitpacked set of (e_PRFM1B0, e_PRFM1B1, e_PRFM1B2, e_PRFM1B3, e_PFLTE1B, e_PELEV1B, e_PISEL1B, e_PCAE1B);
  TPFRC1Brec = bitpacked record
    PRFM1B0,
    PRFM1B1,
    PRFM1B2,
    PRFM1B3,
    PFLTE1B,
    PELEV1B,
    PISEL1B,
    PCAE1B: TBitField;
  end;
var
  PFRC1B: byte absolute $ED;  // PSC 1 Input B Control
  PFRC1Bset: TPFRC1Bset absolute $ED;
  PFRC1Brec: TPFRC1Brec absolute $ED;
const
  PRFM1B0 = 0;  m_PRFM1B0 = 1;  // PSC 1 Retrigger and Fault Mode for Part B
  PRFM1B1 = 1;  m_PRFM1B1 = 2;  // PSC 1 Retrigger and Fault Mode for Part B
  PRFM1B2 = 2;  m_PRFM1B2 = 4;  // PSC 1 Retrigger and Fault Mode for Part B
  PRFM1B3 = 3;  m_PRFM1B3 = 8;  // PSC 1 Retrigger and Fault Mode for Part B
  PFLTE1B = 4;  m_PFLTE1B = 16;  // PSC 1 Filter Enable on Input Part B
  PELEV1B = 5;  m_PELEV1B = 32;  // PSC 1 Edge Level Selector on Input Part B
  PISEL1B = 6;  m_PISEL1B = 64;  // PSC 1 Input Select for Part B
  PCAE1B = 7;  m_PCAE1B = 128;  // PSC 1 Capture Enable Input Part B

var
  PICR1: word absolute $EE;  // PSC 1 Input Capture Register 
  PICR1L: byte absolute $EE;
  PICR1H: byte absolute $EF;
const
  PICR10 = 0;  m_PICR10 = 1;  // PSC 1 Input Capture Bytes
  PICR11 = 1;  m_PICR11 = 2;  // PSC 1 Input Capture Bytes
  PICR12 = 2;  m_PICR12 = 4;  // PSC 1 Input Capture Bytes
  PICR13 = 3;  m_PICR13 = 8;  // PSC 1 Input Capture Bytes
  PICR14 = 4;  m_PICR14 = 16;  // PSC 1 Input Capture Bytes
  PICR15 = 5;  m_PICR15 = 32;  // PSC 1 Input Capture Bytes
  PICR16 = 6;  m_PICR16 = 64;  // PSC 1 Input Capture Bytes
  PICR17 = 7;  m_PICR17 = 128;  // PSC 1 Input Capture Bytes

type
  TPSOC2set = bitpacked set of (e_POEN2A, e_POEN2C, e_POEN2B, e_POEN2D, e_PSYNC2_0, e_PSYNC2_1, e_POS22, e_POS23);
  TPSOC2rec = bitpacked record
    POEN2A,
    POEN2C,
    POEN2B,
    POEN2D,
    PSYNC2_0,
    PSYNC2_1,
    POS22,
    POS23: TBitField;
  end;
var
  PSOC2: byte absolute $F0;  // PSC2 Synchro and Output Configuration
  PSOC2set: TPSOC2set absolute $F0;
  PSOC2rec: TPSOC2rec absolute $F0;
const
  POEN2A = 0;  m_POEN2A = 1;  // PSCOUT20 Output Enable
  POEN2C = 1;  m_POEN2C = 2;  // PSCOUT22 Output Enable
  POEN2B = 2;  m_POEN2B = 4;  // PSCOUT21 Output Enable
  POEN2D = 3;  m_POEN2D = 8;  // PSCOUT23 Output Enable
  PSYNC2_0 = 4;  m_PSYNC2_0 = 16;  // Synchronization Out for ADC Selection
  PSYNC2_1 = 5;  m_PSYNC2_1 = 32;  // Synchronization Out for ADC Selection
  POS22 = 6;  m_POS22 = 64;  // PSC 2 Output 23 Select
  POS23 = 7;  m_POS23 = 128;  // PSC 2 Output 23 Select

type
  TPOM2set = bitpacked set of (e_POMV2A0, e_POMV2A1, e_POMV2A2, e_POMV2A3, e_POMV2B0, e_POMV2B1, e_POMV2B2, e_POMV2B3);
  TPOM2rec = bitpacked record
    POMV2A0,
    POMV2A1,
    POMV2A2,
    POMV2A3,
    POMV2B0,
    POMV2B1,
    POMV2B2,
    POMV2B3: TBitField;
  end;
var
  POM2: byte absolute $F1;  // PSC 2 Output Matrix
  POM2set: TPOM2set absolute $F1;
  POM2rec: TPOM2rec absolute $F1;
const
  POMV2A0 = 0;  m_POMV2A0 = 1;  // Output Matrix Output A Ramps
  POMV2A1 = 1;  m_POMV2A1 = 2;  // Output Matrix Output A Ramps
  POMV2A2 = 2;  m_POMV2A2 = 4;  // Output Matrix Output A Ramps
  POMV2A3 = 3;  m_POMV2A3 = 8;  // Output Matrix Output A Ramps
  POMV2B0 = 4;  m_POMV2B0 = 16;  // Output Matrix Output B Ramps
  POMV2B1 = 5;  m_POMV2B1 = 32;  // Output Matrix Output B Ramps
  POMV2B2 = 6;  m_POMV2B2 = 64;  // Output Matrix Output B Ramps
  POMV2B3 = 7;  m_POMV2B3 = 128;  // Output Matrix Output B Ramps

var
  OCR2SA: word absolute $F2;  // Output Compare 2 SA Register
  OCR2SAL: byte absolute $F2;
  OCR2SAH: byte absolute $F3;
const
  OCR2SA0 = 0;  m_OCR2SA0 = 1;  // Output Compare SA
  OCR2SA1 = 1;  m_OCR2SA1 = 2;  // Output Compare SA
  OCR2SA2 = 2;  m_OCR2SA2 = 4;  // Output Compare SA
  OCR2SA3 = 3;  m_OCR2SA3 = 8;  // Output Compare SA
  OCR2SA4 = 4;  m_OCR2SA4 = 16;  // Output Compare SA
  OCR2SA5 = 5;  m_OCR2SA5 = 32;  // Output Compare SA
  OCR2SA6 = 6;  m_OCR2SA6 = 64;  // Output Compare SA
  OCR2SA7 = 7;  m_OCR2SA7 = 128;  // Output Compare SA

var
  OCR2RA: word absolute $F4;  // Output Compare 2 RA Register
  OCR2RAL: byte absolute $F4;
  OCR2RAH: byte absolute $F5;
const
  OCR2RA0 = 0;  m_OCR2RA0 = 1;  // Output Compare RA
  OCR2RA1 = 1;  m_OCR2RA1 = 2;  // Output Compare RA
  OCR2RA2 = 2;  m_OCR2RA2 = 4;  // Output Compare RA
  OCR2RA3 = 3;  m_OCR2RA3 = 8;  // Output Compare RA
  OCR2RA4 = 4;  m_OCR2RA4 = 16;  // Output Compare RA
  OCR2RA5 = 5;  m_OCR2RA5 = 32;  // Output Compare RA
  OCR2RA6 = 6;  m_OCR2RA6 = 64;  // Output Compare RA
  OCR2RA7 = 7;  m_OCR2RA7 = 128;  // Output Compare RA

var
  OCR2SB: word absolute $F6;  // Output Compare 2 SB Register
  OCR2SBL: byte absolute $F6;
  OCR2SBH: byte absolute $F7;
const
  OCR2SB0 = 0;  m_OCR2SB0 = 1;  // Output Compare SB
  OCR2SB1 = 1;  m_OCR2SB1 = 2;  // Output Compare SB
  OCR2SB2 = 2;  m_OCR2SB2 = 4;  // Output Compare SB
  OCR2SB3 = 3;  m_OCR2SB3 = 8;  // Output Compare SB
  OCR2SB4 = 4;  m_OCR2SB4 = 16;  // Output Compare SB
  OCR2SB5 = 5;  m_OCR2SB5 = 32;  // Output Compare SB
  OCR2SB6 = 6;  m_OCR2SB6 = 64;  // Output Compare SB
  OCR2SB7 = 7;  m_OCR2SB7 = 128;  // Output Compare SB

var
  OCR2RB: word absolute $F8;  // Output Compare 2 RB Register
  OCR2RBL: byte absolute $F8;
  OCR2RBH: byte absolute $F9;
const
  OCR2RB0 = 0;  m_OCR2RB0 = 1;  // Output Compare RB
  OCR2RB1 = 1;  m_OCR2RB1 = 2;  // Output Compare RB
  OCR2RB2 = 2;  m_OCR2RB2 = 4;  // Output Compare RB
  OCR2RB3 = 3;  m_OCR2RB3 = 8;  // Output Compare RB
  OCR2RB4 = 4;  m_OCR2RB4 = 16;  // Output Compare RB
  OCR2RB5 = 5;  m_OCR2RB5 = 32;  // Output Compare RB
  OCR2RB6 = 6;  m_OCR2RB6 = 64;  // Output Compare RB
  OCR2RB7 = 7;  m_OCR2RB7 = 128;  // Output Compare RB

type
  TPCNF2set = bitpacked set of (e_POME2, e_PCLKSEL2, e_POP2, e_PMODE20, e_PMODE21, e_PLOCK2, e_PALOCK2, e_PFIFTY2);
  TPCNF2rec = bitpacked record
    POME2,
    PCLKSEL2,
    POP2,
    PMODE20,
    PMODE21,
    PLOCK2,
    PALOCK2,
    PFIFTY2: TBitField;
  end;
var
  PCNF2: byte absolute $FA;  // PSC 2 Configuration Register
  PCNF2set: TPCNF2set absolute $FA;
  PCNF2rec: TPCNF2rec absolute $FA;
const
  POME2 = 0;  m_POME2 = 1;  // PSC 2 Output Matrix Enable
  PCLKSEL2 = 1;  m_PCLKSEL2 = 2;  // PSC 2 Input Clock Select
  POP2 = 2;  m_POP2 = 4;  // PSC 2 Output Polarity
  PMODE20 = 3;  m_PMODE20 = 8;  // PSC 2 Mode
  PMODE21 = 4;  m_PMODE21 = 16;  // PSC 2 Mode
  PLOCK2 = 5;  m_PLOCK2 = 32;  // PSC 2 Lock
  PALOCK2 = 6;  m_PALOCK2 = 64;  // PSC 2 Autolock
  PFIFTY2 = 7;  m_PFIFTY2 = 128;  // PSC 2 Fifty

type
  TPCTL2set = bitpacked set of (e_PRUN2, e_PCCYC2, e_PARUN2, e_PAOC2A, e_PAOC2B, e_PBFM2, e_PPRE20, e_PPRE21);
  TPCTL2rec = bitpacked record
    PRUN2,
    PCCYC2,
    PARUN2,
    PAOC2A,
    PAOC2B,
    PBFM2,
    PPRE20,
    PPRE21: TBitField;
  end;
var
  PCTL2: byte absolute $FB;  // PSC 2 Control Register
  PCTL2set: TPCTL2set absolute $FB;
  PCTL2rec: TPCTL2rec absolute $FB;
const
  PRUN2 = 0;  m_PRUN2 = 1;  // PSC 2 Run
  PCCYC2 = 1;  m_PCCYC2 = 2;  // PSC2 Complete Cycle
  PARUN2 = 2;  m_PARUN2 = 4;  // PSC2 Auto Run
  PAOC2A = 3;  m_PAOC2A = 8;  // PSC 2 Asynchronous Output Control A
  PAOC2B = 4;  m_PAOC2B = 16;  // PSC 2 Asynchronous Output Control B
  PBFM2 = 5;  m_PBFM2 = 32;  // Balance Flank Width Modulation
  PPRE20 = 6;  m_PPRE20 = 64;  // PSC 2 Prescaler Selects
  PPRE21 = 7;  m_PPRE21 = 128;  // PSC 2 Prescaler Selects

type
  TPFRC2Aset = bitpacked set of (e_PRFM2A0, e_PRFM2A1, e_PRFM2A2, e_PRFM2A3, e_PFLTE2A, e_PELEV2A, e_PISEL2A, e_PCAE2A);
  TPFRC2Arec = bitpacked record
    PRFM2A0,
    PRFM2A1,
    PRFM2A2,
    PRFM2A3,
    PFLTE2A,
    PELEV2A,
    PISEL2A,
    PCAE2A: TBitField;
  end;
var
  PFRC2A: byte absolute $FC;  // PSC 2 Input B Control
  PFRC2Aset: TPFRC2Aset absolute $FC;
  PFRC2Arec: TPFRC2Arec absolute $FC;
const
  PRFM2A0 = 0;  m_PRFM2A0 = 1;  // PSC 2 Retrigger and Fault Mode for Part A
  PRFM2A1 = 1;  m_PRFM2A1 = 2;  // PSC 2 Retrigger and Fault Mode for Part A
  PRFM2A2 = 2;  m_PRFM2A2 = 4;  // PSC 2 Retrigger and Fault Mode for Part A
  PRFM2A3 = 3;  m_PRFM2A3 = 8;  // PSC 2 Retrigger and Fault Mode for Part A
  PFLTE2A = 4;  m_PFLTE2A = 16;  // PSC 2 Filter Enable on Input Part A
  PELEV2A = 5;  m_PELEV2A = 32;  // PSC 2 Edge Level Selector on Input Part A
  PISEL2A = 6;  m_PISEL2A = 64;  // PSC 2 Input Select for Part A
  PCAE2A = 7;  m_PCAE2A = 128;  // PSC 2 Capture Enable Input Part A

type
  TPFRC2Bset = bitpacked set of (e_PRFM2B0, e_PRFM2B1, e_PRFM2B2, e_PRFM2B3, e_PFLTE2B, e_PELEV2B, e_PISEL2B, e_PCAE2B);
  TPFRC2Brec = bitpacked record
    PRFM2B0,
    PRFM2B1,
    PRFM2B2,
    PRFM2B3,
    PFLTE2B,
    PELEV2B,
    PISEL2B,
    PCAE2B: TBitField;
  end;
var
  PFRC2B: byte absolute $FD;  // PSC 2 Input B Control
  PFRC2Bset: TPFRC2Bset absolute $FD;
  PFRC2Brec: TPFRC2Brec absolute $FD;
const
  PRFM2B0 = 0;  m_PRFM2B0 = 1;  // PSC 2 Retrigger and Fault Mode for Part B
  PRFM2B1 = 1;  m_PRFM2B1 = 2;  // PSC 2 Retrigger and Fault Mode for Part B
  PRFM2B2 = 2;  m_PRFM2B2 = 4;  // PSC 2 Retrigger and Fault Mode for Part B
  PRFM2B3 = 3;  m_PRFM2B3 = 8;  // PSC 2 Retrigger and Fault Mode for Part B
  PFLTE2B = 4;  m_PFLTE2B = 16;  // PSC 2 Filter Enable on Input Part B
  PELEV2B = 5;  m_PELEV2B = 32;  // PSC 2 Edge Level Selector on Input Part B
  PISEL2B = 6;  m_PISEL2B = 64;  // PSC 2 Input Select for Part B
  PCAE2B = 7;  m_PCAE2B = 128;  // PSC 2 Capture Enable Input Part B

var
  PICR2: word absolute $FE;  // PSC 2 Input Capture Register 
  PICR2L: byte absolute $FE;
  PICR2H: byte absolute $FF;
const
  PICR20 = 0;  m_PICR20 = 1;  // PSC 2 Input Capture Bytes
  PICR21 = 1;  m_PICR21 = 2;  // PSC 2 Input Capture Bytes
  PICR22 = 2;  m_PICR22 = 4;  // PSC 2 Input Capture Bytes
  PICR23 = 3;  m_PICR23 = 8;  // PSC 2 Input Capture Bytes
  PICR24 = 4;  m_PICR24 = 16;  // PSC 2 Input Capture Bytes
  PICR25 = 5;  m_PICR25 = 32;  // PSC 2 Input Capture Bytes
  PICR26 = 6;  m_PICR26 = 64;  // PSC 2 Input Capture Bytes
  PICR27 = 7;  m_PICR27 = 128;  // PSC 2 Input Capture Bytes
  // typedefs = 79

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure PSC2_CAPT_ISR; external name 'PSC2_CAPT_ISR'; // Interrupt 1 PSC2 Capture Event
procedure PSC2_EC_ISR; external name 'PSC2_EC_ISR'; // Interrupt 2 PSC2 End Cycle
procedure PSC1_CAPT_ISR; external name 'PSC1_CAPT_ISR'; // Interrupt 3 PSC1 Capture Event
procedure PSC1_EC_ISR; external name 'PSC1_EC_ISR'; // Interrupt 4 PSC1 End Cycle
procedure PSC0_CAPT_ISR; external name 'PSC0_CAPT_ISR'; // Interrupt 5 PSC0 Capture Event
procedure PSC0_EC_ISR; external name 'PSC0_EC_ISR'; // Interrupt 6 PSC0 End Cycle
procedure ANALOG_COMP_0_ISR; external name 'ANALOG_COMP_0_ISR'; // Interrupt 7 Analog Comparator 0
procedure ANALOG_COMP_1_ISR; external name 'ANALOG_COMP_1_ISR'; // Interrupt 8 Analog Comparator 1
procedure ANALOG_COMP_2_ISR; external name 'ANALOG_COMP_2_ISR'; // Interrupt 9 Analog Comparator 2
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 10 External Interrupt Request 0
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 11 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 12 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 13 Timer/Counter Compare Match B
procedure RESERVED15_ISR; external name 'RESERVED15_ISR'; // Interrupt 14 
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 15 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 16 Timer/Counter0 Compare Match A
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 17 Timer/Counter0 Overflow
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 18 ADC Conversion Complete
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 19 External Interrupt Request 1
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 20 SPI Serial Transfer Complete
procedure USART_RX_ISR; external name 'USART_RX_ISR'; // Interrupt 21 USART, Rx Complete
procedure USART_UDRE_ISR; external name 'USART_UDRE_ISR'; // Interrupt 22 USART Data Register Empty
procedure USART_TX_ISR; external name 'USART_TX_ISR'; // Interrupt 23 USART, Tx Complete
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 24 External Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 25 Watchdog Timeout Interrupt
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 26 EEPROM Ready
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 27 Timer Counter 0 Compare Match B
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 28 External Interrupt Request 3
procedure RESERVED30_ISR; external name 'RESERVED30_ISR'; // Interrupt 29 
procedure RESERVED31_ISR; external name 'RESERVED31_ISR'; // Interrupt 30 
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 31 Store Program Memory Read

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp PSC2_CAPT_ISR
  rjmp PSC2_EC_ISR
  rjmp PSC1_CAPT_ISR
  rjmp PSC1_EC_ISR
  rjmp PSC0_CAPT_ISR
  rjmp PSC0_EC_ISR
  rjmp ANALOG_COMP_0_ISR
  rjmp ANALOG_COMP_1_ISR
  rjmp ANALOG_COMP_2_ISR
  rjmp INT0_ISR
  rjmp TIMER1_CAPT_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp RESERVED15_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_OVF_ISR
  rjmp ADC_ISR
  rjmp INT1_ISR
  rjmp SPI_STC_ISR
  rjmp USART_RX_ISR
  rjmp USART_UDRE_ISR
  rjmp USART_TX_ISR
  rjmp INT2_ISR
  rjmp WDT_ISR
  rjmp EE_READY_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp INT3_ISR
  rjmp RESERVED30_ISR
  rjmp RESERVED31_ISR
  rjmp SPM_READY_ISR

  {$i start.inc}

  .weak PSC2_CAPT_ISR
  .weak PSC2_EC_ISR
  .weak PSC1_CAPT_ISR
  .weak PSC1_EC_ISR
  .weak PSC0_CAPT_ISR
  .weak PSC0_EC_ISR
  .weak ANALOG_COMP_0_ISR
  .weak ANALOG_COMP_1_ISR
  .weak ANALOG_COMP_2_ISR
  .weak INT0_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak RESERVED15_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_OVF_ISR
  .weak ADC_ISR
  .weak INT1_ISR
  .weak SPI_STC_ISR
  .weak USART_RX_ISR
  .weak USART_UDRE_ISR
  .weak USART_TX_ISR
  .weak INT2_ISR
  .weak WDT_ISR
  .weak EE_READY_ISR
  .weak TIMER0_COMPB_ISR
  .weak INT3_ISR
  .weak RESERVED30_ISR
  .weak RESERVED31_ISR
  .weak SPM_READY_ISR

  .set PSC2_CAPT_ISR, Default_IRQ_handler
  .set PSC2_EC_ISR, Default_IRQ_handler
  .set PSC1_CAPT_ISR, Default_IRQ_handler
  .set PSC1_EC_ISR, Default_IRQ_handler
  .set PSC0_CAPT_ISR, Default_IRQ_handler
  .set PSC0_EC_ISR, Default_IRQ_handler
  .set ANALOG_COMP_0_ISR, Default_IRQ_handler
  .set ANALOG_COMP_1_ISR, Default_IRQ_handler
  .set ANALOG_COMP_2_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set RESERVED15_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART_RX_ISR, Default_IRQ_handler
  .set USART_UDRE_ISR, Default_IRQ_handler
  .set USART_TX_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set RESERVED30_ISR, Default_IRQ_handler
  .set RESERVED31_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
