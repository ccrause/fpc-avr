unit ATmega32M1;

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
  GPIOR2: byte absolute $3A;  // General Purpose IO Register 2
  GPIOR2set: TGPIOR2set absolute $3A;
  GPIOR2rec: TGPIOR2rec absolute $3A;
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
  TPCIFRset = bitpacked set of (e_PCIF0, e_PCIF1, e_PCIF2, e_PCIF3);
  TPCIFRrec = bitpacked record
    PCIF0,
    PCIF1,
    PCIF2,
    PCIF3,
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
  PCIF3 = 3;  m_PCIF3 = 8;  // Pin Change Interrupt Flags

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
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;
  EEPM1 = 5;  m_EEPM1 = 32;

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Read/Write Access
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

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

var
  TCNT0: byte absolute $46;  // Timer/Counter0
  OCR0A: byte absolute $47;  // Timer/Counter0 Output Compare Register
  OCR0B: byte absolute $48;  // Timer/Counter0 Output Compare Register

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

var
  SPDR: byte absolute $4E;  // SPI Data Register

type
  TACSRset = bitpacked set of (e_AC0O, e_AC1O, e_AC2O, e_AC3O, e_AC0IF, e_AC1IF, e_AC2IF, e_AC3IF);
  TACSRrec = bitpacked record
    AC0O,
    AC1O,
    AC2O,
    AC3O,
    AC0IF,
    AC1IF,
    AC2IF,
    AC3IF: TBitField;
  end;
var
  ACSR: byte absolute $50;  // Analog Comparator Status Register
  ACSRset: TACSRset absolute $50;
  ACSRrec: TACSRrec absolute $50;
const
  AC0O = 0;  m_AC0O = 1;  // Analog Comparator 0 Output Bit
  AC1O = 1;  m_AC1O = 2;  // Analog Comparator 1 Output Bit
  AC2O = 2;  m_AC2O = 4;  // Analog Comparator 2 Output Bit
  AC3O = 3;  m_AC3O = 8;  // Analog Comparator 3 Output Bit
  AC0IF = 4;  m_AC0IF = 16;  // Analog Comparator 0 Interrupt Flag Bit
  AC1IF = 5;  m_AC1IF = 32;  // Analog Comparator 1  Interrupt Flag Bit
  AC2IF = 6;  m_AC2IF = 64;  // Analog Comparator 2 Interrupt Flag Bit
  AC3IF = 7;  m_AC3IF = 128;  // Analog Comparator 3 Interrupt Flag Bit

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
  TPRRset = bitpacked set of (e_PRADC, e_PRLIN, e_PRSPI, e_PRTIM0, e_PRTIM1, e_PRPSC, e_PRCAN);
  TPRRrec = bitpacked record
    PRADC,
    PRLIN,
    PRSPI,
    PRTIM0,
    PRTIM1,
    PRPSC,
    PRCAN,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $64;  // Power Reduction Register
  PRRset: TPRRset absolute $64;
  PRRrec: TPRRrec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRLIN = 1;  m_PRLIN = 2;  // Power Reduction LIN UART
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM0 = 3;  m_PRTIM0 = 8;  // Power Reduction Timer/Counter0
  PRTIM1 = 4;  m_PRTIM1 = 16;  // Power Reduction Timer/Counter1
  PRPSC = 5;  m_PRPSC = 32;  // Power Reduction PSC
  PRCAN = 6;  m_PRCAN = 64;  // Power Reduction CAN

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
  TPCICRset = bitpacked set of (e_PCIE0, e_PCIE1, e_PCIE2, e_PCIE3);
  TPCICRrec = bitpacked record
    PCIE0,
    PCIE1,
    PCIE2,
    PCIE3,
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
  PCIE3 = 3;  m_PCIE3 = 8;  // Pin Change Interrupt Enables

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
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt Sense Control Bit
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt Sense Control Bit
  ISC30 = 6;  m_ISC30 = 64;  // External Interrupt Sense Control Bit
  ISC31 = 7;  m_ISC31 = 128;  // External Interrupt Sense Control Bit

var
  PCMSK0: byte absolute $6A;  // Pin Change Mask Register 0
  PCMSK1: byte absolute $6B;  // Pin Change Mask Register 1
  PCMSK2: byte absolute $6C;  // Pin Change Mask Register 2

type
  TPCMSK3set = bitpacked set of (e_PCINT24, e_PCINT25, e_PCINT26);
  TPCMSK3rec = bitpacked record
    PCINT24,
    PCINT25,
    PCINT26,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCMSK3: byte absolute $6D;  // Pin Change Mask Register 3
  PCMSK3set: TPCMSK3set absolute $6D;
  PCMSK3rec: TPCMSK3rec absolute $6D;
const
  PCINT24 = 0;  m_PCINT24 = 1;  // Pin Change Enable Masks
  PCINT25 = 1;  m_PCINT25 = 2;  // Pin Change Enable Masks
  PCINT26 = 2;  m_PCINT26 = 4;  // Pin Change Enable Masks

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
  TAMP0CSRset = bitpacked set of (e_AMP0TS0, e_AMP0TS1, e_AMP0TS2, e_AMPCMP0, e_AMP0G0, e_AMP0G1, e_AMP0IS, e_AMP0EN);
  TAMP0CSRrec = bitpacked record
    AMP0TS0,
    AMP0TS1,
    AMP0TS2,
    AMPCMP0,
    AMP0G0,
    AMP0G1,
    AMP0IS,
    AMP0EN: TBitField;
  end;
var
  AMP0CSR: byte absolute $75;
  AMP0CSRset: TAMP0CSRset absolute $75;
  AMP0CSRrec: TAMP0CSRrec absolute $75;
const
  AMP0TS0 = 0;  m_AMP0TS0 = 1;
  AMP0TS1 = 1;  m_AMP0TS1 = 2;
  AMP0TS2 = 2;  m_AMP0TS2 = 4;
  AMPCMP0 = 3;  m_AMPCMP0 = 8;  // Amplifier 0 - Comparator 0 Connection
  AMP0G0 = 4;  m_AMP0G0 = 16;
  AMP0G1 = 5;  m_AMP0G1 = 32;
  AMP0IS = 6;  m_AMP0IS = 64;
  AMP0EN = 7;  m_AMP0EN = 128;

type
  TAMP1CSRset = bitpacked set of (e_AMP1TS0, e_AMP1TS1, e_AMP1TS2, e_AMPCMP1, e_AMP1G0, e_AMP1G1, e_AMP1IS, e_AMP1EN);
  TAMP1CSRrec = bitpacked record
    AMP1TS0,
    AMP1TS1,
    AMP1TS2,
    AMPCMP1,
    AMP1G0,
    AMP1G1,
    AMP1IS,
    AMP1EN: TBitField;
  end;
var
  AMP1CSR: byte absolute $76;
  AMP1CSRset: TAMP1CSRset absolute $76;
  AMP1CSRrec: TAMP1CSRrec absolute $76;
const
  AMP1TS0 = 0;  m_AMP1TS0 = 1;
  AMP1TS1 = 1;  m_AMP1TS1 = 2;
  AMP1TS2 = 2;  m_AMP1TS2 = 4;
  AMPCMP1 = 3;  m_AMPCMP1 = 8;  // Amplifier 1 - Comparator 1 Connection
  AMP1G0 = 4;  m_AMP1G0 = 16;
  AMP1G1 = 5;  m_AMP1G1 = 32;
  AMP1IS = 6;  m_AMP1IS = 64;
  AMP1EN = 7;  m_AMP1EN = 128;

type
  TAMP2CSRset = bitpacked set of (e_AMP2TS0, e_AMP2TS1, e_AMP2TS2, e_AMPCMP2, e_AMP2G0, e_AMP2G1, e_AMP2IS, e_AMP2EN);
  TAMP2CSRrec = bitpacked record
    AMP2TS0,
    AMP2TS1,
    AMP2TS2,
    AMPCMP2,
    AMP2G0,
    AMP2G1,
    AMP2IS,
    AMP2EN: TBitField;
  end;
var
  AMP2CSR: byte absolute $77;
  AMP2CSRset: TAMP2CSRset absolute $77;
  AMP2CSRrec: TAMP2CSRrec absolute $77;
const
  AMP2TS0 = 0;  m_AMP2TS0 = 1;
  AMP2TS1 = 1;  m_AMP2TS1 = 2;
  AMP2TS2 = 2;  m_AMP2TS2 = 4;
  AMPCMP2 = 3;  m_AMPCMP2 = 8;  // Amplifier 2 - Comparator 2 Connection
  AMP2G0 = 4;  m_AMP2G0 = 16;
  AMP2G1 = 5;  m_AMP2G1 = 32;
  AMP2IS = 6;  m_AMP2IS = 64;
  AMP2EN = 7;  m_AMP2EN = 128;

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
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC Auto Trigger Enable
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADTS3, e_AREFEN=5, e_ISRCEN, e_ADHSM);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADTS3,
    ReservedBit4,
    AREFEN,
    ISRCEN,
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
  ADTS3 = 3;  m_ADTS3 = 8;  // ADC Auto Trigger Sources
  AREFEN = 5;  m_AREFEN = 32;  // Analog Reference pin Enable
  ISRCEN = 6;  m_ISRCEN = 64;  // Current Source Enable
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
  TDIDR1set = bitpacked set of (e_ADC8D, e_ADC9D, e_ADC10D, e_AMP0ND, e_AMP0PD, e_ACMP0D, e_AMP2PD);
  TDIDR1rec = bitpacked record
    ADC8D,
    ADC9D,
    ADC10D,
    AMP0ND,
    AMP0PD,
    ACMP0D,
    AMP2PD,
    ReservedBit7: TBitField;
  end;
var
  DIDR1: byte absolute $7F;  // Digital Input Disable Register 0
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  ADC8D = 0;  m_ADC8D = 1;  // ADC8 Pin Digital input Disable
  ADC9D = 1;  m_ADC9D = 2;  // ADC9 Pin Digital input Disable
  ADC10D = 2;  m_ADC10D = 4;  // ADC10 Pin Digital input Disable
  AMP0ND = 3;  m_AMP0ND = 8;  // AMP0N Pin Digital input Disable
  AMP0PD = 4;  m_AMP0PD = 16;  // AMP0P Pin Digital input Disable
  ACMP0D = 5;  m_ACMP0D = 32;  // ACMP0 Pin Digital input Disable
  AMP2PD = 6;  m_AMP2PD = 64;  // AMP2P Pin Digital input Disable

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

type
  TDACONset = bitpacked set of (e_DAEN, e_DALA=2, e_DATS0=4, e_DATS1, e_DATS2, e_DAATE);
  TDACONrec = bitpacked record
    DAEN,
    ReservedBit1,
    DALA,
    ReservedBit3,
    DATS0,
    DATS1,
    DATS2,
    DAATE: TBitField;
  end;
var
  DACON: byte absolute $90;  // DAC Control Register
  DACONset: TDACONset absolute $90;
  DACONrec: TDACONrec absolute $90;
const
  DAEN = 0;  m_DAEN = 1;  // DAC Enable Bit
  DALA = 2;  m_DALA = 4;  // DAC Left Adjust
  DATS0 = 4;  m_DATS0 = 16;  // DAC Trigger Selection Bits
  DATS1 = 5;  m_DATS1 = 32;  // DAC Trigger Selection Bits
  DATS2 = 6;  m_DATS2 = 64;  // DAC Trigger Selection Bits
  DAATE = 7;  m_DAATE = 128;  // DAC Auto Trigger Enable Bit

type
  TDACLset = bitpacked set of (e_DACL0, e_DACL1, e_DACL2, e_DACL3, e_DACL4, e_DACL5, e_DACL6, e_DACL7);
  TDACLrec = bitpacked record
    DACL0,
    DACL1,
    DACL2,
    DACL3,
    DACL4,
    DACL5,
    DACL6,
    DACL7: TBitField;
  end;
var
  DACL: byte absolute $91;  // DAC Data Register Low Byte
  DACLset: TDACLset absolute $91;
  DACLrec: TDACLrec absolute $91;
const
  DACL0 = 0;  m_DACL0 = 1;  // DAC Data Register Low Byte Bits
  DACL1 = 1;  m_DACL1 = 2;  // DAC Data Register Low Byte Bits
  DACL2 = 2;  m_DACL2 = 4;  // DAC Data Register Low Byte Bits
  DACL3 = 3;  m_DACL3 = 8;  // DAC Data Register Low Byte Bits
  DACL4 = 4;  m_DACL4 = 16;  // DAC Data Register Low Byte Bits
  DACL5 = 5;  m_DACL5 = 32;  // DAC Data Register Low Byte Bits
  DACL6 = 6;  m_DACL6 = 64;  // DAC Data Register Low Byte Bits
  DACL7 = 7;  m_DACL7 = 128;  // DAC Data Register Low Byte Bits

type
  TDACHset = bitpacked set of (e_DACH0, e_DACH1, e_DACH2, e_DACH3, e_DACH4, e_DACH5, e_DACH6, e_DACH7);
  TDACHrec = bitpacked record
    DACH0,
    DACH1,
    DACH2,
    DACH3,
    DACH4,
    DACH5,
    DACH6,
    DACH7: TBitField;
  end;
var
  DACH: byte absolute $92;  // DAC Data Register High Byte
  DACHset: TDACHset absolute $92;
  DACHrec: TDACHrec absolute $92;
const
  DACH0 = 0;  m_DACH0 = 1;  // DAC Data Register High Byte Bits
  DACH1 = 1;  m_DACH1 = 2;  // DAC Data Register High Byte Bits
  DACH2 = 2;  m_DACH2 = 4;  // DAC Data Register High Byte Bits
  DACH3 = 3;  m_DACH3 = 8;  // DAC Data Register High Byte Bits
  DACH4 = 4;  m_DACH4 = 16;  // DAC Data Register High Byte Bits
  DACH5 = 5;  m_DACH5 = 32;  // DAC Data Register High Byte Bits
  DACH6 = 6;  m_DACH6 = 64;  // DAC Data Register High Byte Bits
  DACH7 = 7;  m_DACH7 = 128;  // DAC Data Register High Byte Bits

type
  TAC0CONset = bitpacked set of (e_AC0M0, e_AC0M1, e_AC0M2, e_ACCKSEL, e_AC0IS0, e_AC0IS1, e_AC0IE, e_AC0EN);
  TAC0CONrec = bitpacked record
    AC0M0,
    AC0M1,
    AC0M2,
    ACCKSEL,
    AC0IS0,
    AC0IS1,
    AC0IE,
    AC0EN: TBitField;
  end;
var
  AC0CON: byte absolute $94;  // Analog Comparator 0 Control Register
  AC0CONset: TAC0CONset absolute $94;
  AC0CONrec: TAC0CONrec absolute $94;
const
  AC0M0 = 0;  m_AC0M0 = 1;  // Analog Comparator 0 Multiplexer Register
  AC0M1 = 1;  m_AC0M1 = 2;  // Analog Comparator 0 Multiplexer Register
  AC0M2 = 2;  m_AC0M2 = 4;  // Analog Comparator 0 Multiplexer Register
  ACCKSEL = 3;  m_ACCKSEL = 8;  // Analog Comparator Clock Select
  AC0IS0 = 4;  m_AC0IS0 = 16;  // Analog Comparator 0  Interrupt Select Bits
  AC0IS1 = 5;  m_AC0IS1 = 32;  // Analog Comparator 0  Interrupt Select Bits
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
  AC1CON: byte absolute $95;  // Analog Comparator 1 Control Register
  AC1CONset: TAC1CONset absolute $95;
  AC1CONrec: TAC1CONrec absolute $95;
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
  AC2CON: byte absolute $96;  // Analog Comparator 2 Control Register
  AC2CONset: TAC2CONset absolute $96;
  AC2CONrec: TAC2CONrec absolute $96;
const
  AC2M0 = 0;  m_AC2M0 = 1;  // Analog Comparator 2 Multiplexer Register
  AC2M1 = 1;  m_AC2M1 = 2;  // Analog Comparator 2 Multiplexer Register
  AC2M2 = 2;  m_AC2M2 = 4;  // Analog Comparator 2 Multiplexer Register
  AC2IS0 = 4;  m_AC2IS0 = 16;  // Analog Comparator 2  Interrupt Select Bit
  AC2IS1 = 5;  m_AC2IS1 = 32;  // Analog Comparator 2  Interrupt Select Bit
  AC2IE = 6;  m_AC2IE = 64;  // Analog Comparator 2 Interrupt Enable Bit
  AC2EN = 7;  m_AC2EN = 128;  // Analog Comparator 2 Enable Bit

type
  TAC3CONset = bitpacked set of (e_AC3M0, e_AC3M1, e_AC3M2, e_AC3IS0=4, e_AC3IS1, e_AC3IE, e_AC3EN);
  TAC3CONrec = bitpacked record
    AC3M0,
    AC3M1,
    AC3M2,
    ReservedBit3,
    AC3IS0,
    AC3IS1,
    AC3IE,
    AC3EN: TBitField;
  end;
var
  AC3CON: byte absolute $97;  // Analog Comparator 3 Control Register
  AC3CONset: TAC3CONset absolute $97;
  AC3CONrec: TAC3CONrec absolute $97;
const
  AC3M0 = 0;  m_AC3M0 = 1;  // Analog Comparator 3 Multiplexer Register
  AC3M1 = 1;  m_AC3M1 = 2;  // Analog Comparator 3 Multiplexer Register
  AC3M2 = 2;  m_AC3M2 = 4;  // Analog Comparator 3 Multiplexer Register
  AC3IS0 = 4;  m_AC3IS0 = 16;  // Analog Comparator 3  Interrupt Select Bit
  AC3IS1 = 5;  m_AC3IS1 = 32;  // Analog Comparator 3  Interrupt Select Bit
  AC3IE = 6;  m_AC3IE = 64;  // Analog Comparator 3 Interrupt Enable Bit
  AC3EN = 7;  m_AC3EN = 128;  // Analog Comparator 3 Enable Bit

var
  POCR0SA: word absolute $A0;  // PSC Module 0 Output Compare SA Register 
  POCR0SAL: byte absolute $A0;
  POCR0SAH: byte absolute $A1;
  POCR0RA: word absolute $A2;  // PSC Module 0 Output Compare RA Register 
  POCR0RAL: byte absolute $A2;
  POCR0RAH: byte absolute $A3;
  POCR0SB: word absolute $A4;  // PSC Output Compare SB Register 
  POCR0SBL: byte absolute $A4;
  POCR0SBH: byte absolute $A5;
  POCR1SA: word absolute $A6;  // PSC Output Compare SA Register 
  POCR1SAL: byte absolute $A6;
  POCR1SAH: byte absolute $A7;
  POCR1RA: word absolute $A8;  // PSC Module 1 Output Compare RA Register 
  POCR1RAL: byte absolute $A8;
  POCR1RAH: byte absolute $A9;
  POCR1SB: word absolute $AA;  // PSC Module 1 Output Compare SB Register 
  POCR1SBL: byte absolute $AA;
  POCR1SBH: byte absolute $AB;
  POCR2SA: word absolute $AC;  // PSC Module 2 Output Compare SA Register 
  POCR2SAL: byte absolute $AC;
  POCR2SAH: byte absolute $AD;
  POCR2RA: word absolute $AE;  // PSC Module 2 Output Compare RA Register 
  POCR2RAL: byte absolute $AE;
  POCR2RAH: byte absolute $AF;
  POCR2SB: word absolute $B0;  // PSC Module 2 Output Compare SB Register 
  POCR2SBL: byte absolute $B0;
  POCR2SBH: byte absolute $B1;
  POCR_RB: word absolute $B2;  // PSC Output Compare RB Register 
  POCR_RBL: byte absolute $B2;
  POCR_RBH: byte absolute $B3;

type
  TPSYNCset = bitpacked set of (e_PSYNC00, e_PSYNC01, e_PSYNC10, e_PSYNC11, e_PSYNC20, e_PSYNC21);
  TPSYNCrec = bitpacked record
    PSYNC00,
    PSYNC01,
    PSYNC10,
    PSYNC11,
    PSYNC20,
    PSYNC21,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PSYNC: byte absolute $B4;  // PSC Synchro Configuration
  PSYNCset: TPSYNCset absolute $B4;
  PSYNCrec: TPSYNCrec absolute $B4;
const
  PSYNC00 = 0;  m_PSYNC00 = 1;  // Selection of Synchronization Out for ADC
  PSYNC01 = 1;  m_PSYNC01 = 2;  // Selection of Synchronization Out for ADC
  PSYNC10 = 2;  m_PSYNC10 = 4;  // Selection of Synchronization Out for ADC
  PSYNC11 = 3;  m_PSYNC11 = 8;  // Selection of Synchronization Out for ADC
  PSYNC20 = 4;  m_PSYNC20 = 16;  // Selection of Synchronization Out for ADC
  PSYNC21 = 5;  m_PSYNC21 = 32;  // Selection of Synchronization Out for ADC

type
  TPCNFset = bitpacked set of (e_POPA=2, e_POPB, e_PMODE, e_PULOCK);
  TPCNFrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    POPA,
    POPB,
    PMODE,
    PULOCK,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCNF: byte absolute $B5;  // PSC Configuration Register
  PCNFset: TPCNFset absolute $B5;
  PCNFrec: TPCNFrec absolute $B5;
const
  POPA = 2;  m_POPA = 4;  // PSC Output A Polarity
  POPB = 3;  m_POPB = 8;  // PSC Output B Polarity
  PMODE = 4;  m_PMODE = 16;  // PSC Mode
  PULOCK = 5;  m_PULOCK = 32;  // PSC Update Lock

type
  TPOCset = bitpacked set of (e_POEN0A, e_POEN0B, e_POEN1A, e_POEN1B, e_POEN2A, e_POEN2B);
  TPOCrec = bitpacked record
    POEN0A,
    POEN0B,
    POEN1A,
    POEN1B,
    POEN2A,
    POEN2B,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  POC: byte absolute $B6;  // PSC Output Configuration
  POCset: TPOCset absolute $B6;
  POCrec: TPOCrec absolute $B6;
const
  POEN0A = 0;  m_POEN0A = 1;  // PSC Output 0A Enable
  POEN0B = 1;  m_POEN0B = 2;  // PSC Output 0B Enable
  POEN1A = 2;  m_POEN1A = 4;  // PSC Output 1A Enable
  POEN1B = 3;  m_POEN1B = 8;  // PSC Output 1B Enable
  POEN2A = 4;  m_POEN2A = 16;  // PSC Output 2A Enable
  POEN2B = 5;  m_POEN2B = 32;  // PSC Output 2B Enable

type
  TPCTLset = bitpacked set of (e_PRUN, e_PCCYC, e_PCLKSEL=5, e_PPRE0, e_PPRE1);
  TPCTLrec = bitpacked record
    PRUN,
    PCCYC,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    PCLKSEL,
    PPRE0,
    PPRE1: TBitField;
  end;
var
  PCTL: byte absolute $B7;  // PSC Control Register
  PCTLset: TPCTLset absolute $B7;
  PCTLrec: TPCTLrec absolute $B7;
const
  PRUN = 0;  m_PRUN = 1;  // PSC Run
  PCCYC = 1;  m_PCCYC = 2;  // PSC Complete Cycle
  PCLKSEL = 5;  m_PCLKSEL = 32;  // PSC Input Clock Select
  PPRE0 = 6;  m_PPRE0 = 64;  // PSC Prescaler Select bits
  PPRE1 = 7;  m_PPRE1 = 128;  // PSC Prescaler Select bits

type
  TPMIC0set = bitpacked set of (e_PRFM00, e_PRFM01, e_PRFM02, e_PAOC0, e_PFLTE0, e_PELEV0, e_PISEL0, e_POVEN0);
  TPMIC0rec = bitpacked record
    PRFM00,
    PRFM01,
    PRFM02,
    PAOC0,
    PFLTE0,
    PELEV0,
    PISEL0,
    POVEN0: TBitField;
  end;
var
  PMIC0: byte absolute $B8;  // PSC Module 0 Input Control Register
  PMIC0set: TPMIC0set absolute $B8;
  PMIC0rec: TPMIC0rec absolute $B8;
const
  PRFM00 = 0;  m_PRFM00 = 1;  // PSC Module 0 Input Mode bits
  PRFM01 = 1;  m_PRFM01 = 2;  // PSC Module 0 Input Mode bits
  PRFM02 = 2;  m_PRFM02 = 4;  // PSC Module 0 Input Mode bits
  PAOC0 = 3;  m_PAOC0 = 8;  // PSC Module 0 Asynchronous Output Control
  PFLTE0 = 4;  m_PFLTE0 = 16;  // PSC Module 0 Input Filter Enable
  PELEV0 = 5;  m_PELEV0 = 32;  // PSC Module 0 Input Level Selector
  PISEL0 = 6;  m_PISEL0 = 64;  // PSC Module 0 Input Select
  POVEN0 = 7;  m_POVEN0 = 128;  // PSC Module 0 Overlap Enable

type
  TPMIC1set = bitpacked set of (e_PRFM10, e_PRFM11, e_PRFM12, e_PAOC1, e_PFLTE1, e_PELEV1, e_PISEL1, e_POVEN1);
  TPMIC1rec = bitpacked record
    PRFM10,
    PRFM11,
    PRFM12,
    PAOC1,
    PFLTE1,
    PELEV1,
    PISEL1,
    POVEN1: TBitField;
  end;
var
  PMIC1: byte absolute $B9;  // PSC Module 1 Input Control Register
  PMIC1set: TPMIC1set absolute $B9;
  PMIC1rec: TPMIC1rec absolute $B9;
const
  PRFM10 = 0;  m_PRFM10 = 1;  // PSC Module 1 Input Mode bits
  PRFM11 = 1;  m_PRFM11 = 2;  // PSC Module 1 Input Mode bits
  PRFM12 = 2;  m_PRFM12 = 4;  // PSC Module 1 Input Mode bits
  PAOC1 = 3;  m_PAOC1 = 8;  // PSC Module 1 Asynchronous Output Control
  PFLTE1 = 4;  m_PFLTE1 = 16;  // PSC Module 1 Input Filter Enable
  PELEV1 = 5;  m_PELEV1 = 32;  // PSC Module 1 Input Level Selector
  PISEL1 = 6;  m_PISEL1 = 64;  // PSC Module 1 Input Select
  POVEN1 = 7;  m_POVEN1 = 128;  // PSC Module 1 Overlap Enable

type
  TPMIC2set = bitpacked set of (e_PRFM20, e_PRFM21, e_PRFM22, e_PAOC2, e_PFLTE2, e_PELEV2, e_PISEL2, e_POVEN2);
  TPMIC2rec = bitpacked record
    PRFM20,
    PRFM21,
    PRFM22,
    PAOC2,
    PFLTE2,
    PELEV2,
    PISEL2,
    POVEN2: TBitField;
  end;
var
  PMIC2: byte absolute $BA;  // PSC Module 2 Input Control Register
  PMIC2set: TPMIC2set absolute $BA;
  PMIC2rec: TPMIC2rec absolute $BA;
const
  PRFM20 = 0;  m_PRFM20 = 1;  // PSC Module 2 Input Mode bits
  PRFM21 = 1;  m_PRFM21 = 2;  // PSC Module 2 Input Mode bits
  PRFM22 = 2;  m_PRFM22 = 4;  // PSC Module 2 Input Mode bits
  PAOC2 = 3;  m_PAOC2 = 8;  // PSC Module 2 Asynchronous Output Control
  PFLTE2 = 4;  m_PFLTE2 = 16;  // PSC Module 2 Input Filter Enable
  PELEV2 = 5;  m_PELEV2 = 32;  // PSC Module 2 Input Level Selector
  PISEL2 = 6;  m_PISEL2 = 64;  // PSC Module 2 Input Select
  POVEN2 = 7;  m_POVEN2 = 128;  // PSC Module 2 Overlap Enable

type
  TPIMset = bitpacked set of (e_PEOPE, e_PEVE0, e_PEVE1, e_PEVE2);
  TPIMrec = bitpacked record
    PEOPE,
    PEVE0,
    PEVE1,
    PEVE2,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIM: byte absolute $BB;  // PSC Interrupt Mask Register
  PIMset: TPIMset absolute $BB;
  PIMrec: TPIMrec absolute $BB;
const
  PEOPE = 0;  m_PEOPE = 1;  // PSC End of Cycle Interrupt Enable
  PEVE0 = 1;  m_PEVE0 = 2;  // External Event 2 Interrupt Enable
  PEVE1 = 2;  m_PEVE1 = 4;  // External Event 2 Interrupt Enable
  PEVE2 = 3;  m_PEVE2 = 8;  // External Event 2 Interrupt Enable

type
  TPIFRset = bitpacked set of (e_PEOP, e_PEV0, e_PEV1, e_PEV2);
  TPIFRrec = bitpacked record
    PEOP,
    PEV0,
    PEV1,
    PEV2,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIFR: byte absolute $BC;  // PSC Interrupt Flag Register
  PIFRset: TPIFRset absolute $BC;
  PIFRrec: TPIFRrec absolute $BC;
const
  PEOP = 0;  m_PEOP = 1;  // PSC End of Cycle Interrupt
  PEV0 = 1;  m_PEV0 = 2;  // PSC External Event 2 Interrupt
  PEV1 = 2;  m_PEV1 = 4;  // PSC External Event 2 Interrupt
  PEV2 = 3;  m_PEV2 = 8;  // PSC External Event 2 Interrupt

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
  TCANGSTAset = bitpacked set of (e_ERRP, e_BOFF, e_ENFG, e_RXBSY, e_TXBSY, e_OVFG=6);
  TCANGSTArec = bitpacked record
    ERRP,
    BOFF,
    ENFG,
    RXBSY,
    TXBSY,
    ReservedBit5,
    OVFG,
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
  OVFG = 6;  m_OVFG = 64;  // Overload Frame Flag

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
  CANGIT: byte absolute $DA;  // CAN General Interrupt Register Flags
  CANGITset: TCANGITset absolute $DA;
  CANGITrec: TCANGITrec absolute $DA;
const
  AERG = 0;  m_AERG = 1;  // Ackknowledgement Error General Flag
  FERG = 1;  m_FERG = 2;  // Form Error General Flag
  CERG = 2;  m_CERG = 4;  // CRC Error General Flag
  SERG = 3;  m_SERG = 8;  // Stuff Error General Flag
  BXOK = 4;  m_BXOK = 16;  // Burst Receive Interrupt Flag
  OVRTIM = 5;  m_OVRTIM = 32;  // Overrun CAN Timer Flag
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
  ENBOFF = 6;  m_ENBOFF = 64;  // Enable Bus Off Interrupt
  ENIT = 7;  m_ENIT = 128;  // Enable all Interrupts

type
  TCANEN2set = bitpacked set of (e_ENMOB0, e_ENMOB1, e_ENMOB2, e_ENMOB3, e_ENMOB4, e_ENMOB5);
  TCANEN2rec = bitpacked record
    ENMOB0,
    ENMOB1,
    ENMOB2,
    ENMOB3,
    ENMOB4,
    ENMOB5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CANEN2: byte absolute $DC;  // Enable MOb Register 2
  CANEN2set: TCANEN2set absolute $DC;
  CANEN2rec: TCANEN2rec absolute $DC;
const
  ENMOB0 = 0;  m_ENMOB0 = 1;  // Enable MObs
  ENMOB1 = 1;  m_ENMOB1 = 2;  // Enable MObs
  ENMOB2 = 2;  m_ENMOB2 = 4;  // Enable MObs
  ENMOB3 = 3;  m_ENMOB3 = 8;  // Enable MObs
  ENMOB4 = 4;  m_ENMOB4 = 16;  // Enable MObs
  ENMOB5 = 5;  m_ENMOB5 = 32;  // Enable MObs

var
  CANEN1: byte absolute $DD;  // Enable MOb Register 1(empty)

type
  TCANIE2set = bitpacked set of (e_IEMOB0, e_IEMOB1, e_IEMOB2, e_IEMOB3, e_IEMOB4, e_IEMOB5);
  TCANIE2rec = bitpacked record
    IEMOB0,
    IEMOB1,
    IEMOB2,
    IEMOB3,
    IEMOB4,
    IEMOB5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CANIE2: byte absolute $DE;  // Enable Interrupt MOb Register 2
  CANIE2set: TCANIE2set absolute $DE;
  CANIE2rec: TCANIE2rec absolute $DE;
const
  IEMOB0 = 0;  m_IEMOB0 = 1;  // Interrupt Enable  MObs
  IEMOB1 = 1;  m_IEMOB1 = 2;  // Interrupt Enable  MObs
  IEMOB2 = 2;  m_IEMOB2 = 4;  // Interrupt Enable  MObs
  IEMOB3 = 3;  m_IEMOB3 = 8;  // Interrupt Enable  MObs
  IEMOB4 = 4;  m_IEMOB4 = 16;  // Interrupt Enable  MObs
  IEMOB5 = 5;  m_IEMOB5 = 32;  // Interrupt Enable  MObs

var
  CANIE1: byte absolute $DF;  // Enable Interrupt MOb Register 1 (empty)

type
  TCANSIT2set = bitpacked set of (e_SIT0, e_SIT1, e_SIT2, e_SIT3, e_SIT4, e_SIT5);
  TCANSIT2rec = bitpacked record
    SIT0,
    SIT1,
    SIT2,
    SIT3,
    SIT4,
    SIT5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CANSIT2: byte absolute $E0;  // CAN Status Interrupt MOb Register 2
  CANSIT2set: TCANSIT2set absolute $E0;
  CANSIT2rec: TCANSIT2rec absolute $E0;
const
  SIT0 = 0;  m_SIT0 = 1;  // Status of Interrupt MObs
  SIT1 = 1;  m_SIT1 = 2;  // Status of Interrupt MObs
  SIT2 = 2;  m_SIT2 = 4;  // Status of Interrupt MObs
  SIT3 = 3;  m_SIT3 = 8;  // Status of Interrupt MObs
  SIT4 = 4;  m_SIT4 = 16;  // Status of Interrupt MObs
  SIT5 = 5;  m_SIT5 = 32;  // Status of Interrupt MObs

var
  CANSIT1: byte absolute $E1;  // CAN Status Interrupt MOb Register 1 (empty)

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
  CANBT1: byte absolute $E2;  // CAN Bit Timing Register 1
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
  CANBT2: byte absolute $E3;  // CAN Bit Timing Register 2
  CANBT2set: TCANBT2set absolute $E3;
  CANBT2rec: TCANBT2rec absolute $E3;
const
  PRS0 = 1;  m_PRS0 = 2;  // Propagation Time Segment bits
  PRS1 = 2;  m_PRS1 = 4;  // Propagation Time Segment bits
  PRS2 = 3;  m_PRS2 = 8;  // Propagation Time Segment bits
  SJW0 = 5;  m_SJW0 = 32;  // Re-Sync Jump Width bits
  SJW1 = 6;  m_SJW1 = 64;  // Re-Sync Jump Width bits

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
  CANBT3: byte absolute $E4;  // CAN Bit Timing Register 3
  CANBT3set: TCANBT3set absolute $E4;
  CANBT3rec: TCANBT3rec absolute $E4;
const
  SMP = 0;  m_SMP = 1;  // Sample Type
  PHS10 = 1;  m_PHS10 = 2;  // Phase Segment 1 bits
  PHS11 = 2;  m_PHS11 = 4;  // Phase Segment 1 bits
  PHS12 = 3;  m_PHS12 = 8;  // Phase Segment 1 bits
  PHS20 = 4;  m_PHS20 = 16;  // Phase Segment 2 bits
  PHS21 = 5;  m_PHS21 = 32;  // Phase Segment 2 bits
  PHS22 = 6;  m_PHS22 = 64;  // Phase Segment 2 bits

var
  CANTCON: byte absolute $E5;  // Timer Control Register
  CANTIML: byte absolute $E6;  // Timer Register Low
  CANTIMH: byte absolute $E7;  // Timer Register High
  CANTTCL: byte absolute $E8;  // TTC Timer Register Low
  CANTTCH: byte absolute $E9;  // TTC Timer Register High
  CANTEC: byte absolute $EA;  // Transmit Error Counter Register
  CANREC: byte absolute $EB;  // Receive Error Counter Register

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
  CGP0 = 0;  m_CGP0 = 1;  // CAN General Purpose bits
  CGP1 = 1;  m_CGP1 = 2;  // CAN General Purpose bits
  CGP2 = 2;  m_CGP2 = 4;  // CAN General Purpose bits
  CGP3 = 3;  m_CGP3 = 8;  // CAN General Purpose bits
  HPMOB0 = 4;  m_HPMOB0 = 16;  // Highest Priority MOb Number bits
  HPMOB1 = 5;  m_HPMOB1 = 32;  // Highest Priority MOb Number bits
  HPMOB2 = 6;  m_HPMOB2 = 64;  // Highest Priority MOb Number bits
  HPMOB3 = 7;  m_HPMOB3 = 128;  // Highest Priority MOb Number bits

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
  INDX0 = 0;  m_INDX0 = 1;  // Data Buffer Index bits
  INDX1 = 1;  m_INDX1 = 2;  // Data Buffer Index bits
  INDX2 = 2;  m_INDX2 = 4;  // Data Buffer Index bits
  AINC = 3;  m_AINC = 8;  // MOb Data Buffer Auto Increment (Active Low)
  MOBNB0 = 4;  m_MOBNB0 = 16;  // MOb Number bits
  MOBNB1 = 5;  m_MOBNB1 = 32;  // MOb Number bits
  MOBNB2 = 6;  m_MOBNB2 = 64;  // MOb Number bits
  MOBNB3 = 7;  m_MOBNB3 = 128;  // MOb Number bits

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
  AERR = 0;  m_AERR = 1;  // Ackknowledgement Error on MOb
  FERR = 1;  m_FERR = 2;  // Form Error on MOb
  CERR = 2;  m_CERR = 4;  // CRC Error on MOb
  SERR = 3;  m_SERR = 8;  // Stuff Error on MOb
  BERR = 4;  m_BERR = 16;  // Bit Error on MOb
  RXOK = 5;  m_RXOK = 32;  // Receive OK on MOb
  TXOK = 6;  m_TXOK = 64;  // Transmit OK on MOb
  DLCW = 7;  m_DLCW = 128;  // Data Length Code Warning on MOb

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
  DLC0 = 0;  m_DLC0 = 1;  // Data Length Code bits
  DLC1 = 1;  m_DLC1 = 2;  // Data Length Code bits
  DLC2 = 2;  m_DLC2 = 4;  // Data Length Code bits
  DLC3 = 3;  m_DLC3 = 8;  // Data Length Code bits
  IDE = 4;  m_IDE = 16;  // Identifier Extension
  RPLV = 5;  m_RPLV = 32;  // Reply Valid
  CONMOB0 = 6;  m_CONMOB0 = 64;  // MOb Config bits
  CONMOB1 = 7;  m_CONMOB1 = 128;  // MOb Config bits

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
  RB0TAG = 0;  m_RB0TAG = 1;
  RB1TAG = 1;  m_RB1TAG = 2;
  RTRTAG = 2;  m_RTRTAG = 4;
  IDT0 = 3;  m_IDT0 = 8;
  IDT1 = 4;  m_IDT1 = 16;
  IDT2 = 5;  m_IDT2 = 32;
  IDT3 = 6;  m_IDT3 = 64;
  IDT4 = 7;  m_IDT4 = 128;

var
  CANIDT3: byte absolute $F1;  // Identifier Tag Register 3
  CANIDT2: byte absolute $F2;  // Identifier Tag Register 2
  CANIDT1: byte absolute $F3;  // Identifier Tag Register 1
  CANIDM4: byte absolute $F4;  // Identifier Mask Register 4
  CANIDM3: byte absolute $F5;  // Identifier Mask Register 3
  CANIDM2: byte absolute $F6;  // Identifier Mask Register 2
  CANIDM1: byte absolute $F7;  // Identifier Mask Register 1
  CANSTML: byte absolute $F8;  // Time Stamp Register Low
  CANSTMH: byte absolute $F9;  // Time Stamp Register High
  CANMSG: byte absolute $FA;  // Message Data Register
  // typedefs = 85

implementation

{$i avrcommon.inc}

procedure ANACOMP0_ISR; external name 'ANACOMP0_ISR'; // Interrupt 1 Analog Comparator 0
procedure ANACOMP1_ISR; external name 'ANACOMP1_ISR'; // Interrupt 2 Analog Comparator 1
procedure ANACOMP2_ISR; external name 'ANACOMP2_ISR'; // Interrupt 3 Analog Comparator 2
procedure ANACOMP3_ISR; external name 'ANACOMP3_ISR'; // Interrupt 4 Analog Comparator 3
procedure PSC_FAULT_ISR; external name 'PSC_FAULT_ISR'; // Interrupt 5 PSC Fault
procedure PSC_EC_ISR; external name 'PSC_EC_ISR'; // Interrupt 6 PSC End of Cycle
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 7 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 8 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 9 External Interrupt Request 2
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 10 External Interrupt Request 3
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 11 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 12 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 13 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 14 Timer1/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 15 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 16 Timer/Counter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 17 Timer/Counter0 Overflow
procedure CAN_INT_ISR; external name 'CAN_INT_ISR'; // Interrupt 18 CAN MOB, Burst, General Errors
procedure CAN_TOVF_ISR; external name 'CAN_TOVF_ISR'; // Interrupt 19 CAN Timer Overflow
procedure LIN_TC_ISR; external name 'LIN_TC_ISR'; // Interrupt 20 LIN Transfer Complete
procedure LIN_ERR_ISR; external name 'LIN_ERR_ISR'; // Interrupt 21 LIN Error
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 22 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 23 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 24 Pin Change Interrupt Request 2
procedure PCINT3_ISR; external name 'PCINT3_ISR'; // Interrupt 25 Pin Change Interrupt Request 3
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 26 SPI Serial Transfer Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 27 ADC Conversion Complete
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 28 Watchdog Time-Out Interrupt
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 29 EEPROM Ready
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 30 Store Program Memory Read

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp ANACOMP0_ISR
  jmp ANACOMP1_ISR
  jmp ANACOMP2_ISR
  jmp ANACOMP3_ISR
  jmp PSC_FAULT_ISR
  jmp PSC_EC_ISR
  jmp INT0_ISR
  jmp INT1_ISR
  jmp INT2_ISR
  jmp INT3_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp CAN_INT_ISR
  jmp CAN_TOVF_ISR
  jmp LIN_TC_ISR
  jmp LIN_ERR_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp PCINT2_ISR
  jmp PCINT3_ISR
  jmp SPI_STC_ISR
  jmp ADC_ISR
  jmp WDT_ISR
  jmp EE_READY_ISR
  jmp SPM_READY_ISR

  {$i start.inc}

  .weak ANACOMP0_ISR
  .weak ANACOMP1_ISR
  .weak ANACOMP2_ISR
  .weak ANACOMP3_ISR
  .weak PSC_FAULT_ISR
  .weak PSC_EC_ISR
  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak CAN_INT_ISR
  .weak CAN_TOVF_ISR
  .weak LIN_TC_ISR
  .weak LIN_ERR_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
  .weak PCINT3_ISR
  .weak SPI_STC_ISR
  .weak ADC_ISR
  .weak WDT_ISR
  .weak EE_READY_ISR
  .weak SPM_READY_ISR

  .set ANACOMP0_ISR, Default_IRQ_handler
  .set ANACOMP1_ISR, Default_IRQ_handler
  .set ANACOMP2_ISR, Default_IRQ_handler
  .set ANACOMP3_ISR, Default_IRQ_handler
  .set PSC_FAULT_ISR, Default_IRQ_handler
  .set PSC_EC_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set CAN_INT_ISR, Default_IRQ_handler
  .set CAN_TOVF_ISR, Default_IRQ_handler
  .set LIN_TC_ISR, Default_IRQ_handler
  .set LIN_ERR_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set PCINT3_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
