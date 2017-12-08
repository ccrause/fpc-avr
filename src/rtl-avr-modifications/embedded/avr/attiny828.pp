unit ATtiny828;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $20;  // Port A Input Pins
  DDRA: byte absolute $21;  // Data Direction Register, Port A

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
  PUEA: byte absolute $23;  // Pull-up Enable Control Register
  PINB: byte absolute $24;  // Port B Input Pins
  DDRB: byte absolute $25;  // Data Direction Register, Port B

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
  PORTB: byte absolute $26;  // Port B Data Register
  PORTBset: TPORTBset absolute $26;
  PORTBrec: TPORTBrec absolute $26;
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
  PUEB: byte absolute $27;  // Pull-up Enable Control Register
  PINC: byte absolute $28;  // Port C Input Pins
  DDRC: byte absolute $29;  // Data Direction Register, Port C

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
  PORTC: byte absolute $2A;  // Port C Data Register
  PORTCset: TPORTCset absolute $2A;
  PORTCrec: TPORTCrec absolute $2A;
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
  PUEC: byte absolute $2B;  // Pull-up Enable Control Register
  PIND: byte absolute $2C;  // Port D Input Pins
  DDRD: byte absolute $2D;  // Data Direction Register, Port D

type
  TPORTDset = bitpacked set of (e_PD0, e_PD1, e_PD2, e_PD3);
  TPORTDrec = bitpacked record
    PD0,
    PD1,
    PD2,
    PD3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTD: byte absolute $2E;  // Port D Data Register
  PORTDset: TPORTDset absolute $2E;
  PORTDrec: TPORTDrec absolute $2E;
const
  PD0 = 0;  m_PD0 = 1;
  PD1 = 1;  m_PD1 = 2;
  PD2 = 2;  m_PD2 = 4;
  PD3 = 3;  m_PD3 = 8;

var
  PUED: byte absolute $2F;  // Pull-up Enable Control Register

type
  TPHDEset = bitpacked set of (e_PHDEC=2);
  TPHDErec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    PHDEC,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PHDE: byte absolute $34;  // Port High Drive Enable Register
  PHDEset: TPHDEset absolute $34;
  PHDErec: TPHDErec absolute $34;
const
  PHDEC = 2;  m_PHDEC = 4;  // Port C High Drive Enable

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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request Enables
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request Enables

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
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: byte absolute $41;  // EEPROM Read/Write Access

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
  GPIOR1: byte absolute $4A;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $4B;  // General Purpose I/O Register 2

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
  TACSRBset = bitpacked set of (e_ACPMUX0, e_ACPMUX1, e_ACNMUX0, e_ACNMUX1, e_HLEV=6, e_HSEL);
  TACSRBrec = bitpacked record
    ACPMUX0,
    ACPMUX1,
    ACNMUX0,
    ACNMUX1,
    ReservedBit4,
    ReservedBit5,
    HLEV,
    HSEL: TBitField;
  end;
var
  ACSRB: byte absolute $4F;  // Analog Comparator Control And Status Register B
  ACSRBset: TACSRBset absolute $4F;
  ACSRBrec: TACSRBrec absolute $4F;
const
  ACPMUX0 = 0;  m_ACPMUX0 = 1;  // Analog Comparator Positive Input Multiplexer Bits 1:0
  ACPMUX1 = 1;  m_ACPMUX1 = 2;  // Analog Comparator Positive Input Multiplexer Bits 1:0
  ACNMUX0 = 2;  m_ACNMUX0 = 4;  // Analog Comparator Negative Input Multiplexer
  ACNMUX1 = 3;  m_ACNMUX1 = 8;  // Analog Comparator Negative Input Multiplexer
  HLEV = 6;  m_HLEV = 64;  // Hysteresis Level
  HSEL = 7;  m_HSEL = 128;  // Hysteresis Select

type
  TACSRAset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIC, e_ACIE, e_ACI, e_ACO, e_ACPMUX2, e_ACD);
  TACSRArec = bitpacked record
    ACIS0,
    ACIS1,
    ACIC,
    ACIE,
    ACI,
    ACO,
    ACPMUX2,
    ACD: TBitField;
  end;
var
  ACSRA: byte absolute $50;  // Analog Comparator Control And Status Register A
  ACSRAset: TACSRAset absolute $50;
  ACSRArec: TACSRArec absolute $50;
const
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIC = 2;  m_ACIC = 4;  // Analog Comparator Input Capture Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACPMUX2 = 6;  m_ACPMUX2 = 64;  // Analog Comparator Positive Input Multiplexer Bit 2
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

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
  MCUSR: byte absolute $54;  // MCU Status Register
  MCUSRset: TMCUSRset absolute $54;
  MCUSRrec: TMCUSRrec absolute $54;
const
  PORF = 0;  m_PORF = 1;  // Power-on reset flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  BORF = 2;  m_BORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

type
  TMCUCRset = bitpacked set of (e_IVSEL=1);
  TMCUCRrec = bitpacked record
    ReservedBit0,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select

var
  CCP: byte absolute $56;  // Configuration Change Protection

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RWFLB, e_RWWSRE, e_RSIG, e_RWWSB, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RWFLB,
    RWWSRE,
    RSIG,
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
  RWFLB = 3;  m_RWFLB = 8;  // Read/Write Fuse and Lock Bits
  RWWSRE = 4;  m_RWWSRE = 16;  // Read-While-Write section read enable
  RSIG = 5;  m_RSIG = 32;  // Read Device Signature Imprint Table
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
  TWDTCSRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDP3=5, e_WDIE, e_WDIF);
  TWDTCSRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    ReservedBit4,
    WDP3,
    WDIE,
    WDIF: TBitField;
  end;
var
  WDTCSR: byte absolute $60;  // Watchdog Timer Control and Status Register
  WDTCSRset: TWDTCSRset absolute $60;
  WDTCSRrec: TWDTCSRrec absolute $60;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timer Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timer Interrupt Flag

type
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLKPS3);
  TCLKPRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    CLKPS2,
    CLKPS3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
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

type
  TPRRset = bitpacked set of (e_PRADC, e_PRUSART0, e_PRSPI, e_PRTIM1, e_PRTIM0=5, e_PRTWI=7);
  TPRRrec = bitpacked record
    PRADC,
    PRUSART0,
    PRSPI,
    PRTIM1,
    ReservedBit4,
    PRTIM0,
    ReservedBit6,
    PRTWI: TBitField;
  end;
var
  PRR: byte absolute $64;  // Power Reduction Register
  PRRset: TPRRset absolute $64;
  PRRrec: TPRRrec absolute $64;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  m_PRUSART0 = 2;  // Power Reduction USART 0
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction SPI
  PRTIM1 = 3;  m_PRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRTIM0 = 5;  m_PRTIM0 = 32;  // Power Reduction Timer/Counter0
  PRTWI = 7;  m_PRTWI = 128;  // Power Reduction TWI

var
  OSCCAL0: byte absolute $66;  // Oscillator Calibration Register 8MHz
  OSCCAL1: byte absolute $67;  // Oscillator Calibration Register 32kHz

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
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADLAR);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADLAR,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
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
  ADLAR = 3;  m_ADLAR = 8;

type
  TADMUXAset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_MUX4);
  TADMUXArec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    MUX4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADMUXA: byte absolute $7C;  // The ADC multiplexer Selection Register A
  ADMUXAset: TADMUXAset absolute $7C;
  ADMUXArec: TADMUXArec absolute $7C;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel Selection Bits 4:0
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel Selection Bits 4:0
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel Selection Bits 4:0
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel Selection Bits 4:0
  MUX4 = 4;  m_MUX4 = 16;  // Analog Channel Selection Bits 4:0

type
  TADMUXBset = bitpacked set of (e_MUX5, e_REFS=5);
  TADMUXBrec = bitpacked record
    MUX5,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    REFS,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADMUXB: byte absolute $7D;  // The ADC multiplexer Selection Register B
  ADMUXBset: TADMUXBset absolute $7D;
  ADMUXBrec: TADMUXBrec absolute $7D;
const
  MUX5 = 0;  m_MUX5 = 1;  // Analog Channel Selection Bit 5
  REFS = 5;  m_REFS = 32;  // Reference Selection Bit

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
  TDIDR1set = bitpacked set of (e_ADC8D, e_ADC9D, e_ADC10D, e_ADC11D, e_ADC12D, e_ADC13D, e_ADC14D, e_ADC15D);
  TDIDR1rec = bitpacked record
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
  DIDR1: byte absolute $7F;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  ADC8D = 0;  m_ADC8D = 1;  // ADC8 Digital input Disable
  ADC9D = 1;  m_ADC9D = 2;  // ADC9 Digital input Disable
  ADC10D = 2;  m_ADC10D = 4;  // ADC10 Digital input Disable
  ADC11D = 3;  m_ADC11D = 8;  // ADC11 Digital input Disable
  ADC12D = 4;  m_ADC12D = 16;  // ADC12 Digital input Disable
  ADC13D = 5;  m_ADC13D = 32;  // ADC13 Digital input Disable
  ADC14D = 6;  m_ADC14D = 64;  // ADC14 Digital input Disable
  ADC15D = 7;  m_ADC15D = 128;  // ADC15 Digital input Disable

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
  TTWSCRAset = bitpacked set of (e_TWSME, e_TWPME, e_TWSIE, e_TWEN, e_TWASIE, e_TWDIE, e_TWSHE=7);
  TTWSCRArec = bitpacked record
    TWSME,
    TWPME,
    TWSIE,
    TWEN,
    TWASIE,
    TWDIE,
    ReservedBit6,
    TWSHE: TBitField;
  end;
var
  TWSCRA: byte absolute $B8;  // TWI Slave Control Register A
  TWSCRAset: TTWSCRAset absolute $B8;
  TWSCRArec: TTWSCRArec absolute $B8;
const
  TWSME = 0;  m_TWSME = 1;  // TWI Smart Mode Enable
  TWPME = 1;  m_TWPME = 2;  // TWI Promiscuous Mode Enable
  TWSIE = 2;  m_TWSIE = 4;  // TWI Stop Interrupt Enable
  TWEN = 3;  m_TWEN = 8;  // Two-Wire Interface Enable
  TWASIE = 4;  m_TWASIE = 16;  // TWI Address/Stop Interrupt Enable
  TWDIE = 5;  m_TWDIE = 32;  // TWI Data Interrupt Enable
  TWSHE = 7;  m_TWSHE = 128;  // TWI SDA Hold Time Enable

type
  TTWSCRBset = bitpacked set of (e_TWCMD0, e_TWCMD1, e_TWAA, e_TWHNM);
  TTWSCRBrec = bitpacked record
    TWCMD0,
    TWCMD1,
    TWAA,
    TWHNM,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TWSCRB: byte absolute $B9;  // TWI Slave Control Register B
  TWSCRBset: TTWSCRBset absolute $B9;
  TWSCRBrec: TTWSCRBrec absolute $B9;
const
  TWCMD0 = 0;  m_TWCMD0 = 1;
  TWCMD1 = 1;  m_TWCMD1 = 2;
  TWAA = 2;  m_TWAA = 4;  // TWI Acknowledge Action
  TWHNM = 3;  m_TWHNM = 8;  // TWI High Noise Mode

type
  TTWSSRAset = bitpacked set of (e_TWAS, e_TWDIR, e_TWBE, e_TWC, e_TWRA, e_TWCH, e_TWASIF, e_TWDIF);
  TTWSSRArec = bitpacked record
    TWAS,
    TWDIR,
    TWBE,
    TWC,
    TWRA,
    TWCH,
    TWASIF,
    TWDIF: TBitField;
  end;
var
  TWSSRA: byte absolute $BA;  // TWI Slave Status Register A
  TWSSRAset: TTWSSRAset absolute $BA;
  TWSSRArec: TTWSSRArec absolute $BA;
const
  TWAS = 0;  m_TWAS = 1;  // TWI Address or Stop
  TWDIR = 1;  m_TWDIR = 2;  // TWI Read/Write Direction
  TWBE = 2;  m_TWBE = 4;  // TWI Bus Error
  TWC = 3;  m_TWC = 8;  // TWI Collision
  TWRA = 4;  m_TWRA = 16;  // TWI Receive Acknowledge
  TWCH = 5;  m_TWCH = 32;  // TWI Clock Hold
  TWASIF = 6;  m_TWASIF = 64;  // TWI Address/Stop Interrupt Flag
  TWDIF = 7;  m_TWDIF = 128;  // TWI Data Interrupt Flag.

type
  TTWSAMset = bitpacked set of (e_TWAE, e_TWSAM1, e_TWSAM2, e_TWSAM3, e_TWSAM4, e_TWSAM5, e_TWSAM6, e_TWSAM7);
  TTWSAMrec = bitpacked record
    TWAE,
    TWSAM1,
    TWSAM2,
    TWSAM3,
    TWSAM4,
    TWSAM5,
    TWSAM6,
    TWSAM7: TBitField;
  end;
var
  TWSAM: byte absolute $BB;  // TWI Slave Address Mask Register
  TWSAMset: TTWSAMset absolute $BB;
  TWSAMrec: TTWSAMrec absolute $BB;
const
  TWAE = 0;  m_TWAE = 1;  // TWI Address Enable
  TWSAM1 = 1;  m_TWSAM1 = 2;  // TWI Address Mask Bits
  TWSAM2 = 2;  m_TWSAM2 = 4;  // TWI Address Mask Bits
  TWSAM3 = 3;  m_TWSAM3 = 8;  // TWI Address Mask Bits
  TWSAM4 = 4;  m_TWSAM4 = 16;  // TWI Address Mask Bits
  TWSAM5 = 5;  m_TWSAM5 = 32;  // TWI Address Mask Bits
  TWSAM6 = 6;  m_TWSAM6 = 64;  // TWI Address Mask Bits
  TWSAM7 = 7;  m_TWSAM7 = 128;  // TWI Address Mask Bits

var
  TWSA: byte absolute $BC;  // TWI Slave Address Register

type
  TTWSDset = bitpacked set of (e_TWSD0, e_TWSD1, e_TWSD2, e_TWSD3, e_TWSD4, e_TWSD5, e_TWSD6, e_TWSD7);
  TTWSDrec = bitpacked record
    TWSD0,
    TWSD1,
    TWSD2,
    TWSD3,
    TWSD4,
    TWSD5,
    TWSD6,
    TWSD7: TBitField;
  end;
var
  TWSD: byte absolute $BD;  // TWI Slave Data Register
  TWSDset: TTWSDset absolute $BD;
  TWSDrec: TTWSDrec absolute $BD;
const
  TWSD0 = 0;  m_TWSD0 = 1;  // TWI slave data bit
  TWSD1 = 1;  m_TWSD1 = 2;  // TWI slave data bit
  TWSD2 = 2;  m_TWSD2 = 4;  // TWI slave data bit
  TWSD3 = 3;  m_TWSD3 = 8;  // TWI slave data bit
  TWSD4 = 4;  m_TWSD4 = 16;  // TWI slave data bit
  TWSD5 = 5;  m_TWSD5 = 32;  // TWI slave data bit
  TWSD6 = 6;  m_TWSD6 = 64;  // TWI slave data bit
  TWSD7 = 7;  m_TWSD7 = 128;  // TWI slave data bit

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
  UCSRA: byte absolute $C0;  // USART Control and Status Register A
  UCSRAset: TUCSRAset absolute $C0;
  UCSRArec: TUCSRArec absolute $C0;
const
  MPCM = 0;  m_MPCM = 1;  // Multi-processor Communication Mode
  U2X = 1;  m_U2X = 2;  // Double the USART transmission speed
  UPE = 2;  m_UPE = 4;  // Parity Error
  DOR = 3;  m_DOR = 8;  // Data overRun
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
  UCSRB: byte absolute $C1;  // USART Control and Status Register B
  UCSRBset: TUCSRBset absolute $C1;
  UCSRBrec: TUCSRBrec absolute $C1;
const
  TXB8 = 0;  m_TXB8 = 1;  // Transmit Data Bit 8
  RXB8 = 1;  m_RXB8 = 2;  // Receive Data Bit 8
  UCSZ2 = 2;  m_UCSZ2 = 4;  // Character Size
  TXEN = 3;  m_TXEN = 8;  // Transmitter Enable
  RXEN = 4;  m_RXEN = 16;  // Receiver Enable
  UDRIE = 5;  m_UDRIE = 32;  // USART Data register Empty Interrupt Enable
  TXCIE = 6;  m_TXCIE = 64;  // TX Complete Interrupt Enable
  RXCIE = 7;  m_RXCIE = 128;  // RX Complete Interrupt Enable

type
  TUCSRCset = bitpacked set of (e_UCPOL, e_UCSZ0, e_UCSZ1, e_USBS, e_UPM0, e_UPM1, e_UMSEL0, e_UMSEL1);
  TUCSRCrec = bitpacked record
    UCPOL,
    UCSZ0,
    UCSZ1,
    USBS,
    UPM0,
    UPM1,
    UMSEL0,
    UMSEL1: TBitField;
  end;
var
  UCSRC: byte absolute $C2;  // USART Control and Status Register C
  UCSRCset: TUCSRCset absolute $C2;
  UCSRCrec: TUCSRCrec absolute $C2;
const
  UCPOL = 0;  m_UCPOL = 1;  // Clock Polarity
  UCSZ0 = 1;  m_UCSZ0 = 2;  // Character Size
  UCSZ1 = 2;  m_UCSZ1 = 4;  // Character Size
  USBS = 3;  m_USBS = 8;  // Stop Bit Select
  UPM0 = 4;  m_UPM0 = 16;  // Parity Mode Bits
  UPM1 = 5;  m_UPM1 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select
  UMSEL1 = 7;  m_UMSEL1 = 128;  // USART Mode Select

type
  TUCSRDset = bitpacked set of (e_SFDE=5, e_RXS, e_RXSIE);
  TUCSRDrec = bitpacked record
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
  UCSRD: byte absolute $C3;  // USART Control and Status Register D
  UCSRDset: TUCSRDset absolute $C3;
  UCSRDrec: TUCSRDrec absolute $C3;
const
  SFDE = 5;  m_SFDE = 32;  // USART RX Start Frame Detection Enable
  RXS = 6;  m_RXS = 64;  // USART RX Start Flag
  RXSIE = 7;  m_RXSIE = 128;  // USART RX Start Interrupt Enable

var
  UBRR: word absolute $C4;  // USART Baud Rate Register  Bytes
  UBRRL: byte absolute $C4;
  UBRRH: byte absolute $C5;
  UDR: byte absolute $C6;  // USART I/O Data Register

type
  TDIDR2set = bitpacked set of (e_ADC16D, e_ADC17D, e_ADC18D, e_ADC19D, e_ADC20D, e_ADC21D, e_ADC22D, e_ADC23D);
  TDIDR2rec = bitpacked record
    ADC16D,
    ADC17D,
    ADC18D,
    ADC19D,
    ADC20D,
    ADC21D,
    ADC22D,
    ADC23D: TBitField;
  end;
var
  DIDR2: byte absolute $DE;  // Digital Input Disable Register 2
  DIDR2set: TDIDR2set absolute $DE;
  DIDR2rec: TDIDR2rec absolute $DE;
const
  ADC16D = 0;  m_ADC16D = 1;  // ADC16 Digital input Disable
  ADC17D = 1;  m_ADC17D = 2;  // ADC17 Digital input Disable
  ADC18D = 2;  m_ADC18D = 4;  // ADC18 Digital input Disable
  ADC19D = 3;  m_ADC19D = 8;  // ADC19 Digital input Disable
  ADC20D = 4;  m_ADC20D = 16;  // ADC20 Digital input Disable
  ADC21D = 5;  m_ADC21D = 32;  // ADC21 Digital input Disable
  ADC22D = 6;  m_ADC22D = 64;  // ADC22 Digital input Disable
  ADC23D = 7;  m_ADC23D = 128;  // ADC23 Digital input Disable

type
  TDIDR3set = bitpacked set of (e_ADC24D, e_ADC25D, e_ADC26D, e_ADC27D);
  TDIDR3rec = bitpacked record
    ADC24D,
    ADC25D,
    ADC26D,
    ADC27D,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR3: byte absolute $DF;  // Digital Input Disable Register 2
  DIDR3set: TDIDR3set absolute $DF;
  DIDR3rec: TDIDR3rec absolute $DF;
const
  ADC24D = 0;  m_ADC24D = 1;  // ADC24 Digital input Disable
  ADC25D = 1;  m_ADC25D = 2;  // ADC25 Digital input Disable
  ADC26D = 2;  m_ADC26D = 4;  // ADC26 Digital input Disable
  ADC27D = 3;  m_ADC27D = 8;  // ADC27 Digital input Disable

type
  TTOCPMCOEset = bitpacked set of (e_TOCC0OE, e_TOCC1OE, e_TOCC2OE, e_TOCC3OE, e_TOCC4OE, e_TOCC5OE, e_TOCC6OE, e_TOCC7OE);
  TTOCPMCOErec = bitpacked record
    TOCC0OE,
    TOCC1OE,
    TOCC2OE,
    TOCC3OE,
    TOCC4OE,
    TOCC5OE,
    TOCC6OE,
    TOCC7OE: TBitField;
  end;
var
  TOCPMCOE: byte absolute $E2;  // Timer Output Compare Pin Mux Channel Output Enable
  TOCPMCOEset: TTOCPMCOEset absolute $E2;
  TOCPMCOErec: TTOCPMCOErec absolute $E2;
const
  TOCC0OE = 0;  m_TOCC0OE = 1;  // Timer Output Compare Channel 0 Output Enable
  TOCC1OE = 1;  m_TOCC1OE = 2;  // Timer Output Compare Channel 1 Output Enable
  TOCC2OE = 2;  m_TOCC2OE = 4;  // Timer Output Compare Channel 2 Output Enable
  TOCC3OE = 3;  m_TOCC3OE = 8;  // Timer Output Compare Channel 3 Output Enable
  TOCC4OE = 4;  m_TOCC4OE = 16;  // Timer Output Compare Channel 4 Output Enable
  TOCC5OE = 5;  m_TOCC5OE = 32;  // Timer Output Compare Channel 5 Output Enable
  TOCC6OE = 6;  m_TOCC6OE = 64;  // Timer Output Compare Channel 6 Output Enable
  TOCC7OE = 7;  m_TOCC7OE = 128;  // Timer Output Compare Channel 7 Output Enable

type
  TTOCPMSA0set = bitpacked set of (e_TOCC0S0, e_TOCC0S1, e_TOCC1S0, e_TOCC1S1, e_TOCC2S0, e_TOCC2S1, e_TOCC3S0, e_TOCC3S1);
  TTOCPMSA0rec = bitpacked record
    TOCC0S0,
    TOCC0S1,
    TOCC1S0,
    TOCC1S1,
    TOCC2S0,
    TOCC2S1,
    TOCC3S0,
    TOCC3S1: TBitField;
  end;
var
  TOCPMSA0: byte absolute $E8;  // Timer Output Compare Pin Mux Selection 0
  TOCPMSA0set: TTOCPMSA0set absolute $E8;
  TOCPMSA0rec: TTOCPMSA0rec absolute $E8;
const
  TOCC0S0 = 0;  m_TOCC0S0 = 1;  // Timer Output Compare Channel 0 Selection Bits
  TOCC0S1 = 1;  m_TOCC0S1 = 2;  // Timer Output Compare Channel 0 Selection Bits
  TOCC1S0 = 2;  m_TOCC1S0 = 4;  // Timer Output Compare Channel 1 Selection Bits
  TOCC1S1 = 3;  m_TOCC1S1 = 8;  // Timer Output Compare Channel 1 Selection Bits
  TOCC2S0 = 4;  m_TOCC2S0 = 16;  // Timer Output Compare Channel 2 Selection Bits
  TOCC2S1 = 5;  m_TOCC2S1 = 32;  // Timer Output Compare Channel 2 Selection Bits
  TOCC3S0 = 6;  m_TOCC3S0 = 64;  // Timer Output Compare Channel 3 Selection Bits
  TOCC3S1 = 7;  m_TOCC3S1 = 128;  // Timer Output Compare Channel 3 Selection Bits

type
  TTOCPMSA1set = bitpacked set of (e_TOCC4S0, e_TOCC4S1, e_TOCC5S0, e_TOCC5S1, e_TOCC6S0, e_TOCC6S1, e_TOCC7S0, e_TOCC7S1);
  TTOCPMSA1rec = bitpacked record
    TOCC4S0,
    TOCC4S1,
    TOCC5S0,
    TOCC5S1,
    TOCC6S0,
    TOCC6S1,
    TOCC7S0,
    TOCC7S1: TBitField;
  end;
var
  TOCPMSA1: byte absolute $E9;  // Timer Output Compare Pin Mux Selection 1
  TOCPMSA1set: TTOCPMSA1set absolute $E9;
  TOCPMSA1rec: TTOCPMSA1rec absolute $E9;
const
  TOCC4S0 = 0;  m_TOCC4S0 = 1;  // Timer Output Compare Channel 4 Selection Bits
  TOCC4S1 = 1;  m_TOCC4S1 = 2;  // Timer Output Compare Channel 4 Selection Bits
  TOCC5S0 = 2;  m_TOCC5S0 = 4;  // Timer Output Compare Channel 5 Selection Bits
  TOCC5S1 = 3;  m_TOCC5S1 = 8;  // Timer Output Compare Channel 5 Selection Bits
  TOCC6S0 = 4;  m_TOCC6S0 = 16;  // Timer Output Compare Channel 6 Selection Bits
  TOCC6S1 = 5;  m_TOCC6S1 = 32;  // Timer Output Compare Channel 6 Selection Bits
  TOCC7S0 = 6;  m_TOCC7S0 = 64;  // Timer Output Compare Channel 7 Selection Bits
  TOCC7S1 = 7;  m_TOCC7S1 = 128;  // Timer Output Compare Channel 7 Selection Bits

var
  OSCTCAL0A: byte absolute $F0;  // Oscillator Temperature Calibration Register A
  OSCTCAL0B: byte absolute $F1;  // Oscillator Temperature Calibration Register B
  // typedefs = 54

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 5 Pin Change Interrupt Request 2
procedure PCINT3_ISR; external name 'PCINT3_ISR'; // Interrupt 6 Pin Change Interrupt Request 3
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 7 Watchdog Time-out Interrupt
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 8 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 9 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 10 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 11 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 12 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 13 Timer/Counter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 14 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 15 SPI Serial Transfer Complete
procedure USART_START_ISR; external name 'USART_START_ISR'; // Interrupt 16 USART, Start
procedure USART_RX_ISR; external name 'USART_RX_ISR'; // Interrupt 17 USART Rx Complete
procedure USART_UDRE_ISR; external name 'USART_UDRE_ISR'; // Interrupt 18 USART, Data Register Empty
procedure USART_TX_ISR; external name 'USART_TX_ISR'; // Interrupt 19 USART Tx Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 20 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 21 EEPROM Ready
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 22 Analog Comparator
procedure TWI_SLAVE_ISR; external name 'TWI_SLAVE_ISR'; // Interrupt 23 Two-wire Serial Interface
procedure SPM_Ready_ISR; external name 'SPM_Ready_ISR'; // Interrupt 24 Store Program Memory Read
procedure QTRIP_ISR; external name 'QTRIP_ISR'; // Interrupt 25 Touch Sensing

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp INT1_ISR
  rjmp PCINT0_ISR
  rjmp PCINT1_ISR
  rjmp PCINT2_ISR
  rjmp PCINT3_ISR
  rjmp WDT_ISR
  rjmp TIMER1_CAPT_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp TIMER0_OVF_ISR
  rjmp SPI_STC_ISR
  rjmp USART_START_ISR
  rjmp USART_RX_ISR
  rjmp USART_UDRE_ISR
  rjmp USART_TX_ISR
  rjmp ADC_ISR
  rjmp EE_READY_ISR
  rjmp ANALOG_COMP_ISR
  rjmp TWI_SLAVE_ISR
  rjmp SPM_Ready_ISR
  rjmp QTRIP_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
  .weak PCINT3_ISR
  .weak WDT_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART_START_ISR
  .weak USART_RX_ISR
  .weak USART_UDRE_ISR
  .weak USART_TX_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak ANALOG_COMP_ISR
  .weak TWI_SLAVE_ISR
  .weak SPM_Ready_ISR
  .weak QTRIP_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set PCINT3_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART_START_ISR, Default_IRQ_handler
  .set USART_RX_ISR, Default_IRQ_handler
  .set USART_UDRE_ISR, Default_IRQ_handler
  .set USART_TX_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set TWI_SLAVE_ISR, Default_IRQ_handler
  .set SPM_Ready_ISR, Default_IRQ_handler
  .set QTRIP_ISR, Default_IRQ_handler
end;

end.
