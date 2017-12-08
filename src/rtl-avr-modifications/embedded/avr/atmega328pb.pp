unit ATmega328PB;

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
  TPORTCset = bitpacked set of (e_PC0, e_PC1, e_PC2, e_PC3, e_PC4, e_PC5, e_PC6);
  TPORTCrec = bitpacked record
    PC0,
    PC1,
    PC2,
    PC3,
    PC4,
    PC5,
    PC6,
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
  PC6 = 6;  m_PC6 = 64;

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
  TPORTEset = bitpacked set of (e_PE0, e_PE1, e_PE2, e_PE3);
  TPORTErec = bitpacked record
    PE0,
    PE1,
    PE2,
    PE3,
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
  PE3 = 3;  m_PE3 = 8;

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
  TTIFR3set = bitpacked set of (e_TOV3, e_OCF3A, e_OCF3B);
  TTIFR3rec = bitpacked record
    TOV3,
    OCF3A,
    OCF3B,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
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

type
  TTIFR4set = bitpacked set of (e_TOV4, e_OCF4A, e_OCF4B);
  TTIFR4rec = bitpacked record
    TOV4,
    OCF4A,
    OCF4B,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR4: byte absolute $39;  // Timer/Counter4 Interrupt Flag register
  TIFR4set: TTIFR4set absolute $39;
  TIFR4rec: TTIFR4rec absolute $39;
const
  TOV4 = 0;  m_TOV4 = 1;  // Timer/Counter4 Overflow Flag
  OCF4A = 1;  m_OCF4A = 2;  // Output Compare Flag 4A
  OCF4B = 2;  m_OCF4B = 4;  // Output Compare Flag 4B

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

var
  GPIOR0: byte absolute $3E;  // General Purpose I/O Register 0

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
  EEAR: word absolute $41;  // EEPROM Address Register Bytes
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
  GTCCR: byte absolute $43;  // General Timer/Counter Control Register
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
  TCCR0A: byte absolute $44;  // Timer/Counter Control Register A
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Output Mode, Fast PWM
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Output Mode, Fast PWM
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
  GPIOR1: byte absolute $4A;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $4B;  // General Purpose I/O Register 2

type
  TSPCR0set = bitpacked set of (e_SPR0, e_SPR1, e_CPHA, e_CPOL, e_MSTR, e_DORD, e_SPE, e_SPIE);
  TSPCR0rec = bitpacked record
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
  SPCR0: byte absolute $4C;  // SPI Control Register
  SPCR0set: TSPCR0set absolute $4C;
  SPCR0rec: TSPCR0rec absolute $4C;
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
  TSPSR0set = bitpacked set of (e_SPI2X, e_WCOL=6, e_SPIF);
  TSPSR0rec = bitpacked record
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
  SPSR0: byte absolute $4D;  // SPI Status Register
  SPSR0set: TSPSR0set absolute $4D;
  SPSR0rec: TSPSR0rec absolute $4D;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  m_WCOL = 64;  // Write Collision Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

var
  SPDR0: byte absolute $4E;  // SPI Data Register

type
  TACSRBset = bitpacked set of (e_ACOE);
  TACSRBrec = bitpacked record
    ACOE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ACSRB: byte absolute $4F;  // Analog Comparator Control And Status Register-B
  ACSRBset: TACSRBset absolute $4F;
  ACSRBrec: TACSRBrec absolute $4F;
const
  ACOE = 0;  m_ACOE = 1;  // Analog Comparator Output Enable

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
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select Bits
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select Bits
  SM2 = 3;  m_SM2 = 8;  // Sleep Mode Select Bits

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
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_PUD=4, e_BODSE, e_BODS);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
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
  IVCE = 0;  m_IVCE = 1;
  IVSEL = 1;  m_IVSEL = 2;
  PUD = 4;  m_PUD = 16;
  BODSE = 5;  m_BODSE = 32;  // BOD Sleep Enable
  BODS = 6;  m_BODS = 64;  // BOD Sleep

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
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read-While-Write section read enable
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
  TXFDCSRset = bitpacked set of (e_XFDIE, e_XFDIF);
  TXFDCSRrec = bitpacked record
    XFDIE,
    XFDIF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  XFDCSR: byte absolute $62;  // XOSC Failure Detection Control and Status Register
  XFDCSRset: TXFDCSRset absolute $62;
  XFDCSRrec: TXFDCSRrec absolute $62;
const
  XFDIE = 0;  m_XFDIE = 1;  // Failure Detection Interrupt Enable
  XFDIF = 1;  m_XFDIF = 2;  // Failure Detection Interrupt Flag

type
  TPRR0set = bitpacked set of (e_PRADC, e_PRUSART0, e_PRSPI0, e_PRTIM1, e_PRUSART1, e_PRTIM0, e_PRTIM2, e_PRTWI0);
  TPRR0rec = bitpacked record
    PRADC,
    PRUSART0,
    PRSPI0,
    PRTIM1,
    PRUSART1,
    PRTIM0,
    PRTIM2,
    PRTWI0: TBitField;
  end;
var
  PRR0: byte absolute $64;  // Power Reduction Register 0
  PRR0set: TPRR0set absolute $64;
  PRR0rec: TPRR0rec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  m_PRUSART0 = 2;  // Power Reduction USART0
  PRSPI0 = 2;  m_PRSPI0 = 4;  // Power Reduction Serial Peripheral Interface 1
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRUSART1 = 4;  m_PRUSART1 = 16;  // Power Reduction USART1
  PRTIM0 = 5;  m_PRTIM0 = 32;  // Power Reduction Timer/Counter0
  PRTIM2 = 6;  m_PRTIM2 = 64;  // Power Reduction Timer/Counter2
  PRTWI0 = 7;  m_PRTWI0 = 128;  // Power Reduction TWI0

type
  TPRR1set = bitpacked set of (e_PRTIM3, e_PRSPI1=2, e_PRTIM4, e_PRPTC, e_PRTWI1);
  TPRR1rec = bitpacked record
    PRTIM3,
    ReservedBit1,
    PRSPI1,
    PRTIM4,
    PRPTC,
    PRTWI1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR1: byte absolute $65;  // Power Reduction Register 1
  PRR1set: TPRR1set absolute $65;
  PRR1rec: TPRR1rec absolute $65;
const
  PRTIM3 = 0;  m_PRTIM3 = 1;  // Power Reduction Timer/Counter3
  PRSPI1 = 2;  m_PRSPI1 = 4;  // Power Reduction Serial Peripheral Interface 1
  PRTIM4 = 3;  m_PRTIM4 = 8;  // Power Reduction Timer/Counter4
  PRPTC = 4;  m_PRPTC = 16;  // Power Reduction Peripheral Touch Controller
  PRTWI1 = 5;  m_PRTWI1 = 32;  // Power Reduction TWI1

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
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1
  PCMSK2: byte absolute $6D;  // Pin Change Mask Register 2

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
  TTIMSK3set = bitpacked set of (e_TOIE3, e_OCIE3A, e_OCIE3B, e_ICIE3=5);
  TTIMSK3rec = bitpacked record
    TOIE3,
    OCIE3A,
    OCIE3B,
    ReservedBit3,
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
  OCIE3A = 1;  m_OCIE3A = 2;  // Timer/Counter3 Output Compare Match A Interrupt Enable
  OCIE3B = 2;  m_OCIE3B = 4;  // Timer/Counter3 Output Compare Match B Interrupt Enable
  ICIE3 = 5;  m_ICIE3 = 32;  // Timer/Counter3 Input Capture Interrupt Enable

type
  TTIMSK4set = bitpacked set of (e_TOIE4, e_OCIE4A, e_OCIE4B, e_ICIE4=5);
  TTIMSK4rec = bitpacked record
    TOIE4,
    OCIE4A,
    OCIE4B,
    ReservedBit3,
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
  OCIE4A = 1;  m_OCIE4A = 2;  // Timer/Counter4 Output Compare Match A Interrupt Enable
  OCIE4B = 2;  m_OCIE4B = 4;  // Timer/Counter4 Output Compare Match B Interrupt Enable
  ICIE4 = 5;  m_ICIE4 = 32;  // Timer/Counter4 Input Capture Interrupt Enable

type
  TPCMSK3set = bitpacked set of (e_PCINT24, e_PCINT25, e_PCINT26, e_PCINT27);
  TPCMSK3rec = bitpacked record
    PCINT24,
    PCINT25,
    PCINT26,
    PCINT27,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCMSK3: byte absolute $73;  // Pin Change Mask Register 3
  PCMSK3set: TPCMSK3set absolute $73;
  PCMSK3rec: TPCMSK3rec absolute $73;
const
  PCINT24 = 0;  m_PCINT24 = 1;  // Pin Change Enable Masks
  PCINT25 = 1;  m_PCINT25 = 2;  // Pin Change Enable Masks
  PCINT26 = 2;  m_PCINT26 = 4;  // Pin Change Enable Masks
  PCINT27 = 3;  m_PCINT27 = 8;  // Pin Change Enable Masks

var
  ADC: word absolute $78;  // ADC Data Register Bytes
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
  ADCSRB: byte absolute $7B;  // The ADC Control and Status register B
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source bits
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source bits
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source bits
  ACME = 6;  m_ACME = 64;

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
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bits

type
  TDIDR0set = bitpacked set of (e_ADC0D, e_ADC1D, e_ADC2D, e_ADC3D, e_ADC4D, e_ADC5D);
  TDIDR0rec = bitpacked record
    ADC0D,
    ADC1D,
    ADC2D,
    ADC3D,
    ADC4D,
    ADC5D,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR0: byte absolute $7E;  // Digital Input Disable Register
  DIDR0set: TDIDR0set absolute $7E;
  DIDR0rec: TDIDR0rec absolute $7E;
const
  ADC0D = 0;  m_ADC0D = 1;
  ADC1D = 1;  m_ADC1D = 2;
  ADC2D = 2;  m_ADC2D = 4;
  ADC3D = 3;  m_ADC3D = 8;
  ADC4D = 4;  m_ADC4D = 16;
  ADC5D = 5;  m_ADC5D = 32;

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
  ICR1: word absolute $86;  // Timer/Counter1 Input Capture Register Bytes
  ICR1L: byte absolute $86;
  ICR1H: byte absolute $87;
  OCR1A: word absolute $88;  // Timer/Counter1 Output Compare Register Bytes
  OCR1AL: byte absolute $88;
  OCR1AH: byte absolute $89;
  OCR1B: word absolute $8A;  // Timer/Counter1 Output Compare Register Bytes
  OCR1BL: byte absolute $8A;
  OCR1BH: byte absolute $8B;

type
  TTCCR3Aset = bitpacked set of (e_WGM30, e_WGM31, e_COM3B0=4, e_COM3B1, e_COM3A0, e_COM3A1);
  TTCCR3Arec = bitpacked record
    WGM30,
    WGM31,
    ReservedBit2,
    ReservedBit3,
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
  WGM30 = 0;  m_WGM30 = 1;  // Waveform Genration Mode
  WGM31 = 1;  m_WGM31 = 2;  // Waveform Genration Mode
  COM3B0 = 4;  m_COM3B0 = 16;  // Compare Output Mode bits
  COM3B1 = 5;  m_COM3B1 = 32;  // Compare Output Mode bits
  COM3A0 = 6;  m_COM3A0 = 64;  // Compare Output Mode bits
  COM3A1 = 7;  m_COM3A1 = 128;  // Compare Output Mode bits

type
  TTCCR3Bset = bitpacked set of (e_CS30, e_CS31, e_CS32, e_WGM32, e_WGM33, e_ICES3=6, e_ICNC3);
  TTCCR3Brec = bitpacked record
    CS30,
    CS31,
    CS32,
    WGM32,
    WGM33,
    ReservedBit5,
    ICES3,
    ICNC3: TBitField;
  end;
var
  TCCR3B: byte absolute $91;  // Timer/Counter3 Control Register B
  TCCR3Bset: TTCCR3Bset absolute $91;
  TCCR3Brec: TTCCR3Brec absolute $91;
const
  CS30 = 0;  m_CS30 = 1;  // Clock Select bits
  CS31 = 1;  m_CS31 = 2;  // Clock Select bits
  CS32 = 2;  m_CS32 = 4;  // Clock Select bits
  WGM32 = 3;  m_WGM32 = 8;  // Waveform Generation Mode bit 2
  WGM33 = 4;  m_WGM33 = 16;  // Waveform Generation Mode bit 3
  ICES3 = 6;  m_ICES3 = 64;  // Input Capture Edge Select
  ICNC3 = 7;  m_ICNC3 = 128;  // Input Capture Noise Canceler

type
  TTCCR3Cset = bitpacked set of (e_FOC3B=6, e_FOC3A);
  TTCCR3Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    FOC3B,
    FOC3A: TBitField;
  end;
var
  TCCR3C: byte absolute $92;  // Timer/Counter3 Control Register C
  TCCR3Cset: TTCCR3Cset absolute $92;
  TCCR3Crec: TTCCR3Crec absolute $92;
const
  FOC3B = 6;  m_FOC3B = 64;  // Force Output Compare for Channel B
  FOC3A = 7;  m_FOC3A = 128;  // Force Output Compare for Channel A

var
  TCNT3: word absolute $94;  // Timer/Counter3 Bytes
  TCNT3L: byte absolute $94;
  TCNT3H: byte absolute $95;
  ICR3: word absolute $96;  // Timer/Counter3 Input Capture Register Bytes
  ICR3L: byte absolute $96;
  ICR3H: byte absolute $97;
  OCR3A: word absolute $98;  // Timer/Counter3 Output Compare Register Bytes
  OCR3AL: byte absolute $98;
  OCR3AH: byte absolute $99;
  OCR3B: word absolute $9A;  // Timer/Counter3 Output Compare Register Bytes
  OCR3BL: byte absolute $9A;
  OCR3BH: byte absolute $9B;

type
  TTCCR4Aset = bitpacked set of (e_WGM40, e_WGM41, e_COM4B0=4, e_COM4B1, e_COM4A0, e_COM4A1);
  TTCCR4Arec = bitpacked record
    WGM40,
    WGM41,
    ReservedBit2,
    ReservedBit3,
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
  WGM40 = 0;  m_WGM40 = 1;  // Waveform Genration Mode
  WGM41 = 1;  m_WGM41 = 2;  // Waveform Genration Mode
  COM4B0 = 4;  m_COM4B0 = 16;  // Compare Output Mode bits
  COM4B1 = 5;  m_COM4B1 = 32;  // Compare Output Mode bits
  COM4A0 = 6;  m_COM4A0 = 64;  // Compare Output Mode bits
  COM4A1 = 7;  m_COM4A1 = 128;  // Compare Output Mode bits

type
  TTCCR4Bset = bitpacked set of (e_CS40, e_CS41, e_CS42, e_WGM42, e_WGM43, e_ICES4=6, e_ICNC4);
  TTCCR4Brec = bitpacked record
    CS40,
    CS41,
    CS42,
    WGM42,
    WGM43,
    ReservedBit5,
    ICES4,
    ICNC4: TBitField;
  end;
var
  TCCR4B: byte absolute $A1;  // Timer/Counter4 Control Register B
  TCCR4Bset: TTCCR4Bset absolute $A1;
  TCCR4Brec: TTCCR4Brec absolute $A1;
const
  CS40 = 0;  m_CS40 = 1;  // Clock Select bits
  CS41 = 1;  m_CS41 = 2;  // Clock Select bits
  CS42 = 2;  m_CS42 = 4;  // Clock Select bits
  WGM42 = 3;  m_WGM42 = 8;  // Waveform Generation Mode bit 2
  WGM43 = 4;  m_WGM43 = 16;  // Waveform Generation Mode bit 3
  ICES4 = 6;  m_ICES4 = 64;  // Input Capture Edge Select
  ICNC4 = 7;  m_ICNC4 = 128;  // Input Capture Noise Canceler

type
  TTCCR4Cset = bitpacked set of (e_FOC4B=6, e_FOC4A);
  TTCCR4Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    FOC4B,
    FOC4A: TBitField;
  end;
var
  TCCR4C: byte absolute $A2;  // Timer/Counter4 Control Register C
  TCCR4Cset: TTCCR4Cset absolute $A2;
  TCCR4Crec: TTCCR4Crec absolute $A2;
const
  FOC4B = 6;  m_FOC4B = 64;  // Force Output Compare for Channel B
  FOC4A = 7;  m_FOC4A = 128;  // Force Output Compare for Channel A

var
  TCNT4: word absolute $A4;  // Timer/Counter4 Bytes
  TCNT4L: byte absolute $A4;
  TCNT4H: byte absolute $A5;
  ICR4: word absolute $A6;  // Timer/Counter4 Input Capture Register Bytes
  ICR4L: byte absolute $A6;
  ICR4H: byte absolute $A7;
  OCR4A: word absolute $A8;  // Timer/Counter4 Output Compare Register Bytes
  OCR4AL: byte absolute $A8;
  OCR4AH: byte absolute $A9;
  OCR4B: word absolute $AA;  // Timer/Counter4 Output Compare Register Bytes
  OCR4BL: byte absolute $AA;
  OCR4BH: byte absolute $AB;

type
  TSPCR1set = bitpacked set of (e_SPR10, e_SPR11, e_CPHA1, e_CPOL1, e_MSTR1, e_DORD1, e_SPE1, e_SPIE1);
  TSPCR1rec = bitpacked record
    SPR10,
    SPR11,
    CPHA1,
    CPOL1,
    MSTR1,
    DORD1,
    SPE1,
    SPIE1: TBitField;
  end;
var
  SPCR1: byte absolute $AC;  // SPI Control Register
  SPCR1set: TSPCR1set absolute $AC;
  SPCR1rec: TSPCR1rec absolute $AC;
const
  SPR10 = 0;  m_SPR10 = 1;  // SPI Clock Rate Selects
  SPR11 = 1;  m_SPR11 = 2;  // SPI Clock Rate Selects
  CPHA1 = 2;  m_CPHA1 = 4;  // Clock Phase
  CPOL1 = 3;  m_CPOL1 = 8;  // Clock polarity
  MSTR1 = 4;  m_MSTR1 = 16;  // Master/Slave Select
  DORD1 = 5;  m_DORD1 = 32;  // Data Order
  SPE1 = 6;  m_SPE1 = 64;  // SPI Enable
  SPIE1 = 7;  m_SPIE1 = 128;  // SPI Interrupt Enable

type
  TSPSR1set = bitpacked set of (e_SPI2X1, e_WCOL1=6, e_SPIF1);
  TSPSR1rec = bitpacked record
    SPI2X1,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    WCOL1,
    SPIF1: TBitField;
  end;
var
  SPSR1: byte absolute $AD;  // SPI Status Register
  SPSR1set: TSPSR1set absolute $AD;
  SPSR1rec: TSPSR1rec absolute $AD;
const
  SPI2X1 = 0;  m_SPI2X1 = 1;  // Double SPI Speed Bit
  WCOL1 = 6;  m_WCOL1 = 64;  // Write Collision Flag
  SPIF1 = 7;  m_SPIF1 = 128;  // SPI Interrupt Flag

var
  SPDR1: byte absolute $AE;  // SPI Data Register

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
  TWBR0: byte absolute $B8;  // TWI Bit Rate register

type
  TTWSR0set = bitpacked set of (e_TWPS0, e_TWPS1, e_TWS3=3, e_TWS4, e_TWS5, e_TWS6, e_TWS7);
  TTWSR0rec = bitpacked record
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
  TWSR0: byte absolute $B9;  // TWI Status Register
  TWSR0set: TTWSR0set absolute $B9;
  TWSR0rec: TTWSR0rec absolute $B9;
const
  TWPS0 = 0;  m_TWPS0 = 1;  // TWI Prescaler
  TWPS1 = 1;  m_TWPS1 = 2;  // TWI Prescaler
  TWS3 = 3;  m_TWS3 = 8;  // TWI Status
  TWS4 = 4;  m_TWS4 = 16;  // TWI Status
  TWS5 = 5;  m_TWS5 = 32;  // TWI Status
  TWS6 = 6;  m_TWS6 = 64;  // TWI Status
  TWS7 = 7;  m_TWS7 = 128;  // TWI Status

type
  TTWAR0set = bitpacked set of (e_TWGCE, e_TWA0, e_TWA1, e_TWA2, e_TWA3, e_TWA4, e_TWA5, e_TWA6);
  TTWAR0rec = bitpacked record
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
  TWAR0: byte absolute $BA;  // TWI (Slave) Address register
  TWAR0set: TTWAR0set absolute $BA;
  TWAR0rec: TTWAR0rec absolute $BA;
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
  TWDR0: byte absolute $BB;  // TWI Data register

type
  TTWCR0set = bitpacked set of (e_TWIE, e_TWEN=2, e_TWWC, e_TWSTO, e_TWSTA, e_TWEA, e_TWINT);
  TTWCR0rec = bitpacked record
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
  TWCR0: byte absolute $BC;  // TWI Control Register
  TWCR0set: TTWCR0set absolute $BC;
  TWCR0rec: TTWCR0rec absolute $BC;
const
  TWIE = 0;  m_TWIE = 1;  // TWI Interrupt Enable
  TWEN = 2;  m_TWEN = 4;  // TWI Enable Bit
  TWWC = 3;  m_TWWC = 8;  // TWI Write Collition Flag
  TWSTO = 4;  m_TWSTO = 16;  // TWI Stop Condition Bit
  TWSTA = 5;  m_TWSTA = 32;  // TWI Start Condition Bit
  TWEA = 6;  m_TWEA = 64;  // TWI Enable Acknowledge Bit
  TWINT = 7;  m_TWINT = 128;  // TWI Interrupt Flag

type
  TTWAMR0set = bitpacked set of (e_TWAM0=1, e_TWAM1, e_TWAM2, e_TWAM3, e_TWAM4, e_TWAM5, e_TWAM6);
  TTWAMR0rec = bitpacked record
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
  TWAMR0: byte absolute $BD;  // TWI (Slave) Address Mask Register
  TWAMR0set: TTWAMR0set absolute $BD;
  TWAMR0rec: TTWAMR0rec absolute $BD;
const
  TWAM0 = 1;  m_TWAM0 = 2;
  TWAM1 = 2;  m_TWAM1 = 4;
  TWAM2 = 3;  m_TWAM2 = 8;
  TWAM3 = 4;  m_TWAM3 = 16;
  TWAM4 = 5;  m_TWAM4 = 32;
  TWAM5 = 6;  m_TWAM5 = 64;
  TWAM6 = 7;  m_TWAM6 = 128;

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
  TUCSR0Cset = bitpacked set of (e_UCPOL0, e_UCSZ00, e_UCSZ01, e_USBS0, e_UPM00, e_UPM01, e_UMSEL00, e_UMSEL01);
  TUCSR0Crec = bitpacked record
    UCPOL0,
    UCSZ00,
    UCSZ01,
    USBS0,
    UPM00,
    UPM01,
    UMSEL00,
    UMSEL01: TBitField;
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
  UMSEL00 = 6;  m_UMSEL00 = 64;  // USART Mode Select
  UMSEL01 = 7;  m_UMSEL01 = 128;  // USART Mode Select

type
  TUCSR0Dset = bitpacked set of (e_SFDE=5, e_RXS, e_RXSIE);
  TUCSR0Drec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    SFDE,
    RXS,
    RXSIE: TBitField;
  end;
var
  UCSR0D: byte absolute $C3;  // USART Control and Status Register D
  UCSR0Dset: TUCSR0Dset absolute $C3;
  UCSR0Drec: TUCSR0Drec absolute $C3;
const
  SFDE = 5;  m_SFDE = 32;  // Start frame detection enable
  RXS = 6;  m_RXS = 64;  // USART RX Start
  RXSIE = 7;  m_RXSIE = 128;  // USART RX Start Interrupt Enable

var
  UBRR0: word absolute $C4;  // USART Baud Rate Register Bytes
  UBRR0L: byte absolute $C4;
  UBRR0H: byte absolute $C5;
  UDR0: byte absolute $C6;  // USART I/O Data Register 0

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
  TUCSR1Dset = bitpacked set of (e_SFDE1=5, e_RXS1, e_RXSIE1);
  TUCSR1Drec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    SFDE1,
    RXS1,
    RXSIE1: TBitField;
  end;
var
  UCSR1D: byte absolute $CB;  // USART Control and Status Register D
  UCSR1Dset: TUCSR1Dset absolute $CB;
  UCSR1Drec: TUCSR1Drec absolute $CB;
const
  SFDE1 = 5;  m_SFDE1 = 32;  // Start frame detection enable
  RXS1 = 6;  m_RXS1 = 64;  // USART RX Start
  RXSIE1 = 7;  m_RXSIE1 = 128;  // USART RX Start Interrupt Enable

var
  UBRR1: word absolute $CC;  // USART Baud Rate Register Bytes
  UBRR1L: byte absolute $CC;
  UBRR1H: byte absolute $CD;
  UDR1: byte absolute $CE;  // USART I/O Data Register
  TWBR1: byte absolute $D8;  // TWI Bit Rate register

type
  TTWSR1set = bitpacked set of (e_TWPS10, e_TWPS11, e_TWS13=3, e_TWS14, e_TWS15, e_TWS16, e_TWS17);
  TTWSR1rec = bitpacked record
    TWPS10,
    TWPS11,
    ReservedBit2,
    TWS13,
    TWS14,
    TWS15,
    TWS16,
    TWS17: TBitField;
  end;
var
  TWSR1: byte absolute $D9;  // TWI Status Register
  TWSR1set: TTWSR1set absolute $D9;
  TWSR1rec: TTWSR1rec absolute $D9;
const
  TWPS10 = 0;  m_TWPS10 = 1;  // TWI Prescaler
  TWPS11 = 1;  m_TWPS11 = 2;  // TWI Prescaler
  TWS13 = 3;  m_TWS13 = 8;  // TWI Status
  TWS14 = 4;  m_TWS14 = 16;  // TWI Status
  TWS15 = 5;  m_TWS15 = 32;  // TWI Status
  TWS16 = 6;  m_TWS16 = 64;  // TWI Status
  TWS17 = 7;  m_TWS17 = 128;  // TWI Status

var
  TWAR1: byte absolute $DA;  // TWI (Slave) Address register
  TWDR1: byte absolute $DB;  // TWI Data register

type
  TTWCR1set = bitpacked set of (e_TWIE1, e_TWEN1=2, e_TWWC1, e_TWSTO1, e_TWSTA1, e_TWEA1, e_TWINT1);
  TTWCR1rec = bitpacked record
    TWIE1,
    ReservedBit1,
    TWEN1,
    TWWC1,
    TWSTO1,
    TWSTA1,
    TWEA1,
    TWINT1: TBitField;
  end;
var
  TWCR1: byte absolute $DC;  // TWI Control Register
  TWCR1set: TTWCR1set absolute $DC;
  TWCR1rec: TTWCR1rec absolute $DC;
const
  TWIE1 = 0;  m_TWIE1 = 1;  // TWI Interrupt Enable
  TWEN1 = 2;  m_TWEN1 = 4;  // TWI Enable Bit
  TWWC1 = 3;  m_TWWC1 = 8;  // TWI Write Collition Flag
  TWSTO1 = 4;  m_TWSTO1 = 16;  // TWI Stop Condition Bit
  TWSTA1 = 5;  m_TWSTA1 = 32;  // TWI Start Condition Bit
  TWEA1 = 6;  m_TWEA1 = 64;  // TWI Enable Acknowledge Bit
  TWINT1 = 7;  m_TWINT1 = 128;  // TWI Interrupt Flag

type
  TTWAMR1set = bitpacked set of (e_TWAM10=1, e_TWAM11, e_TWAM12, e_TWAM13, e_TWAM14, e_TWAM15, e_TWAM16);
  TTWAMR1rec = bitpacked record
    ReservedBit0,
    TWAM10,
    TWAM11,
    TWAM12,
    TWAM13,
    TWAM14,
    TWAM15,
    TWAM16: TBitField;
  end;
var
  TWAMR1: byte absolute $DD;  // TWI (Slave) Address Mask Register
  TWAMR1set: TTWAMR1set absolute $DD;
  TWAMR1rec: TTWAMR1rec absolute $DD;
const
  TWAM10 = 1;  m_TWAM10 = 2;
  TWAM11 = 2;  m_TWAM11 = 4;
  TWAM12 = 3;  m_TWAM12 = 8;
  TWAM13 = 4;  m_TWAM13 = 16;
  TWAM14 = 5;  m_TWAM14 = 32;
  TWAM15 = 6;  m_TWAM15 = 64;
  TWAM16 = 7;  m_TWAM16 = 128;
  // typedefs = 73

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 5 Pin Change Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 6 Watchdog Time-out Interrupt
procedure TIMER2_COMPA_ISR; external name 'TIMER2_COMPA_ISR'; // Interrupt 7 Timer/Counter2 Compare Match A
procedure TIMER2_COMPB_ISR; external name 'TIMER2_COMPB_ISR'; // Interrupt 8 Timer/Counter2 Compare Match B
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 9 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 10 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 11 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 12 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 13 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 14 TimerCounter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 15 TimerCounter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 16 Timer/Couner0 Overflow
procedure SPI0_STC_ISR; external name 'SPI0_STC_ISR'; // Interrupt 17 SPI Serial Transfer Complete
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 18 USART0 Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 19 USART0, Data Register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 20 USART0 Tx Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 21 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 22 EEPROM Ready
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 23 Analog Comparator
procedure TWI0_ISR; external name 'TWI0_ISR'; // Interrupt 24 Two-wire Serial Interface
procedure SPM_Ready_ISR; external name 'SPM_Ready_ISR'; // Interrupt 25 Store Program Memory Read
procedure USART0_START_ISR; external name 'USART0_START_ISR'; // Interrupt 26 USART0 Start frame detection
procedure PCINT3_ISR; external name 'PCINT3_ISR'; // Interrupt 27 Pin Change Interrupt Request 3
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 28 USART1 Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 29 USART1, Data Register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 30 USART1 Tx Complete
procedure USART1_START_ISR; external name 'USART1_START_ISR'; // Interrupt 31 USART1 Start frame detection
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 32 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 33 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 34 Timer/Counter3 Compare Match B
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 35 Timer/Counter3 Overflow
procedure CFD_ISR; external name 'CFD_ISR'; // Interrupt 36 Clock failure detection interrupt
procedure PTC_EOC_ISR; external name 'PTC_EOC_ISR'; // Interrupt 37 PTC End of conversion
procedure PTC_WCOMP_ISR; external name 'PTC_WCOMP_ISR'; // Interrupt 38 PTC Window comparator mode
procedure SPI1_STC_ISR; external name 'SPI1_STC_ISR'; // Interrupt 39 SPI1 Serial Transfer Complete
procedure TWI1_ISR; external name 'TWI1_ISR'; // Interrupt 40 TWI Transfer Complete
procedure TIMER4_CAPT_ISR; external name 'TIMER4_CAPT_ISR'; // Interrupt 41 Timer/Counter4 Capture Event
procedure TIMER4_COMPA_ISR; external name 'TIMER4_COMPA_ISR'; // Interrupt 42 Timer/Counter4 Compare Match A
procedure TIMER4_COMPB_ISR; external name 'TIMER4_COMPB_ISR'; // Interrupt 43 Timer/Counter4 Compare Match B
procedure TIMER4_OVF_ISR; external name 'TIMER4_OVF_ISR'; // Interrupt 44 Timer/Counter4 Overflow

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
  jmp PCINT2_ISR
  jmp WDT_ISR
  jmp TIMER2_COMPA_ISR
  jmp TIMER2_COMPB_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI0_STC_ISR
  jmp USART0_RX_ISR
  jmp USART0_UDRE_ISR
  jmp USART0_TX_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp ANALOG_COMP_ISR
  jmp TWI0_ISR
  jmp SPM_Ready_ISR
  jmp USART0_START_ISR
  jmp PCINT3_ISR
  jmp USART1_RX_ISR
  jmp USART1_UDRE_ISR
  jmp USART1_TX_ISR
  jmp USART1_START_ISR
  jmp TIMER3_CAPT_ISR
  jmp TIMER3_COMPA_ISR
  jmp TIMER3_COMPB_ISR
  jmp TIMER3_OVF_ISR
  jmp CFD_ISR
  jmp PTC_EOC_ISR
  jmp PTC_WCOMP_ISR
  jmp SPI1_STC_ISR
  jmp TWI1_ISR
  jmp TIMER4_CAPT_ISR
  jmp TIMER4_COMPA_ISR
  jmp TIMER4_COMPB_ISR
  jmp TIMER4_OVF_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
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
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI0_STC_ISR
  .weak USART0_RX_ISR
  .weak USART0_UDRE_ISR
  .weak USART0_TX_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak ANALOG_COMP_ISR
  .weak TWI0_ISR
  .weak SPM_Ready_ISR
  .weak USART0_START_ISR
  .weak PCINT3_ISR
  .weak USART1_RX_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_TX_ISR
  .weak USART1_START_ISR
  .weak TIMER3_CAPT_ISR
  .weak TIMER3_COMPA_ISR
  .weak TIMER3_COMPB_ISR
  .weak TIMER3_OVF_ISR
  .weak CFD_ISR
  .weak PTC_EOC_ISR
  .weak PTC_WCOMP_ISR
  .weak SPI1_STC_ISR
  .weak TWI1_ISR
  .weak TIMER4_CAPT_ISR
  .weak TIMER4_COMPA_ISR
  .weak TIMER4_COMPB_ISR
  .weak TIMER4_OVF_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
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
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI0_STC_ISR, Default_IRQ_handler
  .set USART0_RX_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set TWI0_ISR, Default_IRQ_handler
  .set SPM_Ready_ISR, Default_IRQ_handler
  .set USART0_START_ISR, Default_IRQ_handler
  .set PCINT3_ISR, Default_IRQ_handler
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set USART1_START_ISR, Default_IRQ_handler
  .set TIMER3_CAPT_ISR, Default_IRQ_handler
  .set TIMER3_COMPA_ISR, Default_IRQ_handler
  .set TIMER3_COMPB_ISR, Default_IRQ_handler
  .set TIMER3_OVF_ISR, Default_IRQ_handler
  .set CFD_ISR, Default_IRQ_handler
  .set PTC_EOC_ISR, Default_IRQ_handler
  .set PTC_WCOMP_ISR, Default_IRQ_handler
  .set SPI1_STC_ISR, Default_IRQ_handler
  .set TWI1_ISR, Default_IRQ_handler
  .set TIMER4_CAPT_ISR, Default_IRQ_handler
  .set TIMER4_COMPA_ISR, Default_IRQ_handler
  .set TIMER4_COMPB_ISR, Default_IRQ_handler
  .set TIMER4_OVF_ISR, Default_IRQ_handler
end;

end.
