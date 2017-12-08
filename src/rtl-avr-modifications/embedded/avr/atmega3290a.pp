unit ATmega3290A;

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
  PORTG: byte absolute $34;  // Port G Data Register
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
  TEIFRset = bitpacked set of (e_INTF0, e_PCIF0=4, e_PCIF1, e_PCIF2, e_PCIF3);
  TEIFRrec = bitpacked record
    INTF0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIF0,
    PCIF1,
    PCIF2,
    PCIF3: TBitField;
  end;
var
  EIFR: byte absolute $3C;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $3C;
  EIFRrec: TEIFRrec absolute $3C;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0
  PCIF0 = 4;  m_PCIF0 = 16;  // Pin Change Interrupt Flags
  PCIF1 = 5;  m_PCIF1 = 32;  // Pin Change Interrupt Flags
  PCIF2 = 6;  m_PCIF2 = 64;  // Pin Change Interrupt Flags
  PCIF3 = 7;  m_PCIF3 = 128;  // Pin Change Interrupt Flags

type
  TEIMSKset = bitpacked set of (e_INT0, e_PCIE0=4, e_PCIE1, e_PCIE2, e_PCIE3);
  TEIMSKrec = bitpacked record
    INT0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIE0,
    PCIE1,
    PCIE2,
    PCIE3: TBitField;
  end;
var
  EIMSK: byte absolute $3D;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $3D;
  EIMSKrec: TEIMSKrec absolute $3D;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable
  PCIE0 = 4;  m_PCIE0 = 16;  // Pin Change Interrupt Enables
  PCIE1 = 5;  m_PCIE1 = 32;  // Pin Change Interrupt Enables
  PCIE2 = 6;  m_PCIE2 = 64;  // Pin Change Interrupt Enables
  PCIE3 = 7;  m_PCIE3 = 128;  // Pin Change Interrupt Enables

var
  GPIOR0: byte absolute $3E;  // General Purpose IO Register 0

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

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Read/Write Access  Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

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

var
  TCNT0: byte absolute $46;  // Timer/Counter0
  OCR0A: byte absolute $47;  // Timer/Counter0 Output Compare Register
  GPIOR1: byte absolute $4A;  // General Purpose IO Register 1
  GPIOR2: byte absolute $4B;  // General Purpose IO Register 2

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
  EICRA: byte absolute $69;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $69;
  EICRArec: TEICRArec absolute $69;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control 0 Bit 1

var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1
  PCMSK2: byte absolute $6D;  // Pin Change Mask Register 2

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

type
  TPCMSK3set = bitpacked set of (e_PCINT24, e_PCINT25, e_PCINT26, e_PCINT27, e_PCINT28, e_PCINT29, e_PCINT30);
  TPCMSK3rec = bitpacked record
    PCINT24,
    PCINT25,
    PCINT26,
    PCINT27,
    PCINT28,
    PCINT29,
    PCINT30,
    ReservedBit7: TBitField;
  end;
var
  PCMSK3: byte absolute $73;  // Pin Change Mask Register 3
  PCMSK3set: TPCMSK3set absolute $73;
  PCMSK3rec: TPCMSK3rec absolute $73;
const
  PCINT24 = 0;  m_PCINT24 = 1;  // Pin Change Mask
  PCINT25 = 1;  m_PCINT25 = 2;  // Pin Change Mask
  PCINT26 = 2;  m_PCINT26 = 4;  // Pin Change Mask
  PCINT27 = 3;  m_PCINT27 = 8;  // Pin Change Mask
  PCINT28 = 4;  m_PCINT28 = 16;  // Pin Change Mask
  PCINT29 = 5;  m_PCINT29 = 32;  // Pin Change Mask
  PCINT30 = 6;  m_PCINT30 = 64;  // Pin Change Mask

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

var
  USIDR: byte absolute $BA;  // USI Data Register

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
  UBRR0: word absolute $C4;  // USART Baud Rate Register  Bytes
  UBRR0L: byte absolute $C4;
  UBRR0H: byte absolute $C5;
  UDR0: byte absolute $C6;  // USART I/O Data Register
  PINH: byte absolute $D8;  // PORT H Input Pins
  DDRH: byte absolute $D9;  // PORT H Data Direction Register

type
  TPORTHset = bitpacked set of (e_PH0, e_PH1, e_PH2, e_PH3, e_PH4, e_PH5, e_PH6, e_PH7);
  TPORTHrec = bitpacked record
    PH0,
    PH1,
    PH2,
    PH3,
    PH4,
    PH5,
    PH6,
    PH7: TBitField;
  end;
var
  PORTH: byte absolute $DA;  // PORT H Data Register
  PORTHset: TPORTHset absolute $DA;
  PORTHrec: TPORTHrec absolute $DA;
const
  PH0 = 0;  m_PH0 = 1;
  PH1 = 1;  m_PH1 = 2;
  PH2 = 2;  m_PH2 = 4;
  PH3 = 3;  m_PH3 = 8;
  PH4 = 4;  m_PH4 = 16;
  PH5 = 5;  m_PH5 = 32;
  PH6 = 6;  m_PH6 = 64;
  PH7 = 7;  m_PH7 = 128;

var
  PINJ: byte absolute $DB;  // PORT J Input Pins
  DDRJ: byte absolute $DC;  // PORT J Data Direction Register

type
  TPORTJset = bitpacked set of (e_PJ0, e_PJ1, e_PJ2, e_PJ3, e_PJ4, e_PJ5, e_PJ6);
  TPORTJrec = bitpacked record
    PJ0,
    PJ1,
    PJ2,
    PJ3,
    PJ4,
    PJ5,
    PJ6,
    ReservedBit7: TBitField;
  end;
var
  PORTJ: byte absolute $DD;  // PORT J Data Register
  PORTJset: TPORTJset absolute $DD;
  PORTJrec: TPORTJrec absolute $DD;
const
  PJ0 = 0;  m_PJ0 = 1;
  PJ1 = 1;  m_PJ1 = 2;
  PJ2 = 2;  m_PJ2 = 4;
  PJ3 = 3;  m_PJ3 = 8;
  PJ4 = 4;  m_PJ4 = 16;
  PJ5 = 5;  m_PJ5 = 32;
  PJ6 = 6;  m_PJ6 = 64;

type
  TLCDCRAset = bitpacked set of (e_LCDBL, e_LCDIE=3, e_LCDIF, e_LCDAB=6, e_LCDEN);
  TLCDCRArec = bitpacked record
    LCDBL,
    ReservedBit1,
    ReservedBit2,
    LCDIE,
    LCDIF,
    ReservedBit5,
    LCDAB,
    LCDEN: TBitField;
  end;
var
  LCDCRA: byte absolute $E4;  // LCD Control and Status Register A
  LCDCRAset: TLCDCRAset absolute $E4;
  LCDCRArec: TLCDCRArec absolute $E4;
const
  LCDBL = 0;  m_LCDBL = 1;  // LCD Blanking
  LCDIE = 3;  m_LCDIE = 8;  // LCD Interrupt Enable
  LCDIF = 4;  m_LCDIF = 16;  // LCD Interrupt Flag
  LCDAB = 6;  m_LCDAB = 64;  // LCD A or B waveform
  LCDEN = 7;  m_LCDEN = 128;  // LCD Enable

type
  TLCDCRBset = bitpacked set of (e_LCDPM0, e_LCDPM1, e_LCDPM2, e_LCDPM3, e_LCDMUX0, e_LCDMUX1, e_LCD2B, e_LCDCS);
  TLCDCRBrec = bitpacked record
    LCDPM0,
    LCDPM1,
    LCDPM2,
    LCDPM3,
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
  LCDPM3 = 3;  m_LCDPM3 = 8;  // LCD Port Masks
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
  TLCDCCRset = bitpacked set of (e_LCDCC0, e_LCDCC1, e_LCDCC2, e_LCDCC3, e_LCDDC0=5, e_LCDDC1, e_LCDDC2);
  TLCDCCRrec = bitpacked record
    LCDCC0,
    LCDCC1,
    LCDCC2,
    LCDCC3,
    ReservedBit4,
    LCDDC0,
    LCDDC1,
    LCDDC2: TBitField;
  end;
var
  LCDCCR: byte absolute $E7;  // LCD Contrast Control Register
  LCDCCRset: TLCDCCRset absolute $E7;
  LCDCCRrec: TLCDCCRrec absolute $E7;
const
  LCDCC0 = 0;  m_LCDCC0 = 1;  // LCD Contrast Control
  LCDCC1 = 1;  m_LCDCC1 = 2;  // LCD Contrast Control
  LCDCC2 = 2;  m_LCDCC2 = 4;  // LCD Contrast Control
  LCDCC3 = 3;  m_LCDCC3 = 8;  // LCD Contrast Control
  LCDDC0 = 5;  m_LCDDC0 = 32;  // LCD Display Configuration
  LCDDC1 = 6;  m_LCDDC1 = 64;  // LCD Display Configuration
  LCDDC2 = 7;  m_LCDDC2 = 128;  // LCD Display Configuration

var
  LCDDR00: byte absolute $EC;  // LCD Data Register 0
  LCDDR01: byte absolute $ED;  // LCD Data Register 1
  LCDDR02: byte absolute $EE;  // LCD Data Register 2
  LCDDR03: byte absolute $EF;  // LCD Data Register 3
  LCDDR04: byte absolute $F0;  // LCD Data Register 4
  LCDDR05: byte absolute $F1;  // LCD Data Register 5
  LCDDR06: byte absolute $F2;  // LCD Data Register 6
  LCDDR07: byte absolute $F3;  // LCD Data Register 7
  LCDDR08: byte absolute $F4;  // LCD Data Register 8
  LCDDR09: byte absolute $F5;  // LCD Data Register 9
  LCDDR10: byte absolute $F6;  // LCD Data Register 10
  LCDDR11: byte absolute $F7;  // LCD Data Register 11
  LCDDR12: byte absolute $F8;  // LCD Data Register 12
  LCDDR13: byte absolute $F9;  // LCD Data Register 13
  LCDDR14: byte absolute $FA;  // LCD Data Register 14
  LCDDR15: byte absolute $FB;  // LCD Data Register 15
  LCDDR16: byte absolute $FC;  // LCD Data Register 16
  LCDDR17: byte absolute $FD;  // LCD Data Register 17
  LCDDR18: byte absolute $FE;  // LCD Data Register 18
  LCDDR19: byte absolute $FF;  // LCD Data Register 19
  // typedefs = 53

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
procedure USART_RX_ISR; external name 'USART_RX_ISR'; // Interrupt 13 USART, Rx Complete
procedure USART_UDRE_ISR; external name 'USART_UDRE_ISR'; // Interrupt 14 USART Data register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 15 USART0, Tx Complete
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 16 USI Start Condition
procedure USI_OVERFLOW_ISR; external name 'USI_OVERFLOW_ISR'; // Interrupt 17 USI Overflow
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 18 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 19 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 20 EEPROM Ready
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 21 Store Program Memory Read
procedure LCD_ISR; external name 'LCD_ISR'; // Interrupt 22 LCD Start of Frame
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 23 Pin Change Interrupt Request 2
procedure PCINT3_ISR; external name 'PCINT3_ISR'; // Interrupt 24 Pin Change Interrupt Request 3

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
  jmp USART_RX_ISR
  jmp USART_UDRE_ISR
  jmp USART0_TX_ISR
  jmp USI_START_ISR
  jmp USI_OVERFLOW_ISR
  jmp ANALOG_COMP_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp SPM_READY_ISR
  jmp LCD_ISR
  jmp PCINT2_ISR
  jmp PCINT3_ISR

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
  .weak USART_RX_ISR
  .weak USART_UDRE_ISR
  .weak USART0_TX_ISR
  .weak USI_START_ISR
  .weak USI_OVERFLOW_ISR
  .weak ANALOG_COMP_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak SPM_READY_ISR
  .weak LCD_ISR
  .weak PCINT2_ISR
  .weak PCINT3_ISR

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
  .set USART_RX_ISR, Default_IRQ_handler
  .set USART_UDRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_OVERFLOW_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
  .set LCD_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set PCINT3_ISR, Default_IRQ_handler
end;

end.
