unit ATmega8HVA;

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
  PINB: byte absolute $23;  // Input Pins, Port B
  DDRB: byte absolute $24;  // Data Direction Register, Port B

type
  TPORTBset = bitpacked set of (e_PB0, e_PB1, e_PB2, e_PB3);
  TPORTBrec = bitpacked record
    PB0,
    PB1,
    PB2,
    PB3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTB: byte absolute $25;  // Data Register, Port B
  PORTBset: TPORTBset absolute $25;
  PORTBrec: TPORTBrec absolute $25;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;

var
  PINC: byte absolute $26;  // Port C Input Pins

type
  TPORTCset = bitpacked set of (e_PC0);
  TPORTCrec = bitpacked record
    PC0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTC: byte absolute $28;  // Port C Data Register
  PORTCset: TPORTCset absolute $28;
  PORTCrec: TPORTCrec absolute $28;
const
  PC0 = 0;  m_PC0 = 1;

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
  TOV0 = 0;  m_TOV0 = 1;  // Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Output Compare Flag
  OCF0B = 2;  m_OCF0B = 4;  // Output Compare Flag
  ICF0 = 3;  m_ICF0 = 8;  // Timer/Counter Interrupt Flag Register

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
  TEIFRset = bitpacked set of (e_INTF0, e_INTF1, e_INTF2);
  TEIFRrec = bitpacked record
    INTF0,
    INTF1,
    INTF2,
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
  INTF2 = 2;  m_INTF2 = 4;  // External Interrupt Flags

type
  TEIMSKset = bitpacked set of (e_INT0, e_INT1, e_INT2);
  TEIMSKrec = bitpacked record
    INT0,
    INT1,
    INT2,
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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 2 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 2 Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request 2 Enable

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
  TCCR0A: byte absolute $44;  // Timer/Counter0 Control Register
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  WGM00 = 0;  m_WGM00 = 1;  // Clock Select0 bit 0
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
  TCCR0B: byte absolute $45;  // Timer/Counter0 Control Register
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
  OCR0A: byte absolute $48;  // Output compare Register A
  OCR0B: byte absolute $49;  // Output compare Register B
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
  TMCUCRset = bitpacked set of (e_PUD=4, e_CKOE);
  TMCUCRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
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
  PUD = 4;  m_PUD = 16;  // Pull-up disable
  CKOE = 5;  m_CKOE = 32;  // Clock Output Enable

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RFLB, e_CTPB, e_SIGRD);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RFLB,
    CTPB,
    SIGRD,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  RFLB = 3;  m_RFLB = 8;  // Read Fuse and Lock Bits
  CTPB = 4;  m_CTPB = 16;  // Clear Temporary Page Buffer
  SIGRD = 5;  m_SIGRD = 32;  // Signature Row Read

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
  TPRR0set = bitpacked set of (e_PRVADC, e_PRTIM0, e_PRTIM1, e_PRSPI, e_PRVRM=5);
  TPRR0rec = bitpacked record
    PRVADC,
    PRTIM0,
    PRTIM1,
    PRSPI,
    ReservedBit4,
    PRVRM,
    ReservedBit6,
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

var
  FOSCCAL: byte absolute $66;  // Fast Oscillator Calibration Value

type
  TEICRAset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11, e_ISC20, e_ISC21);
  TEICRArec = bitpacked record
    ISC00,
    ISC01,
    ISC10,
    ISC11,
    ISC20,
    ISC21,
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
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt Sense Control 2 Bits
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt Sense Control 2 Bits

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
  TOIE0 = 0;  m_TOIE0 = 1;  // Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Output Compare Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Output Compare Interrupt Enable
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
  VADC: word absolute $78;  // VADC Data Register  Bytes
  VADCL: byte absolute $78;
  VADCH: byte absolute $79;

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
  TCNT1: word absolute $84;  // Timer Counter 1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
  OCR1A: byte absolute $88;  // Output Compare Register 1A
  OCR1B: byte absolute $89;  // Output Compare Register B

type
  TROCRset = bitpacked set of (e_ROCWIE, e_ROCWIF, e_ROCS=7);
  TROCRrec = bitpacked record
    ROCWIE,
    ROCWIF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
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
  ROCS = 7;  m_ROCS = 128;  // ROC Status

type
  TBGCCRset = bitpacked set of (e_BGCC0, e_BGCC1, e_BGCC2, e_BGCC3, e_BGCC4, e_BGCC5, e_BGD=7);
  TBGCCRrec = bitpacked record
    BGCC0,
    BGCC1,
    BGCC2,
    BGCC3,
    BGCC4,
    BGCC5,
    ReservedBit6,
    BGD: TBitField;
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
  BGD = 7;  m_BGD = 128;  // Setting the BGD bit to one will disable the bandgap voltage reference. This bit must be cleared before enabling CC-ADC or V-ADC, and must remain unset while either ADC is enabled.

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
  BGCR0 = 0;  m_BGCR0 = 1;  // Bandgap calibration bits
  BGCR1 = 1;  m_BGCR1 = 2;  // Bandgap calibration bits
  BGCR2 = 2;  m_BGCR2 = 4;  // Bandgap calibration bits
  BGCR3 = 3;  m_BGCR3 = 8;  // Bandgap calibration bits
  BGCR4 = 4;  m_BGCR4 = 16;  // Bandgap calibration bits
  BGCR5 = 5;  m_BGCR5 = 32;  // Bandgap calibration bits
  BGCR6 = 6;  m_BGCR6 = 64;  // Bandgap calibration bits
  BGCR7 = 7;  m_BGCR7 = 128;  // Bandgap calibration bits

var
  CADAC0: byte absolute $E0;  // ADC Accumulate Current
  CADAC1: byte absolute $E1;  // ADC Accumulate Current
  CADAC2: byte absolute $E2;  // ADC Accumulate Current
  CADAC3: byte absolute $E3;  // ADC Accumulate Current

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
  CADCSRA: byte absolute $E4;  // CC-ADC Control and Status Register A
  CADCSRAset: TCADCSRAset absolute $E4;
  CADCSRArec: TCADCSRArec absolute $E4;
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
  CADCSRB: byte absolute $E5;  // CC-ADC Control and Status Register B
  CADCSRBset: TCADCSRBset absolute $E5;
  CADCSRBrec: TCADCSRBrec absolute $E5;
const
  CADICIF = 0;  m_CADICIF = 1;  // CC-ADC Instantaneous Current Interrupt Flag
  CADRCIF = 1;  m_CADRCIF = 2;  // CC-ADC Accumulate Current Interrupt Flag
  CADACIF = 2;  m_CADACIF = 4;  // CC-ADC Accumulate Current Interrupt Flag
  CADICIE = 4;  m_CADICIE = 16;  // CAD Instantenous Current Interrupt Enable
  CADRCIE = 5;  m_CADRCIE = 32;  // Regular Current Interrupt Enable
  CADACIE = 6;  m_CADACIE = 64;

var
  CADRC: byte absolute $E6;  // CC-ADC Regular Current
  CADIC: word absolute $E8;  // CC-ADC Instantaneous Current
  CADICL: byte absolute $E8;
  CADICH: byte absolute $E9;

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

var
  BPSCD: byte absolute $F5;  // Battery Protection Short-Circuit Detection Level Register
  BPDOCD: byte absolute $F6;  // Battery Protection Discharge-Over-current Detection Level Register
  BPCOCD: byte absolute $F7;  // Battery Protection Charge-Over-current Detection Level Register
  BPDHCD: byte absolute $F8;  // Battery Protection Discharge-High-current Detection Level Register
  BPCHCD: byte absolute $F9;  // Battery Protection Charge-High-current Detection Level Register
  BPSCTR: byte absolute $FA;  // Battery Protection Short-current Timing Register
  BPOCTR: byte absolute $FB;  // Battery Protection Over-current Timing Register
  BPHCTR: byte absolute $FC;  // Battery Protection Short-current Timing Register

type
  TBPCRset = bitpacked set of (e_CHCD, e_DHCD, e_COCD, e_DOCD, e_SCD);
  TBPCRrec = bitpacked record
    CHCD,
    DHCD,
    COCD,
    DOCD,
    SCD,
    ReservedBit5,
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
  // typedefs = 40

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure BPINT_ISR; external name 'BPINT_ISR'; // Interrupt 1 Battery Protection Interrupt
procedure VREGMON_ISR; external name 'VREGMON_ISR'; // Interrupt 2 Voltage regulator monitor interrupt
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 3 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 4 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 5 External Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 6 Watchdog Timeout Interrupt
procedure TIMER1_IC_ISR; external name 'TIMER1_IC_ISR'; // Interrupt 7 Timer 1 Input capture
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 8 Timer 1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 9 Timer 1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 10 Timer 1 overflow
procedure TIMER0_IC_ISR; external name 'TIMER0_IC_ISR'; // Interrupt 11 Timer 0 Input Capture
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 12 Timer 0 Comapre Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 13 Timer 0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 14 Timer 0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 15 SPI Serial transfer complete
procedure VADC_ISR; external name 'VADC_ISR'; // Interrupt 16 Voltage ADC Conversion Complete
procedure CCADC_CONV_ISR; external name 'CCADC_CONV_ISR'; // Interrupt 17 Coulomb Counter ADC Conversion Complete
procedure CCADC_REG_CUR_ISR; external name 'CCADC_REG_CUR_ISR'; // Interrupt 18 Coloumb Counter ADC Regular Current
procedure CCADC_ACC_ISR; external name 'CCADC_ACC_ISR'; // Interrupt 19 Coloumb Counter ADC Accumulator
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 20 EEPROM Ready

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp BPINT_ISR
  rjmp VREGMON_ISR
  rjmp INT0_ISR
  rjmp INT1_ISR
  rjmp INT2_ISR
  rjmp WDT_ISR
  rjmp TIMER1_IC_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_IC_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp TIMER0_OVF_ISR
  rjmp SPI_STC_ISR
  rjmp VADC_ISR
  rjmp CCADC_CONV_ISR
  rjmp CCADC_REG_CUR_ISR
  rjmp CCADC_ACC_ISR
  rjmp EE_READY_ISR

  {$i start.inc}

  .weak BPINT_ISR
  .weak VREGMON_ISR
  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak WDT_ISR
  .weak TIMER1_IC_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_IC_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak VADC_ISR
  .weak CCADC_CONV_ISR
  .weak CCADC_REG_CUR_ISR
  .weak CCADC_ACC_ISR
  .weak EE_READY_ISR

  .set BPINT_ISR, Default_IRQ_handler
  .set VREGMON_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER1_IC_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_IC_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set VADC_ISR, Default_IRQ_handler
  .set CCADC_CONV_ISR, Default_IRQ_handler
  .set CCADC_REG_CUR_ISR, Default_IRQ_handler
  .set CCADC_ACC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
end;

end.
