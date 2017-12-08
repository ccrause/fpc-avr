unit ATmega32U2;

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

type
  TPINCset = bitpacked set of (e_PINC4=4, e_PINC5, e_PINC6, e_PINC7);
  TPINCrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PINC4,
    PINC5,
    PINC6,
    PINC7: TBitField;
  end;
var
  PINC: byte absolute $26;  // Port C Input Pins
  PINCset: TPINCset absolute $26;
  PINCrec: TPINCrec absolute $26;
const
  PINC4 = 4;  m_PINC4 = 16;  // Port C Input Pins bits
  PINC5 = 5;  m_PINC5 = 32;  // Port C Input Pins bits
  PINC6 = 6;  m_PINC6 = 64;  // Port C Input Pins bits
  PINC7 = 7;  m_PINC7 = 128;  // Port C Input Pins bits

type
  TDDRCset = bitpacked set of (e_DDC4=4, e_DDC5, e_DDC6, e_DDC7);
  TDDRCrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    DDC4,
    DDC5,
    DDC6,
    DDC7: TBitField;
  end;
var
  DDRC: byte absolute $27;  // Port C Data Direction Register
  DDRCset: TDDRCset absolute $27;
  DDRCrec: TDDRCrec absolute $27;
const
  DDC4 = 4;  m_DDC4 = 16;  // Port C Data Direction Register bits
  DDC5 = 5;  m_DDC5 = 32;  // Port C Data Direction Register bits
  DDC6 = 6;  m_DDC6 = 64;  // Port C Data Direction Register bits
  DDC7 = 7;  m_DDC7 = 128;  // Port C Data Direction Register bits

type
  TPORTCset = bitpacked set of (e_PORTC4=4, e_PORTC5, e_PORTC6, e_PORTC7);
  TPORTCrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PORTC4,
    PORTC5,
    PORTC6,
    PORTC7: TBitField;
  end;
var
  PORTC: byte absolute $28;  // Port C Data Register
  PORTCset: TPORTCset absolute $28;
  PORTCrec: TPORTCrec absolute $28;
const
  PORTC4 = 4;  m_PORTC4 = 16;  // Port C Data Register bits
  PORTC5 = 5;  m_PORTC5 = 32;  // Port C Data Register bits
  PORTC6 = 6;  m_PORTC6 = 64;  // Port C Data Register bits
  PORTC7 = 7;  m_PORTC7 = 128;  // Port C Data Register bits

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
  PSRSYNC = 0;  m_PSRSYNC = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
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
  DWDR: byte absolute $51;  // debugWire communication register

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
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_USBRF=5);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    ReservedBit4,
    USBRF,
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
  USBRF = 5;  m_USBRF = 32;  // USB reset flag

type
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_PUD=4);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    PUD,
    ReservedBit5,
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
  TWDTCKDset = bitpacked set of (e_WCLKD0, e_WCLKD1, e_WDEWIE, e_WDEWIF);
  TWDTCKDrec = bitpacked record
    WCLKD0,
    WCLKD1,
    WDEWIE,
    WDEWIF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WDTCKD: byte absolute $62;  // Watchdog Timer Clock Divider
  WDTCKDset: TWDTCKDset absolute $62;
  WDTCKDrec: TWDTCKDrec absolute $62;
const
  WCLKD0 = 0;  m_WCLKD0 = 1;  // Watchdog Timer Clock Dividers
  WCLKD1 = 1;  m_WCLKD1 = 2;  // Watchdog Timer Clock Dividers
  WDEWIE = 2;  m_WDEWIE = 4;  // Watchdog Early Warning Interrupt Enable
  WDEWIF = 3;  m_WDEWIF = 8;  // Watchdog Early Warning Interrupt Flag

type
  TREGCRset = bitpacked set of (e_REGDIS);
  TREGCRrec = bitpacked record
    REGDIS,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  REGCR: byte absolute $63;  // Regulator Control Register
  REGCRset: TREGCRset absolute $63;
  REGCRrec: TREGCRrec absolute $63;
const
  REGDIS = 0;  m_REGDIS = 1;  // Regulator Disable

type
  TPRR0set = bitpacked set of (e_PRSPI=2, e_PRTIM1, e_PRTIM0=5);
  TPRR0rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    PRSPI,
    PRTIM1,
    ReservedBit4,
    PRTIM0,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR0: byte absolute $64;  // Power Reduction Register0
  PRR0set: TPRR0set absolute $64;
  PRR0rec: TPRR0rec absolute $64;
const
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRTIM0 = 5;  m_PRTIM0 = 32;  // Power Reduction Timer/Counter0

type
  TPRR1set = bitpacked set of (e_PRUSART1, e_PRUSB=7);
  TPRR1rec = bitpacked record
    PRUSART1,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
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
  TPCMSK0set = bitpacked set of (e_PCINT0, e_PCINT1, e_PCINT2, e_PCINT3, e_PCINT4, e_PCINT5, e_PCINT6, e_PCINT7);
  TPCMSK0rec = bitpacked record
    PCINT0,
    PCINT1,
    PCINT2,
    PCINT3,
    PCINT4,
    PCINT5,
    PCINT6,
    PCINT7: TBitField;
  end;
var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0
  PCMSK0set: TPCMSK0set absolute $6B;
  PCMSK0rec: TPCMSK0rec absolute $6B;
const
  PCINT0 = 0;  m_PCINT0 = 1;  // Pin Change Enable Masks
  PCINT1 = 1;  m_PCINT1 = 2;  // Pin Change Enable Masks
  PCINT2 = 2;  m_PCINT2 = 4;  // Pin Change Enable Masks
  PCINT3 = 3;  m_PCINT3 = 8;  // Pin Change Enable Masks
  PCINT4 = 4;  m_PCINT4 = 16;  // Pin Change Enable Masks
  PCINT5 = 5;  m_PCINT5 = 32;  // Pin Change Enable Masks
  PCINT6 = 6;  m_PCINT6 = 64;  // Pin Change Enable Masks
  PCINT7 = 7;  m_PCINT7 = 128;  // Pin Change Enable Masks

var
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1

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
  TACMUXset = bitpacked set of (e_CMUX0, e_CMUX1, e_CMUX2);
  TACMUXrec = bitpacked record
    CMUX0,
    CMUX1,
    CMUX2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ACMUX: byte absolute $7D;  // Analog Comparator Input Multiplexer
  ACMUXset: TACMUXset absolute $7D;
  ACMUXrec: TACMUXrec absolute $7D;
const
  CMUX0 = 0;  m_CMUX0 = 1;  // Analog Comparator Selection Bits
  CMUX1 = 1;  m_CMUX1 = 2;  // Analog Comparator Selection Bits
  CMUX2 = 2;  m_CMUX2 = 4;  // Analog Comparator Selection Bits

type
  TDIDR1set = bitpacked set of (e_AIN0D, e_AIN1D, e_AIN2D, e_AIN3D, e_AIN4D, e_AIN5D, e_AIN6D, e_AIN7D);
  TDIDR1rec = bitpacked record
    AIN0D,
    AIN1D,
    AIN2D,
    AIN3D,
    AIN4D,
    AIN5D,
    AIN6D,
    AIN7D: TBitField;
  end;
var
  DIDR1: byte absolute $7F;
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  AIN0D = 0;  m_AIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  m_AIN1D = 2;  // AIN1 Digital Input Disable
  AIN2D = 2;  m_AIN2D = 4;  // AIN2 Digital Input Disable
  AIN3D = 3;  m_AIN3D = 8;  // AIN3 Digital Input Disable
  AIN4D = 4;  m_AIN4D = 16;  // AIN4 Digital Input Disable
  AIN5D = 5;  m_AIN5D = 32;  // AIN5 Digital Input Disable
  AIN6D = 6;  m_AIN6D = 64;  // AIN6 Digital Input Disable
  AIN7D = 7;  m_AIN7D = 128;  // AIN7 Digital Input Disable

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

type
  TUCSR1Dset = bitpacked set of (e_RTSEN, e_CTSEN);
  TUCSR1Drec = bitpacked record
    RTSEN,
    CTSEN,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UCSR1D: byte absolute $CB;  // USART Control and Status Register D
  UCSR1Dset: TUCSR1Dset absolute $CB;
  UCSR1Drec: TUCSR1Drec absolute $CB;
const
  RTSEN = 0;  m_RTSEN = 1;  // RTS Enable
  CTSEN = 1;  m_CTSEN = 2;  // CTS Enable

var
  UBRR1: word absolute $CC;  // USART Baud Rate Register  Bytes
  UBRR1L: byte absolute $CC;
  UBRR1H: byte absolute $CD;
  UDR1: byte absolute $CE;  // USART I/O Data Register

type
  TCLKSEL0set = bitpacked set of (e_CLKS, e_EXTE=2, e_RCE, e_EXSUT0, e_EXSUT1, e_RCSUT0, e_RCSUT1);
  TCLKSEL0rec = bitpacked record
    CLKS,
    ReservedBit1,
    EXTE,
    RCE,
    EXSUT0,
    EXSUT1,
    RCSUT0,
    RCSUT1: TBitField;
  end;
var
  CLKSEL0: byte absolute $D0;
  CLKSEL0set: TCLKSEL0set absolute $D0;
  CLKSEL0rec: TCLKSEL0rec absolute $D0;
const
  CLKS = 0;  m_CLKS = 1;
  EXTE = 2;  m_EXTE = 4;
  RCE = 3;  m_RCE = 8;
  EXSUT0 = 4;  m_EXSUT0 = 16;
  EXSUT1 = 5;  m_EXSUT1 = 32;
  RCSUT0 = 6;  m_RCSUT0 = 64;
  RCSUT1 = 7;  m_RCSUT1 = 128;

type
  TCLKSEL1set = bitpacked set of (e_EXCKSEL0, e_EXCKSEL1, e_EXCKSEL2, e_EXCKSEL3, e_RCCKSEL0, e_RCCKSEL1, e_RCCKSEL2, e_RCCKSEL3);
  TCLKSEL1rec = bitpacked record
    EXCKSEL0,
    EXCKSEL1,
    EXCKSEL2,
    EXCKSEL3,
    RCCKSEL0,
    RCCKSEL1,
    RCCKSEL2,
    RCCKSEL3: TBitField;
  end;
var
  CLKSEL1: byte absolute $D1;
  CLKSEL1set: TCLKSEL1set absolute $D1;
  CLKSEL1rec: TCLKSEL1rec absolute $D1;
const
  EXCKSEL0 = 0;  m_EXCKSEL0 = 1;
  EXCKSEL1 = 1;  m_EXCKSEL1 = 2;
  EXCKSEL2 = 2;  m_EXCKSEL2 = 4;
  EXCKSEL3 = 3;  m_EXCKSEL3 = 8;
  RCCKSEL0 = 4;  m_RCCKSEL0 = 16;
  RCCKSEL1 = 5;  m_RCCKSEL1 = 32;
  RCCKSEL2 = 6;  m_RCCKSEL2 = 64;
  RCCKSEL3 = 7;  m_RCCKSEL3 = 128;

type
  TCLKSTAset = bitpacked set of (e_EXTON, e_RCON);
  TCLKSTArec = bitpacked record
    EXTON,
    RCON,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKSTA: byte absolute $D2;
  CLKSTAset: TCLKSTAset absolute $D2;
  CLKSTArec: TCLKSTArec absolute $D2;
const
  EXTON = 0;  m_EXTON = 1;
  RCON = 1;  m_RCON = 2;

type
  TUSBCONset = bitpacked set of (e_FRZCLK=5, e_USBE=7);
  TUSBCONrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FRZCLK,
    ReservedBit6,
    USBE: TBitField;
  end;
var
  USBCON: byte absolute $D8;  // USB General Control Register
  USBCONset: TUSBCONset absolute $D8;
  USBCONrec: TUSBCONrec absolute $D8;
const
  FRZCLK = 5;  m_FRZCLK = 32;  // Freeze USB Clock Bit
  USBE = 7;  m_USBE = 128;  // USB macro Enable Bit

type
  TUDCONset = bitpacked set of (e_DETACH, e_RMWKUP, e_RSTCPU);
  TUDCONrec = bitpacked record
    DETACH,
    RMWKUP,
    RSTCPU,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UDCON: byte absolute $E0;  // USB Device Control Registers
  UDCONset: TUDCONset absolute $E0;
  UDCONrec: TUDCONrec absolute $E0;
const
  DETACH = 0;  m_DETACH = 1;  // Detach Bit
  RMWKUP = 1;  m_RMWKUP = 2;  // Remote Wake-up Bit
  RSTCPU = 2;  m_RSTCPU = 4;  // USB Reset CPU Bit

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
  UDINT: byte absolute $E1;  // USB Device Interrupt Register
  UDINTset: TUDINTset absolute $E1;
  UDINTrec: TUDINTrec absolute $E1;
const
  SUSPI = 0;  m_SUSPI = 1;  // Suspend Interrupt Flag
  SOFI = 2;  m_SOFI = 4;  // Start Of Frame Interrupt Flag
  EORSTI = 3;  m_EORSTI = 8;  // End Of Reset Interrupt Flag
  WAKEUPI = 4;  m_WAKEUPI = 16;  // Wake-up CPU Interrupt Flag
  EORSMI = 5;  m_EORSMI = 32;  // End Of Resume Interrupt Flag
  UPRSMI = 6;  m_UPRSMI = 64;  // Upstream Resume Interrupt Flag

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
  UDIEN: byte absolute $E2;  // USB Device Interrupt Enable Register
  UDIENset: TUDIENset absolute $E2;
  UDIENrec: TUDIENrec absolute $E2;
const
  SUSPE = 0;  m_SUSPE = 1;  // Suspend Interrupt Enable Bit
  SOFE = 2;  m_SOFE = 4;  // Start Of Frame Interrupt Enable Bit
  EORSTE = 3;  m_EORSTE = 8;  // End Of Reset Interrupt Enable Bit
  WAKEUPE = 4;  m_WAKEUPE = 16;  // Wake-up CPU Interrupt Enable Bit
  EORSME = 5;  m_EORSME = 32;  // End Of Resume Interrupt Enable Bit
  UPRSME = 6;  m_UPRSME = 64;  // Upstream Resume Interrupt Enable Bit

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
  UDADDR: byte absolute $E3;  // USB Device Address Register
  UDADDRset: TUDADDRset absolute $E3;
  UDADDRrec: TUDADDRrec absolute $E3;
const
  UADD0 = 0;  m_UADD0 = 1;  // USB Address Bits
  UADD1 = 1;  m_UADD1 = 2;  // USB Address Bits
  UADD2 = 2;  m_UADD2 = 4;  // USB Address Bits
  UADD3 = 3;  m_UADD3 = 8;  // USB Address Bits
  UADD4 = 4;  m_UADD4 = 16;  // USB Address Bits
  UADD5 = 5;  m_UADD5 = 32;  // USB Address Bits
  UADD6 = 6;  m_UADD6 = 64;  // USB Address Bits
  ADDEN = 7;  m_ADDEN = 128;  // Address Enable Bit

var
  UDFNUM: word absolute $E4;  // USB Device Frame Number High Register
  UDFNUML: byte absolute $E4;
  UDFNUMH: byte absolute $E5;
const
  FNUM0 = 0;  m_FNUM0 = 1;  // Frame Number Upper Flag
  FNUM1 = 1;  m_FNUM1 = 2;  // Frame Number Upper Flag
  FNUM2 = 2;  m_FNUM2 = 4;  // Frame Number Upper Flag
  FNUM3 = 3;  m_FNUM3 = 8;  // Frame Number Upper Flag
  FNUM4 = 4;  m_FNUM4 = 16;  // Frame Number Upper Flag
  FNUM5 = 5;  m_FNUM5 = 32;  // Frame Number Upper Flag
  FNUM6 = 6;  m_FNUM6 = 64;  // Frame Number Upper Flag
  FNUM7 = 7;  m_FNUM7 = 128;  // Frame Number Upper Flag

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
  UDMFN: byte absolute $E6;  // USB Device Micro Frame Number
  UDMFNset: TUDMFNset absolute $E6;
  UDMFNrec: TUDMFNrec absolute $E6;
const
  FNCERR = 4;  m_FNCERR = 16;  // Frame Number CRC Error Flag

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
  UEINTX: byte absolute $E8;  // USB Endpoint Interrupt Register
  UEINTXset: TUEINTXset absolute $E8;
  UEINTXrec: TUEINTXrec absolute $E8;
const
  TXINI = 0;  m_TXINI = 1;  // Transmitter Ready Interrupt Flag
  STALLEDI = 1;  m_STALLEDI = 2;  // STALLEDI Interrupt Flag
  RXOUTI = 2;  m_RXOUTI = 4;  // Received OUT Data Interrupt Flag
  RXSTPI = 3;  m_RXSTPI = 8;  // Received SETUP Interrupt Flag
  NAKOUTI = 4;  m_NAKOUTI = 16;  // NAK OUT Received Interrupt Flag
  RWAL = 5;  m_RWAL = 32;  // Read/Write Allowed Flag
  NAKINI = 6;  m_NAKINI = 64;  // NAK IN Received Interrupt Flag
  FIFOCON = 7;  m_FIFOCON = 128;  // FIFO Control Bit

type
  TUENUMset = bitpacked set of (e_EPNUM0, e_EPNUM1, e_EPNUM2);
  TUENUMrec = bitpacked record
    EPNUM0,
    EPNUM1,
    EPNUM2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UENUM: byte absolute $E9;  // USB Endpoint Number
  UENUMset: TUENUMset absolute $E9;
  UENUMrec: TUENUMrec absolute $E9;
const
  EPNUM0 = 0;  m_EPNUM0 = 1;  // Endpoint Number bits
  EPNUM1 = 1;  m_EPNUM1 = 2;  // Endpoint Number bits
  EPNUM2 = 2;  m_EPNUM2 = 4;  // Endpoint Number bits

type
  TUERSTset = bitpacked set of (e_EPRST0, e_EPRST1, e_EPRST2, e_EPRST3, e_EPRST4);
  TUERSTrec = bitpacked record
    EPRST0,
    EPRST1,
    EPRST2,
    EPRST3,
    EPRST4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UERST: byte absolute $EA;  // USB Endpoint Reset Register
  UERSTset: TUERSTset absolute $EA;
  UERSTrec: TUERSTrec absolute $EA;
const
  EPRST0 = 0;  m_EPRST0 = 1;  // Endpoint FIFO Reset Bits
  EPRST1 = 1;  m_EPRST1 = 2;  // Endpoint FIFO Reset Bits
  EPRST2 = 2;  m_EPRST2 = 4;  // Endpoint FIFO Reset Bits
  EPRST3 = 3;  m_EPRST3 = 8;  // Endpoint FIFO Reset Bits
  EPRST4 = 4;  m_EPRST4 = 16;  // Endpoint FIFO Reset Bits

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
  UECONX: byte absolute $EB;  // USB Endpoint Control Register
  UECONXset: TUECONXset absolute $EB;
  UECONXrec: TUECONXrec absolute $EB;
const
  EPEN = 0;  m_EPEN = 1;  // Endpoint Enable Bit
  RSTDT = 3;  m_RSTDT = 8;  // Reset Data Toggle Bit
  STALLRQC = 4;  m_STALLRQC = 16;  // STALL Request Clear Handshake Bit
  STALLRQ = 5;  m_STALLRQ = 32;  // STALL Request Handshake Bit

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
  UECFG0X: byte absolute $EC;  // USB Endpoint Configuration 0 Register
  UECFG0Xset: TUECFG0Xset absolute $EC;
  UECFG0Xrec: TUECFG0Xrec absolute $EC;
const
  EPDIR = 0;  m_EPDIR = 1;  // Endpoint Direction Bit
  EPTYPE0 = 6;  m_EPTYPE0 = 64;  // Endpoint Type Bits
  EPTYPE1 = 7;  m_EPTYPE1 = 128;  // Endpoint Type Bits

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
  UECFG1X: byte absolute $ED;  // USB Endpoint Configuration 1 Register
  UECFG1Xset: TUECFG1Xset absolute $ED;
  UECFG1Xrec: TUECFG1Xrec absolute $ED;
const
  ALLOC = 1;  m_ALLOC = 2;  // Endpoint Allocation Bit
  EPBK0 = 2;  m_EPBK0 = 4;  // Endpoint Bank Bits
  EPBK1 = 3;  m_EPBK1 = 8;  // Endpoint Bank Bits
  EPSIZE0 = 4;  m_EPSIZE0 = 16;  // Endpoint Size Bits
  EPSIZE1 = 5;  m_EPSIZE1 = 32;  // Endpoint Size Bits
  EPSIZE2 = 6;  m_EPSIZE2 = 64;  // Endpoint Size Bits

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
  UESTA0X: byte absolute $EE;  // USB Endpoint Status 0 Register
  UESTA0Xset: TUESTA0Xset absolute $EE;
  UESTA0Xrec: TUESTA0Xrec absolute $EE;
const
  NBUSYBK0 = 0;  m_NBUSYBK0 = 1;  // Busy Bank Flag
  NBUSYBK1 = 1;  m_NBUSYBK1 = 2;  // Busy Bank Flag
  DTSEQ0 = 2;  m_DTSEQ0 = 4;  // Data Toggle Sequencing Flag
  DTSEQ1 = 3;  m_DTSEQ1 = 8;  // Data Toggle Sequencing Flag
  UNDERFI = 5;  m_UNDERFI = 32;  // Underflow Error Interrupt Flag
  OVERFI = 6;  m_OVERFI = 64;  // Overflow Error Interrupt Flag
  CFGOK = 7;  m_CFGOK = 128;  // Configuration Status Flag

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
  UESTA1X: byte absolute $EF;  // USB Endpoint Status 1 Register
  UESTA1Xset: TUESTA1Xset absolute $EF;
  UESTA1Xrec: TUESTA1Xrec absolute $EF;
const
  CURRBK0 = 0;  m_CURRBK0 = 1;  // Current Bank
  CURRBK1 = 1;  m_CURRBK1 = 2;  // Current Bank
  CTRLDIR = 2;  m_CTRLDIR = 4;  // Control Direction

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
  UEIENX: byte absolute $F0;  // USB Endpoint Interrupt Enable Register
  UEIENXset: TUEIENXset absolute $F0;
  UEIENXrec: TUEIENXrec absolute $F0;
const
  TXINE = 0;  m_TXINE = 1;  // Transmitter Ready Interrupt Enable Flag
  STALLEDE = 1;  m_STALLEDE = 2;  // Stalled Interrupt Enable Flag
  RXOUTE = 2;  m_RXOUTE = 4;  // Received OUT Data Interrupt Enable Flag
  RXSTPE = 3;  m_RXSTPE = 8;  // Received SETUP Interrupt Enable Flag
  NAKOUTE = 4;  m_NAKOUTE = 16;  // NAK OUT Interrupt Enable Bit
  NAKINE = 6;  m_NAKINE = 64;  // NAK IN Interrupt Enable Bit
  FLERRE = 7;  m_FLERRE = 128;  // Flow Error Interrupt Enable Flag

type
  TUEDATXset = bitpacked set of (e_DAT0, e_DAT1, e_DAT2, e_DAT3, e_DAT4, e_DAT5, e_DAT6, e_DAT7);
  TUEDATXrec = bitpacked record
    DAT0,
    DAT1,
    DAT2,
    DAT3,
    DAT4,
    DAT5,
    DAT6,
    DAT7: TBitField;
  end;
var
  UEDATX: byte absolute $F1;  // USB Data Endpoint
  UEDATXset: TUEDATXset absolute $F1;
  UEDATXrec: TUEDATXrec absolute $F1;
const
  DAT0 = 0;  m_DAT0 = 1;  // Data bits
  DAT1 = 1;  m_DAT1 = 2;  // Data bits
  DAT2 = 2;  m_DAT2 = 4;  // Data bits
  DAT3 = 3;  m_DAT3 = 8;  // Data bits
  DAT4 = 4;  m_DAT4 = 16;  // Data bits
  DAT5 = 5;  m_DAT5 = 32;  // Data bits
  DAT6 = 6;  m_DAT6 = 64;  // Data bits
  DAT7 = 7;  m_DAT7 = 128;  // Data bits

type
  TUEBCLXset = bitpacked set of (e_BYCT0, e_BYCT1, e_BYCT2, e_BYCT3, e_BYCT4, e_BYCT5, e_BYCT6, e_BYCT7);
  TUEBCLXrec = bitpacked record
    BYCT0,
    BYCT1,
    BYCT2,
    BYCT3,
    BYCT4,
    BYCT5,
    BYCT6,
    BYCT7: TBitField;
  end;
var
  UEBCLX: byte absolute $F2;  // USB Endpoint Byte Count Register
  UEBCLXset: TUEBCLXset absolute $F2;
  UEBCLXrec: TUEBCLXrec absolute $F2;
const
  BYCT0 = 0;  m_BYCT0 = 1;  // Byte Count bits
  BYCT1 = 1;  m_BYCT1 = 2;  // Byte Count bits
  BYCT2 = 2;  m_BYCT2 = 4;  // Byte Count bits
  BYCT3 = 3;  m_BYCT3 = 8;  // Byte Count bits
  BYCT4 = 4;  m_BYCT4 = 16;  // Byte Count bits
  BYCT5 = 5;  m_BYCT5 = 32;  // Byte Count bits
  BYCT6 = 6;  m_BYCT6 = 64;  // Byte Count bits
  BYCT7 = 7;  m_BYCT7 = 128;  // Byte Count bits

type
  TUEINTset = bitpacked set of (e_EPINT0, e_EPINT1, e_EPINT2, e_EPINT3, e_EPINT4);
  TUEINTrec = bitpacked record
    EPINT0,
    EPINT1,
    EPINT2,
    EPINT3,
    EPINT4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UEINT: byte absolute $F4;  // USB Endpoint Number Interrupt Register
  UEINTset: TUEINTset absolute $F4;
  UEINTrec: TUEINTrec absolute $F4;
const
  EPINT0 = 0;  m_EPINT0 = 1;  // Byte Count bits
  EPINT1 = 1;  m_EPINT1 = 2;  // Byte Count bits
  EPINT2 = 2;  m_EPINT2 = 4;  // Byte Count bits
  EPINT3 = 3;  m_EPINT3 = 8;  // Byte Count bits
  EPINT4 = 4;  m_EPINT4 = 16;  // Byte Count bits

type
  TUPOEset = bitpacked set of (e_DMI, e_DPI, e_UPDRV0=4, e_UPDRV1, e_UPWE0, e_UPWE1);
  TUPOErec = bitpacked record
    DMI,
    DPI,
    ReservedBit2,
    ReservedBit3,
    UPDRV0,
    UPDRV1,
    UPWE0,
    UPWE1: TBitField;
  end;
var
  UPOE: byte absolute $FB;  // USB Software Output Enable register
  UPOEset: TUPOEset absolute $FB;
  UPOErec: TUPOErec absolute $FB;
const
  DMI = 0;  m_DMI = 1;  // D- Input value
  DPI = 1;  m_DPI = 2;  // D+ Input value
  UPDRV0 = 4;  m_UPDRV0 = 16;  // USB direct drive values
  UPDRV1 = 5;  m_UPDRV1 = 32;  // USB direct drive values
  UPWE0 = 6;  m_UPWE0 = 64;  // USB Buffers Direct Drive enable configuration
  UPWE1 = 7;  m_UPWE1 = 128;  // USB Buffers Direct Drive enable configuration
  // typedefs = 69

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
procedure USB_GEN_ISR; external name 'USB_GEN_ISR'; // Interrupt 11 USB General Interrupt Request
procedure USB_COM_ISR; external name 'USB_COM_ISR'; // Interrupt 12 USB Endpoint/Pipe Interrupt Communication Request
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 13 Watchdog Time-out Interrupt
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 14 Timer/Counter2 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 15 Timer/Counter2 Compare Match B
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 16 Timer/Counter2 Compare Match B
procedure TIMER1_COMPC_ISR; external name 'TIMER1_COMPC_ISR'; // Interrupt 17 Timer/Counter2 Compare Match C
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 18 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 19 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 20 Timer/Counter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 21 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 22 SPI Serial Transfer Complete
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 23 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 24 USART1 Data register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 25 USART1, Tx Complete
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 26 Analog Comparator
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 27 EEPROM Ready
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 28 Store Program Memory Read

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
  jmp USB_GEN_ISR
  jmp USB_COM_ISR
  jmp WDT_ISR
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
  jmp EE_READY_ISR
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
  .weak PCINT1_ISR
  .weak USB_GEN_ISR
  .weak USB_COM_ISR
  .weak WDT_ISR
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
  .weak EE_READY_ISR
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
  .set PCINT1_ISR, Default_IRQ_handler
  .set USB_GEN_ISR, Default_IRQ_handler
  .set USB_COM_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
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
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
