unit ATA664251;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $20;  // Port A Input Pins

type
  TDDRAset = bitpacked set of (e_DDA0, e_DDA1, e_DDA2, e_DDA3, e_DDA4, e_DDA5, e_DDA6, e_DDA7);
  TDDRArec = bitpacked record
    DDA0,
    DDA1,
    DDA2,
    DDA3,
    DDA4,
    DDA5,
    DDA6,
    DDA7: TBitField;
  end;
var
  DDRA: byte absolute $21;  // Port A Data Direction Register
  DDRAset: TDDRAset absolute $21;
  DDRArec: TDDRArec absolute $21;
const
  DDA0 = 0;  m_DDA0 = 1;  // Port A Data Direction Register bits
  DDA1 = 1;  m_DDA1 = 2;  // Port A Data Direction Register bits
  DDA2 = 2;  m_DDA2 = 4;  // Port A Data Direction Register bits
  DDA3 = 3;  m_DDA3 = 8;  // Port A Data Direction Register bits
  DDA4 = 4;  m_DDA4 = 16;  // Port A Data Direction Register bits
  DDA5 = 5;  m_DDA5 = 32;  // Port A Data Direction Register bits
  DDA6 = 6;  m_DDA6 = 64;  // Port A Data Direction Register bits
  DDA7 = 7;  m_DDA7 = 128;  // Port A Data Direction Register bits

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

type
  TDDRBset = bitpacked set of (e_DDB0, e_DDB1, e_DDB2, e_DDB3, e_DDB4, e_DDB5, e_DDB6, e_DDB7);
  TDDRBrec = bitpacked record
    DDB0,
    DDB1,
    DDB2,
    DDB3,
    DDB4,
    DDB5,
    DDB6,
    DDB7: TBitField;
  end;
var
  DDRB: byte absolute $24;  // Port B Data Direction Register
  DDRBset: TDDRBset absolute $24;
  DDRBrec: TDDRBrec absolute $24;
const
  DDB0 = 0;  m_DDB0 = 1;  // Port B Data Direction Register bits
  DDB1 = 1;  m_DDB1 = 2;  // Port B Data Direction Register bits
  DDB2 = 2;  m_DDB2 = 4;  // Port B Data Direction Register bits
  DDB3 = 3;  m_DDB3 = 8;  // Port B Data Direction Register bits
  DDB4 = 4;  m_DDB4 = 16;  // Port B Data Direction Register bits
  DDB5 = 5;  m_DDB5 = 32;  // Port B Data Direction Register bits
  DDB6 = 6;  m_DDB6 = 64;  // Port B Data Direction Register bits
  DDB7 = 7;  m_DDB7 = 128;  // Port B Data Direction Register bits

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

type
  TPORTCRset = bitpacked set of (e_PUDA, e_PUDB, e_BBMA=4, e_BBMB);
  TPORTCRrec = bitpacked record
    PUDA,
    PUDB,
    ReservedBit2,
    ReservedBit3,
    BBMA,
    BBMB,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTCR: byte absolute $32;  // Port Control Register
  PORTCRset: TPORTCRset absolute $32;
  PORTCRrec: TPORTCRrec absolute $32;
const
  PUDA = 0;  m_PUDA = 1;
  PUDB = 1;  m_PUDB = 2;
  BBMA = 4;  m_BBMA = 16;
  BBMB = 5;  m_BBMB = 32;

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
  TIFR0: byte absolute $35;  // Timer/Counter0 Interrupt Flag Register
  TIFR0set: TTIFR0set absolute $35;
  TIFR0rec: TTIFR0rec absolute $35;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Output Compare Flag 0A

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
  OCF1A = 1;  m_OCF1A = 2;  // Timer/Counter1 Output Compare A Match Flag
  OCF1B = 2;  m_OCF1B = 4;  // Timer/Counter1 Output Compare B Match Flag
  ICF1 = 5;  m_ICF1 = 32;  // Timer/Counter1 Input Capture Flag

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
  TEIFRset = bitpacked set of (e_INTF0, e_INTF1);
  TEIFRrec = bitpacked record
    INTF0,
    INTF1,
    ReservedBit2,
    ReservedBit3,
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

type
  TEIMSKset = bitpacked set of (e_INT0, e_INT1);
  TEIMSKrec = bitpacked record
    INT0,
    INT1,
    ReservedBit2,
    ReservedBit3,
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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 1 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 1 Enable

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
  GPIOR0: byte absolute $3E;  // General purpose register 0
  GPIOR0set: TGPIOR0set absolute $3E;
  GPIOR0rec: TGPIOR0rec absolute $3E;
const
  GPIOR00 = 0;  m_GPIOR00 = 1;  // General Purpose IO register 0 Bits
  GPIOR01 = 1;  m_GPIOR01 = 2;  // General Purpose IO register 0 Bits
  GPIOR02 = 2;  m_GPIOR02 = 4;  // General Purpose IO register 0 Bits
  GPIOR03 = 3;  m_GPIOR03 = 8;  // General Purpose IO register 0 Bits
  GPIOR04 = 4;  m_GPIOR04 = 16;  // General Purpose IO register 0 Bits
  GPIOR05 = 5;  m_GPIOR05 = 32;  // General Purpose IO register 0 Bits
  GPIOR06 = 6;  m_GPIOR06 = 64;  // General Purpose IO register 0 Bits
  GPIOR07 = 7;  m_GPIOR07 = 128;  // General Purpose IO register 0 Bits

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
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

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
  EEDR0 = 0;  m_EEDR0 = 1;  // EEPROM Data Register Bits
  EEDR1 = 1;  m_EEDR1 = 2;  // EEPROM Data Register Bits
  EEDR2 = 2;  m_EEDR2 = 4;  // EEPROM Data Register Bits
  EEDR3 = 3;  m_EEDR3 = 8;  // EEPROM Data Register Bits
  EEDR4 = 4;  m_EEDR4 = 16;  // EEPROM Data Register Bits
  EEDR5 = 5;  m_EEDR5 = 32;  // EEPROM Data Register Bits
  EEDR6 = 6;  m_EEDR6 = 64;  // EEPROM Data Register Bits
  EEDR7 = 7;  m_EEDR7 = 128;  // EEPROM Data Register Bits

var
  EEAR: word absolute $41;  // EEPROM Address Register  Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

type
  TGTCCRset = bitpacked set of (e_PSR1, e_PSR0, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR1,
    PSR0,
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
  PSR1 = 0;  m_PSR1 = 1;  // Prescaler Reset Synchronous 16-bit Timer/Counter1
  PSR0 = 1;  m_PSR0 = 2;  // Prescaler Reset Asynchronous 8-bit Timer/Counter0
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

type
  TTCCR0Aset = bitpacked set of (e_WGM00, e_WGM01, e_COM0A0=6, e_COM0A1);
  TTCCR0Arec = bitpacked record
    WGM00,
    WGM01,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    COM0A0,
    COM0A1: TBitField;
  end;
var
  TCCR0A: byte absolute $45;  // Timer/Counter0 Control Register A
  TCCR0Aset: TTCCR0Aset absolute $45;
  TCCR0Arec: TTCCR0Arec absolute $45;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Genration Mode bits
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Genration Mode bits
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Output Mode bits
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Output Mode bits

type
  TTCCR0Bset = bitpacked set of (e_CS00, e_CS01, e_CS02, e_FOC0A=7);
  TTCCR0Brec = bitpacked record
    CS00,
    CS01,
    CS02,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    FOC0A: TBitField;
  end;
var
  TCCR0B: byte absolute $46;  // Timer/Counter0 Control Register B
  TCCR0Bset: TTCCR0Bset absolute $46;
  TCCR0Brec: TTCCR0Brec absolute $46;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select bits
  CS01 = 1;  m_CS01 = 2;  // Clock Select bits
  CS02 = 2;  m_CS02 = 4;  // Clock Select bits
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
  TCNT0: byte absolute $47;  // Timer/Counter0
  TCNT0set: TTCNT0set absolute $47;
  TCNT0rec: TTCNT0rec absolute $47;
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
  TOCR0Aset = bitpacked set of (e_OCR00, e_OCR01, e_OCR02, e_OCR03, e_OCR04, e_OCR05, e_OCR06, e_OCR07);
  TOCR0Arec = bitpacked record
    OCR00,
    OCR01,
    OCR02,
    OCR03,
    OCR04,
    OCR05,
    OCR06,
    OCR07: TBitField;
  end;
var
  OCR0A: byte absolute $48;  // Timer/Counter0 Output Compare Register A
  OCR0Aset: TOCR0Aset absolute $48;
  OCR0Arec: TOCR0Arec absolute $48;
const
  OCR00 = 0;  m_OCR00 = 1;  // Timer/Counter0 Output Compare Register A bits
  OCR01 = 1;  m_OCR01 = 2;  // Timer/Counter0 Output Compare Register A bits
  OCR02 = 2;  m_OCR02 = 4;  // Timer/Counter0 Output Compare Register A bits
  OCR03 = 3;  m_OCR03 = 8;  // Timer/Counter0 Output Compare Register A bits
  OCR04 = 4;  m_OCR04 = 16;  // Timer/Counter0 Output Compare Register A bits
  OCR05 = 5;  m_OCR05 = 32;  // Timer/Counter0 Output Compare Register A bits
  OCR06 = 6;  m_OCR06 = 64;  // Timer/Counter0 Output Compare Register A bits
  OCR07 = 7;  m_OCR07 = 128;  // Timer/Counter0 Output Compare Register A bits

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
  GPIOR1: byte absolute $4A;  // General Purpose register 1
  GPIOR1set: TGPIOR1set absolute $4A;
  GPIOR1rec: TGPIOR1rec absolute $4A;
const
  GPIOR10 = 0;  m_GPIOR10 = 1;  // General Purpose IO register 1 Bits
  GPIOR11 = 1;  m_GPIOR11 = 2;  // General Purpose IO register 1 Bits
  GPIOR12 = 2;  m_GPIOR12 = 4;  // General Purpose IO register 1 Bits
  GPIOR13 = 3;  m_GPIOR13 = 8;  // General Purpose IO register 1 Bits
  GPIOR14 = 4;  m_GPIOR14 = 16;  // General Purpose IO register 1 Bits
  GPIOR15 = 5;  m_GPIOR15 = 32;  // General Purpose IO register 1 Bits
  GPIOR16 = 6;  m_GPIOR16 = 64;  // General Purpose IO register 1 Bits
  GPIOR17 = 7;  m_GPIOR17 = 128;  // General Purpose IO register 1 Bits

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
  GPIOR2: byte absolute $4B;  // General Purpose IO register 2
  GPIOR2set: TGPIOR2set absolute $4B;
  GPIOR2rec: TGPIOR2rec absolute $4B;
const
  GPIOR20 = 0;  m_GPIOR20 = 1;  // General Purpose IO register 2 Bits
  GPIOR21 = 1;  m_GPIOR21 = 2;  // General Purpose IO register 2 Bits
  GPIOR22 = 2;  m_GPIOR22 = 4;  // General Purpose IO register 2 Bits
  GPIOR23 = 3;  m_GPIOR23 = 8;  // General Purpose IO register 2 Bits
  GPIOR24 = 4;  m_GPIOR24 = 16;  // General Purpose IO register 2 Bits
  GPIOR25 = 5;  m_GPIOR25 = 32;  // General Purpose IO register 2 Bits
  GPIOR26 = 6;  m_GPIOR26 = 64;  // General Purpose IO register 2 Bits
  GPIOR27 = 7;  m_GPIOR27 = 128;  // General Purpose IO register 2 Bits

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
  SPDR0 = 0;  m_SPDR0 = 1;  // SPI Data Register bits
  SPDR1 = 1;  m_SPDR1 = 2;  // SPI Data Register bits
  SPDR2 = 2;  m_SPDR2 = 4;  // SPI Data Register bits
  SPDR3 = 3;  m_SPDR3 = 8;  // SPI Data Register bits
  SPDR4 = 4;  m_SPDR4 = 16;  // SPI Data Register bits
  SPDR5 = 5;  m_SPDR5 = 32;  // SPI Data Register bits
  SPDR6 = 6;  m_SPDR6 = 64;  // SPI Data Register bits
  SPDR7 = 7;  m_SPDR7 = 128;  // SPI Data Register bits

type
  TACSRset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIC, e_ACIE, e_ACI, e_ACO, e_ACIRS, e_ACD);
  TACSRrec = bitpacked record
    ACIS0,
    ACIS1,
    ACIC,
    ACIE,
    ACI,
    ACO,
    ACIRS,
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
  ACIRS = 6;  m_ACIRS = 64;  // Analog Comparator Internal Reference Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

type
  TDWDRset = bitpacked set of (e_DWDR0, e_DWDR1, e_DWDR2, e_DWDR3, e_DWDR4, e_DWDR5, e_DWDR6, e_DWDR7);
  TDWDRrec = bitpacked record
    DWDR0,
    DWDR1,
    DWDR2,
    DWDR3,
    DWDR4,
    DWDR5,
    DWDR6,
    DWDR7: TBitField;
  end;
var
  DWDR: byte absolute $51;  // DebugWire data register
  DWDRset: TDWDRset absolute $51;
  DWDRrec: TDWDRrec absolute $51;
const
  DWDR0 = 0;  m_DWDR0 = 1;  // DebugWire data register bits
  DWDR1 = 1;  m_DWDR1 = 2;  // DebugWire data register bits
  DWDR2 = 2;  m_DWDR2 = 4;  // DebugWire data register bits
  DWDR3 = 3;  m_DWDR3 = 8;  // DebugWire data register bits
  DWDR4 = 4;  m_DWDR4 = 16;  // DebugWire data register bits
  DWDR5 = 5;  m_DWDR5 = 32;  // DebugWire data register bits
  DWDR6 = 6;  m_DWDR6 = 64;  // DebugWire data register bits
  DWDR7 = 7;  m_DWDR7 = 128;  // DebugWire data register bits

type
  TSMCRset = bitpacked set of (e_SE, e_SM0, e_SM1);
  TSMCRrec = bitpacked record
    SE,
    SM0,
    SM1,
    ReservedBit3,
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
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select Bits
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select Bits

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
  TMCUCRset = bitpacked set of (e_PUD=4, e_BODSE, e_BODS);
  TMCUCRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PUD,
    BODSE,
    BODS,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  PUD = 4;  m_PUD = 16;  // Pull-up Disable
  BODSE = 5;  m_BODSE = 32;  // BOD Sleep Enable
  BODS = 6;  m_BODS = 64;  // BOD Sleep

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RFLB, e_CTPB, e_SIGRD, e_RWWSB);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RFLB,
    CTPB,
    SIGRD,
    RWWSB,
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
  RFLB = 3;  m_RFLB = 8;  // Read Fuse and Lock Bits
  CTPB = 4;  m_CTPB = 16;  // Clear Temporary Page Buffer
  SIGRD = 5;  m_SIGRD = 32;  // Signature Row Read
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy

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
  WDTCR: byte absolute $60;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $60;
  WDTCRrec: TWDTCRrec absolute $60;
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
  TCLKCSRset = bitpacked set of (e_CLKC0, e_CLKC1, e_CLKC2, e_CLKC3, e_CLKRDY, e_CLKCCE=7);
  TCLKCSRrec = bitpacked record
    CLKC0,
    CLKC1,
    CLKC2,
    CLKC3,
    CLKRDY,
    ReservedBit5,
    ReservedBit6,
    CLKCCE: TBitField;
  end;
var
  CLKCSR: byte absolute $62;  // Clock Control & Status Register
  CLKCSRset: TCLKCSRset absolute $62;
  CLKCSRrec: TCLKCSRrec absolute $62;
const
  CLKC0 = 0;  m_CLKC0 = 1;  // Clock Control bits
  CLKC1 = 1;  m_CLKC1 = 2;  // Clock Control bits
  CLKC2 = 2;  m_CLKC2 = 4;  // Clock Control bits
  CLKC3 = 3;  m_CLKC3 = 8;  // Clock Control bits
  CLKRDY = 4;  m_CLKRDY = 16;  // Clock Ready Flag
  CLKCCE = 7;  m_CLKCCE = 128;  // Clock Control Change Enable

type
  TCLKSELRset = bitpacked set of (e_CSEL0, e_CSEL1, e_CSEL2, e_CSEL3, e_CSUT0, e_CSUT1, e_COUT);
  TCLKSELRrec = bitpacked record
    CSEL0,
    CSEL1,
    CSEL2,
    CSEL3,
    CSUT0,
    CSUT1,
    COUT,
    ReservedBit7: TBitField;
  end;
var
  CLKSELR: byte absolute $63;  // Clock Selection Register
  CLKSELRset: TCLKSELRset absolute $63;
  CLKSELRrec: TCLKSELRrec absolute $63;
const
  CSEL0 = 0;  m_CSEL0 = 1;  // Clock Source Select bit 3 - CKSEL3 fuse substitution
  CSEL1 = 1;  m_CSEL1 = 2;  // Clock Source Select bit 3 - CKSEL3 fuse substitution
  CSEL2 = 2;  m_CSEL2 = 4;  // Clock Source Select bit 3 - CKSEL3 fuse substitution
  CSEL3 = 3;  m_CSEL3 = 8;  // Clock Source Select bit 3 - CKSEL3 fuse substitution
  CSUT0 = 4;  m_CSUT0 = 16;  // Clock Start-up Time bit 1 - SUT1 fuse substitution
  CSUT1 = 5;  m_CSUT1 = 32;  // Clock Start-up Time bit 1 - SUT1 fuse substitution
  COUT = 6;  m_COUT = 64;  // Clock Out - CKOUT fuse substitution

type
  TPRRset = bitpacked set of (e_PRADC, e_PRUSI, e_PRTIM0, e_PRTIM1, e_PRSPI, e_PRLIN);
  TPRRrec = bitpacked record
    PRADC,
    PRUSI,
    PRTIM0,
    PRTIM1,
    PRSPI,
    PRLIN,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $64;  // Power Reduction Register
  PRRset: TPRRset absolute $64;
  PRRrec: TPRRrec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSI = 1;  m_PRUSI = 2;  // Power Reduction USI
  PRTIM0 = 2;  m_PRTIM0 = 4;  // Power Reduction Timer/Counter0
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRSPI = 4;  m_PRSPI = 16;  // Power Reduction SPI
  PRLIN = 5;  m_PRLIN = 32;  // Power Reduction LINUART

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
  OSCCAL: byte absolute $66;  // Oscillator Calibration Register
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
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enable  on any PCINT14..8 pin
  PCIE1 = 1;  m_PCIE1 = 2;  // Pin Change Interrupt Enable  on any PCINT14..8 pin

type
  TEICRAset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11);
  TEICRArec = bitpacked record
    ISC00,
    ISC01,
    ISC10,
    ISC11,
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
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control 0 Bits
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control 0 Bits
  ISC10 = 2;  m_ISC10 = 4;  // External Interrupt Sense Control 1 Bits
  ISC11 = 3;  m_ISC11 = 8;  // External Interrupt Sense Control 1 Bits

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
  TIMSK0: byte absolute $6E;  // Timer/Counter0 Interrupt Mask register
  TIMSK0set: TTIMSK0set absolute $6E;
  TIMSK0rec: TTIMSK0rec absolute $6E;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare Match A Interrupt Enable

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
  TAMISCRset = bitpacked set of (e_ISRCEN, e_XREFEN, e_AREFEN);
  TAMISCRrec = bitpacked record
    ISRCEN,
    XREFEN,
    AREFEN,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  AMISCR: byte absolute $77;  // Analog Miscellaneous Control Register (Shared with AD_CONVERTER IO_MODULE)
  AMISCRset: TAMISCRset absolute $77;
  AMISCRrec: TAMISCRrec absolute $77;
const
  ISRCEN = 0;  m_ISRCEN = 1;  // Current Source Enable
  XREFEN = 1;  m_XREFEN = 2;  // Internal Voltage Reference Output Enable
  AREFEN = 2;  m_AREFEN = 4;  // External Voltage Reference Input Enable

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
  ADCSRA: byte absolute $7A;  // The ADC Control and Status register A
  ADCSRAset: TADCSRAset absolute $7A;
  ADCSRArec: TADCSRArec absolute $7A;
const
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC  Auto Trigger Enable
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ACIR0=4, e_ACIR1, e_ACME, e_BIN);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ACIR0,
    ACIR1,
    ACME,
    BIN: TBitField;
  end;
var
  ADCSRB: byte absolute $7B;  // Analog Comparator & ADC Control and Status Register B (Shared with AD_CONVERTER IO_MODULE)
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source bits
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source bits
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source bits
  ACIR0 = 4;  m_ACIR0 = 16;  // Analog Comparator Internal Voltage Reference Select Bits
  ACIR1 = 5;  m_ACIR1 = 32;  // Analog Comparator Internal Voltage Reference Select Bits
  ACME = 6;  m_ACME = 64;  // Analog Comparator Multiplexer Enable
  BIN = 7;  m_BIN = 128;  // Bipolar Input Mode

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
  ADC0D = 0;  m_ADC0D = 1;
  ADC1D = 1;  m_ADC1D = 2;
  ADC2D = 2;  m_ADC2D = 4;
  ADC3D = 3;  m_ADC3D = 8;
  ADC4D = 4;  m_ADC4D = 16;
  ADC5D = 5;  m_ADC5D = 32;
  ADC6D = 6;  m_ADC6D = 64;
  ADC7D = 7;  m_ADC7D = 128;

type
  TDIDR1set = bitpacked set of (e_ADC8D=4, e_ADC9D, e_ADC10D);
  TDIDR1rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ADC8D,
    ADC9D,
    ADC10D,
    ReservedBit7: TBitField;
  end;
var
  DIDR1: byte absolute $7F;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  ADC8D = 4;  m_ADC8D = 16;
  ADC9D = 5;  m_ADC9D = 32;
  ADC10D = 6;  m_ADC10D = 64;

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
  WGM10 = 0;  m_WGM10 = 1;  // Pulse Width Modulator Select Bits
  WGM11 = 1;  m_WGM11 = 2;  // Pulse Width Modulator Select Bits
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
  CS10 = 0;  m_CS10 = 1;  // Timer/Counter1 Clock Select bits
  CS11 = 1;  m_CS11 = 2;  // Timer/Counter1 Clock Select bits
  CS12 = 2;  m_CS12 = 4;  // Timer/Counter1 Clock Select bits
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
  FOC1B = 6;  m_FOC1B = 64;  // Timer/Counter1 Force Output Compare for Channel B
  FOC1A = 7;  m_FOC1A = 128;  // Timer/Counter1 Force Output Compare for Channel A

type
  TTCCR1Dset = bitpacked set of (e_OC1AU, e_OC1AV, e_OC1AW, e_OC1AX, e_OC1BU, e_OC1BV, e_OC1BW, e_OC1BX);
  TTCCR1Drec = bitpacked record
    OC1AU,
    OC1AV,
    OC1AW,
    OC1AX,
    OC1BU,
    OC1BV,
    OC1BW,
    OC1BX: TBitField;
  end;
var
  TCCR1D: byte absolute $83;  // Timer/Counter1 Control Register D
  TCCR1Dset: TTCCR1Dset absolute $83;
  TCCR1Drec: TTCCR1Drec absolute $83;
const
  OC1AU = 0;  m_OC1AU = 1;  // Timer/Counter1 Output Compare U-pin Enable for Channel A
  OC1AV = 1;  m_OC1AV = 2;  // Timer/Counter1 Output Compare V-pin Enable for Channel A
  OC1AW = 2;  m_OC1AW = 4;  // Timer/Counter1 Output Compare W-pin Enable for Channel A
  OC1AX = 3;  m_OC1AX = 8;  // Timer/Counter1 Output Compare X-pin Enable for Channel A
  OC1BU = 4;  m_OC1BU = 16;  // Timer/Counter1 Output Compare U-pin Enable for Channel B
  OC1BV = 5;  m_OC1BV = 32;  // Timer/Counter1 Output Compare V-pin Enable for Channel B
  OC1BW = 6;  m_OC1BW = 64;  // Timer/Counter1 Output Compare W-pin Enable for Channel B
  OC1BX = 7;  m_OC1BX = 128;  // Timer/Counter1 Output Compare X-pin Enable for Channel B

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

type
  TASSRset = bitpacked set of (e_TCR0BUB, e_TCR0AUB, e_OCR0AUB=3, e_TCN0UB, e_AS0, e_EXCLK);
  TASSRrec = bitpacked record
    TCR0BUB,
    TCR0AUB,
    ReservedBit2,
    OCR0AUB,
    TCN0UB,
    AS0,
    EXCLK,
    ReservedBit7: TBitField;
  end;
var
  ASSR: byte absolute $B6;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $B6;
  ASSRrec: TASSRrec absolute $B6;
const
  TCR0BUB = 0;  m_TCR0BUB = 1;  // Timer/Counter0 Control Register B Update Busy
  TCR0AUB = 1;  m_TCR0AUB = 2;  // Timer/Counter0 Control Register A Update Busy
  OCR0AUB = 3;  m_OCR0AUB = 8;  // Output Compare Register 0A  Update Busy
  TCN0UB = 4;  m_TCN0UB = 16;  // Timer/Counter0 Update Busy
  AS0 = 5;  m_AS0 = 32;  // Asynchronous Timer/Counter0
  EXCLK = 6;  m_EXCLK = 64;  // Enable External Clock Input

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
  USIDR0 = 0;  m_USIDR0 = 1;  // USI Data Register bits
  USIDR1 = 1;  m_USIDR1 = 2;  // USI Data Register bits
  USIDR2 = 2;  m_USIDR2 = 4;  // USI Data Register bits
  USIDR3 = 3;  m_USIDR3 = 8;  // USI Data Register bits
  USIDR4 = 4;  m_USIDR4 = 16;  // USI Data Register bits
  USIDR5 = 5;  m_USIDR5 = 32;  // USI Data Register bits
  USIDR6 = 6;  m_USIDR6 = 64;  // USI Data Register bits
  USIDR7 = 7;  m_USIDR7 = 128;  // USI Data Register bits

type
  TUSIBRset = bitpacked set of (e_USIBR0, e_USIBR1, e_USIBR2, e_USIBR3, e_USIBR4, e_USIBR5, e_USIBR6, e_USIBR7);
  TUSIBRrec = bitpacked record
    USIBR0,
    USIBR1,
    USIBR2,
    USIBR3,
    USIBR4,
    USIBR5,
    USIBR6,
    USIBR7: TBitField;
  end;
var
  USIBR: byte absolute $BB;  // USI Buffer Register
  USIBRset: TUSIBRset absolute $BB;
  USIBRrec: TUSIBRrec absolute $BB;
const
  USIBR0 = 0;  m_USIBR0 = 1;  // USI Buffer Register bits
  USIBR1 = 1;  m_USIBR1 = 2;  // USI Buffer Register bits
  USIBR2 = 2;  m_USIBR2 = 4;  // USI Buffer Register bits
  USIBR3 = 3;  m_USIBR3 = 8;  // USI Buffer Register bits
  USIBR4 = 4;  m_USIBR4 = 16;  // USI Buffer Register bits
  USIBR5 = 5;  m_USIBR5 = 32;  // USI Buffer Register bits
  USIBR6 = 6;  m_USIBR6 = 64;  // USI Buffer Register bits
  USIBR7 = 7;  m_USIBR7 = 128;  // USI Buffer Register bits

type
  TUSIPPset = bitpacked set of (e_USIPOS);
  TUSIPPrec = bitpacked record
    USIPOS,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  USIPP: byte absolute $BC;  // USI Pin Position
  USIPPset: TUSIPPset absolute $BC;
  USIPPrec: TUSIPPrec absolute $BC;
const
  USIPOS = 0;  m_USIPOS = 1;  // USI Pin Position

type
  TLINCRset = bitpacked set of (e_LCMD0, e_LCMD1, e_LCMD2, e_LENA, e_LCONF0, e_LCONF1, e_LIN13, e_LSWRES);
  TLINCRrec = bitpacked record
    LCMD0,
    LCMD1,
    LCMD2,
    LENA,
    LCONF0,
    LCONF1,
    LIN13,
    LSWRES: TBitField;
  end;
var
  LINCR: byte absolute $C8;  // LIN Control Register
  LINCRset: TLINCRset absolute $C8;
  LINCRrec: TLINCRrec absolute $C8;
const
  LCMD0 = 0;  m_LCMD0 = 1;  // LIN Command and Mode bits
  LCMD1 = 1;  m_LCMD1 = 2;  // LIN Command and Mode bits
  LCMD2 = 2;  m_LCMD2 = 4;  // LIN Command and Mode bits
  LENA = 3;  m_LENA = 8;  // LIN or UART Enable
  LCONF0 = 4;  m_LCONF0 = 16;  // LIN Configuration bits
  LCONF1 = 5;  m_LCONF1 = 32;  // LIN Configuration bits
  LIN13 = 6;  m_LIN13 = 64;  // LIN Standard
  LSWRES = 7;  m_LSWRES = 128;  // Software Reset

type
  TLINSIRset = bitpacked set of (e_LRXOK, e_LTXOK, e_LIDOK, e_LERR, e_LBUSY, e_LIDST0, e_LIDST1, e_LIDST2);
  TLINSIRrec = bitpacked record
    LRXOK,
    LTXOK,
    LIDOK,
    LERR,
    LBUSY,
    LIDST0,
    LIDST1,
    LIDST2: TBitField;
  end;
var
  LINSIR: byte absolute $C9;  // LIN Status and Interrupt Register
  LINSIRset: TLINSIRset absolute $C9;
  LINSIRrec: TLINSIRrec absolute $C9;
const
  LRXOK = 0;  m_LRXOK = 1;  // Receive Performed Interrupt
  LTXOK = 1;  m_LTXOK = 2;  // Transmit Performed Interrupt
  LIDOK = 2;  m_LIDOK = 4;  // Identifier Interrupt
  LERR = 3;  m_LERR = 8;  // Error Interrupt
  LBUSY = 4;  m_LBUSY = 16;  // Busy Signal
  LIDST0 = 5;  m_LIDST0 = 32;  // Identifier Status bits
  LIDST1 = 6;  m_LIDST1 = 64;  // Identifier Status bits
  LIDST2 = 7;  m_LIDST2 = 128;  // Identifier Status bits

type
  TLINENIRset = bitpacked set of (e_LENRXOK, e_LENTXOK, e_LENIDOK, e_LENERR);
  TLINENIRrec = bitpacked record
    LENRXOK,
    LENTXOK,
    LENIDOK,
    LENERR,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LINENIR: byte absolute $CA;  // LIN Enable Interrupt Register
  LINENIRset: TLINENIRset absolute $CA;
  LINENIRrec: TLINENIRrec absolute $CA;
const
  LENRXOK = 0;  m_LENRXOK = 1;  // Enable Receive Performed Interrupt
  LENTXOK = 1;  m_LENTXOK = 2;  // Enable Transmit Performed Interrupt
  LENIDOK = 2;  m_LENIDOK = 4;  // Enable Identifier Interrupt
  LENERR = 3;  m_LENERR = 8;  // Enable Error Interrupt

type
  TLINERRset = bitpacked set of (e_LBERR, e_LCERR, e_LPERR, e_LSERR, e_LFERR, e_LOVERR, e_LTOERR, e_LABORT);
  TLINERRrec = bitpacked record
    LBERR,
    LCERR,
    LPERR,
    LSERR,
    LFERR,
    LOVERR,
    LTOERR,
    LABORT: TBitField;
  end;
var
  LINERR: byte absolute $CB;  // LIN Error Register
  LINERRset: TLINERRset absolute $CB;
  LINERRrec: TLINERRrec absolute $CB;
const
  LBERR = 0;  m_LBERR = 1;  // Bit Error Flag
  LCERR = 1;  m_LCERR = 2;  // Checksum Error Flag
  LPERR = 2;  m_LPERR = 4;  // Parity Error Flag
  LSERR = 3;  m_LSERR = 8;  // Synchronization Error Flag
  LFERR = 4;  m_LFERR = 16;  // Framing Error Flag
  LOVERR = 5;  m_LOVERR = 32;  // Overrun Error Flag
  LTOERR = 6;  m_LTOERR = 64;  // Frame Time Out Error Flag
  LABORT = 7;  m_LABORT = 128;  // Abort Flag

type
  TLINBTRset = bitpacked set of (e_LBT0, e_LBT1, e_LBT2, e_LBT3, e_LBT4, e_LBT5, e_LDISR=7);
  TLINBTRrec = bitpacked record
    LBT0,
    LBT1,
    LBT2,
    LBT3,
    LBT4,
    LBT5,
    ReservedBit6,
    LDISR: TBitField;
  end;
var
  LINBTR: byte absolute $CC;  // LIN Bit Timing Register
  LINBTRset: TLINBTRset absolute $CC;
  LINBTRrec: TLINBTRrec absolute $CC;
const
  LBT0 = 0;  m_LBT0 = 1;  // LIN Bit Timing bits
  LBT1 = 1;  m_LBT1 = 2;  // LIN Bit Timing bits
  LBT2 = 2;  m_LBT2 = 4;  // LIN Bit Timing bits
  LBT3 = 3;  m_LBT3 = 8;  // LIN Bit Timing bits
  LBT4 = 4;  m_LBT4 = 16;  // LIN Bit Timing bits
  LBT5 = 5;  m_LBT5 = 32;  // LIN Bit Timing bits
  LDISR = 7;  m_LDISR = 128;  // Disable Bit Timing Resynchronization

type
  TLINBRRLset = bitpacked set of (e_LDIV0, e_LDIV1, e_LDIV2, e_LDIV3, e_LDIV4, e_LDIV5, e_LDIV6, e_LDIV7);
  TLINBRRLrec = bitpacked record
    LDIV0,
    LDIV1,
    LDIV2,
    LDIV3,
    LDIV4,
    LDIV5,
    LDIV6,
    LDIV7: TBitField;
  end;
var
  LINBRRL: byte absolute $CD;  // LIN Baud Rate Low Register
  LINBRRLset: TLINBRRLset absolute $CD;
  LINBRRLrec: TLINBRRLrec absolute $CD;
const
  LDIV0 = 0;  m_LDIV0 = 1;
  LDIV1 = 1;  m_LDIV1 = 2;
  LDIV2 = 2;  m_LDIV2 = 4;
  LDIV3 = 3;  m_LDIV3 = 8;
  LDIV4 = 4;  m_LDIV4 = 16;
  LDIV5 = 5;  m_LDIV5 = 32;
  LDIV6 = 6;  m_LDIV6 = 64;
  LDIV7 = 7;  m_LDIV7 = 128;

var
  LINBRRH: byte absolute $CE;  // LIN Baud Rate High Register

type
  TLINDLRset = bitpacked set of (e_LRXDL0, e_LRXDL1, e_LRXDL2, e_LRXDL3, e_LTXDL0, e_LTXDL1, e_LTXDL2, e_LTXDL3);
  TLINDLRrec = bitpacked record
    LRXDL0,
    LRXDL1,
    LRXDL2,
    LRXDL3,
    LTXDL0,
    LTXDL1,
    LTXDL2,
    LTXDL3: TBitField;
  end;
var
  LINDLR: byte absolute $CF;  // LIN Data Length Register
  LINDLRset: TLINDLRset absolute $CF;
  LINDLRrec: TLINDLRrec absolute $CF;
const
  LRXDL0 = 0;  m_LRXDL0 = 1;  // LIN Receive Data Length bits
  LRXDL1 = 1;  m_LRXDL1 = 2;  // LIN Receive Data Length bits
  LRXDL2 = 2;  m_LRXDL2 = 4;  // LIN Receive Data Length bits
  LRXDL3 = 3;  m_LRXDL3 = 8;  // LIN Receive Data Length bits
  LTXDL0 = 4;  m_LTXDL0 = 16;  // LIN Transmit Data Length bits
  LTXDL1 = 5;  m_LTXDL1 = 32;  // LIN Transmit Data Length bits
  LTXDL2 = 6;  m_LTXDL2 = 64;  // LIN Transmit Data Length bits
  LTXDL3 = 7;  m_LTXDL3 = 128;  // LIN Transmit Data Length bits

type
  TLINIDRset = bitpacked set of (e_LID0, e_LID1, e_LID2, e_LID3, e_LID4, e_LID5, e_LP0, e_LP1);
  TLINIDRrec = bitpacked record
    LID0,
    LID1,
    LID2,
    LID3,
    LID4,
    LID5,
    LP0,
    LP1: TBitField;
  end;
var
  LINIDR: byte absolute $D0;  // LIN Identifier Register
  LINIDRset: TLINIDRset absolute $D0;
  LINIDRrec: TLINIDRrec absolute $D0;
const
  LID0 = 0;  m_LID0 = 1;  // Identifier bit 5 or Data Length bits
  LID1 = 1;  m_LID1 = 2;  // Identifier bit 5 or Data Length bits
  LID2 = 2;  m_LID2 = 4;  // Identifier bit 5 or Data Length bits
  LID3 = 3;  m_LID3 = 8;  // Identifier bit 5 or Data Length bits
  LID4 = 4;  m_LID4 = 16;  // Identifier bit 5 or Data Length bits
  LID5 = 5;  m_LID5 = 32;  // Identifier bit 5 or Data Length bits
  LP0 = 6;  m_LP0 = 64;  // Parity bits
  LP1 = 7;  m_LP1 = 128;  // Parity bits

type
  TLINSELset = bitpacked set of (e_LINDX0, e_LINDX1, e_LINDX2, e_LAINC);
  TLINSELrec = bitpacked record
    LINDX0,
    LINDX1,
    LINDX2,
    LAINC,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LINSEL: byte absolute $D1;  // LIN Data Buffer Selection Register
  LINSELset: TLINSELset absolute $D1;
  LINSELrec: TLINSELrec absolute $D1;
const
  LINDX0 = 0;  m_LINDX0 = 1;  // FIFO LIN Data Buffer Index bits
  LINDX1 = 1;  m_LINDX1 = 2;  // FIFO LIN Data Buffer Index bits
  LINDX2 = 2;  m_LINDX2 = 4;  // FIFO LIN Data Buffer Index bits
  LAINC = 3;  m_LAINC = 8;  // Auto Increment of Data Buffer Index (Active Low)

type
  TLINDATset = bitpacked set of (e_LDATA0, e_LDATA1, e_LDATA2, e_LDATA3, e_LDATA4, e_LDATA5, e_LDATA6, e_LDATA7);
  TLINDATrec = bitpacked record
    LDATA0,
    LDATA1,
    LDATA2,
    LDATA3,
    LDATA4,
    LDATA5,
    LDATA6,
    LDATA7: TBitField;
  end;
var
  LINDAT: byte absolute $D2;  // LIN Data Register
  LINDATset: TLINDATset absolute $D2;
  LINDATrec: TLINDATrec absolute $D2;
const
  LDATA0 = 0;  m_LDATA0 = 1;
  LDATA1 = 1;  m_LDATA1 = 2;
  LDATA2 = 2;  m_LDATA2 = 4;
  LDATA3 = 3;  m_LDATA3 = 8;
  LDATA4 = 4;  m_LDATA4 = 16;
  LDATA5 = 5;  m_LDATA5 = 32;
  LDATA6 = 6;  m_LDATA6 = 64;
  LDATA7 = 7;  m_LDATA7 = 128;
  // typedefs = 67

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 5 Watchdog Time-Out Interrupt
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 6 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 7 Timer/Counter1 Compare Match 1A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 8 Timer/Counter1 Compare Match 1B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 9 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 10 Timer/Counter0 Compare Match 0A
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 11 Timer/Counter0 Overflow
procedure LIN_TC_ISR; external name 'LIN_TC_ISR'; // Interrupt 12 LIN Transfer Complete
procedure LIN_ERR_ISR; external name 'LIN_ERR_ISR'; // Interrupt 13 LIN Error
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 14 SPI Serial Transfer Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 15 ADC Conversion Complete
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 16 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 17 Analog Comparator
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 18 USI Start Condition Detection
procedure USI_OVF_ISR; external name 'USI_OVF_ISR'; // Interrupt 19 USI Counter Overflow

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp INT1_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp WDT_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_OVF_ISR
  jmp LIN_TC_ISR
  jmp LIN_ERR_ISR
  jmp SPI_STC_ISR
  jmp ADC_ISR
  jmp EE_RDY_ISR
  jmp ANA_COMP_ISR
  jmp USI_START_ISR
  jmp USI_OVF_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak WDT_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_OVF_ISR
  .weak LIN_TC_ISR
  .weak LIN_ERR_ISR
  .weak SPI_STC_ISR
  .weak ADC_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak USI_START_ISR
  .weak USI_OVF_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set LIN_TC_ISR, Default_IRQ_handler
  .set LIN_ERR_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_OVF_ISR, Default_IRQ_handler
end;

end.
