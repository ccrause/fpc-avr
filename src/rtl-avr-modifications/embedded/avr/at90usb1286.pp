unit AT90USB1286;

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
  TIFR1: byte absolute $36;  // Timer/Counter1 Interrupt Flag register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Output Compare Flag 1A
  OCF1B = 2;  m_OCF1B = 4;  // Output Compare Flag 1B
  OCF1C = 3;  m_OCF1C = 8;  // Output Compare Flag 1C
  ICF1 = 5;  m_ICF1 = 32;  // Input Capture Flag 1

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
  OCF2A = 1;  m_OCF2A = 2;  // Output Compare Flag 2A
  OCF2B = 2;  m_OCF2B = 4;  // Output Compare Flag 2B

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
  TIFR3: byte absolute $38;  // Timer/Counter3 Interrupt Flag register
  TIFR3set: TTIFR3set absolute $38;
  TIFR3rec: TTIFR3rec absolute $38;
const
  TOV3 = 0;  m_TOV3 = 1;  // Timer/Counter3 Overflow Flag
  OCF3A = 1;  m_OCF3A = 2;  // Output Compare Flag 3A
  OCF3B = 2;  m_OCF3B = 4;  // Output Compare Flag 3B
  OCF3C = 3;  m_OCF3C = 8;  // Output Compare Flag 3C
  ICF3 = 5;  m_ICF3 = 32;  // Input Capture Flag 3

type
  TPCIFRset = bitpacked set of (e_PCIF0);
  TPCIFRrec = bitpacked record
    PCIF0,
    ReservedBit1,
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
  PCIF0 = 0;  m_PCIF0 = 1;  // Pin Change Interrupt Flag 0

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

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register Low Bytes
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
  PSRSYNC = 0;  m_PSRSYNC = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
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

var
  TCNT0: byte absolute $46;  // Timer/Counter0
  OCR0A: byte absolute $47;  // Timer/Counter0 Output Compare Register
  OCR0B: byte absolute $48;  // Timer/Counter0 Output Compare Register

type
  TPLLCSRset = bitpacked set of (e_PLOCK, e_PLLE, e_PLLP0, e_PLLP1, e_PLLP2);
  TPLLCSRrec = bitpacked record
    PLOCK,
    PLLE,
    PLLP0,
    PLLP1,
    PLLP2,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PLLCSR: byte absolute $49;  // PLL Status and Control register
  PLLCSRset: TPLLCSRset absolute $49;
  PLLCSRrec: TPLLCSRrec absolute $49;
const
  PLOCK = 0;  m_PLOCK = 1;  // PLL Lock Status Bit
  PLLE = 1;  m_PLLE = 2;  // PLL Enable Bit
  PLLP0 = 2;  m_PLLP0 = 4;  // PLL prescaler Bits
  PLLP1 = 3;  m_PLLP1 = 8;  // PLL prescaler Bits
  PLLP2 = 4;  m_PLLP2 = 16;  // PLL prescaler Bits

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
  RWWSRE = 4;  m_RWWSRE = 16;  // Read While Write section read enable
  SIGRD = 5;  m_SIGRD = 32;  // Signature Row Read
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

var
  RAMPZ: byte absolute $5B;  // RAM Page Z Select Register
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
  TPRR0set = bitpacked set of (e_PRADC, e_PRSPI=2, e_PRTIM1, e_PRTIM0=5, e_PRTIM2, e_PRTWI);
  TPRR0rec = bitpacked record
    PRADC,
    ReservedBit1,
    PRSPI,
    PRTIM1,
    ReservedBit4,
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
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRTIM0 = 5;  m_PRTIM0 = 32;  // Power Reduction Timer/Counter0
  PRTIM2 = 6;  m_PRTIM2 = 64;  // Power Reduction Timer/Counter2
  PRTWI = 7;  m_PRTWI = 128;  // Power Reduction TWI

type
  TPRR1set = bitpacked set of (e_PRUSART1, e_PRTIM3=3, e_PRUSB=7);
  TPRR1rec = bitpacked record
    PRUSART1,
    ReservedBit1,
    ReservedBit2,
    PRTIM3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    PRUSB: TBitField;
  end;
var
  PRR1: byte absolute $65;  // Power Reduction Register1
  PRR1set: TPRR1set absolute $65;
  PRR1rec: TPRR1rec absolute $65;
const
  PRUSART1 = 0;  m_PRUSART1 = 1;  // Power Reduction USART1
  PRTIM3 = 3;  m_PRTIM3 = 8;  // Power Reduction Timer/Counter3
  PRUSB = 7;  m_PRUSB = 128;  // Power Reduction USB

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
  TPCICRset = bitpacked set of (e_PCIE0);
  TPCICRrec = bitpacked record
    PCIE0,
    ReservedBit1,
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
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enable 0

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

var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0

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
  COM3C0 = 2;  m_COM3C0 = 4;  // Compare Output Mode 3C, bits
  COM3C1 = 3;  m_COM3C1 = 8;  // Compare Output Mode 3C, bits
  COM3B0 = 4;  m_COM3B0 = 16;  // Compare Output Mode 3B, bits
  COM3B1 = 5;  m_COM3B1 = 32;  // Compare Output Mode 3B, bits
  COM3A0 = 6;  m_COM3A0 = 64;  // Compare Output Mode 1A, bits
  COM3A1 = 7;  m_COM3A1 = 128;  // Compare Output Mode 1A, bits

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
  OCR3A: word absolute $98;  // Timer/Counter3 Output Compare Register A  Bytes
  OCR3AL: byte absolute $98;
  OCR3AH: byte absolute $99;
  OCR3B: word absolute $9A;  // Timer/Counter3 Output Compare Register B  Bytes
  OCR3BL: byte absolute $9A;
  OCR3BH: byte absolute $9B;
  OCR3C: word absolute $9C;  // Timer/Counter3 Output Compare Register B  Bytes
  OCR3CL: byte absolute $9C;
  OCR3CH: byte absolute $9D;

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
  WGM20 = 0;  m_WGM20 = 1;  // Waveform Genration Mode
  WGM21 = 1;  m_WGM21 = 2;  // Waveform Genration Mode
  COM2B0 = 4;  m_COM2B0 = 16;  // Compare Output Mode bits
  COM2B1 = 5;  m_COM2B1 = 32;  // Compare Output Mode bits
  COM2A0 = 6;  m_COM2A0 = 64;  // Compare Output Mode bits
  COM2A1 = 7;  m_COM2A1 = 128;  // Compare Output Mode bits

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
  CS20 = 0;  m_CS20 = 1;  // Clock Select bits
  CS21 = 1;  m_CS21 = 2;  // Clock Select bits
  CS22 = 2;  m_CS22 = 4;  // Clock Select bits
  WGM22 = 3;  m_WGM22 = 8;  // Waveform Generation Mode
  FOC2B = 6;  m_FOC2B = 64;  // Force Output Compare B
  FOC2A = 7;  m_FOC2A = 128;  // Force Output Compare A

var
  TCNT2: byte absolute $B2;  // Timer/Counter2
  OCR2A: byte absolute $B3;  // Timer/Counter2 Output Compare Register A
  OCR2B: byte absolute $B4;  // Timer/Counter2 Output Compare Register B

type
  TASSRset = bitpacked set of (e_TCR2BUB, e_TCR2AUB, e_OCR2BUB, e_OCR2AUB, e_TCN2UB, e_AS2, e_EXCLK);
  TASSRrec = bitpacked record
    TCR2BUB,
    TCR2AUB,
    OCR2BUB,
    OCR2AUB,
    TCN2UB,
    AS2,
    EXCLK,
    ReservedBit7: TBitField;
  end;
var
  ASSR: byte absolute $B6;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $B6;
  ASSRrec: TASSRrec absolute $B6;
const
  TCR2BUB = 0;  m_TCR2BUB = 1;  // Timer/Counter Control Register2 Update Busy
  TCR2AUB = 1;  m_TCR2AUB = 2;  // Timer/Counter Control Register2 Update Busy
  OCR2BUB = 2;  m_OCR2BUB = 4;  // Output Compare Register 2 Update Busy
  OCR2AUB = 3;  m_OCR2AUB = 8;  // Output Compare Register2 Update Busy
  TCN2UB = 4;  m_TCN2UB = 16;  // Timer/Counter2 Update Busy
  AS2 = 5;  m_AS2 = 32;  // Asynchronous Timer/Counter2
  EXCLK = 6;  m_EXCLK = 64;  // Enable External Clock Input

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
  TUCSR1Cset = bitpacked set of (e_UCPOL1, e_UCSZ10, e_UCSZ11, e_USBS1, e_UPM10, e_UPM11, e_UMSEL10, e_UMSEL11);
  TUCSR1Crec = bitpacked record
    UCPOL1,
    UCSZ10,
    UCSZ11,
    USBS1,
    UPM10,
    UPM11,
    UMSEL10,
    UMSEL11: TBitField;
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
  UMSEL10 = 6;  m_UMSEL10 = 64;  // USART Mode Select
  UMSEL11 = 7;  m_UMSEL11 = 128;  // USART Mode Select

var
  UBRR1: word absolute $CC;  // USART Baud Rate Register  Bytes
  UBRR1L: byte absolute $CC;
  UBRR1H: byte absolute $CD;
  UDR1: byte absolute $CE;  // USART I/O Data Register

type
  TUHWCONset = bitpacked set of (e_UVREGE, e_UVCONE=4, e_UIDE=6, e_UIMOD);
  TUHWCONrec = bitpacked record
    UVREGE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    UVCONE,
    ReservedBit5,
    UIDE,
    UIMOD: TBitField;
  end;
var
  UHWCON: byte absolute $D7;  // USB Hardware Configuration Register
  UHWCONset: TUHWCONset absolute $D7;
  UHWCONrec: TUHWCONrec absolute $D7;
const
  UVREGE = 0;  m_UVREGE = 1;
  UVCONE = 4;  m_UVCONE = 16;
  UIDE = 6;  m_UIDE = 64;
  UIMOD = 7;  m_UIMOD = 128;

type
  TUSBCONset = bitpacked set of (e_VBUSTE, e_IDTE, e_OTGPADE=4, e_FRZCLK, e_HOST, e_USBE);
  TUSBCONrec = bitpacked record
    VBUSTE,
    IDTE,
    ReservedBit2,
    ReservedBit3,
    OTGPADE,
    FRZCLK,
    HOST,
    USBE: TBitField;
  end;
var
  USBCON: byte absolute $D8;  // USB General Control Register
  USBCONset: TUSBCONset absolute $D8;
  USBCONrec: TUSBCONrec absolute $D8;
const
  VBUSTE = 0;  m_VBUSTE = 1;
  IDTE = 1;  m_IDTE = 2;
  OTGPADE = 4;  m_OTGPADE = 16;
  FRZCLK = 5;  m_FRZCLK = 32;
  HOST = 6;  m_HOST = 64;
  USBE = 7;  m_USBE = 128;

type
  TUSBSTAset = bitpacked set of (e_VBUS, e_ID, e_SPEED=3);
  TUSBSTArec = bitpacked record
    VBUS,
    ID,
    ReservedBit2,
    SPEED,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  USBSTA: byte absolute $D9;
  USBSTAset: TUSBSTAset absolute $D9;
  USBSTArec: TUSBSTArec absolute $D9;
const
  VBUS = 0;  m_VBUS = 1;
  ID = 1;  m_ID = 2;
  SPEED = 3;  m_SPEED = 8;

type
  TUSBINTset = bitpacked set of (e_VBUSTI, e_IDTI);
  TUSBINTrec = bitpacked record
    VBUSTI,
    IDTI,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  USBINT: byte absolute $DA;
  USBINTset: TUSBINTset absolute $DA;
  USBINTrec: TUSBINTrec absolute $DA;
const
  VBUSTI = 0;  m_VBUSTI = 1;
  IDTI = 1;  m_IDTI = 2;

type
  TUDCONset = bitpacked set of (e_DETACH, e_RMWKUP, e_LSM);
  TUDCONrec = bitpacked record
    DETACH,
    RMWKUP,
    LSM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UDCON: byte absolute $E0;
  UDCONset: TUDCONset absolute $E0;
  UDCONrec: TUDCONrec absolute $E0;
const
  DETACH = 0;  m_DETACH = 1;
  RMWKUP = 1;  m_RMWKUP = 2;
  LSM = 2;  m_LSM = 4;

type
  TUDINTset = bitpacked set of (e_SUSPI, e_SOFI=2, e_EORSTI, e_WAKEUPI, e_EORSMI, e_UPRSMI);
  TUDINTrec = bitpacked record
    SUSPI,
    ReservedBit1,
    SOFI,
    EORSTI,
    WAKEUPI,
    EORSMI,
    UPRSMI,
    ReservedBit7: TBitField;
  end;
var
  UDINT: byte absolute $E1;
  UDINTset: TUDINTset absolute $E1;
  UDINTrec: TUDINTrec absolute $E1;
const
  SUSPI = 0;  m_SUSPI = 1;
  SOFI = 2;  m_SOFI = 4;
  EORSTI = 3;  m_EORSTI = 8;
  WAKEUPI = 4;  m_WAKEUPI = 16;
  EORSMI = 5;  m_EORSMI = 32;
  UPRSMI = 6;  m_UPRSMI = 64;

type
  TUDIENset = bitpacked set of (e_SUSPE, e_SOFE=2, e_EORSTE, e_WAKEUPE, e_EORSME, e_UPRSME);
  TUDIENrec = bitpacked record
    SUSPE,
    ReservedBit1,
    SOFE,
    EORSTE,
    WAKEUPE,
    EORSME,
    UPRSME,
    ReservedBit7: TBitField;
  end;
var
  UDIEN: byte absolute $E2;
  UDIENset: TUDIENset absolute $E2;
  UDIENrec: TUDIENrec absolute $E2;
const
  SUSPE = 0;  m_SUSPE = 1;
  SOFE = 2;  m_SOFE = 4;
  EORSTE = 3;  m_EORSTE = 8;
  WAKEUPE = 4;  m_WAKEUPE = 16;
  EORSME = 5;  m_EORSME = 32;
  UPRSME = 6;  m_UPRSME = 64;

type
  TUDADDRset = bitpacked set of (e_UADD0, e_UADD1, e_UADD2, e_UADD3, e_UADD4, e_UADD5, e_UADD6, e_ADDEN);
  TUDADDRrec = bitpacked record
    UADD0,
    UADD1,
    UADD2,
    UADD3,
    UADD4,
    UADD5,
    UADD6,
    ADDEN: TBitField;
  end;
var
  UDADDR: byte absolute $E3;
  UDADDRset: TUDADDRset absolute $E3;
  UDADDRrec: TUDADDRrec absolute $E3;
const
  UADD0 = 0;  m_UADD0 = 1;
  UADD1 = 1;  m_UADD1 = 2;
  UADD2 = 2;  m_UADD2 = 4;
  UADD3 = 3;  m_UADD3 = 8;
  UADD4 = 4;  m_UADD4 = 16;
  UADD5 = 5;  m_UADD5 = 32;
  UADD6 = 6;  m_UADD6 = 64;
  ADDEN = 7;  m_ADDEN = 128;

var
  UDFNUM: word absolute $E4;
  UDFNUML: byte absolute $E4;
  UDFNUMH: byte absolute $E5;

type
  TUDMFNset = bitpacked set of (e_FNCERR=4);
  TUDMFNrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    FNCERR,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UDMFN: byte absolute $E6;
  UDMFNset: TUDMFNset absolute $E6;
  UDMFNrec: TUDMFNrec absolute $E6;
const
  FNCERR = 4;  m_FNCERR = 16;

type
  TUEINTXset = bitpacked set of (e_TXINI, e_STALLEDI, e_RXOUTI, e_RXSTPI, e_NAKOUTI, e_RWAL, e_NAKINI, e_FIFOCON);
  TUEINTXrec = bitpacked record
    TXINI,
    STALLEDI,
    RXOUTI,
    RXSTPI,
    NAKOUTI,
    RWAL,
    NAKINI,
    FIFOCON: TBitField;
  end;
var
  UEINTX: byte absolute $E8;
  UEINTXset: TUEINTXset absolute $E8;
  UEINTXrec: TUEINTXrec absolute $E8;
const
  TXINI = 0;  m_TXINI = 1;
  STALLEDI = 1;  m_STALLEDI = 2;
  RXOUTI = 2;  m_RXOUTI = 4;
  RXSTPI = 3;  m_RXSTPI = 8;
  NAKOUTI = 4;  m_NAKOUTI = 16;
  RWAL = 5;  m_RWAL = 32;
  NAKINI = 6;  m_NAKINI = 64;
  FIFOCON = 7;  m_FIFOCON = 128;

var
  UENUM: byte absolute $E9;

type
  TUERSTset = bitpacked set of (e_EPRST0, e_EPRST1, e_EPRST2, e_EPRST3, e_EPRST4, e_EPRST5, e_EPRST6);
  TUERSTrec = bitpacked record
    EPRST0,
    EPRST1,
    EPRST2,
    EPRST3,
    EPRST4,
    EPRST5,
    EPRST6,
    ReservedBit7: TBitField;
  end;
var
  UERST: byte absolute $EA;
  UERSTset: TUERSTset absolute $EA;
  UERSTrec: TUERSTrec absolute $EA;
const
  EPRST0 = 0;  m_EPRST0 = 1;
  EPRST1 = 1;  m_EPRST1 = 2;
  EPRST2 = 2;  m_EPRST2 = 4;
  EPRST3 = 3;  m_EPRST3 = 8;
  EPRST4 = 4;  m_EPRST4 = 16;
  EPRST5 = 5;  m_EPRST5 = 32;
  EPRST6 = 6;  m_EPRST6 = 64;

type
  TUECONXset = bitpacked set of (e_EPEN, e_RSTDT=3, e_STALLRQC, e_STALLRQ);
  TUECONXrec = bitpacked record
    EPEN,
    ReservedBit1,
    ReservedBit2,
    RSTDT,
    STALLRQC,
    STALLRQ,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UECONX: byte absolute $EB;
  UECONXset: TUECONXset absolute $EB;
  UECONXrec: TUECONXrec absolute $EB;
const
  EPEN = 0;  m_EPEN = 1;
  RSTDT = 3;  m_RSTDT = 8;
  STALLRQC = 4;  m_STALLRQC = 16;
  STALLRQ = 5;  m_STALLRQ = 32;

type
  TUECFG0Xset = bitpacked set of (e_EPDIR, e_EPTYPE0=6, e_EPTYPE1);
  TUECFG0Xrec = bitpacked record
    EPDIR,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    EPTYPE0,
    EPTYPE1: TBitField;
  end;
var
  UECFG0X: byte absolute $EC;
  UECFG0Xset: TUECFG0Xset absolute $EC;
  UECFG0Xrec: TUECFG0Xrec absolute $EC;
const
  EPDIR = 0;  m_EPDIR = 1;
  EPTYPE0 = 6;  m_EPTYPE0 = 64;
  EPTYPE1 = 7;  m_EPTYPE1 = 128;

type
  TUECFG1Xset = bitpacked set of (e_ALLOC=1, e_EPBK0, e_EPBK1, e_EPSIZE0, e_EPSIZE1, e_EPSIZE2);
  TUECFG1Xrec = bitpacked record
    ReservedBit0,
    ALLOC,
    EPBK0,
    EPBK1,
    EPSIZE0,
    EPSIZE1,
    EPSIZE2,
    ReservedBit7: TBitField;
  end;
var
  UECFG1X: byte absolute $ED;
  UECFG1Xset: TUECFG1Xset absolute $ED;
  UECFG1Xrec: TUECFG1Xrec absolute $ED;
const
  ALLOC = 1;  m_ALLOC = 2;
  EPBK0 = 2;  m_EPBK0 = 4;
  EPBK1 = 3;  m_EPBK1 = 8;
  EPSIZE0 = 4;  m_EPSIZE0 = 16;
  EPSIZE1 = 5;  m_EPSIZE1 = 32;
  EPSIZE2 = 6;  m_EPSIZE2 = 64;

type
  TUESTA0Xset = bitpacked set of (e_NBUSYBK0, e_NBUSYBK1, e_DTSEQ0, e_DTSEQ1, e_UNDERFI=5, e_OVERFI, e_CFGOK);
  TUESTA0Xrec = bitpacked record
    NBUSYBK0,
    NBUSYBK1,
    DTSEQ0,
    DTSEQ1,
    ReservedBit4,
    UNDERFI,
    OVERFI,
    CFGOK: TBitField;
  end;
var
  UESTA0X: byte absolute $EE;
  UESTA0Xset: TUESTA0Xset absolute $EE;
  UESTA0Xrec: TUESTA0Xrec absolute $EE;
const
  NBUSYBK0 = 0;  m_NBUSYBK0 = 1;
  NBUSYBK1 = 1;  m_NBUSYBK1 = 2;
  DTSEQ0 = 2;  m_DTSEQ0 = 4;
  DTSEQ1 = 3;  m_DTSEQ1 = 8;
  UNDERFI = 5;  m_UNDERFI = 32;
  OVERFI = 6;  m_OVERFI = 64;
  CFGOK = 7;  m_CFGOK = 128;

type
  TUESTA1Xset = bitpacked set of (e_CURRBK0, e_CURRBK1, e_CTRLDIR);
  TUESTA1Xrec = bitpacked record
    CURRBK0,
    CURRBK1,
    CTRLDIR,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UESTA1X: byte absolute $EF;
  UESTA1Xset: TUESTA1Xset absolute $EF;
  UESTA1Xrec: TUESTA1Xrec absolute $EF;
const
  CURRBK0 = 0;  m_CURRBK0 = 1;
  CURRBK1 = 1;  m_CURRBK1 = 2;
  CTRLDIR = 2;  m_CTRLDIR = 4;

type
  TUEIENXset = bitpacked set of (e_TXINE, e_STALLEDE, e_RXOUTE, e_RXSTPE, e_NAKOUTE, e_NAKINE=6, e_FLERRE);
  TUEIENXrec = bitpacked record
    TXINE,
    STALLEDE,
    RXOUTE,
    RXSTPE,
    NAKOUTE,
    ReservedBit5,
    NAKINE,
    FLERRE: TBitField;
  end;
var
  UEIENX: byte absolute $F0;
  UEIENXset: TUEIENXset absolute $F0;
  UEIENXrec: TUEIENXrec absolute $F0;
const
  TXINE = 0;  m_TXINE = 1;
  STALLEDE = 1;  m_STALLEDE = 2;
  RXOUTE = 2;  m_RXOUTE = 4;
  RXSTPE = 3;  m_RXSTPE = 8;
  NAKOUTE = 4;  m_NAKOUTE = 16;
  NAKINE = 6;  m_NAKINE = 64;
  FLERRE = 7;  m_FLERRE = 128;

var
  UEDATX: byte absolute $F1;
  UEBCLX: byte absolute $F2;
  UEBCHX: byte absolute $F3;
  UEINT: byte absolute $F4;
  // typedefs = 80

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
procedure USB_GEN_ISR; external name 'USB_GEN_ISR'; // Interrupt 10 USB General Interrupt Request
procedure USB_COM_ISR; external name 'USB_COM_ISR'; // Interrupt 11 USB Endpoint/Pipe Interrupt Communication Request
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
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 25 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 26 USART1 Data register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 27 USART1, Tx Complete
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 28 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 29 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 30 EEPROM Ready
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 31 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 32 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 33 Timer/Counter3 Compare Match B
procedure TIMER3_COMPC_ISR; external name 'TIMER3_COMPC_ISR'; // Interrupt 34 Timer/Counter3 Compare Match C
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 35 Timer/Counter3 Overflow
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 36 2-wire Serial Interface        
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 37 Store Program Memory Read

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
  jmp USB_GEN_ISR
  jmp USB_COM_ISR
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
  jmp USART1_RX_ISR
  jmp USART1_UDRE_ISR
  jmp USART1_TX_ISR
  jmp ANALOG_COMP_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp TIMER3_CAPT_ISR
  jmp TIMER3_COMPA_ISR
  jmp TIMER3_COMPB_ISR
  jmp TIMER3_COMPC_ISR
  jmp TIMER3_OVF_ISR
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
  .weak PCINT0_ISR
  .weak USB_GEN_ISR
  .weak USB_COM_ISR
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
  .weak USART1_RX_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_TX_ISR
  .weak ANALOG_COMP_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak TIMER3_CAPT_ISR
  .weak TIMER3_COMPA_ISR
  .weak TIMER3_COMPB_ISR
  .weak TIMER3_COMPC_ISR
  .weak TIMER3_OVF_ISR
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
  .set PCINT0_ISR, Default_IRQ_handler
  .set USB_GEN_ISR, Default_IRQ_handler
  .set USB_COM_ISR, Default_IRQ_handler
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
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set TIMER3_CAPT_ISR, Default_IRQ_handler
  .set TIMER3_COMPA_ISR, Default_IRQ_handler
  .set TIMER3_COMPB_ISR, Default_IRQ_handler
  .set TIMER3_COMPC_ISR, Default_IRQ_handler
  .set TIMER3_OVF_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
