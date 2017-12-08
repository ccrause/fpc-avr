unit ATmega406;

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

var
  PIND: byte absolute $29;  // Input Pins, Port D
  DDRD: byte absolute $2A;  // Data Direction Register, Port D

type
  TPORTDset = bitpacked set of (e_PD0, e_PD1);
  TPORTDrec = bitpacked record
    PD0,
    PD1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTD: byte absolute $2B;  // Data Register, Port D
  PORTDset: TPORTDset absolute $2B;
  PORTDrec: TPORTDrec absolute $2B;
const
  PD0 = 0;  m_PD0 = 1;
  PD1 = 1;  m_PD1 = 2;

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
  TIFR0: byte absolute $35;  // Timer/Counter Interrupt Flag register
  TIFR0set: TTIFR0set absolute $35;
  TIFR0rec: TTIFR0rec absolute $35;
const
  TOV0 = 0;  m_TOV0 = 1;  // Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Output Compare Flag
  OCF0B = 2;  m_OCF0B = 4;  // Output Compare Flag

type
  TTIFR1set = bitpacked set of (e_TOV1, e_OCF1A);
  TTIFR1rec = bitpacked record
    TOV1,
    OCF1A,
    ReservedBit2,
    ReservedBit3,
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
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 1 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 1 Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request 1 Enable
  INT3 = 3;  m_INT3 = 8;  // External Interrupt Request 1 Enable

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
  EEPE = 1;  m_EEPE = 2;  // EEPROM Programming Enable
  EEMPE = 2;  m_EEMPE = 4;  // EEPROM Master Programming Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register  Bytes
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
  TCCR0A: byte absolute $44;  // Timer/Counter0 Control Register
  TCCR0Aset: TTCCR0Aset absolute $44;
  TCCR0Arec: TTCCR0Arec absolute $44;
const
  WGM00 = 0;  m_WGM00 = 1;  // Clock Select0 bits
  WGM01 = 1;  m_WGM01 = 2;  // Clock Select0 bits
  COM0B0 = 4;  m_COM0B0 = 16;
  COM0B1 = 5;  m_COM0B1 = 32;
  COM0A0 = 6;  m_COM0A0 = 64;  // Force Output Compare
  COM0A1 = 7;  m_COM0A1 = 128;  // Force Output Compare

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
  TCCR0B: byte absolute $45;  // Timer/Counter0 Control Register
  TCCR0Bset: TTCCR0Bset absolute $45;
  TCCR0Brec: TTCCR0Brec absolute $45;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select0 bits
  CS01 = 1;  m_CS01 = 2;  // Clock Select0 bits
  CS02 = 2;  m_CS02 = 4;  // Clock Select0 bits
  WGM02 = 3;  m_WGM02 = 8;
  FOC0B = 6;  m_FOC0B = 64;  // Waveform Generation Mode
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare

var
  TCNT0: byte absolute $46;  // Timer Counter 0

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
  OCR0A: byte absolute $47;  // Output compare Register A
  OCR0Aset: TOCR0Aset absolute $47;
  OCR0Arec: TOCR0Arec absolute $47;
const
  OCR0A0 = 0;  m_OCR0A0 = 1;
  OCR0A1 = 1;  m_OCR0A1 = 2;
  OCR0A2 = 2;  m_OCR0A2 = 4;
  OCR0A3 = 3;  m_OCR0A3 = 8;
  OCR0A4 = 4;  m_OCR0A4 = 16;
  OCR0A5 = 5;  m_OCR0A5 = 32;
  OCR0A6 = 6;  m_OCR0A6 = 64;
  OCR0A7 = 7;  m_OCR0A7 = 128;

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
  OCR0B: byte absolute $48;  // Output compare Register B
  OCR0Bset: TOCR0Bset absolute $48;
  OCR0Brec: TOCR0Brec absolute $48;
const
  OCR0B0 = 0;  m_OCR0B0 = 1;
  OCR0B1 = 1;  m_OCR0B1 = 2;
  OCR0B2 = 2;  m_OCR0B2 = 4;
  OCR0B3 = 3;  m_OCR0B3 = 8;
  OCR0B4 = 4;  m_OCR0B4 = 16;
  OCR0B5 = 5;  m_OCR0B5 = 32;
  OCR0B6 = 6;  m_OCR0B6 = 64;
  OCR0B7 = 7;  m_OCR0B7 = 128;

var
  GPIOR1: byte absolute $4A;  // General Purpose IO Register 1
  GPIOR2: byte absolute $4B;  // General Purpose IO Register 2

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
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BODRF, e_WDRF, e_JTRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BODRF,
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
  BODRF = 2;  m_BODRF = 4;  // Brown-out Reset Flag
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
  JTD = 7;  m_JTD = 128;  // JTAG Disable

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
  TWUTCSRset = bitpacked set of (e_WUTP0, e_WUTP1, e_WUTP2, e_WUTE, e_WUTR, e_WUTCF, e_WUTIE, e_WUTIF);
  TWUTCSRrec = bitpacked record
    WUTP0,
    WUTP1,
    WUTP2,
    WUTE,
    WUTR,
    WUTCF,
    WUTIE,
    WUTIF: TBitField;
  end;
var
  WUTCSR: byte absolute $62;  // Wake-up Timer Control Register
  WUTCSRset: TWUTCSRset absolute $62;
  WUTCSRrec: TWUTCSRrec absolute $62;
const
  WUTP0 = 0;  m_WUTP0 = 1;  // Wake-up Timer Prescaler Bits
  WUTP1 = 1;  m_WUTP1 = 2;  // Wake-up Timer Prescaler Bits
  WUTP2 = 2;  m_WUTP2 = 4;  // Wake-up Timer Prescaler Bits
  WUTE = 3;  m_WUTE = 8;  // Wake-up Timer Enable
  WUTR = 4;  m_WUTR = 16;  // Wake-up Timer Reset
  WUTCF = 5;  m_WUTCF = 32;  // Wake-up timer Calibration Flag
  WUTIE = 6;  m_WUTIE = 64;  // Wake-up Timer Interrupt Enable
  WUTIF = 7;  m_WUTIF = 128;  // Wake-up Timer Interrupt Flag

type
  TPRR0set = bitpacked set of (e_PRVADC, e_PRTIM0, e_PRTIM1, e_PRTWI);
  TPRR0rec = bitpacked record
    PRVADC,
    PRTIM0,
    PRTIM1,
    PRTWI,
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
  PRVADC = 0;  m_PRVADC = 1;  // Power Reduction V-ADC
  PRTIM0 = 1;  m_PRTIM0 = 2;  // Power Reduction Timer/Counter0
  PRTIM1 = 2;  m_PRTIM1 = 4;  // Power Reduction Timer/Counter1
  PRTWI = 3;  m_PRTWI = 8;  // Power Reduction TWI

var
  FOSCCAL: byte absolute $66;  // Fast Oscillator Calibration Value

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
  ISC30 = 6;  m_ISC30 = 64;  // External Interrupt Sense Control 3 Bits
  ISC31 = 7;  m_ISC31 = 128;  // External Interrupt Sense Control 3 Bits

var
  PCMSK0: byte absolute $6B;  // Pin Change Enable Mask Register 0
  PCMSK1: byte absolute $6C;  // Pin Change Enable Mask Register 1

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
  TIMSK0: byte absolute $6E;  // Timer/Counter Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $6E;
  TIMSK0rec: TTIMSK0rec absolute $6E;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Output Compare Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Output Compare Interrupt Enable

type
  TTIMSK1set = bitpacked set of (e_TOIE1, e_OCIE1A);
  TTIMSK1rec = bitpacked record
    TOIE1,
    OCIE1A,
    ReservedBit2,
    ReservedBit3,
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
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output Compare Interrupt Enable

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

var
  DIDR0: byte absolute $7E;  // Digital Input Disable Register

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_CTC1);
  TTCCR1Brec = bitpacked record
    CS10,
    CS11,
    CS12,
    CTC1,
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
  CS10 = 0;  m_CS10 = 1;  // Clock Select1 bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select1 bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select1 bits
  CTC1 = 3;  m_CTC1 = 8;  // Clear Timer/Counter on Compare Match

var
  TCNT1: word absolute $84;  // Timer Counter 1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
  OCR1AL: byte absolute $88;  // Output Compare Register 1A Low byte
  OCR1AH: byte absolute $89;  // Output Compare Register 1A High byte
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
  TTWBCSRset = bitpacked set of (e_TWBCIP, e_TWBDT0, e_TWBDT1, e_TWBCIE=6, e_TWBCIF);
  TTWBCSRrec = bitpacked record
    TWBCIP,
    TWBDT0,
    TWBDT1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    TWBCIE,
    TWBCIF: TBitField;
  end;
var
  TWBCSR: byte absolute $BE;  // TWI Bus Control and Status Register
  TWBCSRset: TTWBCSRset absolute $BE;
  TWBCSRrec: TTWBCSRrec absolute $BE;
const
  TWBCIP = 0;  m_TWBCIP = 1;  // TWI Bus Connect/Disconnect Interrupt Polarity
  TWBDT0 = 1;  m_TWBDT0 = 2;  // TWI Bus Disconnect Time-out Period
  TWBDT1 = 2;  m_TWBDT1 = 4;  // TWI Bus Disconnect Time-out Period
  TWBCIE = 6;  m_TWBCIE = 64;  // TWI Bus Connect/Disconnect Interrupt Enable
  TWBCIF = 7;  m_TWBCIF = 128;  // TWI Bus Connect/Disconnect Interrupt Flag

type
  TCCSRset = bitpacked set of (e_ACS, e_XOE);
  TCCSRrec = bitpacked record
    ACS,
    XOE,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CCSR: byte absolute $C0;  // Clock Control and Status Register
  CCSRset: TCCSRset absolute $C0;
  CCSRrec: TCCSRrec absolute $C0;
const
  ACS = 0;  m_ACS = 1;  // Asynchronous Clock Select
  XOE = 1;  m_XOE = 2;  // 32 kHz Crystal Oscillator Enable

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

var
  BGCRR: byte absolute $D1;  // Bandgap Calibration of Resistor Ladder
  CADAC0: byte absolute $E0;  // ADC Accumulate Current
  CADAC1: byte absolute $E1;  // ADC Accumulate Current
  CADAC2: byte absolute $E2;  // ADC Accumulate Current
  CADAC3: byte absolute $E3;  // ADC Accumulate Current

type
  TCADCSRAset = bitpacked set of (e_CADSE, e_CADSI0, e_CADSI1, e_CADAS0, e_CADAS1, e_CADUB, e_CADEN=7);
  TCADCSRArec = bitpacked record
    CADSE,
    CADSI0,
    CADSI1,
    CADAS0,
    CADAS1,
    CADUB,
    ReservedBit6,
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
  CADRCC: byte absolute $E6;  // CC-ADC Regular Charge Current
  CADRDC: byte absolute $E7;  // CC-ADC Regular Discharge Current
  CADIC: word absolute $E8;  // CC-ADC Instantaneous Current
  CADICL: byte absolute $E8;
  CADICH: byte absolute $E9;

type
  TFCSRset = bitpacked set of (e_PFD, e_CFE, e_DFE, e_CPS, e_PWMOPC, e_PWMOC);
  TFCSRrec = bitpacked record
    PFD,
    CFE,
    DFE,
    CPS,
    PWMOPC,
    PWMOC,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FCSR: byte absolute $F0;
  FCSRset: TFCSRset absolute $F0;
  FCSRrec: TFCSRrec absolute $F0;
const
  PFD = 0;  m_PFD = 1;  // Precharge FET disable
  CFE = 1;  m_CFE = 2;  // Charge FET Enable
  DFE = 2;  m_DFE = 4;  // Discharge FET Enable
  CPS = 3;  m_CPS = 8;  // Current Protection Status
  PWMOPC = 4;  m_PWMOPC = 16;  // Pulse Width Modulation Modulation of OPC output
  PWMOC = 5;  m_PWMOC = 32;  // Pulse Width Modulation of OC output

type
  TCBCRset = bitpacked set of (e_CBE1, e_CBE2, e_CBE3, e_CBE4);
  TCBCRrec = bitpacked record
    CBE1,
    CBE2,
    CBE3,
    CBE4,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CBCR: byte absolute $F1;  // Cell Balancing Control Register
  CBCRset: TCBCRset absolute $F1;
  CBCRrec: TCBCRrec absolute $F1;
const
  CBE1 = 0;  m_CBE1 = 1;  // Cell Balancing Enables
  CBE2 = 1;  m_CBE2 = 2;  // Cell Balancing Enables
  CBE3 = 2;  m_CBE3 = 4;  // Cell Balancing Enables
  CBE4 = 3;  m_CBE4 = 8;  // Cell Balancing Enables

type
  TBPIRset = bitpacked set of (e_SCIE, e_DOCIE, e_COCIE, e_DUVIE, e_SCIF, e_DOCIF, e_COCIF, e_DUVIF);
  TBPIRrec = bitpacked record
    SCIE,
    DOCIE,
    COCIE,
    DUVIE,
    SCIF,
    DOCIF,
    COCIF,
    DUVIF: TBitField;
  end;
var
  BPIR: byte absolute $F2;  // Battery Protection Interrupt Register
  BPIRset: TBPIRset absolute $F2;
  BPIRrec: TBPIRrec absolute $F2;
const
  SCIE = 0;  m_SCIE = 1;
  DOCIE = 1;  m_DOCIE = 2;
  COCIE = 2;  m_COCIE = 4;
  DUVIE = 3;  m_DUVIE = 8;  // Deep Under-voltage Early Warning Interrupt Enable
  SCIF = 4;  m_SCIF = 16;
  DOCIF = 5;  m_DOCIF = 32;
  COCIF = 6;  m_COCIF = 64;  // Charge Over-current Protection Activated Interrupt Flag
  DUVIF = 7;  m_DUVIF = 128;  // Deep Under-voltage Early Warning Interrupt Flag

type
  TBPDUVset = bitpacked set of (e_DUDL0, e_DUDL1, e_DUDL2, e_DUDL3, e_DUVT0, e_DUVT1);
  TBPDUVrec = bitpacked record
    DUDL0,
    DUDL1,
    DUDL2,
    DUDL3,
    DUVT0,
    DUVT1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPDUV: byte absolute $F3;  // Battery Protection Deep Under Voltage Register
  BPDUVset: TBPDUVset absolute $F3;
  BPDUVrec: TBPDUVrec absolute $F3;
const
  DUDL0 = 0;  m_DUDL0 = 1;
  DUDL1 = 1;  m_DUDL1 = 2;
  DUDL2 = 2;  m_DUDL2 = 4;
  DUDL3 = 3;  m_DUDL3 = 8;
  DUVT0 = 4;  m_DUVT0 = 16;
  DUVT1 = 5;  m_DUVT1 = 32;

type
  TBPSCDset = bitpacked set of (e_SCDL0, e_SCDL1, e_SCDL2, e_SCDL3);
  TBPSCDrec = bitpacked record
    SCDL0,
    SCDL1,
    SCDL2,
    SCDL3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPSCD: byte absolute $F4;  // Battery Protection Short-Circuit Detection Level Register
  BPSCDset: TBPSCDset absolute $F4;
  BPSCDrec: TBPSCDrec absolute $F4;
const
  SCDL0 = 0;  m_SCDL0 = 1;
  SCDL1 = 1;  m_SCDL1 = 2;
  SCDL2 = 2;  m_SCDL2 = 4;
  SCDL3 = 3;  m_SCDL3 = 8;

type
  TBPOCDset = bitpacked set of (e_CCDL0, e_CCDL1, e_CCDL2, e_CCDL3, e_DCDL0, e_DCDL1, e_DCDL2, e_DCDL3);
  TBPOCDrec = bitpacked record
    CCDL0,
    CCDL1,
    CCDL2,
    CCDL3,
    DCDL0,
    DCDL1,
    DCDL2,
    DCDL3: TBitField;
  end;
var
  BPOCD: byte absolute $F5;  // Battery Protection OverCurrent Detection Level Register
  BPOCDset: TBPOCDset absolute $F5;
  BPOCDrec: TBPOCDrec absolute $F5;
const
  CCDL0 = 0;  m_CCDL0 = 1;
  CCDL1 = 1;  m_CCDL1 = 2;
  CCDL2 = 2;  m_CCDL2 = 4;
  CCDL3 = 3;  m_CCDL3 = 8;
  DCDL0 = 4;  m_DCDL0 = 16;
  DCDL1 = 5;  m_DCDL1 = 32;
  DCDL2 = 6;  m_DCDL2 = 64;
  DCDL3 = 7;  m_DCDL3 = 128;

type
  TCBPTRset = bitpacked set of (e_OCPT0, e_OCPT1, e_OCPT2, e_OCPT3, e_SCPT0, e_SCPT1, e_SCPT2, e_SCPT3);
  TCBPTRrec = bitpacked record
    OCPT0,
    OCPT1,
    OCPT2,
    OCPT3,
    SCPT0,
    SCPT1,
    SCPT2,
    SCPT3: TBitField;
  end;
var
  CBPTR: byte absolute $F6;  // Current Battery Protection Timing Register
  CBPTRset: TCBPTRset absolute $F6;
  CBPTRrec: TCBPTRrec absolute $F6;
const
  OCPT0 = 0;  m_OCPT0 = 1;
  OCPT1 = 1;  m_OCPT1 = 2;
  OCPT2 = 2;  m_OCPT2 = 4;
  OCPT3 = 3;  m_OCPT3 = 8;
  SCPT0 = 4;  m_SCPT0 = 16;
  SCPT1 = 5;  m_SCPT1 = 32;
  SCPT2 = 6;  m_SCPT2 = 64;
  SCPT3 = 7;  m_SCPT3 = 128;

type
  TBPCRset = bitpacked set of (e_CCD, e_DCD, e_SCD, e_DUVD);
  TBPCRrec = bitpacked record
    CCD,
    DCD,
    SCD,
    DUVD,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BPCR: byte absolute $F7;  // Battery Protection Control Register
  BPCRset: TBPCRset absolute $F7;
  BPCRrec: TBPCRrec absolute $F7;
const
  CCD = 0;  m_CCD = 1;
  DCD = 1;  m_DCD = 2;
  SCD = 2;  m_SCD = 4;
  DUVD = 3;  m_DUVD = 8;

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
  BPPLR: byte absolute $F8;  // Battery Protection Parameter Lock Register
  BPPLRset: TBPPLRset absolute $F8;
  BPPLRrec: TBPPLRrec absolute $F8;
const
  BPPL = 0;  m_BPPL = 1;  // Battery Protection Parameter Lock
  BPPLE = 1;  m_BPPLE = 2;  // Battery Protection Parameter Lock Enable
  // typedefs = 48

implementation

{$i avrcommon.inc}

procedure BPINT_ISR; external name 'BPINT_ISR'; // Interrupt 1 Battery Protection Interrupt
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 2 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 3 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 4 External Interrupt Request 2
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 5 External Interrupt Request 3
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 6 Pin Change Interrupt 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 7 Pin Change Interrupt 1
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 8 Watchdog Timeout Interrupt
procedure WAKE_UP_ISR; external name 'WAKE_UP_ISR'; // Interrupt 9 Wakeup timer overflow
procedure TIM1_COMP_ISR; external name 'TIM1_COMP_ISR'; // Interrupt 10 Timer/Counter 1 Compare Match
procedure TIM1_OVF_ISR; external name 'TIM1_OVF_ISR'; // Interrupt 11 Timer/Counter 1 Overflow
procedure TIM0_COMPA_ISR; external name 'TIM0_COMPA_ISR'; // Interrupt 12 Timer/Counter0 Compare A Match
procedure TIM0_COMPB_ISR; external name 'TIM0_COMPB_ISR'; // Interrupt 13 Timer/Counter0 Compare B Match
procedure TIM0_OVF_ISR; external name 'TIM0_OVF_ISR'; // Interrupt 14 Timer/Counter0 Overflow
procedure TWI_BUS_CD_ISR; external name 'TWI_BUS_CD_ISR'; // Interrupt 15 Two-Wire Bus Connect/Disconnect
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 16 Two-Wire Serial Interface
procedure VADC_ISR; external name 'VADC_ISR'; // Interrupt 17 Voltage ADC Conversion Complete
procedure CCADC_CONV_ISR; external name 'CCADC_CONV_ISR'; // Interrupt 18 Coulomb Counter ADC Conversion Complete
procedure CCADC_REG_CUR_ISR; external name 'CCADC_REG_CUR_ISR'; // Interrupt 19 Coloumb Counter ADC Regular Current
procedure CCADC_ACC_ISR; external name 'CCADC_ACC_ISR'; // Interrupt 20 Coloumb Counter ADC Accumulator
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 21 EEPROM Ready
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 22 Store Program Memory Ready

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp BPINT_ISR
  jmp INT0_ISR
  jmp INT1_ISR
  jmp INT2_ISR
  jmp INT3_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp WDT_ISR
  jmp WAKE_UP_ISR
  jmp TIM1_COMP_ISR
  jmp TIM1_OVF_ISR
  jmp TIM0_COMPA_ISR
  jmp TIM0_COMPB_ISR
  jmp TIM0_OVF_ISR
  jmp TWI_BUS_CD_ISR
  jmp TWI_ISR
  jmp VADC_ISR
  jmp CCADC_CONV_ISR
  jmp CCADC_REG_CUR_ISR
  jmp CCADC_ACC_ISR
  jmp EE_READY_ISR
  jmp SPM_READY_ISR

  {$i start.inc}

  .weak BPINT_ISR
  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak WDT_ISR
  .weak WAKE_UP_ISR
  .weak TIM1_COMP_ISR
  .weak TIM1_OVF_ISR
  .weak TIM0_COMPA_ISR
  .weak TIM0_COMPB_ISR
  .weak TIM0_OVF_ISR
  .weak TWI_BUS_CD_ISR
  .weak TWI_ISR
  .weak VADC_ISR
  .weak CCADC_CONV_ISR
  .weak CCADC_REG_CUR_ISR
  .weak CCADC_ACC_ISR
  .weak EE_READY_ISR
  .weak SPM_READY_ISR

  .set BPINT_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set WAKE_UP_ISR, Default_IRQ_handler
  .set TIM1_COMP_ISR, Default_IRQ_handler
  .set TIM1_OVF_ISR, Default_IRQ_handler
  .set TIM0_COMPA_ISR, Default_IRQ_handler
  .set TIM0_COMPB_ISR, Default_IRQ_handler
  .set TIM0_OVF_ISR, Default_IRQ_handler
  .set TWI_BUS_CD_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set VADC_ISR, Default_IRQ_handler
  .set CCADC_CONV_ISR, Default_IRQ_handler
  .set CCADC_REG_CUR_ISR, Default_IRQ_handler
  .set CCADC_ACC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
