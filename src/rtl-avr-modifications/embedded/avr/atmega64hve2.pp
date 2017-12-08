unit ATmega64HVE2;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $20;  // Port A Input Pins
  DDRA: byte absolute $21;  // Port A Data Direction Register

type
  TPORTAset = bitpacked set of (e_PA0, e_PA1);
  TPORTArec = bitpacked record
    PA0,
    PA1,
    ReservedBit2,
    ReservedBit3,
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
  TEIFRset = bitpacked set of (e_INTF0);
  TEIFRrec = bitpacked record
    INTF0,
    ReservedBit1,
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
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0

type
  TEIMSKset = bitpacked set of (e_INT0);
  TEIMSKrec = bitpacked record
    INT0,
    ReservedBit1,
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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable

var
  GPIOR0: byte absolute $3E;  // General Purpose IO Register 0

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

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Read/Write Access
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
  TCNT0: word absolute $46;  // Timer Counter 0  Bytes
  TCNT0L: byte absolute $46;
  TCNT0H: byte absolute $47;
  OCR0A: byte absolute $48;  // Output Compare Register 0A
  OCR0B: byte absolute $49;  // Output Compare Register B
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
  TWUTCSRset = bitpacked set of (e_WUTP0, e_WUTP1, e_WUTP2, e_WUTE, e_WUTR, e_WUTIE=6, e_WUTIF);
  TWUTCSRrec = bitpacked record
    WUTP0,
    WUTP1,
    WUTP2,
    WUTE,
    WUTR,
    ReservedBit5,
    WUTIE,
    WUTIF: TBitField;
  end;
var
  WUTCSR: byte absolute $62;  // Wake-up Timer Control and Status Register
  WUTCSRset: TWUTCSRset absolute $62;
  WUTCSRrec: TWUTCSRrec absolute $62;
const
  WUTP0 = 0;  m_WUTP0 = 1;  // Wake-up Timer Prescaler Bits
  WUTP1 = 1;  m_WUTP1 = 2;  // Wake-up Timer Prescaler Bits
  WUTP2 = 2;  m_WUTP2 = 4;  // Wake-up Timer Prescaler Bits
  WUTE = 3;  m_WUTE = 8;  // Wake-up Timer Enable
  WUTR = 4;  m_WUTR = 16;  // Wake-up Timer Reset
  WUTIE = 6;  m_WUTIE = 64;  // Wake-up Timer Interrupt Enable
  WUTIF = 7;  m_WUTIF = 128;  // Wake-up Timer Interrupt Flag

type
  TWDTCLRset = bitpacked set of (e_WDCLE, e_WDCL0, e_WDCL1);
  TWDTCLRrec = bitpacked record
    WDCLE,
    WDCL0,
    WDCL1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WDTCLR: byte absolute $63;  // Watchdog Timer Configuration Lock Register
  WDTCLRset: TWDTCLRset absolute $63;
  WDTCLRrec: TWDTCLRrec absolute $63;
const
  WDCLE = 0;  m_WDCLE = 1;  // Watchdog Timer Comfiguration Lock Enable
  WDCL0 = 1;  m_WDCL0 = 2;  // Watchdog Timer Comfiguration Lock bits
  WDCL1 = 2;  m_WDCL1 = 4;  // Watchdog Timer Comfiguration Lock bits

type
  TPRR0set = bitpacked set of (e_PRTIM0, e_PRTIM1, e_PRSPI, e_PRLIN);
  TPRR0rec = bitpacked record
    PRTIM0,
    PRTIM1,
    PRSPI,
    PRLIN,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR0: byte absolute $64;  // Power Reduction Register 0
  PRR0set: TPRR0set absolute $64;
  PRR0rec: TPRR0rec absolute $64;
const
  PRTIM0 = 0;  m_PRTIM0 = 1;  // Power Reduction Timer/Counter0
  PRTIM1 = 1;  m_PRTIM1 = 2;  // Power Reduction Timer/Counter1
  PRSPI = 2;  m_PRSPI = 4;  // Power reduction SPI
  PRLIN = 3;  m_PRLIN = 8;  // Power Reduction LIN UART Interface

var
  SOSCCALA: byte absolute $66;  // Slow Oscillator Calibration Register A
  SOSCCALB: byte absolute $67;  // Oscillator Calibration Register B

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
  EICRA: byte absolute $69;  // External Interrupt Control Register
  EICRAset: TEICRAset absolute $69;
  EICRArec: TEICRArec absolute $69;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control 0 Bit 1

var
  PCMSK0: byte absolute $6B;  // Pin Change Enable Mask Register 0
  PCMSK1: byte absolute $6C;  // Pin Change Enable Mask Register 1

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
  TCNT1: word absolute $84;  // Timer Counter 1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
  OCR1A: byte absolute $88;  // Output Compare Register 1A
  OCR1B: byte absolute $89;  // Output Compare Register B

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
  LINCR: byte absolute $C0;  // LIN Control Register
  LINCRset: TLINCRset absolute $C0;
  LINCRrec: TLINCRrec absolute $C0;
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
  LINSIR: byte absolute $C1;  // LIN Status and Interrupt Register
  LINSIRset: TLINSIRset absolute $C1;
  LINSIRrec: TLINSIRrec absolute $C1;
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
  LINENIR: byte absolute $C2;  // LIN Enable Interrupt Register
  LINENIRset: TLINENIRset absolute $C2;
  LINENIRrec: TLINENIRrec absolute $C2;
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
  LINERR: byte absolute $C3;  // LIN Error Register
  LINERRset: TLINERRset absolute $C3;
  LINERRrec: TLINERRrec absolute $C3;
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
  LINBTR: byte absolute $C4;  // LIN Bit Timing Register
  LINBTRset: TLINBTRset absolute $C4;
  LINBTRrec: TLINBTRrec absolute $C4;
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
  LINBRRL: byte absolute $C5;  // LIN Baud Rate Low Register
  LINBRRLset: TLINBRRLset absolute $C5;
  LINBRRLrec: TLINBRRLrec absolute $C5;
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
  LINBRRH: byte absolute $C6;  // LIN Baud Rate High Register

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
  LINDLR: byte absolute $C7;  // LIN Data Length Register
  LINDLRset: TLINDLRset absolute $C7;
  LINDLRrec: TLINDLRrec absolute $C7;
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
  LINIDR: byte absolute $C8;  // LIN Identifier Register
  LINIDRset: TLINIDRset absolute $C8;
  LINIDRrec: TLINIDRrec absolute $C8;
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
  LINSEL: byte absolute $C9;  // LIN Data Buffer Selection Register
  LINSELset: TLINSELset absolute $C9;
  LINSELrec: TLINSELrec absolute $C9;
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
  LINDAT: byte absolute $CA;  // LIN Data Register
  LINDATset: TLINDATset absolute $CA;
  LINDATrec: TLINDATrec absolute $CA;
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
  TBGCSRAset = bitpacked set of (e_BGSC0, e_BGSC1, e_BGSC2);
  TBGCSRArec = bitpacked record
    BGSC0,
    BGSC1,
    BGSC2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BGCSRA: byte absolute $D1;  // Bandgap Control and Status Register A
  BGCSRAset: TBGCSRAset absolute $D1;
  BGCSRArec: TBGCSRArec absolute $D1;
const
  BGSC0 = 0;  m_BGSC0 = 1;  // Band Gap Sample Configuration
  BGSC1 = 1;  m_BGSC1 = 2;  // Band Gap Sample Configuration
  BGSC2 = 2;  m_BGSC2 = 4;  // Band Gap Sample Configuration

type
  TBGCRBset = bitpacked set of (e_BGCL0, e_BGCL1, e_BGCL2, e_BGCL3, e_BGCL4, e_BGCL5, e_BGCL6, e_BGCL7);
  TBGCRBrec = bitpacked record
    BGCL0,
    BGCL1,
    BGCL2,
    BGCL3,
    BGCL4,
    BGCL5,
    BGCL6,
    BGCL7: TBitField;
  end;
var
  BGCRB: byte absolute $D2;  // Band Gap Calibration Register B
  BGCRBset: TBGCRBset absolute $D2;
  BGCRBrec: TBGCRBrec absolute $D2;
const
  BGCL0 = 0;  m_BGCL0 = 1;  // Band Gap Calibration Linear
  BGCL1 = 1;  m_BGCL1 = 2;  // Band Gap Calibration Linear
  BGCL2 = 2;  m_BGCL2 = 4;  // Band Gap Calibration Linear
  BGCL3 = 3;  m_BGCL3 = 8;  // Band Gap Calibration Linear
  BGCL4 = 4;  m_BGCL4 = 16;  // Band Gap Calibration Linear
  BGCL5 = 5;  m_BGCL5 = 32;  // Band Gap Calibration Linear
  BGCL6 = 6;  m_BGCL6 = 64;  // Band Gap Calibration Linear
  BGCL7 = 7;  m_BGCL7 = 128;  // Band Gap Calibration Linear

type
  TBGCRAset = bitpacked set of (e_BGCN0, e_BGCN1, e_BGCN2, e_BGCN3, e_BGCN4, e_BGCN5, e_BGCN6, e_BGCN7);
  TBGCRArec = bitpacked record
    BGCN0,
    BGCN1,
    BGCN2,
    BGCN3,
    BGCN4,
    BGCN5,
    BGCN6,
    BGCN7: TBitField;
  end;
var
  BGCRA: byte absolute $D3;  // Band Gap Calibration Register A
  BGCRAset: TBGCRAset absolute $D3;
  BGCRArec: TBGCRArec absolute $D3;
const
  BGCN0 = 0;  m_BGCN0 = 1;  // Band Gap Calibration Nominal
  BGCN1 = 1;  m_BGCN1 = 2;  // Band Gap Calibration Nominal
  BGCN2 = 2;  m_BGCN2 = 4;  // Band Gap Calibration Nominal
  BGCN3 = 3;  m_BGCN3 = 8;  // Band Gap Calibration Nominal
  BGCN4 = 4;  m_BGCN4 = 16;  // Band Gap Calibration Nominal
  BGCN5 = 5;  m_BGCN5 = 32;  // Band Gap Calibration Nominal
  BGCN6 = 6;  m_BGCN6 = 64;  // Band Gap Calibration Nominal
  BGCN7 = 7;  m_BGCN7 = 128;  // Band Gap Calibration Nominal

type
  TBGLRset = bitpacked set of (e_BGPL, e_BGPLE);
  TBGLRrec = bitpacked record
    BGPL,
    BGPLE,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BGLR: byte absolute $D4;  // Band Gap Lock Register
  BGLRset: TBGLRset absolute $D4;
  BGLRrec: TBGLRrec absolute $D4;
const
  BGPL = 0;  m_BGPL = 1;  // Band Gap Lock
  BGPLE = 1;  m_BGPLE = 2;  // Band Gap Lock Enable

type
  TPLLCSRset = bitpacked set of (e_PLLCIE, e_PLLCIF, e_LOCK=4, e_SWEN);
  TPLLCSRrec = bitpacked record
    PLLCIE,
    PLLCIF,
    ReservedBit2,
    ReservedBit3,
    LOCK,
    SWEN,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PLLCSR: byte absolute $D8;  // PLL Control and Status Register
  PLLCSRset: TPLLCSRset absolute $D8;
  PLLCSRrec: TPLLCSRrec absolute $D8;
const
  PLLCIE = 0;  m_PLLCIE = 1;  // PLL Lock Change Interrupt Enable
  PLLCIF = 1;  m_PLLCIF = 2;  // PLL Lock Change Interrupt Flag
  LOCK = 4;  m_LOCK = 16;  // PLL Lock
  SWEN = 5;  m_SWEN = 32;  // PLL Software Enable

type
  TPBOVset = bitpacked set of (e_PBOE0, e_PBOE3=3, e_PBOVCE=7);
  TPBOVrec = bitpacked record
    PBOE0,
    ReservedBit1,
    ReservedBit2,
    PBOE3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    PBOVCE: TBitField;
  end;
var
  PBOV: byte absolute $DC;  // Port B Override
  PBOVset: TPBOVset absolute $DC;
  PBOVrec: TPBOVrec absolute $DC;
const
  PBOE0 = 0;  m_PBOE0 = 1;  // Port B Override Enable 0
  PBOE3 = 3;  m_PBOE3 = 8;  // Port B Override Enable 3
  PBOVCE = 7;  m_PBOVCE = 128;  // Port B Override Change Enable

type
  TADSCSRAset = bitpacked set of (e_SCMD0, e_SCMD1, e_SBSY);
  TADSCSRArec = bitpacked record
    SCMD0,
    SCMD1,
    SBSY,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADSCSRA: byte absolute $E0;  // ADC Synchronization Control and Status Register
  ADSCSRAset: TADSCSRAset absolute $E0;
  ADSCSRArec: TADSCSRArec absolute $E0;
const
  SCMD0 = 0;  m_SCMD0 = 1;  // Synchronization Command
  SCMD1 = 1;  m_SCMD1 = 2;  // Synchronization Command
  SBSY = 2;  m_SBSY = 4;  // Synchronization Busy

type
  TADSCSRBset = bitpacked set of (e_CADICRB, e_CADACRB, e_CADICPS, e_VADICRB=4, e_VADACRB, e_VADICPS);
  TADSCSRBrec = bitpacked record
    CADICRB,
    CADACRB,
    CADICPS,
    ReservedBit3,
    VADICRB,
    VADACRB,
    VADICPS,
    ReservedBit7: TBitField;
  end;
var
  ADSCSRB: byte absolute $E1;  // ADC Synchronization Control and Status Register
  ADSCSRBset: TADSCSRBset absolute $E1;
  ADSCSRBrec: TADSCSRBrec absolute $E1;
const
  CADICRB = 0;  m_CADICRB = 1;  // CADIC Data Read Out Busy
  CADACRB = 1;  m_CADACRB = 2;  // CADAC Data Read Out Busy
  CADICPS = 2;  m_CADICPS = 4;  // C-ADC Instantaneous Conversion Polarity Status
  VADICRB = 4;  m_VADICRB = 16;  // VADIC Data Read Out Busy
  VADACRB = 5;  m_VADACRB = 32;  // VADAC Data Read Out Busy
  VADICPS = 6;  m_VADICPS = 64;  // V-ADC Instantaneous Conversion Polarity Status

type
  TADCRAset = bitpacked set of (e_CKSEL, e_ADCMS0, e_ADCMS1, e_ADPSEL);
  TADCRArec = bitpacked record
    CKSEL,
    ADCMS0,
    ADCMS1,
    ADPSEL,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADCRA: byte absolute $E2;  // ADC Control Register A
  ADCRAset: TADCRAset absolute $E2;
  ADCRArec: TADCRArec absolute $E2;
const
  CKSEL = 0;  m_CKSEL = 1;  // Sampling Clock Select
  ADCMS0 = 1;  m_ADCMS0 = 2;  // C-ADC Chopper Mode Select
  ADCMS1 = 2;  m_ADCMS1 = 4;  // C-ADC Chopper Mode Select
  ADPSEL = 3;  m_ADPSEL = 8;  // ADC Polarity Select

type
  TADCRBset = bitpacked set of (e_ADADES0, e_ADADES1, e_ADADES2, e_ADIDES0, e_ADIDES1);
  TADCRBrec = bitpacked record
    ADADES0,
    ADADES1,
    ADADES2,
    ADIDES0,
    ADIDES1,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADCRB: byte absolute $E3;  // ADC Control Register B
  ADCRBset: TADCRBset absolute $E3;
  ADCRBrec: TADCRBrec absolute $E3;
const
  ADADES0 = 0;  m_ADADES0 = 1;  // Accumulated Decimation Ratio Select
  ADADES1 = 1;  m_ADADES1 = 2;  // Accumulated Decimation Ratio Select
  ADADES2 = 2;  m_ADADES2 = 4;  // Accumulated Decimation Ratio Select
  ADIDES0 = 3;  m_ADIDES0 = 8;  // Instantaneous Decimation Ratio Select
  ADIDES1 = 4;  m_ADIDES1 = 16;  // Instantaneous Decimation Ratio Select

type
  TADCRCset = bitpacked set of (e_CADRCT0, e_CADRCT1, e_CADRCT2, e_CADRCT3, e_CADRCM0, e_CADRCM1, e_CADEN=7);
  TADCRCrec = bitpacked record
    CADRCT0,
    CADRCT1,
    CADRCT2,
    CADRCT3,
    CADRCM0,
    CADRCM1,
    ReservedBit6,
    CADEN: TBitField;
  end;
var
  ADCRC: byte absolute $E4;  // ADC Control Register B
  ADCRCset: TADCRCset absolute $E4;
  ADCRCrec: TADCRCrec absolute $E4;
const
  CADRCT0 = 0;  m_CADRCT0 = 1;  // C-ADC Regular Current Count Threshold
  CADRCT1 = 1;  m_CADRCT1 = 2;  // C-ADC Regular Current Count Threshold
  CADRCT2 = 2;  m_CADRCT2 = 4;  // C-ADC Regular Current Count Threshold
  CADRCT3 = 3;  m_CADRCT3 = 8;  // C-ADC Regular Current Count Threshold
  CADRCM0 = 4;  m_CADRCM0 = 16;  // C-ADC Regular Current Comparator Mode
  CADRCM1 = 5;  m_CADRCM1 = 32;  // C-ADC Regular Current Comparator Mode
  CADEN = 7;  m_CADEN = 128;  // C-ADC Enable

type
  TADCRDset = bitpacked set of (e_CADDSEL, e_CADPDM0, e_CADPDM1, e_CADG0, e_CADG1, e_CADG2);
  TADCRDrec = bitpacked record
    CADDSEL,
    CADPDM0,
    CADPDM1,
    CADG0,
    CADG1,
    CADG2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADCRD: byte absolute $E5;  // ADC Control Register D
  ADCRDset: TADCRDset absolute $E5;
  ADCRDrec: TADCRDrec absolute $E5;
const
  CADDSEL = 0;  m_CADDSEL = 1;  // C-ADC Diagnostics Channel Select
  CADPDM0 = 1;  m_CADPDM0 = 2;  // C-ADC Pin Diagnostics Mode
  CADPDM1 = 2;  m_CADPDM1 = 4;  // C-ADC Pin Diagnostics Mode
  CADG0 = 3;  m_CADG0 = 8;  // C-ADC Gain
  CADG1 = 4;  m_CADG1 = 16;  // C-ADC Gain
  CADG2 = 5;  m_CADG2 = 32;  // C-ADC Gain

type
  TADCREset = bitpacked set of (e_VADMUX0, e_VADMUX1, e_VADMUX2, e_VADPDM0, e_VADPDM1, e_VADREFS, e_VADEN=7);
  TADCRErec = bitpacked record
    VADMUX0,
    VADMUX1,
    VADMUX2,
    VADPDM0,
    VADPDM1,
    VADREFS,
    ReservedBit6,
    VADEN: TBitField;
  end;
var
  ADCRE: byte absolute $E6;  // ADC Control Register E
  ADCREset: TADCREset absolute $E6;
  ADCRErec: TADCRErec absolute $E6;
const
  VADMUX0 = 0;  m_VADMUX0 = 1;  // V-ADC Channel Select
  VADMUX1 = 1;  m_VADMUX1 = 2;  // V-ADC Channel Select
  VADMUX2 = 2;  m_VADMUX2 = 4;  // V-ADC Channel Select
  VADPDM0 = 3;  m_VADPDM0 = 8;  // V-ADC Pin Diagnostics Mode
  VADPDM1 = 4;  m_VADPDM1 = 16;  // V-ADC Pin Diagnostics Mode
  VADREFS = 5;  m_VADREFS = 32;  // V-ADC Reference Select
  VADEN = 7;  m_VADEN = 128;  // V-ADC Enable

type
  TADIFRset = bitpacked set of (e_CADICIF, e_CADACIF, e_CADRCIF, e_VADICIF=4, e_VADACIF);
  TADIFRrec = bitpacked record
    CADICIF,
    CADACIF,
    CADRCIF,
    ReservedBit3,
    VADICIF,
    VADACIF,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADIFR: byte absolute $E7;  // ADC Interrupt Flag Register
  ADIFRset: TADIFRset absolute $E7;
  ADIFRrec: TADIFRrec absolute $E7;
const
  CADICIF = 0;  m_CADICIF = 1;  // C-ADC Instantaneous Current Interrupt Flag
  CADACIF = 1;  m_CADACIF = 2;  // C-ADC Accumulated Current Interrupt Flag
  CADRCIF = 2;  m_CADRCIF = 4;  // C-ADC Regulator Current Interrupt Flag
  VADICIF = 4;  m_VADICIF = 16;  // V-DAC Instantaneous Voltage Interrupt Flag
  VADACIF = 5;  m_VADACIF = 32;  // V-ADC Accumulated Voltage Interrupt Flag

type
  TADIMRset = bitpacked set of (e_CADICIE, e_CADACIE, e_CADRCIE, e_VADICIE=4, e_VADACIE);
  TADIMRrec = bitpacked record
    CADICIE,
    CADACIE,
    CADRCIE,
    ReservedBit3,
    VADICIE,
    VADACIE,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADIMR: byte absolute $E8;  // ADC Interrupt Mask Register
  ADIMRset: TADIMRset absolute $E8;
  ADIMRrec: TADIMRrec absolute $E8;
const
  CADICIE = 0;  m_CADICIE = 1;  // C-ADC Instantaneous Current Interrupt Enable
  CADACIE = 1;  m_CADACIE = 2;  // C-ADC Accumulated Current Interrupt Enable
  CADRCIE = 2;  m_CADRCIE = 4;  // C-ADC Regulator Current Interrupt Enable
  VADICIE = 4;  m_VADICIE = 16;  // V-DAC Instantaneous Voltage Interrupt Enable
  VADACIE = 5;  m_VADACIE = 32;  // V-ADC Accumulated Voltage Interrupt Enable

var
  CADRCL: word absolute $E9;  // CC-ADC Regulator Current Comparator Threshold Level
  CADRCLL: byte absolute $E9;
  CADRCLH: byte absolute $EA;
  CADIC: word absolute $EB;  // C-ADC Instantaneous Conversion Result
  CADICL: byte absolute $EB;
  CADICH: byte absolute $EC;
  CADAC0: byte absolute $ED;  // C-ADC Accumulated Conversion Result
  CADAC1: byte absolute $EE;  // C-ADC Accumulated Conversion Result
  CADAC2: byte absolute $EF;  // C-ADC Accumulated Conversion Result
  CADAC3: byte absolute $F0;  // C-ADC Accumulated Conversion Result
  VADIC: word absolute $F1;  // V-ADC Instantaneous Conversion Result
  VADICL: byte absolute $F1;
  VADICH: byte absolute $F2;
  VADAC0: byte absolute $F3;  // V-ADC Accumulated Conversion Result
  VADAC1: byte absolute $F4;  // V-ADC Accumulated Conversion Result
  VADAC2: byte absolute $F5;  // V-ADC Accumulated Conversion Result
  VADAC3: byte absolute $F6;  // V-ADC Accumulated Conversion Result
  // typedefs = 55

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt 1
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 4 Watchdog Timeout Interrupt
procedure WAKEUP_ISR; external name 'WAKEUP_ISR'; // Interrupt 5 Wakeup Timer Overflow
procedure TIMER1_IC_ISR; external name 'TIMER1_IC_ISR'; // Interrupt 6 Timer 1 Input capture
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 7 Timer 1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 8 Timer 1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 9 Timer 1 overflow
procedure TIMER0_IC_ISR; external name 'TIMER0_IC_ISR'; // Interrupt 10 Timer 0 Input Capture
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 11 Timer 0 Comapre Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 12 Timer 0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 13 Timer 0 Overflow
procedure LIN_STATUS_ISR; external name 'LIN_STATUS_ISR'; // Interrupt 14 LIN Status Interrupt
procedure LIN_ERROR_ISR; external name 'LIN_ERROR_ISR'; // Interrupt 15 LIN Error Interrupt
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 16 SPI Serial transfer complete
procedure VADC_CONV_ISR; external name 'VADC_CONV_ISR'; // Interrupt 17 Voltage ADC Instantaneous Conversion Complete
procedure VADC_ACC_ISR; external name 'VADC_ACC_ISR'; // Interrupt 18 Voltage ADC Accumulated Conversion Complete
procedure CADC_CONV_ISR; external name 'CADC_CONV_ISR'; // Interrupt 19 C-ADC Instantaneous Conversion Complete
procedure CADC_REG_CUR_ISR; external name 'CADC_REG_CUR_ISR'; // Interrupt 20 C-ADC Regular Current
procedure CADC_ACC_ISR; external name 'CADC_ACC_ISR'; // Interrupt 21 C-ADC Accumulated Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 22 EEPROM Ready
procedure SPM_ISR; external name 'SPM_ISR'; // Interrupt 23 SPM Ready
procedure PLL_ISR; external name 'PLL_ISR'; // Interrupt 24 PLL Lock Change Interrupt

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
  jmp WDT_ISR
  jmp WAKEUP_ISR
  jmp TIMER1_IC_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_IC_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp LIN_STATUS_ISR
  jmp LIN_ERROR_ISR
  jmp SPI_STC_ISR
  jmp VADC_CONV_ISR
  jmp VADC_ACC_ISR
  jmp CADC_CONV_ISR
  jmp CADC_REG_CUR_ISR
  jmp CADC_ACC_ISR
  jmp EE_READY_ISR
  jmp SPM_ISR
  jmp PLL_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak WDT_ISR
  .weak WAKEUP_ISR
  .weak TIMER1_IC_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_IC_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak LIN_STATUS_ISR
  .weak LIN_ERROR_ISR
  .weak SPI_STC_ISR
  .weak VADC_CONV_ISR
  .weak VADC_ACC_ISR
  .weak CADC_CONV_ISR
  .weak CADC_REG_CUR_ISR
  .weak CADC_ACC_ISR
  .weak EE_READY_ISR
  .weak SPM_ISR
  .weak PLL_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set WAKEUP_ISR, Default_IRQ_handler
  .set TIMER1_IC_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_IC_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set LIN_STATUS_ISR, Default_IRQ_handler
  .set LIN_ERROR_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set VADC_CONV_ISR, Default_IRQ_handler
  .set VADC_ACC_ISR, Default_IRQ_handler
  .set CADC_CONV_ISR, Default_IRQ_handler
  .set CADC_REG_CUR_ISR, Default_IRQ_handler
  .set CADC_ACC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_ISR, Default_IRQ_handler
  .set PLL_ISR, Default_IRQ_handler
end;

end.
