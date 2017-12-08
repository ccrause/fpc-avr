unit ATA5787;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TPRR0set = bitpacked set of (e_PRSPI, e_PRRXDC, e_PRTXDC, e_PRCRC, e_PRVM, e_PRCO, e_PRUART, e_PRTRC);
  TPRR0rec = bitpacked record
    PRSPI,
    PRRXDC,
    PRTXDC,
    PRCRC,
    PRVM,
    PRCO,
    PRUART,
    PRTRC: TBitField;
  end;
var
  PRR0: byte absolute $21;  // Power Reduction Register 0
  PRR0set: TPRR0set absolute $21;
  PRR0rec: TPRR0rec absolute $21;
const
  PRSPI = 0;  m_PRSPI = 1;  // Power Reduction Serial Peripheral Interface
  PRRXDC = 1;  m_PRRXDC = 2;  // Power Reduction Receive DSP Control
  PRTXDC = 2;  m_PRTXDC = 4;  // Power Reduction Transmit DSP Control
  PRCRC = 3;  m_PRCRC = 8;  // Power Reduction CRC
  PRVM = 4;  m_PRVM = 16;  // Power Reduction Voltage Monitor
  PRCO = 5;  m_PRCO = 32;  // Power Reduction Clock Output
  PRUART = 6;  m_PRUART = 64;  // Power Reduction UART
  PRTRC = 7;  m_PRTRC = 128;  // Power Reduction Trace Unit

type
  TPRR1set = bitpacked set of (e_PRT1, e_PRT2, e_PRT3, e_PRT4, e_PRT5);
  TPRR1rec = bitpacked record
    PRT1,
    PRT2,
    PRT3,
    PRT4,
    PRT5,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR1: byte absolute $22;  // Power Reduction Register 1
  PRR1set: TPRR1set absolute $22;
  PRR1rec: TPRR1rec absolute $22;
const
  PRT1 = 0;  m_PRT1 = 1;  // Power Reduction Timer 1
  PRT2 = 1;  m_PRT2 = 2;  // Power Reduction Timer 2
  PRT3 = 2;  m_PRT3 = 4;  // Power Reduction Timer 3
  PRT4 = 3;  m_PRT4 = 8;  // Power Reduction Timer 4
  PRT5 = 4;  m_PRT5 = 16;  // Power Reduction Timer 5

type
  TPRR2set = bitpacked set of (e_PRXB, e_PRXA, e_PRSF, e_PRDF, e_PRIDS, e_PRRS, e_PRSSM=7);
  TPRR2rec = bitpacked record
    PRXB,
    PRXA,
    PRSF,
    PRDF,
    PRIDS,
    PRRS,
    ReservedBit6,
    PRSSM: TBitField;
  end;
var
  PRR2: byte absolute $23;  // Power Reduction Register 2
  PRR2set: TPRR2set absolute $23;
  PRR2rec: TPRR2rec absolute $23;
const
  PRXB = 0;  m_PRXB = 1;  // Power Reduction Rx Buffer B
  PRXA = 1;  m_PRXA = 2;  // Power Reduction Rx Buffer A
  PRSF = 2;  m_PRSF = 4;  // Power Reduction Support FIFO
  PRDF = 3;  m_PRDF = 8;  // Power Reduction Data FIFO
  PRIDS = 4;  m_PRIDS = 16;  // Power Reduction ID Check
  PRRS = 5;  m_PRRS = 32;  // Power Reduction RSSI Buffer
  PRSSM = 7;  m_PRSSM = 128;  // Power Reduction Sequencer State Machine

type
  TRDPRset = bitpacked set of (e_PRPTB, e_PRPTA, e_PRFLT, e_PRTMP, e_APRPTB, e_APRPTA, e_ARDPRF, e_RDPRF);
  TRDPRrec = bitpacked record
    PRPTB,
    PRPTA,
    PRFLT,
    PRTMP,
    APRPTB,
    APRPTA,
    ARDPRF,
    RDPRF: TBitField;
  end;
var
  RDPR: byte absolute $24;  // Rx DSP Power Reduction
  RDPRset: TRDPRset absolute $24;
  RDPRrec: TRDPRrec absolute $24;
const
  PRPTB = 0;  m_PRPTB = 1;  // Power Reduction Demodulator and Receiving Path B
  PRPTA = 1;  m_PRPTA = 2;  // Power Reduction Demodulator and Receiving Path A
  PRFLT = 2;  m_PRFLT = 4;  // Power Reduction Digital Channel Filter
  PRTMP = 3;  m_PRTMP = 8;  // Power Reduction Temperature Measurement
  APRPTB = 4;  m_APRPTB = 16;  // Automatic Power Reduction Path B
  APRPTA = 5;  m_APRPTA = 32;  // Automatic Power Reduction Path A
  ARDPRF = 6;  m_ARDPRF = 64;  // Automatic Rx DSP Power Reduction Flag
  RDPRF = 7;  m_RDPRF = 128;  // Rx DSP Power Reduction Register Busy Flag

var
  PINB: byte absolute $25;  // Port B Input Pins
  DDRB: byte absolute $26;  // Port B Data Direction

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
  PORTB: byte absolute $27;  // Port B Data Register
  PORTBset: TPORTBset absolute $27;
  PORTBrec: TPORTBrec absolute $27;
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
  PINC: byte absolute $28;  // Port C Input Pins
  DDRC: byte absolute $29;  // Port C Data Direction

type
  TPORTCset = bitpacked set of (e_PC0, e_PC1, e_PC2, e_PC3, e_PC4, e_PC5);
  TPORTCrec = bitpacked record
    PC0,
    PC1,
    PC2,
    PC3,
    PC4,
    PC5,
    ReservedBit6,
    ReservedBit7: TBitField;
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

type
  TRDSIFRset = bitpacked set of (e_NBITA, e_NBITB, e_EOTA, e_EOTB, e_SOTA, e_SOTB, e_WCOA, e_WCOB);
  TRDSIFRrec = bitpacked record
    NBITA,
    NBITB,
    EOTA,
    EOTB,
    SOTA,
    SOTB,
    WCOA,
    WCOB: TBitField;
  end;
var
  RDSIFR: byte absolute $2D;  // Rx DSP Status Interrupt Flag Register
  RDSIFRset: TRDSIFRset absolute $2D;
  RDSIFRrec: TRDSIFRrec absolute $2D;
const
  NBITA = 0;  m_NBITA = 1;  // New Bit Path A
  NBITB = 1;  m_NBITB = 2;  // New Bit Path B
  EOTA = 2;  m_EOTA = 4;  // End Of Telegram Path A
  EOTB = 3;  m_EOTB = 8;  // End Of Telegram Path B
  SOTA = 4;  m_SOTA = 16;  // Start Of Telegram Path A
  SOTB = 5;  m_SOTB = 32;  // Start Of Telegram Path B
  WCOA = 6;  m_WCOA = 64;  // Wake Check Ok Path A
  WCOB = 7;  m_WCOB = 128;  // Wake Check Ok Path B

type
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_SPIIO, e_ENPS, e_PUD, e_PB4HS, e_PB7LS, e_PB7HS);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    SPIIO,
    ENPS,
    PUD,
    PB4HS,
    PB7LS,
    PB7HS: TBitField;
  end;
var
  MCUCR: byte absolute $2E;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $2E;
  MCUCRrec: TMCUCRrec absolute $2E;
const
  IVCE = 0;  m_IVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select
  SPIIO = 2;  m_SPIIO = 4;  // SPI Interrupt Only
  ENPS = 3;  m_ENPS = 8;  // Enable Port Settings
  PUD = 4;  m_PUD = 16;  // Pull-up Resistors Disable
  PB4HS = 5;  m_PB4HS = 32;  // Port B4 High Side Driver Enable
  PB7LS = 6;  m_PB7LS = 64;  // Port B7 Low Side Driver Enable
  PB7HS = 7;  m_PB7HS = 128;  // Port B7 High Side Driver Enable

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
  PCIFR: byte absolute $2F;  // Pin Change Interrupt Flag Register
  PCIFRset: TPCIFRset absolute $2F;
  PCIFRrec: TPCIFRrec absolute $2F;
const
  PCIF0 = 0;  m_PCIF0 = 1;  // Pin Change Interrupt Flag 0
  PCIF1 = 1;  m_PCIF1 = 2;  // Pin Change Interrupt Flag 1

type
  TT0CRset = bitpacked set of (e_T0PS0, e_T0PS1, e_T0PS2, e_T0IE, e_T0PR);
  TT0CRrec = bitpacked record
    T0PS0,
    T0PS1,
    T0PS2,
    T0IE,
    T0PR,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T0CR: byte absolute $30;  // Timer0 Control Register
  T0CRset: TT0CRset absolute $30;
  T0CRrec: TT0CRrec absolute $30;
const
  T0PS0 = 0;  m_T0PS0 = 1;  // Timer0 Prescaler Select
  T0PS1 = 1;  m_T0PS1 = 2;  // Timer0 Prescaler Select
  T0PS2 = 2;  m_T0PS2 = 4;  // Timer0 Prescaler Select
  T0IE = 3;  m_T0IE = 8;  // Timer0 Interrupt Enable
  T0PR = 4;  m_T0PR = 16;  // Timer0 Prescaler Reset

type
  TT1CRset = bitpacked set of (e_T1OTM, e_T1CTM, e_T1CRM, e_T1TOP=4, e_T1RES, e_T1TOS, e_T1ENA);
  TT1CRrec = bitpacked record
    T1OTM,
    T1CTM,
    T1CRM,
    ReservedBit3,
    T1TOP,
    T1RES,
    T1TOS,
    T1ENA: TBitField;
  end;
var
  T1CR: byte absolute $31;  // Timer1 Control Register
  T1CRset: TT1CRset absolute $31;
  T1CRrec: TT1CRrec absolute $31;
const
  T1OTM = 0;  m_T1OTM = 1;  // Timer1 Overflow Toggle Mask
  T1CTM = 1;  m_T1CTM = 2;  // Timer1 Compare Toggle Mask
  T1CRM = 2;  m_T1CRM = 4;  // Timer1 Compare Reset Mask
  T1TOP = 4;  m_T1TOP = 16;  // Timer1 Toggle Output Preset
  T1RES = 5;  m_T1RES = 32;  // Timer1 Reset
  T1TOS = 6;  m_T1TOS = 64;  // Timer1 Toggle with Start
  T1ENA = 7;  m_T1ENA = 128;  // Timer1 Enable

type
  TT2CRset = bitpacked set of (e_T2OTM, e_T2CTM, e_T2CRM, e_T2TOP=4, e_T2RES, e_T2TOS, e_T2ENA);
  TT2CRrec = bitpacked record
    T2OTM,
    T2CTM,
    T2CRM,
    ReservedBit3,
    T2TOP,
    T2RES,
    T2TOS,
    T2ENA: TBitField;
  end;
var
  T2CR: byte absolute $32;  // Timer2 Control Register
  T2CRset: TT2CRset absolute $32;
  T2CRrec: TT2CRrec absolute $32;
const
  T2OTM = 0;  m_T2OTM = 1;  // Timer2 Overflow Toggle Mask
  T2CTM = 1;  m_T2CTM = 2;  // Timer2 Compare Toggle Mask
  T2CRM = 2;  m_T2CRM = 4;  // Timer2 Compare Reset Mask
  T2TOP = 4;  m_T2TOP = 16;  // Timer2 Toggle Output Preset
  T2RES = 5;  m_T2RES = 32;  // Timer2 Reset
  T2TOS = 6;  m_T2TOS = 64;  // Timer2 Toggle with Start
  T2ENA = 7;  m_T2ENA = 128;  // Timer2 Enable

type
  TT3CRset = bitpacked set of (e_T3OTM, e_T3CTM, e_T3CRM, e_T3CPRM, e_T3TOP, e_T3RES, e_T3TOS, e_T3ENA);
  TT3CRrec = bitpacked record
    T3OTM,
    T3CTM,
    T3CRM,
    T3CPRM,
    T3TOP,
    T3RES,
    T3TOS,
    T3ENA: TBitField;
  end;
var
  T3CR: byte absolute $33;  // Timer3 Control Register
  T3CRset: TT3CRset absolute $33;
  T3CRrec: TT3CRrec absolute $33;
const
  T3OTM = 0;  m_T3OTM = 1;  // Timer3 Overflow Toggle Mask
  T3CTM = 1;  m_T3CTM = 2;  // Timer3 Compare Toggle Mask
  T3CRM = 2;  m_T3CRM = 4;  // Timer3 Compare Reset Mask
  T3CPRM = 3;  m_T3CPRM = 8;  // Timer3 Capture Reset Mask
  T3TOP = 4;  m_T3TOP = 16;  // Timer3 Toggle Output Preset
  T3RES = 5;  m_T3RES = 32;  // Timer3 Reset
  T3TOS = 6;  m_T3TOS = 64;  // Timer3 Toggle with Start
  T3ENA = 7;  m_T3ENA = 128;  // Timer3 Enable

type
  TT4CRset = bitpacked set of (e_T4OTM, e_T4CTM, e_T4CRM, e_T4CPRM, e_T4TOP, e_T4RES, e_T4TOS, e_T4ENA);
  TT4CRrec = bitpacked record
    T4OTM,
    T4CTM,
    T4CRM,
    T4CPRM,
    T4TOP,
    T4RES,
    T4TOS,
    T4ENA: TBitField;
  end;
var
  T4CR: byte absolute $34;  // Timer4 Control Register
  T4CRset: TT4CRset absolute $34;
  T4CRrec: TT4CRrec absolute $34;
const
  T4OTM = 0;  m_T4OTM = 1;  // Timer4 Overflow Toggle Mask
  T4CTM = 1;  m_T4CTM = 2;  // Timer4 Compare Toggle Mask
  T4CRM = 2;  m_T4CRM = 4;  // Timer4 Compare Reset Mask
  T4CPRM = 3;  m_T4CPRM = 8;  // Timer4 Capture Reset Mask
  T4TOP = 4;  m_T4TOP = 16;  // Timer4 Toggle Output Preset
  T4RES = 5;  m_T4RES = 32;  // Timer4 Reset
  T4TOS = 6;  m_T4TOS = 64;  // Timer4 Toggle with Start
  T4ENA = 7;  m_T4ENA = 128;  // Timer4 Enable

type
  TT1IFRset = bitpacked set of (e_T1OFF, e_T1COF);
  TT1IFRrec = bitpacked record
    T1OFF,
    T1COF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T1IFR: byte absolute $35;  // Timer1 Interrupt Flag Register
  T1IFRset: TT1IFRset absolute $35;
  T1IFRrec: TT1IFRrec absolute $35;
const
  T1OFF = 0;  m_T1OFF = 1;  // Timer1 Overflow Flag
  T1COF = 1;  m_T1COF = 2;  // Timer1 Compare Flag

type
  TT2IFRset = bitpacked set of (e_T2OFF, e_T2COF);
  TT2IFRrec = bitpacked record
    T2OFF,
    T2COF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T2IFR: byte absolute $36;  // Timer2 Interrupt Flag Register
  T2IFRset: TT2IFRset absolute $36;
  T2IFRrec: TT2IFRrec absolute $36;
const
  T2OFF = 0;  m_T2OFF = 1;  // Timer2 Overflow Flag
  T2COF = 1;  m_T2COF = 2;  // Timer2 Compare Flag

type
  TT3IFRset = bitpacked set of (e_T3OFF, e_T3COF, e_T3ICF);
  TT3IFRrec = bitpacked record
    T3OFF,
    T3COF,
    T3ICF,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3IFR: byte absolute $37;  // Timer3 Interrupt Flag Register
  T3IFRset: TT3IFRset absolute $37;
  T3IFRrec: TT3IFRrec absolute $37;
const
  T3OFF = 0;  m_T3OFF = 1;  // Timer3 Overflow Flag
  T3COF = 1;  m_T3COF = 2;  // Timer3 Compare Flag
  T3ICF = 2;  m_T3ICF = 4;  // Timer3 Input Capture Flag

type
  TT4IFRset = bitpacked set of (e_T4OFF, e_T4COF, e_T4ICF);
  TT4IFRrec = bitpacked record
    T4OFF,
    T4COF,
    T4ICF,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T4IFR: byte absolute $38;  // Timer4 Interrupt Flag Register
  T4IFRset: TT4IFRset absolute $38;
  T4IFRrec: TT4IFRrec absolute $38;
const
  T4OFF = 0;  m_T4OFF = 1;  // Timer4 Overflow Flag
  T4COF = 1;  m_T4COF = 2;  // Timer4 Compare Flag
  T4ICF = 2;  m_T4ICF = 4;  // Timer4 Input Capture Flag

type
  TT5IFRset = bitpacked set of (e_T5OFF, e_T5COF);
  TT5IFRrec = bitpacked record
    T5OFF,
    T5COF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T5IFR: byte absolute $39;  // Timer5 Interrupt Flag Register
  T5IFRset: TT5IFRset absolute $39;
  T5IFRrec: TT5IFRrec absolute $39;
const
  T5OFF = 0;  m_T5OFF = 1;  // Timer5 Overflow Flag
  T5COF = 1;  m_T5COF = 2;  // Timer5 Compare Flag

var
  GPIOR0: byte absolute $3A;  // General Purpose I/O Register 0
  GPIOR3: byte absolute $3B;  // General Purpose I/O Register 3
  GPIOR4: byte absolute $3C;  // General Purpose I/O Register 4
  GPIOR5: byte absolute $3D;  // General Purpose I/O Register 5
  GPIOR6: byte absolute $3E;  // General Purpose I/O Register 6

type
  TEECRset = bitpacked set of (e_EERE, e_EEWE, e_EEMWE, e_EERIE, e_EEPM0, e_EEPM1, e_EEPAGE, e_NVMBSY);
  TEECRrec = bitpacked record
    EERE,
    EEWE,
    EEMWE,
    EERIE,
    EEPM0,
    EEPM1,
    EEPAGE,
    NVMBSY: TBitField;
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
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode
  EEPAGE = 6;  m_EEPAGE = 64;  // EEPROM Page Access
  NVMBSY = 7;  m_NVMBSY = 128;  // Non-Volatile Memory Busy

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

type
  TEEPRset = bitpacked set of (e_EEAP0, e_EEAP1, e_EEAP2, e_EEAP3);
  TEEPRrec = bitpacked record
    EEAP0,
    EEAP1,
    EEAP2,
    EEAP3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EEPR: byte absolute $43;  // EEPROM Protect Register
  EEPRset: TEEPRset absolute $43;
  EEPRrec: TEEPRrec absolute $43;
const
  EEAP0 = 0;  m_EEAP0 = 1;  // EEPROM Access Protect
  EEAP1 = 1;  m_EEAP1 = 2;  // EEPROM Access Protect
  EEAP2 = 2;  m_EEAP2 = 4;  // EEPROM Access Protect
  EEAP3 = 3;  m_EEAP3 = 8;  // EEPROM Access Protect

var
  GPIOR1: byte absolute $44;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $45;  // General Purpose I/O Register 2

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
  PCICR: byte absolute $46;  // Pin Change Interrupt Control Register
  PCICRset: TPCICRset absolute $46;
  PCICRrec: TPCICRrec absolute $46;
const
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enable 0
  PCIE1 = 1;  m_PCIE1 = 2;  // Pin Change Interrupt Enable 1

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
  EIMSK: byte absolute $47;  // External Interrupt Mask
  EIMSKset: TEIMSKset absolute $47;
  EIMSKrec: TEIMSKrec absolute $47;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 1 Enable

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
  EIFR: byte absolute $48;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $48;
  EIFRrec: TEIFRrec absolute $48;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0
  INTF1 = 1;  m_INTF1 = 2;  // External Interrupt Flag 1

var
  CRCDIR: byte absolute $49;  // CRC Data Input Register

type
  TVMCSRset = bitpacked set of (e_VMLS0, e_VMLS1, e_VMLS2, e_VMLS3, e_VMIM, e_VMF);
  TVMCSRrec = bitpacked record
    VMLS0,
    VMLS1,
    VMLS2,
    VMLS3,
    VMIM,
    VMF,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VMCSR: byte absolute $4A;  // Voltage Monitor Control and Status Register
  VMCSRset: TVMCSRset absolute $4A;
  VMCSRrec: TVMCSRrec absolute $4A;
const
  VMLS0 = 0;  m_VMLS0 = 1;  // Voltage Monitor Level Select
  VMLS1 = 1;  m_VMLS1 = 2;  // Voltage Monitor Level Select
  VMLS2 = 2;  m_VMLS2 = 4;  // Voltage Monitor Level Select
  VMLS3 = 3;  m_VMLS3 = 8;  // Voltage Monitor Level Select
  VMIM = 4;  m_VMIM = 16;  // Voltage Monitor Interrupt Mask
  VMF = 5;  m_VMF = 32;  // Voltage Monitor Flag

type
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_WDRF=3, e_DWRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    ReservedBit2,
    WDRF,
    DWRF,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MCUSR: byte absolute $4B;  // MCU Status Register
  MCUSRset: TMCUSRset absolute $4B;
  MCUSRrec: TMCUSRrec absolute $4B;
const
  PORF = 0;  m_PORF = 1;  // Power-On Reset Flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag
  DWRF = 4;  m_DWRF = 16;  // DebugWire Reset Flag

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
  SPR0 = 0;  m_SPR0 = 1;  // SPI Clock Rate Select
  SPR1 = 1;  m_SPR1 = 2;  // SPI Clock Rate Select
  CPHA = 2;  m_CPHA = 4;  // Clock Phase
  CPOL = 3;  m_CPOL = 8;  // Clock Polarity
  MSTR = 4;  m_MSTR = 16;  // Master/Slave Select
  DORD = 5;  m_DORD = 32;  // Data Order
  SPE = 6;  m_SPE = 64;  // SPI Enable
  SPIE = 7;  m_SPIE = 128;  // SPI Interrupt Enable

type
  TSPSRset = bitpacked set of (e_SPI2X, e_RXIF=4, e_TXIF, e_SPIF=7);
  TSPSRrec = bitpacked record
    SPI2X,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    RXIF,
    TXIF,
    ReservedBit6,
    SPIF: TBitField;
  end;
var
  SPSR: byte absolute $4D;  // SPI Status Register
  SPSRset: TSPSRset absolute $4D;
  SPSRrec: TSPSRrec absolute $4D;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  RXIF = 4;  m_RXIF = 16;  // Rx Buffer Interrupt Flag
  TXIF = 5;  m_TXIF = 32;  // Tx Buffer Interrupt Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

var
  SPDR: byte absolute $4E;  // SPI Data Register

type
  TT0IFRset = bitpacked set of (e_T0F);
  TT0IFRrec = bitpacked record
    T0F,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T0IFR: byte absolute $4F;  // Timer0 Interrupt Flag Register
  T0IFRset: TT0IFRset absolute $4F;
  T0IFRrec: TT0IFRrec absolute $4F;
const
  T0F = 0;  m_T0F = 1;  // Timer0 Flag

var
  DWDR: byte absolute $51;  // Debug Wire Data Register

type
  TRDCRset = bitpacked set of (e_RDPU, e_ADIVEN, e_RDEN);
  TRDCRrec = bitpacked record
    RDPU,
    ADIVEN,
    RDEN,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RDCR: byte absolute $52;  // Rx DSP Control Register
  RDCRset: TRDCRset absolute $52;
  RDCRrec: TRDCRrec absolute $52;
const
  RDPU = 0;  m_RDPU = 1;  // Rx DSP Power Up
  ADIVEN = 1;  m_ADIVEN = 2;  // Divided ADC Clock Enable
  RDEN = 2;  m_RDEN = 4;  // Rx DSP Enable

type
  TEOTSAset = bitpacked set of (e_CARFA, e_AMPFA, e_SYTFA, e_MANFA, e_TMOFA, e_TELRA, e_RRFA, e_EOTBF);
  TEOTSArec = bitpacked record
    CARFA,
    AMPFA,
    SYTFA,
    MANFA,
    TMOFA,
    TELRA,
    RRFA,
    EOTBF: TBitField;
  end;
var
  EOTSA: byte absolute $53;  // End Of Telegram Status Path A
  EOTSAset: TEOTSAset absolute $53;
  EOTSArec: TEOTSArec absolute $53;
const
  CARFA = 0;  m_CARFA = 1;  // RF Carrier Fail Path A
  AMPFA = 1;  m_AMPFA = 2;  // Modulation Amplitude Fail Path A
  SYTFA = 2;  m_SYTFA = 4;  // Symbol Timing Fail Path A
  MANFA = 3;  m_MANFA = 8;  // Manchester Coding Fail Path A
  TMOFA = 4;  m_TMOFA = 16;  // Time-Out Fail Path A
  TELRA = 5;  m_TELRA = 32;  // Telegram Length Reached Path A
  RRFA = 6;  m_RRFA = 64;  // RSSI Range Fail Path A
  EOTBF = 7;  m_EOTBF = 128;  // End Of Telegram Path B Fail

type
  TEOTCAset = bitpacked set of (e_CARFEA, e_AMPFEA, e_SYTFEA, e_MANFEA, e_TMOFEA, e_TELREA, e_RRFEA, e_EOTBFE);
  TEOTCArec = bitpacked record
    CARFEA,
    AMPFEA,
    SYTFEA,
    MANFEA,
    TMOFEA,
    TELREA,
    RRFEA,
    EOTBFE: TBitField;
  end;
var
  EOTCA: byte absolute $54;  // End Of Telegram Conditions Path A
  EOTCAset: TEOTCAset absolute $54;
  EOTCArec: TEOTCArec absolute $54;
const
  CARFEA = 0;  m_CARFEA = 1;  // RF Carrier Fail Enable Path A
  AMPFEA = 1;  m_AMPFEA = 2;  // Modulation Amplitude Fail Enable Path A
  SYTFEA = 2;  m_SYTFEA = 4;  // Symbol Timing Fail Enable Path A
  MANFEA = 3;  m_MANFEA = 8;  // Manchester Coding Fail Enable Path A
  TMOFEA = 4;  m_TMOFEA = 16;  // Time-Out Fail Enable Path A
  TELREA = 5;  m_TELREA = 32;  // Telegram Length Reached Enable Path A
  RRFEA = 6;  m_RRFEA = 64;  // RSSI Range Fail Enable Path A
  EOTBFE = 7;  m_EOTBFE = 128;  // End Of Telegram Path B Fail Enable

type
  TEOTSBset = bitpacked set of (e_CARFB, e_AMPFB, e_SYTFB, e_MANFB, e_TMOFB, e_TELRB, e_RRFB, e_EOTAF);
  TEOTSBrec = bitpacked record
    CARFB,
    AMPFB,
    SYTFB,
    MANFB,
    TMOFB,
    TELRB,
    RRFB,
    EOTAF: TBitField;
  end;
var
  EOTSB: byte absolute $55;  // End Of Telegram Status Path B
  EOTSBset: TEOTSBset absolute $55;
  EOTSBrec: TEOTSBrec absolute $55;
const
  CARFB = 0;  m_CARFB = 1;  // RF Carrier Fail Path B
  AMPFB = 1;  m_AMPFB = 2;  // Modulation Amplitude Fail Path B
  SYTFB = 2;  m_SYTFB = 4;  // Symbol Timing Fail Path B
  MANFB = 3;  m_MANFB = 8;  // Manchester Coding Fail Path B
  TMOFB = 4;  m_TMOFB = 16;  // Time-Out Fail Path B
  TELRB = 5;  m_TELRB = 32;  // Telegram Length Reached Path B
  RRFB = 6;  m_RRFB = 64;  // RSSI Range Fail Path B
  EOTAF = 7;  m_EOTAF = 128;  // End Of Telegram Path A Fail

type
  TEOTCBset = bitpacked set of (e_CARFEB, e_AMPFEB, e_SYTFEB, e_MANFEB, e_TMOFEB, e_TELREB, e_RRFEB, e_EOTAFE);
  TEOTCBrec = bitpacked record
    CARFEB,
    AMPFEB,
    SYTFEB,
    MANFEB,
    TMOFEB,
    TELREB,
    RRFEB,
    EOTAFE: TBitField;
  end;
var
  EOTCB: byte absolute $56;  // End Of Telegram Conditions Path B
  EOTCBset: TEOTCBset absolute $56;
  EOTCBrec: TEOTCBrec absolute $56;
const
  CARFEB = 0;  m_CARFEB = 1;  // RF Carrier Fail Enable Path B
  AMPFEB = 1;  m_AMPFEB = 2;  // Modulation Amplitude Fail Enable Path B
  SYTFEB = 2;  m_SYTFEB = 4;  // Symbol Timing Fail Enable Path B
  MANFEB = 3;  m_MANFEB = 8;  // Manchester Coding Fail Enable Path B
  TMOFEB = 4;  m_TMOFEB = 16;  // Time-Out Fail Enable Path B
  TELREB = 5;  m_TELREB = 32;  // Telegram Length Reached Enable Path B
  RRFEB = 6;  m_RRFEB = 64;  // RSSI Range Fail Enable Path B
  EOTAFE = 7;  m_EOTAFE = 128;  // End Of Telegram Path A Fail Enable

type
  TSPMCSRset = bitpacked set of (e_SELFPRGEN, e_PGERS, e_PGWRT, e_BLBSET, e_SPMIE=7);
  TSPMCSRrec = bitpacked record
    SELFPRGEN,
    PGERS,
    PGWRT,
    BLBSET,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    SPMIE: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SELFPRGEN = 0;  m_SELFPRGEN = 1;  // Self Programming Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

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
  SMCR: byte absolute $59;  // Sleep Mode Control Register
  SMCRset: TSMCRset absolute $59;
  SMCRrec: TSMCRrec absolute $59;
const
  SE = 0;  m_SE = 1;  // Sleep Mode Enable
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select

type
  TCMCRset = bitpacked set of (e_CMM0, e_CMM1, e_CMM2, e_CCS, e_CMONEN=6, e_CMCCE);
  TCMCRrec = bitpacked record
    CMM0,
    CMM1,
    CMM2,
    CCS,
    ReservedBit4,
    ReservedBit5,
    CMONEN,
    CMCCE: TBitField;
  end;
var
  CMCR: byte absolute $5A;  // Clock Management Control Register
  CMCRset: TCMCRset absolute $5A;
  CMCRrec: TCMCRrec absolute $5A;
const
  CMM0 = 0;  m_CMM0 = 1;  // Clock Management Mode
  CMM1 = 1;  m_CMM1 = 2;  // Clock Management Mode
  CMM2 = 2;  m_CMM2 = 4;  // Clock Management Mode
  CCS = 3;  m_CCS = 8;  // Core Clock Select
  CMONEN = 6;  m_CMONEN = 64;  // Clock Monitor Enable
  CMCCE = 7;  m_CMCCE = 128;  // Clock Management Control Change Enable

type
  TCMIMRset = bitpacked set of (e_ECIE);
  TCMIMRrec = bitpacked record
    ECIE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CMIMR: byte absolute $5B;  // Clock Management Interrupt Mask Register
  CMIMRset: TCMIMRset absolute $5B;
  CMIMRrec: TCMIMRrec absolute $5B;
const
  ECIE = 0;  m_ECIE = 1;  // External Clock Interrupt Enable

type
  TCLPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLTPS0, e_CLTPS1, e_CLTPS2, e_CLPCE=7);
  TCLPRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    CLKPS2,
    CLTPS0,
    CLTPS1,
    CLTPS2,
    ReservedBit6,
    CLPCE: TBitField;
  end;
var
  CLPR: byte absolute $5C;  // Clock Prescaler
  CLPRset: TCLPRset absolute $5C;
  CLPRrec: TCLPRrec absolute $5C;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // System Clock Prescaler Select
  CLKPS1 = 1;  m_CLKPS1 = 2;  // System Clock Prescaler Select
  CLKPS2 = 2;  m_CLKPS2 = 4;  // System Clock Prescaler Select
  CLTPS0 = 3;  m_CLTPS0 = 8;  // Timer Clock Prescaler Select
  CLTPS1 = 4;  m_CLTPS1 = 16;  // Timer Clock Prescaler Select
  CLTPS2 = 5;  m_CLTPS2 = 32;  // Timer Clock Prescaler Select
  CLPCE = 7;  m_CLPCE = 128;  // Clock Prescaler Change Enable

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
  TFSENset = bitpacked set of (e_SDPU, e_SDEN);
  TFSENrec = bitpacked record
    SDPU,
    SDEN,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FSEN: byte absolute $60;  // Frequency Synthesizer Enable
  FSENset: TFSENset absolute $60;
  FSENrec: TFSENrec absolute $60;
const
  SDPU = 0;  m_SDPU = 1;  // Sigma-delta Modulator Power Up
  SDEN = 1;  m_SDEN = 2;  // Sigma-delta Modulator Enable

var
  FFREQ1L: byte absolute $64;  // Fractional Frequency 1 Low Byte
  FFREQ1M: byte absolute $65;  // Fractional Frequency 1 Middle Byte
  FFREQ1H: byte absolute $66;  // Fractional Frequency 1 High Byte
  FFREQ2L: byte absolute $67;  // Fractional Frequency 2 Low Byte
  FFREQ2M: byte absolute $68;  // Fractional Frequency 2 Middle Byte
  FFREQ2H: byte absolute $69;  // Fractional Frequency 2 High Byte

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
  EICRA: byte absolute $6B;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $6B;
  EICRArec: TEICRArec absolute $6B;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0
  ISC10 = 2;  m_ISC10 = 4;  // Interrupt Sense Control 1
  ISC11 = 3;  m_ISC11 = 8;  // Interrupt Sense Control 1

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
  PCMSK0: byte absolute $6C;  // Pin Change Mask Register 0
  PCMSK0set: TPCMSK0set absolute $6C;
  PCMSK0rec: TPCMSK0rec absolute $6C;
const
  PCINT0 = 0;  m_PCINT0 = 1;  // Pin Change Enable Mask
  PCINT1 = 1;  m_PCINT1 = 2;  // Pin Change Enable Mask
  PCINT2 = 2;  m_PCINT2 = 4;  // Pin Change Enable Mask
  PCINT3 = 3;  m_PCINT3 = 8;  // Pin Change Enable Mask
  PCINT4 = 4;  m_PCINT4 = 16;  // Pin Change Enable Mask
  PCINT5 = 5;  m_PCINT5 = 32;  // Pin Change Enable Mask
  PCINT6 = 6;  m_PCINT6 = 64;  // Pin Change Enable Mask
  PCINT7 = 7;  m_PCINT7 = 128;  // Pin Change Enable Mask

var
  PCMSK1: byte absolute $6D;  // Pin Change Mask Register 1

type
  TWDTCRset = bitpacked set of (e_WDPS0, e_WDPS1, e_WDPS2, e_WDE, e_WDCE);
  TWDTCRrec = bitpacked record
    WDPS0,
    WDPS1,
    WDPS2,
    WDE,
    WDCE,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WDTCR: byte absolute $6E;  // Watchdog Timer0 Control Register
  WDTCRset: TWDTCRset absolute $6E;
  WDTCRrec: TWDTCRrec absolute $6E;
const
  WDPS0 = 0;  m_WDPS0 = 1;  // Watchdog Prescaler Select
  WDPS1 = 1;  m_WDPS1 = 2;  // Watchdog Prescaler Select
  WDPS2 = 2;  m_WDPS2 = 4;  // Watchdog Prescaler Select
  WDE = 3;  m_WDE = 8;  // Watchdog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable

var
  T1CNT: byte absolute $6F;  // Timer1 Counter Register
  T1COR: byte absolute $70;  // Timer1 Compare Register

type
  TT1MRset = bitpacked set of (e_T1CS0, e_T1CS1, e_T1PS0, e_T1PS1, e_T1PS2, e_T1PS3, e_T1DC0, e_T1DC1);
  TT1MRrec = bitpacked record
    T1CS0,
    T1CS1,
    T1PS0,
    T1PS1,
    T1PS2,
    T1PS3,
    T1DC0,
    T1DC1: TBitField;
  end;
var
  T1MR: byte absolute $71;  // Timer1 Mode Register
  T1MRset: TT1MRset absolute $71;
  T1MRrec: TT1MRrec absolute $71;
const
  T1CS0 = 0;  m_T1CS0 = 1;  // Timer1 Clock Select
  T1CS1 = 1;  m_T1CS1 = 2;  // Timer1 Clock Select
  T1PS0 = 2;  m_T1PS0 = 4;  // Timer1 Prescaler Select
  T1PS1 = 3;  m_T1PS1 = 8;  // Timer1 Prescaler Select
  T1PS2 = 4;  m_T1PS2 = 16;  // Timer1 Prescaler Select
  T1PS3 = 5;  m_T1PS3 = 32;  // Timer1 Prescaler Select
  T1DC0 = 6;  m_T1DC0 = 64;  // Timer1 Duty Cycle
  T1DC1 = 7;  m_T1DC1 = 128;  // Timer1 Duty Cycle

type
  TT1IMRset = bitpacked set of (e_T1OIM, e_T1CIM);
  TT1IMRrec = bitpacked record
    T1OIM,
    T1CIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T1IMR: byte absolute $72;  // Timer1 Interrupt Mask Register
  T1IMRset: TT1IMRset absolute $72;
  T1IMRrec: TT1IMRrec absolute $72;
const
  T1OIM = 0;  m_T1OIM = 1;  // Timer1 Overflow Interrupt Mask
  T1CIM = 1;  m_T1CIM = 2;  // Timer1 Compare Interrupt Mask

var
  T2CNT: byte absolute $73;  // Timer2 Counter Register
  T2COR: byte absolute $74;  // Timer2 Compare Register

type
  TT2MRset = bitpacked set of (e_T2CS0, e_T2CS1, e_T2PS0, e_T2PS1, e_T2PS2, e_T2PS3, e_T2DC0, e_T2DC1);
  TT2MRrec = bitpacked record
    T2CS0,
    T2CS1,
    T2PS0,
    T2PS1,
    T2PS2,
    T2PS3,
    T2DC0,
    T2DC1: TBitField;
  end;
var
  T2MR: byte absolute $75;  // Timer2 Mode Register
  T2MRset: TT2MRset absolute $75;
  T2MRrec: TT2MRrec absolute $75;
const
  T2CS0 = 0;  m_T2CS0 = 1;  // Timer2 Clock Select
  T2CS1 = 1;  m_T2CS1 = 2;  // Timer2 Clock Select
  T2PS0 = 2;  m_T2PS0 = 4;  // Timer2 Prescaler Select
  T2PS1 = 3;  m_T2PS1 = 8;  // Timer2 Prescaler Select
  T2PS2 = 4;  m_T2PS2 = 16;  // Timer2 Prescaler Select
  T2PS3 = 5;  m_T2PS3 = 32;  // Timer2 Prescaler Select
  T2DC0 = 6;  m_T2DC0 = 64;  // Timer2 Duty Cycle
  T2DC1 = 7;  m_T2DC1 = 128;  // Timer2 Duty Cycle

type
  TT2IMRset = bitpacked set of (e_T2OIM, e_T2CIM);
  TT2IMRrec = bitpacked record
    T2OIM,
    T2CIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T2IMR: byte absolute $76;  // Timer2 Interrupt Mask Register
  T2IMRset: TT2IMRset absolute $76;
  T2IMRrec: TT2IMRrec absolute $76;
const
  T2OIM = 0;  m_T2OIM = 1;  // Timer2 Overflow Interrupt Mask
  T2CIM = 1;  m_T2CIM = 2;  // Timer2 Compare Interrupt Mask

var
  T3CNT: word absolute $77;  // Timer3 Counter
  T3CNTL: byte absolute $77;
  T3CNTH: byte absolute $78;
  T3COR: word absolute $79;  // Timer3 Compare
  T3CORL: byte absolute $79;
  T3CORH: byte absolute $7A;
  T3ICR: word absolute $7B;  // Timer3 Input Capture
  T3ICRL: byte absolute $7B;
  T3ICRH: byte absolute $7C;

type
  TT3MRAset = bitpacked set of (e_T3CS0, e_T3CS1, e_T3PS0, e_T3PS1, e_T3PS2);
  TT3MRArec = bitpacked record
    T3CS0,
    T3CS1,
    T3PS0,
    T3PS1,
    T3PS2,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3MRA: byte absolute $7D;  // Timer3 Mode Register A
  T3MRAset: TT3MRAset absolute $7D;
  T3MRArec: TT3MRArec absolute $7D;
const
  T3CS0 = 0;  m_T3CS0 = 1;  // Timer3 Clock Select
  T3CS1 = 1;  m_T3CS1 = 2;  // Timer3 Clock Select
  T3PS0 = 2;  m_T3PS0 = 4;  // Timer3 Prescaler Select
  T3PS1 = 3;  m_T3PS1 = 8;  // Timer3 Prescaler Select
  T3PS2 = 4;  m_T3PS2 = 16;  // Timer3 Prescaler Select

type
  TT3MRBset = bitpacked set of (e_T3SCE=1, e_T3CNC, e_T3CE0, e_T3CE1, e_T3ICS0, e_T3ICS1, e_T3ICS2);
  TT3MRBrec = bitpacked record
    ReservedBit0,
    T3SCE,
    T3CNC,
    T3CE0,
    T3CE1,
    T3ICS0,
    T3ICS1,
    T3ICS2: TBitField;
  end;
var
  T3MRB: byte absolute $7E;  // Timer3 Mode Register B
  T3MRBset: TT3MRBset absolute $7E;
  T3MRBrec: TT3MRBrec absolute $7E;
const
  T3SCE = 1;  m_T3SCE = 2;  // Timer3 Software Capture Enable
  T3CNC = 2;  m_T3CNC = 4;  // Timer3 Input Capture Noise Canceller
  T3CE0 = 3;  m_T3CE0 = 8;  // Timer3 Capture Edge Select
  T3CE1 = 4;  m_T3CE1 = 16;  // Timer3 Capture Edge Select
  T3ICS0 = 5;  m_T3ICS0 = 32;  // Timer3 Input Capture Select
  T3ICS1 = 6;  m_T3ICS1 = 64;  // Timer3 Input Capture Select
  T3ICS2 = 7;  m_T3ICS2 = 128;  // Timer3 Input Capture Select

type
  TT3IMRset = bitpacked set of (e_T3OIM, e_T3CIM, e_T3CPIM);
  TT3IMRrec = bitpacked record
    T3OIM,
    T3CIM,
    T3CPIM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3IMR: byte absolute $7F;  // Timer3 Interrupt Mask Register
  T3IMRset: TT3IMRset absolute $7F;
  T3IMRrec: TT3IMRrec absolute $7F;
const
  T3OIM = 0;  m_T3OIM = 1;  // Timer3 Overflow Interrupt Mask
  T3CIM = 1;  m_T3CIM = 2;  // Timer3 Compare Interrupt Mask
  T3CPIM = 2;  m_T3CPIM = 4;  // Timer3 Capture Interrupt Mask

var
  T4CNT: word absolute $80;  // Timer4 Counter
  T4CNTL: byte absolute $80;
  T4CNTH: byte absolute $81;
  T4COR: word absolute $82;  // Timer4 Compare
  T4CORL: byte absolute $82;
  T4CORH: byte absolute $83;
  T4ICR: word absolute $84;  // Timer4 Input Capture
  T4ICRL: byte absolute $84;
  T4ICRH: byte absolute $85;

type
  TT4MRAset = bitpacked set of (e_T4CS0, e_T4CS1, e_T4PS0, e_T4PS1, e_T4PS2);
  TT4MRArec = bitpacked record
    T4CS0,
    T4CS1,
    T4PS0,
    T4PS1,
    T4PS2,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T4MRA: byte absolute $86;  // Timer4 Mode Register A
  T4MRAset: TT4MRAset absolute $86;
  T4MRArec: TT4MRArec absolute $86;
const
  T4CS0 = 0;  m_T4CS0 = 1;  // Timer4 Clock Select
  T4CS1 = 1;  m_T4CS1 = 2;  // Timer4 Clock Select
  T4PS0 = 2;  m_T4PS0 = 4;  // Timer4 Prescaler Select
  T4PS1 = 3;  m_T4PS1 = 8;  // Timer4 Prescaler Select
  T4PS2 = 4;  m_T4PS2 = 16;  // Timer4 Prescaler Select

type
  TT4MRBset = bitpacked set of (e_T4SCE=1, e_T4CNC, e_T4CE0, e_T4CE1, e_T4ICS0, e_T4ICS1, e_T4ICS2);
  TT4MRBrec = bitpacked record
    ReservedBit0,
    T4SCE,
    T4CNC,
    T4CE0,
    T4CE1,
    T4ICS0,
    T4ICS1,
    T4ICS2: TBitField;
  end;
var
  T4MRB: byte absolute $87;  // Timer4 Mode Register B
  T4MRBset: TT4MRBset absolute $87;
  T4MRBrec: TT4MRBrec absolute $87;
const
  T4SCE = 1;  m_T4SCE = 2;  // Timer4 Software Capture Enable
  T4CNC = 2;  m_T4CNC = 4;  // Timer4 Input Capture Noise Canceller
  T4CE0 = 3;  m_T4CE0 = 8;  // Timer4 Capture Edge Select
  T4CE1 = 4;  m_T4CE1 = 16;  // Timer4 Capture Edge Select
  T4ICS0 = 5;  m_T4ICS0 = 32;  // Timer4 Input Capture Select
  T4ICS1 = 6;  m_T4ICS1 = 64;  // Timer4 Input Capture Select
  T4ICS2 = 7;  m_T4ICS2 = 128;  // Timer4 Input Capture Select

type
  TT4IMRset = bitpacked set of (e_T4OIM, e_T4CIM, e_T4CPIM);
  TT4IMRrec = bitpacked record
    T4OIM,
    T4CIM,
    T4CPIM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T4IMR: byte absolute $88;  // Timer4 Interrupt Mask Register
  T4IMRset: TT4IMRset absolute $88;
  T4IMRrec: TT4IMRrec absolute $88;
const
  T4OIM = 0;  m_T4OIM = 1;  // Timer4 Overflow Interrupt Mask
  T4CIM = 1;  m_T4CIM = 2;  // Timer4 Compare Interrupt Mask
  T4CPIM = 2;  m_T4CPIM = 4;  // Timer4 Capture Interrupt Mask

var
  T5OCR: word absolute $8A;  // Timer5 Output Compare
  T5OCRL: byte absolute $8A;
  T5OCRH: byte absolute $8B;

type
  TT5CCRset = bitpacked set of (e_T5CS0, e_T5CS1, e_T5CS2, e_T5CTC);
  TT5CCRrec = bitpacked record
    T5CS0,
    T5CS1,
    T5CS2,
    T5CTC,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T5CCR: byte absolute $8C;  // Timer5 Configuration and Control Register
  T5CCRset: TT5CCRset absolute $8C;
  T5CCRrec: TT5CCRrec absolute $8C;
const
  T5CS0 = 0;  m_T5CS0 = 1;  // Timer5 Clock Select
  T5CS1 = 1;  m_T5CS1 = 2;  // Timer5 Clock Select
  T5CS2 = 2;  m_T5CS2 = 4;  // Timer5 Clock Select
  T5CTC = 3;  m_T5CTC = 8;  // Timer5 Clear Counter on Compare Match

var
  T5CNT: word absolute $8D;  // Timer5 Counter
  T5CNTL: byte absolute $8D;
  T5CNTH: byte absolute $8E;

type
  TT5IMRset = bitpacked set of (e_T5OIM, e_T5CIM);
  TT5IMRrec = bitpacked record
    T5OIM,
    T5CIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T5IMR: byte absolute $8F;  // Timer5 Interrupt Mask Register
  T5IMRset: TT5IMRset absolute $8F;
  T5IMRrec: TT5IMRrec absolute $8F;
const
  T5OIM = 0;  m_T5OIM = 1;  // Timer5 Overflow Interrupt Mask
  T5CIM = 1;  m_T5CIM = 2;  // Timer5 Compare Interrupt Mask

type
  TGTCCRset = bitpacked set of (e_PSR10, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR10,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    TSM: TBitField;
  end;
var
  GTCCR: byte absolute $90;  // General Timer/Counter Control Register
  GTCCRset: TGTCCRset absolute $90;
  GTCCRrec: TGTCCRrec absolute $90;
const
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset
  TSM = 7;  m_TSM = 128;  // Timer Synchronization Mode

type
  TSOTSBset = bitpacked set of (e_CAROB, e_AMPOB, e_SYTOB, e_MANOB, e_WUPOB, e_SFIDOB, e_RROB, e_WCOAO);
  TSOTSBrec = bitpacked record
    CAROB,
    AMPOB,
    SYTOB,
    MANOB,
    WUPOB,
    SFIDOB,
    RROB,
    WCOAO: TBitField;
  end;
var
  SOTSB: byte absolute $91;  // Start Of Telegram Status Path B
  SOTSBset: TSOTSBset absolute $91;
  SOTSBrec: TSOTSBrec absolute $91;
const
  CAROB = 0;  m_CAROB = 1;  // RF Carrier Ok Path B
  AMPOB = 1;  m_AMPOB = 2;  // Modulation Amplitude Ok Path B
  SYTOB = 2;  m_SYTOB = 4;  // Symbol Timing Ok Path B
  MANOB = 3;  m_MANOB = 8;  // Manchester Coding Ok Path B
  WUPOB = 4;  m_WUPOB = 16;  // Wake Up Pattern Ok Path B
  SFIDOB = 5;  m_SFIDOB = 32;  // Start of Frame Identifier Ok Path B
  RROB = 6;  m_RROB = 64;  // RSSI Range Ok Path B
  WCOAO = 7;  m_WCOAO = 128;  // Wake Check Ok Path A Ok

type
  TSOTSAset = bitpacked set of (e_CAROA, e_AMPOA, e_SYTOA, e_MANOA, e_WUPOA, e_SFIDOA, e_RROA, e_WCOBO);
  TSOTSArec = bitpacked record
    CAROA,
    AMPOA,
    SYTOA,
    MANOA,
    WUPOA,
    SFIDOA,
    RROA,
    WCOBO: TBitField;
  end;
var
  SOTSA: byte absolute $92;  // Start Of Telegram Status Path A
  SOTSAset: TSOTSAset absolute $92;
  SOTSArec: TSOTSArec absolute $92;
const
  CAROA = 0;  m_CAROA = 1;  // RF Carrier Ok Path A
  AMPOA = 1;  m_AMPOA = 2;  // Modulation Amplitude Ok Path A
  SYTOA = 2;  m_SYTOA = 4;  // Symbol Timing Ok Path A
  MANOA = 3;  m_MANOA = 8;  // Manchester Coding Ok Path A
  WUPOA = 4;  m_WUPOA = 16;  // Wake Up Pattern Ok Path A
  SFIDOA = 5;  m_SFIDOA = 32;  // Start of Frame Identifier Ok Path A
  RROA = 6;  m_RROA = 64;  // RSSI Range Ok Path A
  WCOBO = 7;  m_WCOBO = 128;  // Wake Check Ok Path B Ok

type
  TSOTCBset = bitpacked set of (e_CAROEB, e_AMPOEB, e_SYTOEB, e_MANOEB, e_WUPEB, e_SFIDEB, e_RROEB, e_WCOAOE);
  TSOTCBrec = bitpacked record
    CAROEB,
    AMPOEB,
    SYTOEB,
    MANOEB,
    WUPEB,
    SFIDEB,
    RROEB,
    WCOAOE: TBitField;
  end;
var
  SOTCB: byte absolute $93;  // Start Of Telegram Conditions Path B
  SOTCBset: TSOTCBset absolute $93;
  SOTCBrec: TSOTCBrec absolute $93;
const
  CAROEB = 0;  m_CAROEB = 1;  // RF Carrier Ok Enable Path B
  AMPOEB = 1;  m_AMPOEB = 2;  // Modulation Amplitude Ok Enable Path B
  SYTOEB = 2;  m_SYTOEB = 4;  // Symbol Timing Ok Enable Path B
  MANOEB = 3;  m_MANOEB = 8;  // Manchester Coding Ok Enable Path B
  WUPEB = 4;  m_WUPEB = 16;  // Wake Up Pattern Enable Path B
  SFIDEB = 5;  m_SFIDEB = 32;  // Start of Frame Identifier Enable Path B
  RROEB = 6;  m_RROEB = 64;  // RSSI Range Ok Enable Path B
  WCOAOE = 7;  m_WCOAOE = 128;  // Wake Check Ok Path A Ok Enable

type
  TSOTCAset = bitpacked set of (e_CAROEA, e_AMPOEA, e_SYTOEA, e_MANOEA, e_WUPEA, e_SFIDEA, e_RROEA, e_WCOBOE);
  TSOTCArec = bitpacked record
    CAROEA,
    AMPOEA,
    SYTOEA,
    MANOEA,
    WUPEA,
    SFIDEA,
    RROEA,
    WCOBOE: TBitField;
  end;
var
  SOTCA: byte absolute $94;  // Start Of Telegram Conditions Path A
  SOTCAset: TSOTCAset absolute $94;
  SOTCArec: TSOTCArec absolute $94;
const
  CAROEA = 0;  m_CAROEA = 1;  // RF Carrier Ok Enable Path A
  AMPOEA = 1;  m_AMPOEA = 2;  // Modulation Amplitude Ok Enable Path A
  SYTOEA = 2;  m_SYTOEA = 4;  // Symbol Timing Ok Enable Path A
  MANOEA = 3;  m_MANOEA = 8;  // Manchester Coding Ok Enable Path A
  WUPEA = 4;  m_WUPEA = 16;  // Wake Up Pattern Enable Path A
  SFIDEA = 5;  m_SFIDEA = 32;  // Start of Frame Identifier Enable Path A
  RROEA = 6;  m_RROEA = 64;  // RSSI Range Ok Enable Path A
  WCOBOE = 7;  m_WCOBOE = 128;  // Wake Check Ok Path B Ok Enable

type
  TTESRBset = bitpacked set of (e_CRCOB, e_EOTLB0, e_EOTLB1);
  TTESRBrec = bitpacked record
    CRCOB,
    EOTLB0,
    EOTLB1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TESRB: byte absolute $95;  // Telegram Status Register Path B
  TESRBset: TTESRBset absolute $95;
  TESRBrec: TTESRBrec absolute $95;
const
  CRCOB = 0;  m_CRCOB = 1;  // Cyclic Redundancy Check Ok Path B
  EOTLB0 = 1;  m_EOTLB0 = 2;  // End of Telegram Location Path B
  EOTLB1 = 2;  m_EOTLB1 = 4;  // End of Telegram Location Path B

type
  TTESRAset = bitpacked set of (e_CRCOA, e_EOTLA0, e_EOTLA1);
  TTESRArec = bitpacked record
    CRCOA,
    EOTLA0,
    EOTLA1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TESRA: byte absolute $96;  // Telegram Status Register Path A
  TESRAset: TTESRAset absolute $96;
  TESRArec: TTESRArec absolute $96;
const
  CRCOA = 0;  m_CRCOA = 1;  // Cyclic Redundancy Check Ok Path A
  EOTLA0 = 1;  m_EOTLA0 = 2;  // End of Telegram Location Path A
  EOTLA1 = 2;  m_EOTLA1 = 4;  // End of Telegram Location Path A

type
  TRDSIMRset = bitpacked set of (e_NBITAM, e_NBITBM, e_EOTAM, e_EOTBM, e_SOTAM, e_SOTBM, e_WCOAM, e_WCOBM);
  TRDSIMRrec = bitpacked record
    NBITAM,
    NBITBM,
    EOTAM,
    EOTBM,
    SOTAM,
    SOTBM,
    WCOAM,
    WCOBM: TBitField;
  end;
var
  RDSIMR: byte absolute $98;  // Rx DSP Status Interrupt Mask Register
  RDSIMRset: TRDSIMRset absolute $98;
  RDSIMRrec: TRDSIMRrec absolute $98;
const
  NBITAM = 0;  m_NBITAM = 1;  // New Bit Path A Interrupt Mask
  NBITBM = 1;  m_NBITBM = 2;  // New Bit Path B Interrupt Mask
  EOTAM = 2;  m_EOTAM = 4;  // End Of Telegram Path A Interrupt Mask
  EOTBM = 3;  m_EOTBM = 8;  // End Of Telegram Path B Interrupt Mask
  SOTAM = 4;  m_SOTAM = 16;  // Start Of Telegram Path A Interrupt Mask
  SOTBM = 5;  m_SOTBM = 32;  // Start Of Telegram Path B Interrupt Mask
  WCOAM = 6;  m_WCOAM = 64;  // Wake Check Ok Path A Interrupt Mask
  WCOBM = 7;  m_WCOBM = 128;  // Wake Check Ok Path B Interrupt Mask

type
  TRDOCRset = bitpacked set of (e_TMDS0=1, e_TMDS1, e_ETRPA, e_ETRPB, e_RDSIDA, e_RDSIDB);
  TRDOCRrec = bitpacked record
    ReservedBit0,
    TMDS0,
    TMDS1,
    ETRPA,
    ETRPB,
    RDSIDA,
    RDSIDB,
    ReservedBit7: TBitField;
  end;
var
  RDOCR: byte absolute $99;  // Rx DSP Output Control
  RDOCRset: TRDOCRset absolute $99;
  RDOCRrec: TRDOCRrec absolute $99;
const
  TMDS0 = 1;  m_TMDS0 = 2;  // Transparent Mode Data Select
  TMDS1 = 2;  m_TMDS1 = 4;  // Transparent Mode Data Select
  ETRPA = 3;  m_ETRPA = 8;  // Enable Transparent Raw Data Path A
  ETRPB = 4;  m_ETRPB = 16;  // Enable Transparent Raw Data Path B
  RDSIDA = 5;  m_RDSIDA = 32;  // Rx DSP Start Bit Is Data Path A
  RDSIDB = 6;  m_RDSIDB = 64;  // Rx DSP Start Bit Is Data Path B

var
  TEMP: word absolute $9B;  // Temperature
  TEMPL: byte absolute $9B;
  TEMPH: byte absolute $9C;

type
  TSYCBset = bitpacked set of (e_SYCSB0, e_SYCSB1, e_SYCSB2, e_SYCSB3, e_SYTLB0, e_SYTLB1, e_SYTLB2, e_SYTLB3);
  TSYCBrec = bitpacked record
    SYCSB0,
    SYCSB1,
    SYCSB2,
    SYCSB3,
    SYTLB0,
    SYTLB1,
    SYTLB2,
    SYTLB3: TBitField;
  end;
var
  SYCB: byte absolute $9D;  // Symbol Check Configuration Path B
  SYCBset: TSYCBset absolute $9D;
  SYCBrec: TSYCBrec absolute $9D;
const
  SYCSB0 = 0;  m_SYCSB0 = 1;  // Symbol Check Size Path B
  SYCSB1 = 1;  m_SYCSB1 = 2;  // Symbol Check Size Path B
  SYCSB2 = 2;  m_SYCSB2 = 4;  // Symbol Check Size Path B
  SYCSB3 = 3;  m_SYCSB3 = 8;  // Symbol Check Size Path B
  SYTLB0 = 4;  m_SYTLB0 = 16;  // Symbol Timing Limit Path B
  SYTLB1 = 5;  m_SYTLB1 = 32;  // Symbol Timing Limit Path B
  SYTLB2 = 6;  m_SYTLB2 = 64;  // Symbol Timing Limit Path B
  SYTLB3 = 7;  m_SYTLB3 = 128;  // Symbol Timing Limit Path B

type
  TSYCAset = bitpacked set of (e_SYCSA0, e_SYCSA1, e_SYCSA2, e_SYCSA3, e_SYTLA0, e_SYTLA1, e_SYTLA2, e_SYTLA3);
  TSYCArec = bitpacked record
    SYCSA0,
    SYCSA1,
    SYCSA2,
    SYCSA3,
    SYTLA0,
    SYTLA1,
    SYTLA2,
    SYTLA3: TBitField;
  end;
var
  SYCA: byte absolute $9E;  // Symbol Check Configuration Path A
  SYCAset: TSYCAset absolute $9E;
  SYCArec: TSYCArec absolute $9E;
const
  SYCSA0 = 0;  m_SYCSA0 = 1;  // Symbol Check Size Path A
  SYCSA1 = 1;  m_SYCSA1 = 2;  // Symbol Check Size Path A
  SYCSA2 = 2;  m_SYCSA2 = 4;  // Symbol Check Size Path A
  SYCSA3 = 3;  m_SYCSA3 = 8;  // Symbol Check Size Path A
  SYTLA0 = 4;  m_SYTLA0 = 16;  // Symbol Timing Limit Path A
  SYTLA1 = 5;  m_SYTLA1 = 32;  // Symbol Timing Limit Path A
  SYTLA2 = 6;  m_SYTLA2 = 64;  // Symbol Timing Limit Path A
  SYTLA3 = 7;  m_SYTLA3 = 128;  // Symbol Timing Limit Path A

var
  RXFOB: byte absolute $9F;  // Received Frequency Offset vs Intermediate Frequency Path B
  RXFOA: byte absolute $A0;  // Received Frequency Offset vs Intermediate Frequency Path A
  DMPATB: byte absolute $A1;  // Demodulator Signal Check Pattern Path B
  DMPATA: byte absolute $A2;  // Demodulator Signal Check Pattern Path A

type
  TDMPCset = bitpacked set of (e_PCFTDA, e_PCIALA, e_PCSIGA, e_PCENA, e_PCFTDB, e_PCIALB, e_PCSIGB, e_PCENB);
  TDMPCrec = bitpacked record
    PCFTDA,
    PCIALA,
    PCSIGA,
    PCENA,
    PCFTDB,
    PCIALB,
    PCSIGB,
    PCENB: TBitField;
  end;
var
  DMPC: byte absolute $A3;  // Demodulator Pattern Check Control
  DMPCset: TDMPCset absolute $A3;
  DMPCrec: TDMPCrec absolute $A3;
const
  PCFTDA = 0;  m_PCFTDA = 1;  // Pattern Check Frequency Tracking Disable Path A
  PCIALA = 1;  m_PCIALA = 2;  // Pattern Check Ignore Amplitude Low Path A
  PCSIGA = 2;  m_PCSIGA = 4;  // Pattern Check Signal Path A
  PCENA = 3;  m_PCENA = 8;  // Pattern Check Enable Path A
  PCFTDB = 4;  m_PCFTDB = 16;  // Pattern Check Frequency Tracking Disable Path B
  PCIALB = 5;  m_PCIALB = 32;  // Pattern Check Ignore Amplitude Low Path B
  PCSIGB = 6;  m_PCSIGB = 64;  // Pattern Check Signal Path B
  PCENB = 7;  m_PCENB = 128;  // Pattern Check Enable Path B

type
  TDMPCBset = bitpacked set of (e_PCSEVB0, e_PCSEVB1, e_PCSEVB2, e_PCLENB0, e_PCLENB1, e_PCLENB2, e_PSELB0, e_PSELB1);
  TDMPCBrec = bitpacked record
    PCSEVB0,
    PCSEVB1,
    PCSEVB2,
    PCLENB0,
    PCLENB1,
    PCLENB2,
    PSELB0,
    PSELB1: TBitField;
  end;
var
  DMPCB: byte absolute $A4;  // Demodulator Pattern Check Control Path B
  DMPCBset: TDMPCBset absolute $A4;
  DMPCBrec: TDMPCBrec absolute $A4;
const
  PCSEVB0 = 0;  m_PCSEVB0 = 1;  // Pattern Check Severity Path B
  PCSEVB1 = 1;  m_PCSEVB1 = 2;  // Pattern Check Severity Path B
  PCSEVB2 = 2;  m_PCSEVB2 = 4;  // Pattern Check Severity Path B
  PCLENB0 = 3;  m_PCLENB0 = 8;  // Pattern Check Length Path B
  PCLENB1 = 4;  m_PCLENB1 = 16;  // Pattern Check Length Path B
  PCLENB2 = 5;  m_PCLENB2 = 32;  // Pattern Check Length Path B
  PSELB0 = 6;  m_PSELB0 = 64;  // Pattern Select Path B
  PSELB1 = 7;  m_PSELB1 = 128;  // Pattern Select Path B

type
  TDMPCAset = bitpacked set of (e_PCSEVA0, e_PCSEVA1, e_PCSEVA2, e_PCLENA0, e_PCLENA1, e_PCLENA2, e_PSELA0, e_PSELA1);
  TDMPCArec = bitpacked record
    PCSEVA0,
    PCSEVA1,
    PCSEVA2,
    PCLENA0,
    PCLENA1,
    PCLENA2,
    PSELA0,
    PSELA1: TBitField;
  end;
var
  DMPCA: byte absolute $A5;  // Demodulator Pattern Check Control Path A
  DMPCAset: TDMPCAset absolute $A5;
  DMPCArec: TDMPCArec absolute $A5;
const
  PCSEVA0 = 0;  m_PCSEVA0 = 1;  // Pattern Check Severity Path A
  PCSEVA1 = 1;  m_PCSEVA1 = 2;  // Pattern Check Severity Path A
  PCSEVA2 = 2;  m_PCSEVA2 = 4;  // Pattern Check Severity Path A
  PCLENA0 = 3;  m_PCLENA0 = 8;  // Pattern Check Length Path A
  PCLENA1 = 4;  m_PCLENA1 = 16;  // Pattern Check Length Path A
  PCLENA2 = 5;  m_PCLENA2 = 32;  // Pattern Check Length Path A
  PSELA0 = 6;  m_PSELA0 = 64;  // Pattern Select Path A
  PSELA1 = 7;  m_PSELA1 = 128;  // Pattern Select Path A

var
  DMSRB: byte absolute $A6;  // Demodulator Symbol Rate Path B
  DMSRA: byte absolute $A7;  // Demodulator Symbol Rate Path A

type
  TDMMBset = bitpacked set of (e_DMATB0, e_DMATB1, e_DMATB2, e_DMATB3, e_DMATB4, e_DMPB, e_DMHB, e_DMNEB);
  TDMMBrec = bitpacked record
    DMATB0,
    DMATB1,
    DMATB2,
    DMATB3,
    DMATB4,
    DMPB,
    DMHB,
    DMNEB: TBitField;
  end;
var
  DMMB: byte absolute $A8;  // Demodulator Mode Path B
  DMMBset: TDMMBset absolute $A8;
  DMMBrec: TDMMBrec absolute $A8;
const
  DMATB0 = 0;  m_DMATB0 = 1;  // Demodulator Amplitude Threshold Path B
  DMATB1 = 1;  m_DMATB1 = 2;  // Demodulator Amplitude Threshold Path B
  DMATB2 = 2;  m_DMATB2 = 4;  // Demodulator Amplitude Threshold Path B
  DMATB3 = 3;  m_DMATB3 = 8;  // Demodulator Amplitude Threshold Path B
  DMATB4 = 4;  m_DMATB4 = 16;  // Demodulator Amplitude Threshold Path B
  DMPB = 5;  m_DMPB = 32;  // Demodulator Data Polarity Path B
  DMHB = 6;  m_DMHB = 64;  // Demodulator Hold Mode Path B
  DMNEB = 7;  m_DMNEB = 128;  // Demodulator NRZ Enable Path B

type
  TDMMAset = bitpacked set of (e_DMATA0, e_DMATA1, e_DMATA2, e_DMATA3, e_DMATA4, e_DMPA, e_DMHA, e_DMNEA);
  TDMMArec = bitpacked record
    DMATA0,
    DMATA1,
    DMATA2,
    DMATA3,
    DMATA4,
    DMPA,
    DMHA,
    DMNEA: TBitField;
  end;
var
  DMMA: byte absolute $A9;  // Demodulator Mode Path A
  DMMAset: TDMMAset absolute $A9;
  DMMArec: TDMMArec absolute $A9;
const
  DMATA0 = 0;  m_DMATA0 = 1;  // Demodulator Amplitude Threshold Path A
  DMATA1 = 1;  m_DMATA1 = 2;  // Demodulator Amplitude Threshold Path A
  DMATA2 = 2;  m_DMATA2 = 4;  // Demodulator Amplitude Threshold Path A
  DMATA3 = 3;  m_DMATA3 = 8;  // Demodulator Amplitude Threshold Path A
  DMATA4 = 4;  m_DMATA4 = 16;  // Demodulator Amplitude Threshold Path A
  DMPA = 5;  m_DMPA = 32;  // Demodulator Data Polarity Path A
  DMHA = 6;  m_DMHA = 64;  // Demodulator Hold Mode Path A
  DMNEA = 7;  m_DMNEA = 128;  // Demodulator NRZ Enable Path A

type
  TDMCDBset = bitpacked set of (e_DMCLB0, e_DMCLB1, e_DMCLB2, e_DMCLB3, e_DMCLB4, e_DMCTB0, e_DMCTB1, e_DMCTB2);
  TDMCDBrec = bitpacked record
    DMCLB0,
    DMCLB1,
    DMCLB2,
    DMCLB3,
    DMCLB4,
    DMCTB0,
    DMCTB1,
    DMCTB2: TBitField;
  end;
var
  DMCDB: byte absolute $AA;  // Demodulator Carrier Detect Path B
  DMCDBset: TDMCDBset absolute $AA;
  DMCDBrec: TDMCDBrec absolute $AA;
const
  DMCLB0 = 0;  m_DMCLB0 = 1;  // Demodulator Carrier Detect Limit Path B
  DMCLB1 = 1;  m_DMCLB1 = 2;  // Demodulator Carrier Detect Limit Path B
  DMCLB2 = 2;  m_DMCLB2 = 4;  // Demodulator Carrier Detect Limit Path B
  DMCLB3 = 3;  m_DMCLB3 = 8;  // Demodulator Carrier Detect Limit Path B
  DMCLB4 = 4;  m_DMCLB4 = 16;  // Demodulator Carrier Detect Limit Path B
  DMCTB0 = 5;  m_DMCTB0 = 32;  // Demodulator Carrier Detect Time Path B
  DMCTB1 = 6;  m_DMCTB1 = 64;  // Demodulator Carrier Detect Time Path B
  DMCTB2 = 7;  m_DMCTB2 = 128;  // Demodulator Carrier Detect Time Path B

type
  TDMCDAset = bitpacked set of (e_DMCLA0, e_DMCLA1, e_DMCLA2, e_DMCLA3, e_DMCLA4, e_DMCTA0, e_DMCTA1, e_DMCTA2);
  TDMCDArec = bitpacked record
    DMCLA0,
    DMCLA1,
    DMCLA2,
    DMCLA3,
    DMCLA4,
    DMCTA0,
    DMCTA1,
    DMCTA2: TBitField;
  end;
var
  DMCDA: byte absolute $AB;  // Demodulator Carrier Detect Path A
  DMCDAset: TDMCDAset absolute $AB;
  DMCDArec: TDMCDArec absolute $AB;
const
  DMCLA0 = 0;  m_DMCLA0 = 1;  // Demodulator Carrier Detect Limit Path A
  DMCLA1 = 1;  m_DMCLA1 = 2;  // Demodulator Carrier Detect Limit Path A
  DMCLA2 = 2;  m_DMCLA2 = 4;  // Demodulator Carrier Detect Limit Path A
  DMCLA3 = 3;  m_DMCLA3 = 8;  // Demodulator Carrier Detect Limit Path A
  DMCLA4 = 4;  m_DMCLA4 = 16;  // Demodulator Carrier Detect Limit Path A
  DMCTA0 = 5;  m_DMCTA0 = 32;  // Demodulator Carrier Detect Time Path A
  DMCTA1 = 6;  m_DMCTA1 = 64;  // Demodulator Carrier Detect Time Path A
  DMCTA2 = 7;  m_DMCTA2 = 128;  // Demodulator Carrier Detect Time Path A

type
  TDMCRBset = bitpacked set of (e_DMPGB0, e_DMPGB1, e_DMPGB2, e_DMPGB3, e_DMPGB4, e_SASKB, e_SY1TB, e_DMARB);
  TDMCRBrec = bitpacked record
    DMPGB0,
    DMPGB1,
    DMPGB2,
    DMPGB3,
    DMPGB4,
    SASKB,
    SY1TB,
    DMARB: TBitField;
  end;
var
  DMCRB: byte absolute $AC;  // Demodulator Control Path B
  DMCRBset: TDMCRBset absolute $AC;
  DMCRBrec: TDMCRBrec absolute $AC;
const
  DMPGB0 = 0;  m_DMPGB0 = 1;  // Demodulator PLL Loop Gain Path B
  DMPGB1 = 1;  m_DMPGB1 = 2;  // Demodulator PLL Loop Gain Path B
  DMPGB2 = 2;  m_DMPGB2 = 4;  // Demodulator PLL Loop Gain Path B
  DMPGB3 = 3;  m_DMPGB3 = 8;  // Demodulator PLL Loop Gain Path B
  DMPGB4 = 4;  m_DMPGB4 = 16;  // Demodulator PLL Loop Gain Path B
  SASKB = 5;  m_SASKB = 32;  // Select ASK Demodulation Path B
  SY1TB = 6;  m_SY1TB = 64;  // Symbol Check with only 1T Path B
  DMARB = 7;  m_DMARB = 128;  // Demodulator Automatic Restart Path B

type
  TDMCRAset = bitpacked set of (e_DMPGA0, e_DMPGA1, e_DMPGA2, e_DMPGA3, e_DMPGA4, e_SASKA, e_SY1TA, e_DMARA);
  TDMCRArec = bitpacked record
    DMPGA0,
    DMPGA1,
    DMPGA2,
    DMPGA3,
    DMPGA4,
    SASKA,
    SY1TA,
    DMARA: TBitField;
  end;
var
  DMCRA: byte absolute $AD;  // Demodulator Control Path A
  DMCRAset: TDMCRAset absolute $AD;
  DMCRArec: TDMCRArec absolute $AD;
const
  DMPGA0 = 0;  m_DMPGA0 = 1;  // Demodulator PLL Loop Gain Path A
  DMPGA1 = 1;  m_DMPGA1 = 2;  // Demodulator PLL Loop Gain Path A
  DMPGA2 = 2;  m_DMPGA2 = 4;  // Demodulator PLL Loop Gain Path A
  DMPGA3 = 3;  m_DMPGA3 = 8;  // Demodulator PLL Loop Gain Path A
  DMPGA4 = 4;  m_DMPGA4 = 16;  // Demodulator PLL Loop Gain Path A
  SASKA = 5;  m_SASKA = 32;  // Select ASK Demodulation Path A
  SY1TA = 6;  m_SY1TA = 64;  // Symbol Check with only 1T Path A
  DMARA = 7;  m_DMARA = 128;  // Demodulator Automatic Restart Path A

type
  TDMDNset = bitpacked set of (e_DMDNA0, e_DMDNA1, e_DMDNA2, e_DMDNA3, e_DMDNB0, e_DMDNB1, e_DMDNB2, e_DMDNB3);
  TDMDNrec = bitpacked record
    DMDNA0,
    DMDNA1,
    DMDNA2,
    DMDNA3,
    DMDNB0,
    DMDNB1,
    DMDNB2,
    DMDNB3: TBitField;
  end;
var
  DMDN: byte absolute $AE;  // Demodulator Down Sampling
  DMDNset: TDMDNset absolute $AE;
  DMDNrec: TDMDNrec absolute $AE;
const
  DMDNA0 = 0;  m_DMDNA0 = 1;  // Demodulator Down-sampling Path A
  DMDNA1 = 1;  m_DMDNA1 = 2;  // Demodulator Down-sampling Path A
  DMDNA2 = 2;  m_DMDNA2 = 4;  // Demodulator Down-sampling Path A
  DMDNA3 = 3;  m_DMDNA3 = 8;  // Demodulator Down-sampling Path A
  DMDNB0 = 4;  m_DMDNB0 = 16;  // Demodulator Down-sampling Path B
  DMDNB1 = 5;  m_DMDNB1 = 32;  // Demodulator Down-sampling Path B
  DMDNB2 = 6;  m_DMDNB2 = 64;  // Demodulator Down-sampling Path B
  DMDNB3 = 7;  m_DMDNB3 = 128;  // Demodulator Down-sampling Path B

type
  TCHCRset = bitpacked set of (e_BWM0, e_BWM1, e_BWM2, e_BWM3);
  TCHCRrec = bitpacked record
    BWM0,
    BWM1,
    BWM2,
    BWM3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CHCR: byte absolute $AF;  // Channel Filter Configuration Register
  CHCRset: TCHCRset absolute $AF;
  CHCRrec: TCHCRrec absolute $AF;
const
  BWM0 = 0;  m_BWM0 = 1;  // Bandwidth Mode
  BWM1 = 1;  m_BWM1 = 2;  // Bandwidth Mode
  BWM2 = 2;  m_BWM2 = 4;  // Bandwidth Mode
  BWM3 = 3;  m_BWM3 = 8;  // Bandwidth Mode

type
  TCHDNset = bitpacked set of (e_BBDN0, e_BBDN1, e_BBDN2, e_BBDN3, e_BBDN4, e_ADCDN);
  TCHDNrec = bitpacked record
    BBDN0,
    BBDN1,
    BBDN2,
    BBDN3,
    BBDN4,
    ADCDN,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CHDN: byte absolute $B0;  // Channel Filter Down Sampling Register
  CHDNset: TCHDNset absolute $B0;
  CHDNrec: TCHDNrec absolute $B0;
const
  BBDN0 = 0;  m_BBDN0 = 1;  // Baseband Filter Down Sampling Ratio
  BBDN1 = 1;  m_BBDN1 = 2;  // Baseband Filter Down Sampling Ratio
  BBDN2 = 2;  m_BBDN2 = 4;  // Baseband Filter Down Sampling Ratio
  BBDN3 = 3;  m_BBDN3 = 8;  // Baseband Filter Down Sampling Ratio
  BBDN4 = 4;  m_BBDN4 = 16;  // Baseband Filter Down Sampling Ratio
  ADCDN = 5;  m_ADCDN = 32;  // ADC Down Sampling Configuration

type
  TSFIDCBset = bitpacked set of (e_SFIDTB0, e_SFIDTB1, e_SFIDTB2, e_SFIDTB3, e_SFIDTB4, e_SEMEB=7);
  TSFIDCBrec = bitpacked record
    SFIDTB0,
    SFIDTB1,
    SFIDTB2,
    SFIDTB3,
    SFIDTB4,
    ReservedBit5,
    ReservedBit6,
    SEMEB: TBitField;
  end;
var
  SFIDCB: byte absolute $B1;  // Start Frame ID Configuration Path B
  SFIDCBset: TSFIDCBset absolute $B1;
  SFIDCBrec: TSFIDCBrec absolute $B1;
const
  SFIDTB0 = 0;  m_SFIDTB0 = 1;  // Start Frame ID Threshold Path B
  SFIDTB1 = 1;  m_SFIDTB1 = 2;  // Start Frame ID Threshold Path B
  SFIDTB2 = 2;  m_SFIDTB2 = 4;  // Start Frame ID Threshold Path B
  SFIDTB3 = 3;  m_SFIDTB3 = 8;  // Start Frame ID Threshold Path B
  SFIDTB4 = 4;  m_SFIDTB4 = 16;  // Start Frame ID Threshold Path B
  SEMEB = 7;  m_SEMEB = 128;  // Serial Mode Enable Path B

var
  SFIDLB: byte absolute $B2;  // Start Frame ID Length Path B
  WUPTB: byte absolute $B3;  // Wake-Up Pattern Threshold Path B
  WUPLB: byte absolute $B4;  // Wake-Up Pattern Length Path B
  SFID1B: byte absolute $B5;  // Start Frame ID Byte 1 Path B
  SFID2B: byte absolute $B6;  // Start Frame ID Byte 2 Path B
  SFID3B: byte absolute $B7;  // Start Frame ID Byte 3 Path B
  SFID4B: byte absolute $B8;  // Start Frame ID Byte 4 Path B
  WUP1B: byte absolute $B9;  // Wake-Up Pattern Byte 1 Path B
  WUP2B: byte absolute $BA;  // Wake-Up Pattern Byte 2 Path B
  WUP3B: byte absolute $BB;  // Wake-Up Pattern Byte 3 Path B
  WUP4B: byte absolute $BC;  // Wake-Up Pattern Byte 4 Path B

type
  TSFIDCAset = bitpacked set of (e_SFIDTA0, e_SFIDTA1, e_SFIDTA2, e_SFIDTA3, e_SFIDTA4, e_SEMEA=7);
  TSFIDCArec = bitpacked record
    SFIDTA0,
    SFIDTA1,
    SFIDTA2,
    SFIDTA3,
    SFIDTA4,
    ReservedBit5,
    ReservedBit6,
    SEMEA: TBitField;
  end;
var
  SFIDCA: byte absolute $BD;  // Start Frame ID Configuration Path A
  SFIDCAset: TSFIDCAset absolute $BD;
  SFIDCArec: TSFIDCArec absolute $BD;
const
  SFIDTA0 = 0;  m_SFIDTA0 = 1;  // Start Frame ID Threshold Path A
  SFIDTA1 = 1;  m_SFIDTA1 = 2;  // Start Frame ID Threshold Path A
  SFIDTA2 = 2;  m_SFIDTA2 = 4;  // Start Frame ID Threshold Path A
  SFIDTA3 = 3;  m_SFIDTA3 = 8;  // Start Frame ID Threshold Path A
  SFIDTA4 = 4;  m_SFIDTA4 = 16;  // Start Frame ID Threshold Path A
  SEMEA = 7;  m_SEMEA = 128;  // Serial Mode Enable Path A

var
  SFIDLA: byte absolute $BE;  // Start Frame ID Length Path A
  WUPTA: byte absolute $BF;  // Wake-Up Pattern Threshold Path A
  WUPLA: byte absolute $C0;  // Wake-Up Pattern Length Path A
  SFID1A: byte absolute $C1;  // Start Frame ID Byte 1 Path A
  SFID2A: byte absolute $C2;  // Start Frame ID Byte 2 Path A
  SFID3A: byte absolute $C3;  // Start Frame ID Byte 3 Path A
  SFID4A: byte absolute $C4;  // Start Frame ID Byte 4 Path A
  WUP1A: byte absolute $C5;  // Wake-Up Pattern Byte 1 Path A
  WUP2A: byte absolute $C6;  // Wake-Up Pattern Byte 2 Path A
  WUP3A: byte absolute $C7;  // Wake-Up Pattern Byte 3 Path A
  WUP4A: byte absolute $C8;  // Wake-Up Pattern Byte 4 Path A
  CLKOD: byte absolute $C9;  // Clock Output Divider

type
  TCLKOCRset = bitpacked set of (e_CLKOS0, e_CLKOS1, e_CLKOEN);
  TCLKOCRrec = bitpacked record
    CLKOS0,
    CLKOS1,
    CLKOEN,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKOCR: byte absolute $CA;  // Clock output control Register
  CLKOCRset: TCLKOCRset absolute $CA;
  CLKOCRrec: TCLKOCRrec absolute $CA;
const
  CLKOS0 = 0;  m_CLKOS0 = 1;  // Clock Output Source
  CLKOS1 = 1;  m_CLKOS1 = 2;  // Clock Output Source
  CLKOEN = 2;  m_CLKOEN = 4;  // Clock Output Driver Enable

type
  TXFUSEset = bitpacked set of (e_FLPT0, e_FLPT1, e_E2PT0, e_E2PT1, e_NVPTE, e_CKOUT=6);
  TXFUSErec = bitpacked record
    FLPT0,
    FLPT1,
    E2PT0,
    E2PT1,
    NVPTE,
    ReservedBit5,
    CKOUT,
    ReservedBit7: TBitField;
  end;
var
  XFUSE: byte absolute $CB;  // XROW Fuse
  XFUSEset: TXFUSEset absolute $CB;
  XFUSErec: TXFUSErec absolute $CB;
const
  FLPT0 = 0;  m_FLPT0 = 1;  // Flash Memory Programming Time
  FLPT1 = 1;  m_FLPT1 = 2;  // Flash Memory Programming Time
  E2PT0 = 2;  m_E2PT0 = 4;  // EEPROM Programming Time
  E2PT1 = 3;  m_E2PT1 = 8;  // EEPROM Programming Time
  NVPTE = 4;  m_NVPTE = 16;  // NVM Variable Programming Time Enable
  CKOUT = 6;  m_CKOUT = 64;  // CP2 Output on Port ckout

type
  TSRCCALset = bitpacked set of (e_SRCCAL0, e_SRCCAL1, e_SRCCAL2, e_SRCCAL3, e_SRCCAL4, e_SRCCAL5, e_SRCTC0, e_SRCTC1);
  TSRCCALrec = bitpacked record
    SRCCAL0,
    SRCCAL1,
    SRCCAL2,
    SRCCAL3,
    SRCCAL4,
    SRCCAL5,
    SRCTC0,
    SRCTC1: TBitField;
  end;
var
  SRCCAL: byte absolute $CC;  // Slow RC Oscillator Calibration
  SRCCALset: TSRCCALset absolute $CC;
  SRCCALrec: TSRCCALrec absolute $CC;
const
  SRCCAL0 = 0;  m_SRCCAL0 = 1;  // Slow RC Oscillator Calibration
  SRCCAL1 = 1;  m_SRCCAL1 = 2;  // Slow RC Oscillator Calibration
  SRCCAL2 = 2;  m_SRCCAL2 = 4;  // Slow RC Oscillator Calibration
  SRCCAL3 = 3;  m_SRCCAL3 = 8;  // Slow RC Oscillator Calibration
  SRCCAL4 = 4;  m_SRCCAL4 = 16;  // Slow RC Oscillator Calibration
  SRCCAL5 = 5;  m_SRCCAL5 = 32;  // Slow RC Oscillator Calibration
  SRCTC0 = 6;  m_SRCTC0 = 64;  // Slow RC Oscillator Temperature Compensation
  SRCTC1 = 7;  m_SRCTC1 = 128;  // Slow RC Oscillator Temperature Compensation

type
  TFRCCALset = bitpacked set of (e_FRCCAL0, e_FRCCAL1, e_FRCCAL2, e_FRCCAL3, e_FRCCAL4, e_FRCTC);
  TFRCCALrec = bitpacked record
    FRCCAL0,
    FRCCAL1,
    FRCCAL2,
    FRCCAL3,
    FRCCAL4,
    FRCTC,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FRCCAL: byte absolute $CD;  // Fast RC Oscillator Calibration
  FRCCALset: TFRCCALset absolute $CD;
  FRCCALrec: TFRCCALrec absolute $CD;
const
  FRCCAL0 = 0;  m_FRCCAL0 = 1;  // Fast RC Oscillator Calibration
  FRCCAL1 = 1;  m_FRCCAL1 = 2;  // Fast RC Oscillator Calibration
  FRCCAL2 = 2;  m_FRCCAL2 = 4;  // Fast RC Oscillator Calibration
  FRCCAL3 = 3;  m_FRCCAL3 = 8;  // Fast RC Oscillator Calibration
  FRCCAL4 = 4;  m_FRCCAL4 = 16;  // Fast RC Oscillator Calibration
  FRCTC = 5;  m_FRCTC = 32;  // Fast RC Oscillator Temperature Compensation

type
  TCMSRset = bitpacked set of (e_ECF);
  TCMSRrec = bitpacked record
    ECF,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CMSR: byte absolute $CE;  // Clock Management Status Register
  CMSRset: TCMSRset absolute $CE;
  CMSRrec: TCMSRrec absolute $CE;
const
  ECF = 0;  m_ECF = 1;  // External Clock Fail

type
  TCMOCRset = bitpacked set of (e_FRCAO, e_SRCAO, e_FRCACT, e_SRCACT);
  TCMOCRrec = bitpacked record
    FRCAO,
    SRCAO,
    FRCACT,
    SRCACT,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CMOCR: byte absolute $CF;  // Clock Management Override Control Register
  CMOCRset: TCMOCRset absolute $CF;
  CMOCRrec: TCMOCRrec absolute $CF;
const
  FRCAO = 0;  m_FRCAO = 1;  // FRC Oscillator Always On
  SRCAO = 1;  m_SRCAO = 2;  // SRC Oscillator Always On
  FRCACT = 2;  m_FRCACT = 4;  // FRC Oscillator Active
  SRCACT = 3;  m_SRCACT = 8;  // SRC Oscillator Active

type
  TSUPFRset = bitpacked set of (e_AVCCRF, e_AVCCLF, e_DCRDYF, e_DCERF);
  TSUPFRrec = bitpacked record
    AVCCRF,
    AVCCLF,
    DCRDYF,
    DCERF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPFR: byte absolute $D0;  // Supply Flag Register
  SUPFRset: TSUPFRset absolute $D0;
  SUPFRrec: TSUPFRrec absolute $D0;
const
  AVCCRF = 0;  m_AVCCRF = 1;  // AVCC Reset Flag
  AVCCLF = 1;  m_AVCCLF = 2;  // AVCC Low Flag
  DCRDYF = 2;  m_DCRDYF = 4;  // DCDC Converter Ready Flag
  DCERF = 3;  m_DCERF = 8;  // DCDC Converter Error Flag

type
  TSUPCRset = bitpacked set of (e_AVCCRM, e_AVCCLM, e_AVEN=5, e_AVDIC);
  TSUPCRrec = bitpacked record
    AVCCRM,
    AVCCLM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    AVEN,
    AVDIC,
    ReservedBit7: TBitField;
  end;
var
  SUPCR: byte absolute $D1;  // Supply Control Register
  SUPCRset: TSUPCRset absolute $D1;
  SUPCRrec: TSUPCRrec absolute $D1;
const
  AVCCRM = 0;  m_AVCCRM = 1;  // AVCC Reset Interrupt Mask
  AVCCLM = 1;  m_AVCCLM = 2;  // AVCC Low Interrupt Mask
  AVEN = 5;  m_AVEN = 32;  // AVCC Enable
  AVDIC = 6;  m_AVDIC = 64;  // AVCC Double Internal Current

type
  TSUPCA1set = bitpacked set of (e_DVCAL0, e_DVCAL1, e_VVCAL0, e_VVCAL1, e_AVCAL0, e_AVCAL1);
  TSUPCA1rec = bitpacked record
    DVCAL0,
    DVCAL1,
    VVCAL0,
    VVCAL1,
    AVCAL0,
    AVCAL1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA1: byte absolute $D2;  // Supply Calibration 1
  SUPCA1set: TSUPCA1set absolute $D2;
  SUPCA1rec: TSUPCA1rec absolute $D2;
const
  DVCAL0 = 0;  m_DVCAL0 = 1;  // DVCC Regulator Voltage Calibration
  DVCAL1 = 1;  m_DVCAL1 = 2;  // DVCC Regulator Voltage Calibration
  VVCAL0 = 2;  m_VVCAL0 = 4;  // VMEM Regulator Voltage Calibration
  VVCAL1 = 3;  m_VVCAL1 = 8;  // VMEM Regulator Voltage Calibration
  AVCAL0 = 4;  m_AVCAL0 = 16;  // AVCC Regulator Voltage Calibration
  AVCAL1 = 5;  m_AVCAL1 = 32;  // AVCC Regulator Voltage Calibration

type
  TSUPCA2set = bitpacked set of (e_BGCAL0, e_BGCAL1, e_BGCAL2, e_BGCAL3, e_BGCAL4, e_BGCAL5);
  TSUPCA2rec = bitpacked record
    BGCAL0,
    BGCAL1,
    BGCAL2,
    BGCAL3,
    BGCAL4,
    BGCAL5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA2: byte absolute $D3;  // Supply Calibration 2
  SUPCA2set: TSUPCA2set absolute $D3;
  SUPCA2rec: TSUPCA2rec absolute $D3;
const
  BGCAL0 = 0;  m_BGCAL0 = 1;  // Band Gap Calibration
  BGCAL1 = 1;  m_BGCAL1 = 2;  // Band Gap Calibration
  BGCAL2 = 2;  m_BGCAL2 = 4;  // Band Gap Calibration
  BGCAL3 = 3;  m_BGCAL3 = 8;  // Band Gap Calibration
  BGCAL4 = 4;  m_BGCAL4 = 16;  // Band Gap Calibration
  BGCAL5 = 5;  m_BGCAL5 = 32;  // Band Gap Calibration

type
  TSUPCA3set = bitpacked set of (e_DMCAL0, e_DMCAL1, e_VMCAL0, e_VMCAL1, e_AMCAL0, e_AMCAL1, e_VMOCAL0, e_VMOCAL1);
  TSUPCA3rec = bitpacked record
    DMCAL0,
    DMCAL1,
    VMCAL0,
    VMCAL1,
    AMCAL0,
    AMCAL1,
    VMOCAL0,
    VMOCAL1: TBitField;
  end;
var
  SUPCA3: byte absolute $D4;  // Supply Calibration 3
  SUPCA3set: TSUPCA3set absolute $D4;
  SUPCA3rec: TSUPCA3rec absolute $D4;
const
  DMCAL0 = 0;  m_DMCAL0 = 1;  // DVCC Monitor Calibration
  DMCAL1 = 1;  m_DMCAL1 = 2;  // DVCC Monitor Calibration
  VMCAL0 = 2;  m_VMCAL0 = 4;  // VMEM Monitor Calibration
  VMCAL1 = 3;  m_VMCAL1 = 8;  // VMEM Monitor Calibration
  AMCAL0 = 4;  m_AMCAL0 = 16;  // AVCC Monitor Calibration
  AMCAL1 = 5;  m_AMCAL1 = 32;  // AVCC Monitor Calibration
  VMOCAL0 = 6;  m_VMOCAL0 = 64;  // Voltage Monitor Calibration
  VMOCAL1 = 7;  m_VMOCAL1 = 128;  // Voltage Monitor Calibration

type
  TSUPCA4set = bitpacked set of (e_PTCAL0, e_PTCAL1, e_PTCAL2, e_PTCAL3, e_PTCAL4, e_PTCAL5, e_PTCAL6, e_PTCAL7);
  TSUPCA4rec = bitpacked record
    PTCAL0,
    PTCAL1,
    PTCAL2,
    PTCAL3,
    PTCAL4,
    PTCAL5,
    PTCAL6,
    PTCAL7: TBitField;
  end;
var
  SUPCA4: byte absolute $D5;  // Supply Calibration 4
  SUPCA4set: TSUPCA4set absolute $D5;
  SUPCA4rec: TSUPCA4rec absolute $D5;
const
  PTCAL0 = 0;  m_PTCAL0 = 1;  // Bandgap PTAT Calibration
  PTCAL1 = 1;  m_PTCAL1 = 2;  // Bandgap PTAT Calibration
  PTCAL2 = 2;  m_PTCAL2 = 4;  // Bandgap PTAT Calibration
  PTCAL3 = 3;  m_PTCAL3 = 8;  // Bandgap PTAT Calibration
  PTCAL4 = 4;  m_PTCAL4 = 16;  // Bandgap PTAT Calibration
  PTCAL5 = 5;  m_PTCAL5 = 32;  // Bandgap PTAT Calibration
  PTCAL6 = 6;  m_PTCAL6 = 64;  // Bandgap PTAT Calibration
  PTCAL7 = 7;  m_PTCAL7 = 128;  // Bandgap PTAT Calibration

type
  TDCCAL1set = bitpacked set of (e_CCAL0, e_CCAL1, e_CCAL2, e_CCAL3, e_ZCCAL0, e_ZCCAL1, e_ZCCAL2, e_ZCCAL3);
  TDCCAL1rec = bitpacked record
    CCAL0,
    CCAL1,
    CCAL2,
    CCAL3,
    ZCCAL0,
    ZCCAL1,
    ZCCAL2,
    ZCCAL3: TBitField;
  end;
var
  DCCAL1: byte absolute $D6;  // DCDC Converter Calibration 1
  DCCAL1set: TDCCAL1set absolute $D6;
  DCCAL1rec: TDCCAL1rec absolute $D6;
const
  CCAL0 = 0;  m_CCAL0 = 1;  // Current Limit Calibration
  CCAL1 = 1;  m_CCAL1 = 2;  // Current Limit Calibration
  CCAL2 = 2;  m_CCAL2 = 4;  // Current Limit Calibration
  CCAL3 = 3;  m_CCAL3 = 8;  // Current Limit Calibration
  ZCCAL0 = 4;  m_ZCCAL0 = 16;  // Zero Crossing Calibration
  ZCCAL1 = 5;  m_ZCCAL1 = 32;  // Zero Crossing Calibration
  ZCCAL2 = 6;  m_ZCCAL2 = 64;  // Zero Crossing Calibration
  ZCCAL3 = 7;  m_ZCCAL3 = 128;  // Zero Crossing Calibration

type
  TDCCAL2set = bitpacked set of (e_DTCAL0, e_DTCAL1, e_DTCAL2, e_DTCAL3, e_OFCAL0, e_OFCAL1, e_OFCAL2, e_OFCAL3);
  TDCCAL2rec = bitpacked record
    DTCAL0,
    DTCAL1,
    DTCAL2,
    DTCAL3,
    OFCAL0,
    OFCAL1,
    OFCAL2,
    OFCAL3: TBitField;
  end;
var
  DCCAL2: byte absolute $D7;  // DCDC Converter Calibration 2
  DCCAL2set: TDCCAL2set absolute $D7;
  DCCAL2rec: TDCCAL2rec absolute $D7;
const
  DTCAL0 = 0;  m_DTCAL0 = 1;  // Dead Time Calibration
  DTCAL1 = 1;  m_DTCAL1 = 2;  // Dead Time Calibration
  DTCAL2 = 2;  m_DTCAL2 = 4;  // Dead Time Calibration
  DTCAL3 = 3;  m_DTCAL3 = 8;  // Dead Time Calibration
  OFCAL0 = 4;  m_OFCAL0 = 16;  // Offset Calibration
  OFCAL1 = 5;  m_OFCAL1 = 32;  // Offset Calibration
  OFCAL2 = 6;  m_OFCAL2 = 64;  // Offset Calibration
  OFCAL3 = 7;  m_OFCAL3 = 128;  // Offset Calibration

type
  TDCCAL3set = bitpacked set of (e_SAWCAL0, e_SAWCAL1);
  TDCCAL3rec = bitpacked record
    SAWCAL0,
    SAWCAL1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DCCAL3: byte absolute $D8;  // DCDC Converter Calibration 3
  DCCAL3set: TDCCAL3set absolute $D8;
  DCCAL3rec: TDCCAL3rec absolute $D8;
const
  SAWCAL0 = 0;  m_SAWCAL0 = 1;  // Ramp Calibration
  SAWCAL1 = 1;  m_SAWCAL1 = 2;  // Ramp Calibration

type
  TDCTSTset = bitpacked set of (e_DCTST0, e_DCTST1, e_DCTST2, e_DCTST3, e_DCTST4);
  TDCTSTrec = bitpacked record
    DCTST0,
    DCTST1,
    DCTST2,
    DCTST3,
    DCTST4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DCTST: byte absolute $D9;  // DCDC Converter Test Mode
  DCTSTset: TDCTSTset absolute $D9;
  DCTSTrec: TDCTSTrec absolute $D9;
const
  DCTST0 = 0;  m_DCTST0 = 1;  // DCDC Converter Test Mode
  DCTST1 = 1;  m_DCTST1 = 2;  // DCDC Converter Test Mode
  DCTST2 = 2;  m_DCTST2 = 4;  // DCDC Converter Test Mode
  DCTST3 = 3;  m_DCTST3 = 8;  // DCDC Converter Test Mode
  DCTST4 = 4;  m_DCTST4 = 16;  // DCDC Converter Test Mode

var
  CALRDY: byte absolute $DA;  // Calibration Ready Signature

type
  TRCTUNE4set = bitpacked set of (e_CTUNE40, e_CTUNE41, e_CTUNE42, e_CTUNE43, e_RTUNE40, e_RTUNE41, e_RTUNE42, e_RTUNE43);
  TRCTUNE4rec = bitpacked record
    CTUNE40,
    CTUNE41,
    CTUNE42,
    CTUNE43,
    RTUNE40,
    RTUNE41,
    RTUNE42,
    RTUNE43: TBitField;
  end;
var
  RCTUNE4: byte absolute $DC;  // Resistor Capacitor 4 Bit Tuning
  RCTUNE4set: TRCTUNE4set absolute $DC;
  RCTUNE4rec: TRCTUNE4rec absolute $DC;
const
  CTUNE40 = 0;  m_CTUNE40 = 1;  // 4 Bit Capacitor Tuning
  CTUNE41 = 1;  m_CTUNE41 = 2;  // 4 Bit Capacitor Tuning
  CTUNE42 = 2;  m_CTUNE42 = 4;  // 4 Bit Capacitor Tuning
  CTUNE43 = 3;  m_CTUNE43 = 8;  // 4 Bit Capacitor Tuning
  RTUNE40 = 4;  m_RTUNE40 = 16;  // 4 Bit Resistor Tuning
  RTUNE41 = 5;  m_RTUNE41 = 32;  // 4 Bit Resistor Tuning
  RTUNE42 = 6;  m_RTUNE42 = 64;  // 4 Bit Resistor Tuning
  RTUNE43 = 7;  m_RTUNE43 = 128;  // 4 Bit Resistor Tuning

type
  TDCC1set = bitpacked set of (e_DCEN, e_DCHSSW, e_DCCDIV0=4, e_DCCDIV1);
  TDCC1rec = bitpacked record
    DCEN,
    DCHSSW,
    ReservedBit2,
    ReservedBit3,
    DCCDIV0,
    DCCDIV1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DCC1: byte absolute $DD;  // DCDC Converter Control 1
  DCC1set: TDCC1set absolute $DD;
  DCC1rec: TDCC1rec absolute $DD;
const
  DCEN = 0;  m_DCEN = 1;  // DCDC Converter Enable
  DCHSSW = 1;  m_DCHSSW = 2;  // DCDC Converter High Side Switch
  DCCDIV0 = 4;  m_DCCDIV0 = 16;  // DCDC Converter Clock Divider
  DCCDIV1 = 5;  m_DCCDIV1 = 32;  // DCDC Converter Clock Divider

type
  TDCC2set = bitpacked set of (e_DCVOUT0, e_DCVOUT1, e_DCCLIM0, e_DCCLIM1, e_DCDRV0, e_DCDRV1);
  TDCC2rec = bitpacked record
    DCVOUT0,
    DCVOUT1,
    DCCLIM0,
    DCCLIM1,
    DCDRV0,
    DCDRV1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DCC2: byte absolute $DE;  // DCDC Converter Control 2
  DCC2set: TDCC2set absolute $DE;
  DCC2rec: TDCC2rec absolute $DE;
const
  DCVOUT0 = 0;  m_DCVOUT0 = 1;  // DCDC Converter Output Voltage
  DCVOUT1 = 1;  m_DCVOUT1 = 2;  // DCDC Converter Output Voltage
  DCCLIM0 = 2;  m_DCCLIM0 = 4;  // DCDC Converter Current Limit
  DCCLIM1 = 3;  m_DCCLIM1 = 8;  // DCDC Converter Current Limit
  DCDRV0 = 4;  m_DCDRV0 = 16;  // DCDC Converter Driver Strength
  DCDRV1 = 5;  m_DCDRV1 = 32;  // DCDC Converter Driver Strength

type
  TDFSset = bitpacked set of (e_DFFLRF, e_DFUFL, e_DFOFL);
  TDFSrec = bitpacked record
    DFFLRF,
    DFUFL,
    DFOFL,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DFS: byte absolute $DF;  // Data FIFO Status
  DFSset: TDFSset absolute $DF;
  DFSrec: TDFSrec absolute $DF;
const
  DFFLRF = 0;  m_DFFLRF = 1;  // Data FIFO Fill Level Reached Status Flag
  DFUFL = 1;  m_DFUFL = 2;  // Data FIFO Underflow Flag
  DFOFL = 2;  m_DFOFL = 4;  // Data FIFO Overflow Flag

var
  DFTL: word absolute $E0;  // Data FIFO Telegram Length
  DFTLL: byte absolute $E0;
  DFTLH: byte absolute $E1;

type
  TDFLset = bitpacked set of (e_DFFLS0, e_DFFLS1, e_DFFLS2, e_DFFLS3, e_DFFLS4, e_DFFLS5, e_DFCLR=7);
  TDFLrec = bitpacked record
    DFFLS0,
    DFFLS1,
    DFFLS2,
    DFFLS3,
    DFFLS4,
    DFFLS5,
    ReservedBit6,
    DFCLR: TBitField;
  end;
var
  DFL: byte absolute $E2;  // Data FIFO Fill Level
  DFLset: TDFLset absolute $E2;
  DFLrec: TDFLrec absolute $E2;
const
  DFFLS0 = 0;  m_DFFLS0 = 1;  // Data FIFO Fill Level Status
  DFFLS1 = 1;  m_DFFLS1 = 2;  // Data FIFO Fill Level Status
  DFFLS2 = 2;  m_DFFLS2 = 4;  // Data FIFO Fill Level Status
  DFFLS3 = 3;  m_DFFLS3 = 8;  // Data FIFO Fill Level Status
  DFFLS4 = 4;  m_DFFLS4 = 16;  // Data FIFO Fill Level Status
  DFFLS5 = 5;  m_DFFLS5 = 32;  // Data FIFO Fill Level Status
  DFCLR = 7;  m_DFCLR = 128;  // Data FIFO Clear

var
  DFWP: byte absolute $E3;  // Data FIFO Write Pointer
  DFRP: byte absolute $E4;  // Data FIFO Read Pointer
  DFD: byte absolute $E5;  // Data FIFO Data

type
  TDFIset = bitpacked set of (e_DFFLIM, e_DFERIM);
  TDFIrec = bitpacked record
    DFFLIM,
    DFERIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DFI: byte absolute $E6;  // Data FIFO Interrupt Mask
  DFIset: TDFIset absolute $E6;
  DFIrec: TDFIrec absolute $E6;
const
  DFFLIM = 0;  m_DFFLIM = 1;  // Data FIFO Fill Level Interrupt Mask
  DFERIM = 1;  m_DFERIM = 2;  // Data FIFO Error Interrupt Mask

type
  TDFCset = bitpacked set of (e_DFFLC0, e_DFFLC1, e_DFFLC2, e_DFFLC3, e_DFFLC4, e_DFFLC5, e_DFDRA=7);
  TDFCrec = bitpacked record
    DFFLC0,
    DFFLC1,
    DFFLC2,
    DFFLC3,
    DFFLC4,
    DFFLC5,
    ReservedBit6,
    DFDRA: TBitField;
  end;
var
  DFC: byte absolute $E7;  // Data FIFO Configuration
  DFCset: TDFCset absolute $E7;
  DFCrec: TDFCrec absolute $E7;
const
  DFFLC0 = 0;  m_DFFLC0 = 1;  // Data FIFO Fill Level Configuration
  DFFLC1 = 1;  m_DFFLC1 = 2;  // Data FIFO Fill Level Configuration
  DFFLC2 = 2;  m_DFFLC2 = 4;  // Data FIFO Fill Level Configuration
  DFFLC3 = 3;  m_DFFLC3 = 8;  // Data FIFO Fill Level Configuration
  DFFLC4 = 4;  m_DFFLC4 = 16;  // Data FIFO Fill Level Configuration
  DFFLC5 = 5;  m_DFFLC5 = 32;  // Data FIFO Fill Level Configuration
  DFDRA = 7;  m_DFDRA = 128;  // Data FIFO Direct Read Access Operational Mode

type
  TSFSset = bitpacked set of (e_SFFLRF, e_SFUFL, e_SFOFL);
  TSFSrec = bitpacked record
    SFFLRF,
    SFUFL,
    SFOFL,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFS: byte absolute $E8;  // Support FIFO Status
  SFSset: TSFSset absolute $E8;
  SFSrec: TSFSrec absolute $E8;
const
  SFFLRF = 0;  m_SFFLRF = 1;  // Support FIFO Fill Level Reached Status Flag
  SFUFL = 1;  m_SFUFL = 2;  // Support FIFO Underflow Flag
  SFOFL = 2;  m_SFOFL = 4;  // Support FIFO Overflow Flag

type
  TSFLset = bitpacked set of (e_SFFLS0, e_SFFLS1, e_SFFLS2, e_SFFLS3, e_SFFLS4, e_SFCLR=7);
  TSFLrec = bitpacked record
    SFFLS0,
    SFFLS1,
    SFFLS2,
    SFFLS3,
    SFFLS4,
    ReservedBit5,
    ReservedBit6,
    SFCLR: TBitField;
  end;
var
  SFL: byte absolute $E9;  // Support FIFO Fill Level
  SFLset: TSFLset absolute $E9;
  SFLrec: TSFLrec absolute $E9;
const
  SFFLS0 = 0;  m_SFFLS0 = 1;  // Support FIFO Fill Level Status
  SFFLS1 = 1;  m_SFFLS1 = 2;  // Support FIFO Fill Level Status
  SFFLS2 = 2;  m_SFFLS2 = 4;  // Support FIFO Fill Level Status
  SFFLS3 = 3;  m_SFFLS3 = 8;  // Support FIFO Fill Level Status
  SFFLS4 = 4;  m_SFFLS4 = 16;  // Support FIFO Fill Level Status
  SFCLR = 7;  m_SFCLR = 128;  // Support FIFO Clear

var
  SFWP: byte absolute $EA;  // Support FIFO Write Pointer
  SFRP: byte absolute $EB;  // Support FIFO Read Pointer
  SFD: byte absolute $EC;  // Support FIFO Data

type
  TSFIset = bitpacked set of (e_SFFLIM, e_SFERIM);
  TSFIrec = bitpacked record
    SFFLIM,
    SFERIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFI: byte absolute $ED;  // Support FIFO Interrupt Mask
  SFIset: TSFIset absolute $ED;
  SFIrec: TSFIrec absolute $ED;
const
  SFFLIM = 0;  m_SFFLIM = 1;  // Support FIFO Fill Level Interrupt Mask
  SFERIM = 1;  m_SFERIM = 2;  // Support FIFO Error Interrupt Mask

type
  TSFCset = bitpacked set of (e_SFFLC0, e_SFFLC1, e_SFFLC2, e_SFFLC3, e_SFFLC4, e_SFDRA=7);
  TSFCrec = bitpacked record
    SFFLC0,
    SFFLC1,
    SFFLC2,
    SFFLC3,
    SFFLC4,
    ReservedBit5,
    ReservedBit6,
    SFDRA: TBitField;
  end;
var
  SFC: byte absolute $EE;  // Support FIFO Configuration
  SFCset: TSFCset absolute $EE;
  SFCrec: TSFCrec absolute $EE;
const
  SFFLC0 = 0;  m_SFFLC0 = 1;  // Support FIFO Fill Level Configuration
  SFFLC1 = 1;  m_SFFLC1 = 2;  // Support FIFO Fill Level Configuration
  SFFLC2 = 2;  m_SFFLC2 = 4;  // Support FIFO Fill Level Configuration
  SFFLC3 = 3;  m_SFFLC3 = 8;  // Support FIFO Fill Level Configuration
  SFFLC4 = 4;  m_SFFLC4 = 16;  // Support FIFO Fill Level Configuration
  SFDRA = 7;  m_SFDRA = 128;  // Support FIFO Direct Read Access Operational Mode

type
  TSSMCRset = bitpacked set of (e_SSMTX, e_SSMTM, e_SETRPA=6, e_SETRPB);
  TSSMCRrec = bitpacked record
    SSMTX,
    SSMTM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    SETRPA,
    SETRPB: TBitField;
  end;
var
  SSMCR: byte absolute $EF;  // Sequencer State Machine Control Register
  SSMCRset: TSSMCRset absolute $EF;
  SSMCRrec: TSSMCRrec absolute $EF;
const
  SSMTX = 0;  m_SSMTX = 1;  // SSM Tx
  SSMTM = 1;  m_SSMTM = 2;  // SSM Temperature Measurement
  SETRPA = 6;  m_SETRPA = 64;  // SSM Enable Transparent Path A
  SETRPB = 7;  m_SETRPB = 128;  // SSM Enable Raw Transparent Path B

type
  TSSMRCRset = bitpacked set of (e_SSMPA, e_SSMPB, e_SSMAD, e_SSMHIS, e_SSMPVS, e_SSMIFA, e_SSMIDSE, e_SSMTMOE);
  TSSMRCRrec = bitpacked record
    SSMPA,
    SSMPB,
    SSMAD,
    SSMHIS,
    SSMPVS,
    SSMIFA,
    SSMIDSE,
    SSMTMOE: TBitField;
  end;
var
  SSMRCR: byte absolute $F0;  // Sequencer State Machine Rx Control Register
  SSMRCRset: TSSMRCRset absolute $F0;
  SSMRCRrec: TSSMRCRrec absolute $F0;
const
  SSMPA = 0;  m_SSMPA = 1;  // SSM Path A
  SSMPB = 1;  m_SSMPB = 2;  // SSM Path B
  SSMAD = 2;  m_SSMAD = 4;  // SSM Antenna Damping Disable
  SSMHIS = 3;  m_SSMHIS = 8;  // SSM High Sensitivity Enable
  SSMPVS = 4;  m_SSMPVS = 16;  // SSM Path Valid After SOT
  SSMIFA = 5;  m_SSMIFA = 32;  // SSM IF Amplifier Enable
  SSMIDSE = 6;  m_SSMIDSE = 64;  // SSM ID Check Enable
  SSMTMOE = 7;  m_SSMTMOE = 128;  // SSM Transparent Output Enable

type
  TSSMFBRset = bitpacked set of (e_SSMFID0, e_SSMFID1, e_SSMFID2, e_SSMDFDT, e_SSMHADT, e_SSMPLDT);
  TSSMFBRrec = bitpacked record
    SSMFID0,
    SSMFID1,
    SSMFID2,
    SSMDFDT,
    SSMHADT,
    SSMPLDT,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMFBR: byte absolute $F1;  // Sequencer State Machine Filter Bandwidth Register
  SSMFBRset: TSSMFBRset absolute $F1;
  SSMFBRrec: TSSMFBRrec absolute $F1;
const
  SSMFID0 = 0;  m_SSMFID0 = 1;  // SSM Filter Delay
  SSMFID1 = 1;  m_SSMFID1 = 2;  // SSM Filter Delay
  SSMFID2 = 2;  m_SSMFID2 = 4;  // SSM Filter Delay
  SSMDFDT = 3;  m_SSMDFDT = 8;  // SSM Double Filter Delay Time
  SSMHADT = 4;  m_SSMHADT = 16;  // SSM Half Antenna Damping Delay Time
  SSMPLDT = 5;  m_SSMPLDT = 32;  // SSM PLL Lock Delay Time

type
  TSSMRRset = bitpacked set of (e_SSMR, e_SSMST);
  TSSMRRrec = bitpacked record
    SSMR,
    SSMST,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMRR: byte absolute $F2;  // Sequencer State Machine Run Register
  SSMRRset: TSSMRRset absolute $F2;
  SSMRRrec: TSSMRRrec absolute $F2;
const
  SSMR = 0;  m_SSMR = 1;  // SSM Run
  SSMST = 1;  m_SSMST = 2;  // SSM Stop

type
  TSSMSRset = bitpacked set of (e_SSMESM0, e_SSMESM1, e_SSMESM2, e_SSMESM3, e_SSMERR=7);
  TSSMSRrec = bitpacked record
    SSMESM0,
    SSMESM1,
    SSMESM2,
    SSMESM3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    SSMERR: TBitField;
  end;
var
  SSMSR: byte absolute $F3;  // Sequencer State Machine Status Register
  SSMSRset: TSSMSRset absolute $F3;
  SSMSRrec: TSSMSRrec absolute $F3;
const
  SSMESM0 = 0;  m_SSMESM0 = 1;  // SSM Error State Machine
  SSMESM1 = 1;  m_SSMESM1 = 2;  // SSM Error State Machine
  SSMESM2 = 2;  m_SSMESM2 = 4;  // SSM Error State Machine
  SSMESM3 = 3;  m_SSMESM3 = 8;  // SSM Error State Machine
  SSMERR = 7;  m_SSMERR = 128;  // SSM Error

type
  TSSMIFRset = bitpacked set of (e_SSMIF);
  TSSMIFRrec = bitpacked record
    SSMIF,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMIFR: byte absolute $F4;  // Sequencer State Machine Interrupt Flag Register
  SSMIFRset: TSSMIFRset absolute $F4;
  SSMIFRrec: TSSMIFRrec absolute $F4;
const
  SSMIF = 0;  m_SSMIF = 1;  // SSM Interrupt Flag

type
  TSSMIMRset = bitpacked set of (e_SSMIM);
  TSSMIMRrec = bitpacked record
    SSMIM,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMIMR: byte absolute $F5;  // Sequencer State Machine Interrupt Mask Register
  SSMIMRset: TSSMIMRset absolute $F5;
  SSMIMRrec: TSSMIMRrec absolute $F5;
const
  SSMIM = 0;  m_SSMIM = 1;  // SSM Interrupt Mask

type
  TMSMSTRset = bitpacked set of (e_SSMMST0, e_SSMMST1, e_SSMMST2, e_SSMMST3, e_SSMMST4);
  TMSMSTRrec = bitpacked record
    SSMMST0,
    SSMMST1,
    SSMMST2,
    SSMMST3,
    SSMMST4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MSMSTR: byte absolute $F6;  // Master State Machine State Register
  MSMSTRset: TMSMSTRset absolute $F6;
  MSMSTRrec: TMSMSTRrec absolute $F6;
const
  SSMMST0 = 0;  m_SSMMST0 = 1;  // Sequencer State Machine Master State
  SSMMST1 = 1;  m_SSMMST1 = 2;  // Sequencer State Machine Master State
  SSMMST2 = 2;  m_SSMMST2 = 4;  // Sequencer State Machine Master State
  SSMMST3 = 3;  m_SSMMST3 = 8;  // Sequencer State Machine Master State
  SSMMST4 = 4;  m_SSMMST4 = 16;  // Sequencer State Machine Master State

type
  TSSMSTRset = bitpacked set of (e_SSMSTA0, e_SSMSTA1, e_SSMSTA2, e_SSMSTA3, e_SSMSTA4, e_SSMSTA5);
  TSSMSTRrec = bitpacked record
    SSMSTA0,
    SSMSTA1,
    SSMSTA2,
    SSMSTA3,
    SSMSTA4,
    SSMSTA5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMSTR: byte absolute $F7;  // Sequencer State Machine State Register
  SSMSTRset: TSSMSTRset absolute $F7;
  SSMSTRrec: TSSMSTRrec absolute $F7;
const
  SSMSTA0 = 0;  m_SSMSTA0 = 1;  // SSM State A
  SSMSTA1 = 1;  m_SSMSTA1 = 2;  // SSM State A
  SSMSTA2 = 2;  m_SSMSTA2 = 4;  // SSM State A
  SSMSTA3 = 3;  m_SSMSTA3 = 8;  // SSM State A
  SSMSTA4 = 4;  m_SSMSTA4 = 16;  // SSM State A
  SSMSTA5 = 5;  m_SSMSTA5 = 32;  // SSM State A

type
  TSSMXSRset = bitpacked set of (e_SSMSTB0, e_SSMSTB1, e_SSMSTB2, e_SSMSTB3, e_SSMSTB4, e_SSMSTB5);
  TSSMXSRrec = bitpacked record
    SSMSTB0,
    SSMSTB1,
    SSMSTB2,
    SSMSTB3,
    SSMSTB4,
    SSMSTB5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMXSR: byte absolute $F8;  // Sequencer State Machine Extended State Register
  SSMXSRset: TSSMXSRset absolute $F8;
  SSMXSRrec: TSSMXSRrec absolute $F8;
const
  SSMSTB0 = 0;  m_SSMSTB0 = 1;  // SSM State B
  SSMSTB1 = 1;  m_SSMSTB1 = 2;  // SSM State B
  SSMSTB2 = 2;  m_SSMSTB2 = 4;  // SSM State B
  SSMSTB3 = 3;  m_SSMSTB3 = 8;  // SSM State B
  SSMSTB4 = 4;  m_SSMSTB4 = 16;  // SSM State B
  SSMSTB5 = 5;  m_SSMSTB5 = 32;  // SSM State B

type
  TMSMCR1set = bitpacked set of (e_MSMSM00, e_MSMSM01, e_MSMSM02, e_MSMSM03, e_MSMSM10, e_MSMSM11, e_MSMSM12, e_MSMSM13);
  TMSMCR1rec = bitpacked record
    MSMSM00,
    MSMSM01,
    MSMSM02,
    MSMSM03,
    MSMSM10,
    MSMSM11,
    MSMSM12,
    MSMSM13: TBitField;
  end;
var
  MSMCR1: byte absolute $F9;  // Master State Machine Control Register 1
  MSMCR1set: TMSMCR1set absolute $F9;
  MSMCR1rec: TMSMCR1rec absolute $F9;
const
  MSMSM00 = 0;  m_MSMSM00 = 1;  // Master State Machine Sub-State Machine Select 0
  MSMSM01 = 1;  m_MSMSM01 = 2;  // Master State Machine Sub-State Machine Select 0
  MSMSM02 = 2;  m_MSMSM02 = 4;  // Master State Machine Sub-State Machine Select 0
  MSMSM03 = 3;  m_MSMSM03 = 8;  // Master State Machine Sub-State Machine Select 0
  MSMSM10 = 4;  m_MSMSM10 = 16;  // Master State Machine Sub-State Machine Select 1
  MSMSM11 = 5;  m_MSMSM11 = 32;  // Master State Machine Sub-State Machine Select 1
  MSMSM12 = 6;  m_MSMSM12 = 64;  // Master State Machine Sub-State Machine Select 1
  MSMSM13 = 7;  m_MSMSM13 = 128;  // Master State Machine Sub-State Machine Select 1

type
  TMSMCR2set = bitpacked set of (e_MSMSM20, e_MSMSM21, e_MSMSM22, e_MSMSM23, e_MSMSM30, e_MSMSM31, e_MSMSM32, e_MSMSM33);
  TMSMCR2rec = bitpacked record
    MSMSM20,
    MSMSM21,
    MSMSM22,
    MSMSM23,
    MSMSM30,
    MSMSM31,
    MSMSM32,
    MSMSM33: TBitField;
  end;
var
  MSMCR2: byte absolute $FA;  // Master State Machine Control Register 2
  MSMCR2set: TMSMCR2set absolute $FA;
  MSMCR2rec: TMSMCR2rec absolute $FA;
const
  MSMSM20 = 0;  m_MSMSM20 = 1;  // Master State Machine Sub-State Machine Select 2
  MSMSM21 = 1;  m_MSMSM21 = 2;  // Master State Machine Sub-State Machine Select 2
  MSMSM22 = 2;  m_MSMSM22 = 4;  // Master State Machine Sub-State Machine Select 2
  MSMSM23 = 3;  m_MSMSM23 = 8;  // Master State Machine Sub-State Machine Select 2
  MSMSM30 = 4;  m_MSMSM30 = 16;  // Master State Machine Sub-State Machine Select 3
  MSMSM31 = 5;  m_MSMSM31 = 32;  // Master State Machine Sub-State Machine Select 3
  MSMSM32 = 6;  m_MSMSM32 = 64;  // Master State Machine Sub-State Machine Select 3
  MSMSM33 = 7;  m_MSMSM33 = 128;  // Master State Machine Sub-State Machine Select 3

type
  TMSMCR3set = bitpacked set of (e_MSMSM40, e_MSMSM41, e_MSMSM42, e_MSMSM43, e_MSMSM50, e_MSMSM51, e_MSMSM52, e_MSMSM53);
  TMSMCR3rec = bitpacked record
    MSMSM40,
    MSMSM41,
    MSMSM42,
    MSMSM43,
    MSMSM50,
    MSMSM51,
    MSMSM52,
    MSMSM53: TBitField;
  end;
var
  MSMCR3: byte absolute $FB;  // Master State Machine Control Register 3
  MSMCR3set: TMSMCR3set absolute $FB;
  MSMCR3rec: TMSMCR3rec absolute $FB;
const
  MSMSM40 = 0;  m_MSMSM40 = 1;  // Master State Machine Sub-State Machine Select 4
  MSMSM41 = 1;  m_MSMSM41 = 2;  // Master State Machine Sub-State Machine Select 4
  MSMSM42 = 2;  m_MSMSM42 = 4;  // Master State Machine Sub-State Machine Select 4
  MSMSM43 = 3;  m_MSMSM43 = 8;  // Master State Machine Sub-State Machine Select 4
  MSMSM50 = 4;  m_MSMSM50 = 16;  // Master State Machine Sub-State Machine Select 5
  MSMSM51 = 5;  m_MSMSM51 = 32;  // Master State Machine Sub-State Machine Select 5
  MSMSM52 = 6;  m_MSMSM52 = 64;  // Master State Machine Sub-State Machine Select 5
  MSMSM53 = 7;  m_MSMSM53 = 128;  // Master State Machine Sub-State Machine Select 5

type
  TMSMCR4set = bitpacked set of (e_MSMSM60, e_MSMSM61, e_MSMSM62, e_MSMSM63, e_MSMSM70, e_MSMSM71, e_MSMSM72, e_MSMSM73);
  TMSMCR4rec = bitpacked record
    MSMSM60,
    MSMSM61,
    MSMSM62,
    MSMSM63,
    MSMSM70,
    MSMSM71,
    MSMSM72,
    MSMSM73: TBitField;
  end;
var
  MSMCR4: byte absolute $FC;  // Master State Machine Control Register 4
  MSMCR4set: TMSMCR4set absolute $FC;
  MSMCR4rec: TMSMCR4rec absolute $FC;
const
  MSMSM60 = 0;  m_MSMSM60 = 1;  // Master State Machine Sub-State Machine Select 6
  MSMSM61 = 1;  m_MSMSM61 = 2;  // Master State Machine Sub-State Machine Select 6
  MSMSM62 = 2;  m_MSMSM62 = 4;  // Master State Machine Sub-State Machine Select 6
  MSMSM63 = 3;  m_MSMSM63 = 8;  // Master State Machine Sub-State Machine Select 6
  MSMSM70 = 4;  m_MSMSM70 = 16;  // Master State Machine Sub-State Machine Select 7
  MSMSM71 = 5;  m_MSMSM71 = 32;  // Master State Machine Sub-State Machine Select 7
  MSMSM72 = 6;  m_MSMSM72 = 64;  // Master State Machine Sub-State Machine Select 7
  MSMSM73 = 7;  m_MSMSM73 = 128;  // Master State Machine Sub-State Machine Select 7

type
  TGTCRset = bitpacked set of (e_RXTEHA, e_GAPMA, e_DARA, e_IWUPA, e_RXTEHB, e_GAPMB, e_DARB, e_IWUPB);
  TGTCRrec = bitpacked record
    RXTEHA,
    GAPMA,
    DARA,
    IWUPA,
    RXTEHB,
    GAPMB,
    DARB,
    IWUPB: TBitField;
  end;
var
  GTCR: byte absolute $FD;  // Get Telegram Control Register
  GTCRset: TGTCRset absolute $FD;
  GTCRrec: TGTCRrec absolute $FD;
const
  RXTEHA = 0;  m_RXTEHA = 1;  // Rx Telegram End Handling Path A
  GAPMA = 1;  m_GAPMA = 2;  // Gap Mode Path A
  DARA = 2;  m_DARA = 4;  // Demodulator Automatic Restart Path A
  IWUPA = 3;  m_IWUPA = 8;  // Intermittent WUP Mode Path A
  RXTEHB = 4;  m_RXTEHB = 16;  // Rx Telegram End Handling Path B
  GAPMB = 5;  m_GAPMB = 32;  // Gap Mode Path B
  DARB = 6;  m_DARB = 64;  // Demodulator Automatic Restart Path B
  IWUPB = 7;  m_IWUPB = 128;  // Intermittent WUP Mode Path B

type
  TFESRset = bitpacked set of (e_SAT, e_XRDY=2, e_PLCK);
  TFESRrec = bitpacked record
    SAT,
    ReservedBit1,
    XRDY,
    PLCK,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FESR: byte absolute $100;  // RF Front End Status Register
  FESRset: TFESRset absolute $100;
  FESRrec: TFESRrec absolute $100;
const
  SAT = 0;  m_SAT = 1;  // LNA Saturated
  XRDY = 2;  m_XRDY = 4;  // XTO Ready
  PLCK = 3;  m_PLCK = 8;  // PLL Locked

type
  TFEEN1set = bitpacked set of (e_PLEN, e_PLCAL, e_XTOEN, e_LNAEN, e_ADEN, e_ADCLK, e_PLSP1);
  TFEEN1rec = bitpacked record
    PLEN,
    PLCAL,
    XTOEN,
    LNAEN,
    ADEN,
    ADCLK,
    PLSP1,
    ReservedBit7: TBitField;
  end;
var
  FEEN1: byte absolute $101;  // RF Front End Enable 1
  FEEN1set: TFEEN1set absolute $101;
  FEEN1rec: TFEEN1rec absolute $101;
const
  PLEN = 0;  m_PLEN = 1;  // PLL Enable
  PLCAL = 1;  m_PLCAL = 2;  // PLL Calibration Mode
  XTOEN = 2;  m_XTOEN = 4;  // Crystal Oscillator Enable
  LNAEN = 3;  m_LNAEN = 8;  // Low Noise Amplifier Enable
  ADEN = 4;  m_ADEN = 16;  // Analog Digital Converter Enable
  ADCLK = 5;  m_ADCLK = 32;  // ADC Clock Enable
  PLSP1 = 6;  m_PLSP1 = 64;  // PLL Speedup 1

type
  TFEEN2set = bitpacked set of (e_PAEN=2, e_TMPM, e_PLPEN, e_XTPEN, e_XTOEXT=7);
  TFEEN2rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    PAEN,
    TMPM,
    PLPEN,
    XTPEN,
    ReservedBit6,
    XTOEXT: TBitField;
  end;
var
  FEEN2: byte absolute $102;  // RF Front End Enable 2
  FEEN2set: TFEEN2set absolute $102;
  FEEN2rec: TFEEN2rec absolute $102;
const
  PAEN = 2;  m_PAEN = 4;  // Power Amplifier Enable
  TMPM = 3;  m_TMPM = 8;  // Temperature Measurement
  PLPEN = 4;  m_PLPEN = 16;  // PLL Post Enable
  XTPEN = 5;  m_XTPEN = 32;  // XTO Voltage Pump Enable
  XTOEXT = 7;  m_XTOEXT = 128;  // XTO External Clock

type
  TFELNAset = bitpacked set of (e_LNABN0, e_LNABN1, e_LNABN2, e_LNABN3, e_LNABH0, e_LNABH1, e_LNABH2, e_LNABH3);
  TFELNArec = bitpacked record
    LNABN0,
    LNABN1,
    LNABN2,
    LNABN3,
    LNABH0,
    LNABH1,
    LNABH2,
    LNABH3: TBitField;
  end;
var
  FELNA: byte absolute $103;  // RF Front End LNA Bias
  FELNAset: TFELNAset absolute $103;
  FELNArec: TFELNArec absolute $103;
const
  LNABN0 = 0;  m_LNABN0 = 1;  // LNA Bias Normal Sense Mode
  LNABN1 = 1;  m_LNABN1 = 2;  // LNA Bias Normal Sense Mode
  LNABN2 = 2;  m_LNABN2 = 4;  // LNA Bias Normal Sense Mode
  LNABN3 = 3;  m_LNABN3 = 8;  // LNA Bias Normal Sense Mode
  LNABH0 = 4;  m_LNABH0 = 16;  // LNA Bias High Sense Mode
  LNABH1 = 5;  m_LNABH1 = 32;  // LNA Bias High Sense Mode
  LNABH2 = 6;  m_LNABH2 = 64;  // LNA Bias High Sense Mode
  LNABH3 = 7;  m_LNABH3 = 128;  // LNA Bias High Sense Mode

type
  TFEASset = bitpacked set of (e_SDRX1, e_SDTX1, e_SDRX2, e_SDTX2, e_SDRX3, e_SDTX3);
  TFEASrec = bitpacked record
    SDRX1,
    SDTX1,
    SDRX2,
    SDTX2,
    SDRX3,
    SDTX3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FEAS: byte absolute $104;  // RF Front End Antenna Switch
  FEASset: TFEASset absolute $104;
  FEASrec: TFEASrec absolute $104;
const
  SDRX1 = 0;  m_SDRX1 = 1;  // SPDT RF Switch Rx 1
  SDTX1 = 1;  m_SDTX1 = 2;  // SPDT RF Switch Tx 1
  SDRX2 = 2;  m_SDRX2 = 4;  // SPDT RF Switch Rx 2
  SDTX2 = 3;  m_SDTX2 = 8;  // SPDT RF Switch Tx 2
  SDRX3 = 4;  m_SDRX3 = 16;  // SPDT RF Switch Rx 3
  SDTX3 = 5;  m_SDTX3 = 32;  // SPDT RF Switch Tx 3

var
  FEVCT: byte absolute $106;  // RF Front End VCO Tuning

type
  TFEBTset = bitpacked set of (e_CTN20, e_CTN21, e_RTN20, e_RTN21);
  TFEBTrec = bitpacked record
    CTN20,
    CTN21,
    RTN20,
    RTN21,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FEBT: byte absolute $107;  // RF Front End RC Tuning
  FEBTset: TFEBTset absolute $107;
  FEBTrec: TFEBTrec absolute $107;
const
  CTN20 = 0;  m_CTN20 = 1;  // 2 Bit Capacitor Tuning
  CTN21 = 1;  m_CTN21 = 2;  // 2 Bit Capacitor Tuning
  RTN20 = 2;  m_RTN20 = 4;  // 2 Bit Resistor Tuning
  RTN21 = 3;  m_RTN21 = 8;  // 2 Bit Resistor Tuning

type
  TFEMSset = bitpacked set of (e_PLLS0, e_PLLS1, e_PLLS2, e_PLLS3, e_PLLM0, e_PLLM1, e_PLLM2, e_PLLM3);
  TFEMSrec = bitpacked record
    PLLS0,
    PLLS1,
    PLLS2,
    PLLS3,
    PLLM0,
    PLLM1,
    PLLM2,
    PLLM3: TBitField;
  end;
var
  FEMS: byte absolute $108;  // RF Front End Main and Swallow Counter
  FEMSset: TFEMSset absolute $108;
  FEMSrec: TFEMSrec absolute $108;
const
  PLLS0 = 0;  m_PLLS0 = 1;  // PLL Swallow
  PLLS1 = 1;  m_PLLS1 = 2;  // PLL Swallow
  PLLS2 = 2;  m_PLLS2 = 4;  // PLL Swallow
  PLLS3 = 3;  m_PLLS3 = 8;  // PLL Swallow
  PLLM0 = 4;  m_PLLM0 = 16;  // PLL Main
  PLLM1 = 5;  m_PLLM1 = 32;  // PLL Main
  PLLM2 = 6;  m_PLLM2 = 64;  // PLL Main
  PLLM3 = 7;  m_PLLM3 = 128;  // PLL Main

type
  TFETN4set = bitpacked set of (e_CTN40, e_CTN41, e_CTN42, e_CTN43, e_RTN40, e_RTN41, e_RTN42, e_RTN43);
  TFETN4rec = bitpacked record
    CTN40,
    CTN41,
    CTN42,
    CTN43,
    RTN40,
    RTN41,
    RTN42,
    RTN43: TBitField;
  end;
var
  FETN4: byte absolute $109;  // RF Front End RC Tuning 4bit Register
  FETN4set: TFETN4set absolute $109;
  FETN4rec: TFETN4rec absolute $109;
const
  CTN40 = 0;  m_CTN40 = 1;  // 4 Bit Capacitor Tuning
  CTN41 = 1;  m_CTN41 = 2;  // 4 Bit Capacitor Tuning
  CTN42 = 2;  m_CTN42 = 4;  // 4 Bit Capacitor Tuning
  CTN43 = 3;  m_CTN43 = 8;  // 4 Bit Capacitor Tuning
  RTN40 = 4;  m_RTN40 = 16;  // 4 Bit Resistor Tuning
  RTN41 = 5;  m_RTN41 = 32;  // 4 Bit Resistor Tuning
  RTN42 = 6;  m_RTN42 = 64;  // 4 Bit Resistor Tuning
  RTN43 = 7;  m_RTN43 = 128;  // 4 Bit Resistor Tuning

type
  TFECRset = bitpacked set of (e_LBNHB, e_S4N3, e_ANDP, e_ADHS, e_PLCKG, e_ANPS);
  TFECRrec = bitpacked record
    LBNHB,
    S4N3,
    ANDP,
    ADHS,
    PLCKG,
    ANPS,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FECR: byte absolute $10A;  // RF Front End Control Register
  FECRset: TFECRset absolute $10A;
  FECRrec: TFECRrec absolute $10A;
const
  LBNHB = 0;  m_LBNHB = 1;  // Low-Band Not High-Band
  S4N3 = 1;  m_S4N3 = 2;  // Select 433MHz Not 315MHz Band
  ANDP = 2;  m_ANDP = 4;  // Antenna Damping
  ADHS = 3;  m_ADHS = 8;  // ADC High Sample Rate
  PLCKG = 4;  m_PLCKG = 16;  // PLL Lock Detect Gate
  ANPS = 5;  m_ANPS = 32;  // ASK Not DPSK Switch

type
  TFEVCOset = bitpacked set of (e_CPCC0, e_CPCC1, e_CPCC2, e_CPCC3, e_VCOB0, e_VCOB1, e_VCOB2, e_VCOB3);
  TFEVCOrec = bitpacked record
    CPCC0,
    CPCC1,
    CPCC2,
    CPCC3,
    VCOB0,
    VCOB1,
    VCOB2,
    VCOB3: TBitField;
  end;
var
  FEVCO: byte absolute $10B;  // RF Front End VCO and PLL Control
  FEVCOset: TFEVCOset absolute $10B;
  FEVCOrec: TFEVCOrec absolute $10B;
const
  CPCC0 = 0;  m_CPCC0 = 1;  // Charge Pump Current Control
  CPCC1 = 1;  m_CPCC1 = 2;  // Charge Pump Current Control
  CPCC2 = 2;  m_CPCC2 = 4;  // Charge Pump Current Control
  CPCC3 = 3;  m_CPCC3 = 8;  // Charge Pump Current Control
  VCOB0 = 4;  m_VCOB0 = 16;  // VCO Bias
  VCOB1 = 5;  m_VCOB1 = 32;  // VCO Bias
  VCOB2 = 6;  m_VCOB2 = 64;  // VCO Bias
  VCOB3 = 7;  m_VCOB3 = 128;  // VCO Bias

type
  TFEBIAset = bitpacked set of (e_HISEN=6, e_IFAEN);
  TFEBIArec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    HISEN,
    IFAEN: TBitField;
  end;
var
  FEBIA: byte absolute $10C;  // RF Front End Amplifier Bias
  FEBIAset: TFEBIAset absolute $10C;
  FEBIArec: TFEBIArec absolute $10C;
const
  HISEN = 6;  m_HISEN = 64;  // High Sensitivity Enable
  IFAEN = 7;  m_IFAEN = 128;  // IF Amplifier Enable

type
  TSPARE1set = bitpacked set of (e_CHBIR0, e_CHBIR1, e_CHBIR2, e_CHBIR3, e_CHBIR4, e_CHBIR5, e_CHBIR6, e_CHBIR7);
  TSPARE1rec = bitpacked record
    CHBIR0,
    CHBIR1,
    CHBIR2,
    CHBIR3,
    CHBIR4,
    CHBIR5,
    CHBIR6,
    CHBIR7: TBitField;
  end;
var
  SPARE1: byte absolute $10D;  // RF Front End Spare Register 1
  SPARE1set: TSPARE1set absolute $10D;
  SPARE1rec: TSPARE1rec absolute $10D;
const
  CHBIR0 = 0;  m_CHBIR0 = 1;  // Calibration of High Band Image Rejection
  CHBIR1 = 1;  m_CHBIR1 = 2;  // Calibration of High Band Image Rejection
  CHBIR2 = 2;  m_CHBIR2 = 4;  // Calibration of High Band Image Rejection
  CHBIR3 = 3;  m_CHBIR3 = 8;  // Calibration of High Band Image Rejection
  CHBIR4 = 4;  m_CHBIR4 = 16;  // Calibration of High Band Image Rejection
  CHBIR5 = 5;  m_CHBIR5 = 32;  // Calibration of High Band Image Rejection
  CHBIR6 = 6;  m_CHBIR6 = 64;  // Calibration of High Band Image Rejection
  CHBIR7 = 7;  m_CHBIR7 = 128;  // Calibration of High Band Image Rejection

type
  TSOTC1Aset = bitpacked set of (e_CAROEA1, e_AMPOEA1, e_SYTOEA1, e_MANOEA1, e_WUPEA1, e_SFIDEA1, e_RROEA1, e_WCOBOE1);
  TSOTC1Arec = bitpacked record
    CAROEA1,
    AMPOEA1,
    SYTOEA1,
    MANOEA1,
    WUPEA1,
    SFIDEA1,
    RROEA1,
    WCOBOE1: TBitField;
  end;
var
  SOTC1A: byte absolute $120;  // Start Of Telegram Conditions 1 Path A
  SOTC1Aset: TSOTC1Aset absolute $120;
  SOTC1Arec: TSOTC1Arec absolute $120;
const
  CAROEA1 = 0;  m_CAROEA1 = 1;  // RF Carrier Ok Enable Path A
  AMPOEA1 = 1;  m_AMPOEA1 = 2;  // Modulation Amplitude Ok Enable Path A
  SYTOEA1 = 2;  m_SYTOEA1 = 4;  // Symbol Timing Ok Enable Path A
  MANOEA1 = 3;  m_MANOEA1 = 8;  // Manchester Coding Ok Enable Path A
  WUPEA1 = 4;  m_WUPEA1 = 16;  // Wake Up Pattern Enable Path A
  SFIDEA1 = 5;  m_SFIDEA1 = 32;  // Start of Frame Identifier Enable Path A
  RROEA1 = 6;  m_RROEA1 = 64;  // RSSI Range Ok Enable Path A
  WCOBOE1 = 7;  m_WCOBOE1 = 128;  // Wake Check Ok Path B Ok Enable

type
  TSOTC2Aset = bitpacked set of (e_CAROEA2, e_AMPOEA2, e_SYTOEA2, e_MANOEA2, e_WUPEA2, e_SFIDEA2, e_RROEA2, e_WCOBOE2);
  TSOTC2Arec = bitpacked record
    CAROEA2,
    AMPOEA2,
    SYTOEA2,
    MANOEA2,
    WUPEA2,
    SFIDEA2,
    RROEA2,
    WCOBOE2: TBitField;
  end;
var
  SOTC2A: byte absolute $121;  // Start Of Telegram Conditions 2 Path A
  SOTC2Aset: TSOTC2Aset absolute $121;
  SOTC2Arec: TSOTC2Arec absolute $121;
const
  CAROEA2 = 0;  m_CAROEA2 = 1;  // RF Carrier Ok Enable Path A
  AMPOEA2 = 1;  m_AMPOEA2 = 2;  // Modulation Amplitude Ok Enable Path A
  SYTOEA2 = 2;  m_SYTOEA2 = 4;  // Symbol Timing Ok Enable Path A
  MANOEA2 = 3;  m_MANOEA2 = 8;  // Manchester Coding Ok Enable Path A
  WUPEA2 = 4;  m_WUPEA2 = 16;  // Wake Up Pattern Enable Path A
  SFIDEA2 = 5;  m_SFIDEA2 = 32;  // Start of Frame Identifier Enable Path A
  RROEA2 = 6;  m_RROEA2 = 64;  // RSSI Range Ok Enable Path A
  WCOBOE2 = 7;  m_WCOBOE2 = 128;  // Wake Check Ok Path B Ok Enable

type
  TSOTC1Bset = bitpacked set of (e_CAROEB1, e_AMPOEB1, e_SYTOEB1, e_MANOEB1, e_WUPEB1, e_SFIDEB1, e_RROEB1, e_WCOAOE1);
  TSOTC1Brec = bitpacked record
    CAROEB1,
    AMPOEB1,
    SYTOEB1,
    MANOEB1,
    WUPEB1,
    SFIDEB1,
    RROEB1,
    WCOAOE1: TBitField;
  end;
var
  SOTC1B: byte absolute $122;  // Start Of Telegram Conditions 1 Path B
  SOTC1Bset: TSOTC1Bset absolute $122;
  SOTC1Brec: TSOTC1Brec absolute $122;
const
  CAROEB1 = 0;  m_CAROEB1 = 1;  // RF Carrier Ok Enable Path B
  AMPOEB1 = 1;  m_AMPOEB1 = 2;  // Modulation Amplitude Ok Enable Path B
  SYTOEB1 = 2;  m_SYTOEB1 = 4;  // Symbol Timing Ok Enable Path B
  MANOEB1 = 3;  m_MANOEB1 = 8;  // Manchester Coding Ok Enable Path B
  WUPEB1 = 4;  m_WUPEB1 = 16;  // Wake Up Pattern Enable Path B
  SFIDEB1 = 5;  m_SFIDEB1 = 32;  // Start of Frame Identifier Enable Path B
  RROEB1 = 6;  m_RROEB1 = 64;  // RSSI Range Ok Enable Path B
  WCOAOE1 = 7;  m_WCOAOE1 = 128;  // Wake Check Ok Path A Ok Enable

type
  TSOTC2Bset = bitpacked set of (e_CAROEB2, e_AMPOEB2, e_SYTOEB2, e_MANOEB2, e_WUPEB2, e_SFIDEB2, e_RROEB2, e_WCOAOE2);
  TSOTC2Brec = bitpacked record
    CAROEB2,
    AMPOEB2,
    SYTOEB2,
    MANOEB2,
    WUPEB2,
    SFIDEB2,
    RROEB2,
    WCOAOE2: TBitField;
  end;
var
  SOTC2B: byte absolute $123;  // Start Of Telegram Conditions 2 Path B
  SOTC2Bset: TSOTC2Bset absolute $123;
  SOTC2Brec: TSOTC2Brec absolute $123;
const
  CAROEB2 = 0;  m_CAROEB2 = 1;  // RF Carrier Ok Enable Path B
  AMPOEB2 = 1;  m_AMPOEB2 = 2;  // Modulation Amplitude Ok Enable Path B
  SYTOEB2 = 2;  m_SYTOEB2 = 4;  // Symbol Timing Ok Enable Path B
  MANOEB2 = 3;  m_MANOEB2 = 8;  // Manchester Coding Ok Enable Path B
  WUPEB2 = 4;  m_WUPEB2 = 16;  // Wake Up Pattern Enable Path B
  SFIDEB2 = 5;  m_SFIDEB2 = 32;  // Start of Frame Identifier Enable Path B
  RROEB2 = 6;  m_RROEB2 = 64;  // RSSI Range Ok Enable Path B
  WCOAOE2 = 7;  m_WCOAOE2 = 128;  // Wake Check Ok Path A Ok Enable

type
  TEOTC1Aset = bitpacked set of (e_CARFEA1, e_AMPFEA1, e_SYTFEA1, e_MANFEA1, e_TMOFEA1, e_TELREA1, e_RRFEA1, e_EOTBFE1);
  TEOTC1Arec = bitpacked record
    CARFEA1,
    AMPFEA1,
    SYTFEA1,
    MANFEA1,
    TMOFEA1,
    TELREA1,
    RRFEA1,
    EOTBFE1: TBitField;
  end;
var
  EOTC1A: byte absolute $124;  // End Of Telegram Conditions 1 Path A
  EOTC1Aset: TEOTC1Aset absolute $124;
  EOTC1Arec: TEOTC1Arec absolute $124;
const
  CARFEA1 = 0;  m_CARFEA1 = 1;  // RF Carrier Fail Enable Path A
  AMPFEA1 = 1;  m_AMPFEA1 = 2;  // Modulation Amplitude Fail Enable Path A
  SYTFEA1 = 2;  m_SYTFEA1 = 4;  // Symbol Timing Fail Enable Path A
  MANFEA1 = 3;  m_MANFEA1 = 8;  // Manchester Coding Fail Enable Path A
  TMOFEA1 = 4;  m_TMOFEA1 = 16;  // Time-Out Fail Enable Path A
  TELREA1 = 5;  m_TELREA1 = 32;  // Telegram Length Reached Enable Path A
  RRFEA1 = 6;  m_RRFEA1 = 64;  // RSSI Range Fail Enable Path A
  EOTBFE1 = 7;  m_EOTBFE1 = 128;  // End Of Telegram Path B Fail Enable

type
  TEOTC2Aset = bitpacked set of (e_CARFEA2, e_AMPFEA2, e_SYTFEA2, e_MANFEA2, e_TMOFEA2, e_TELREA2, e_RRFEA2, e_EOTBFE2);
  TEOTC2Arec = bitpacked record
    CARFEA2,
    AMPFEA2,
    SYTFEA2,
    MANFEA2,
    TMOFEA2,
    TELREA2,
    RRFEA2,
    EOTBFE2: TBitField;
  end;
var
  EOTC2A: byte absolute $125;  // End Of Telegram Conditions 2 Path A
  EOTC2Aset: TEOTC2Aset absolute $125;
  EOTC2Arec: TEOTC2Arec absolute $125;
const
  CARFEA2 = 0;  m_CARFEA2 = 1;  // RF Carrier Fail Enable Path A
  AMPFEA2 = 1;  m_AMPFEA2 = 2;  // Modulation Amplitude Fail Enable Path A
  SYTFEA2 = 2;  m_SYTFEA2 = 4;  // Symbol Timing Fail Enable Path A
  MANFEA2 = 3;  m_MANFEA2 = 8;  // Manchester Coding Fail Enable Path A
  TMOFEA2 = 4;  m_TMOFEA2 = 16;  // Time-Out Fail Enable Path A
  TELREA2 = 5;  m_TELREA2 = 32;  // Telegram Length Reached Enable Path A
  RRFEA2 = 6;  m_RRFEA2 = 64;  // RSSI Range Fail Enable Path A
  EOTBFE2 = 7;  m_EOTBFE2 = 128;  // End Of Telegram Path B Fail Enable

type
  TEOTC3Aset = bitpacked set of (e_CARFEA3, e_AMPFEA3, e_SYTFEA3, e_MANFEA3, e_TMOFEA3, e_TELREA3, e_RRFEA3, e_EOTBFE3);
  TEOTC3Arec = bitpacked record
    CARFEA3,
    AMPFEA3,
    SYTFEA3,
    MANFEA3,
    TMOFEA3,
    TELREA3,
    RRFEA3,
    EOTBFE3: TBitField;
  end;
var
  EOTC3A: byte absolute $126;  // End Of Telegram Conditions 3 Path A
  EOTC3Aset: TEOTC3Aset absolute $126;
  EOTC3Arec: TEOTC3Arec absolute $126;
const
  CARFEA3 = 0;  m_CARFEA3 = 1;  // RF Carrier Fail Enable Path A
  AMPFEA3 = 1;  m_AMPFEA3 = 2;  // Modulation Amplitude Fail Enable Path A
  SYTFEA3 = 2;  m_SYTFEA3 = 4;  // Symbol Timing Fail Enable Path A
  MANFEA3 = 3;  m_MANFEA3 = 8;  // Manchester Coding Fail Enable Path A
  TMOFEA3 = 4;  m_TMOFEA3 = 16;  // Time-Out Fail Enable Path A
  TELREA3 = 5;  m_TELREA3 = 32;  // Telegram Length Reached Enable Path A
  RRFEA3 = 6;  m_RRFEA3 = 64;  // RSSI Range Fail Enable Path A
  EOTBFE3 = 7;  m_EOTBFE3 = 128;  // End Of Telegram Path B Fail Enable

type
  TEOTC1Bset = bitpacked set of (e_CARFEB1, e_AMPFEB1, e_SYTFEB1, e_MANFEB1, e_TMOFEB1, e_TELREB1, e_RRFEB1, e_EOTAFE1);
  TEOTC1Brec = bitpacked record
    CARFEB1,
    AMPFEB1,
    SYTFEB1,
    MANFEB1,
    TMOFEB1,
    TELREB1,
    RRFEB1,
    EOTAFE1: TBitField;
  end;
var
  EOTC1B: byte absolute $127;  // End Of Telegram Conditions 1 Path B
  EOTC1Bset: TEOTC1Bset absolute $127;
  EOTC1Brec: TEOTC1Brec absolute $127;
const
  CARFEB1 = 0;  m_CARFEB1 = 1;  // RF Carrier Fail Enable Path B
  AMPFEB1 = 1;  m_AMPFEB1 = 2;  // Modulation Amplitude Fail Enable Path B
  SYTFEB1 = 2;  m_SYTFEB1 = 4;  // Symbol Timing Fail Enable Path B
  MANFEB1 = 3;  m_MANFEB1 = 8;  // Manchester Coding Fail Enable Path B
  TMOFEB1 = 4;  m_TMOFEB1 = 16;  // Time-Out Fail Enable Path B
  TELREB1 = 5;  m_TELREB1 = 32;  // Telegram Length Reached Enable Path B
  RRFEB1 = 6;  m_RRFEB1 = 64;  // RSSI Range Fail Enable Path B
  EOTAFE1 = 7;  m_EOTAFE1 = 128;  // End Of Telegram Path A Fail Enable

type
  TEOTC2Bset = bitpacked set of (e_CARFEB2, e_AMPFEB2, e_SYTFEB2, e_MANFEB2, e_TMOFEB2, e_TELREB2, e_RRFEB2, e_EOTAFE2);
  TEOTC2Brec = bitpacked record
    CARFEB2,
    AMPFEB2,
    SYTFEB2,
    MANFEB2,
    TMOFEB2,
    TELREB2,
    RRFEB2,
    EOTAFE2: TBitField;
  end;
var
  EOTC2B: byte absolute $128;  // End Of Telegram Conditions 2 Path B
  EOTC2Bset: TEOTC2Bset absolute $128;
  EOTC2Brec: TEOTC2Brec absolute $128;
const
  CARFEB2 = 0;  m_CARFEB2 = 1;  // RF Carrier Fail Enable Path B
  AMPFEB2 = 1;  m_AMPFEB2 = 2;  // Modulation Amplitude Fail Enable Path B
  SYTFEB2 = 2;  m_SYTFEB2 = 4;  // Symbol Timing Fail Enable Path B
  MANFEB2 = 3;  m_MANFEB2 = 8;  // Manchester Coding Fail Enable Path B
  TMOFEB2 = 4;  m_TMOFEB2 = 16;  // Time-Out Fail Enable Path B
  TELREB2 = 5;  m_TELREB2 = 32;  // Telegram Length Reached Enable Path B
  RRFEB2 = 6;  m_RRFEB2 = 64;  // RSSI Range Fail Enable Path B
  EOTAFE2 = 7;  m_EOTAFE2 = 128;  // End Of Telegram Path A Fail Enable

type
  TEOTC3Bset = bitpacked set of (e_CARFEB3, e_AMPFEB3, e_SYTFEB3, e_MANFEB3, e_TMOFEB3, e_TELREB3, e_RRFEB3, e_EOTAFE3);
  TEOTC3Brec = bitpacked record
    CARFEB3,
    AMPFEB3,
    SYTFEB3,
    MANFEB3,
    TMOFEB3,
    TELREB3,
    RRFEB3,
    EOTAFE3: TBitField;
  end;
var
  EOTC3B: byte absolute $129;  // End Of Telegram Conditions 3 Path B
  EOTC3Bset: TEOTC3Bset absolute $129;
  EOTC3Brec: TEOTC3Brec absolute $129;
const
  CARFEB3 = 0;  m_CARFEB3 = 1;  // RF Carrier Fail Enable Path B
  AMPFEB3 = 1;  m_AMPFEB3 = 2;  // Modulation Amplitude Fail Enable Path B
  SYTFEB3 = 2;  m_SYTFEB3 = 4;  // Symbol Timing Fail Enable Path B
  MANFEB3 = 3;  m_MANFEB3 = 8;  // Manchester Coding Fail Enable Path B
  TMOFEB3 = 4;  m_TMOFEB3 = 16;  // Time-Out Fail Enable Path B
  TELREB3 = 5;  m_TELREB3 = 32;  // Telegram Length Reached Enable Path B
  RRFEB3 = 6;  m_RRFEB3 = 64;  // RSSI Range Fail Enable Path B
  EOTAFE3 = 7;  m_EOTAFE3 = 128;  // End Of Telegram Path A Fail Enable

var
  WCOTOA: byte absolute $12A;  // Wake Check Ok Time-Out Path A
  WCOTOB: byte absolute $12B;  // Wake Check Ok Time-Out Path B
  SOTTOA: byte absolute $12C;  // Start Of Telegram Time Out Path A
  SOTTOB: byte absolute $12D;  // Start Of Telegram Time Out Path B

type
  TSSMFCRset = bitpacked set of (e_SSMIDSO, e_SSMIDSF, e_SSMSEH, e_SSMCEH);
  TSSMFCRrec = bitpacked record
    SSMIDSO,
    SSMIDSF,
    SSMSEH,
    SSMCEH,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMFCR: byte absolute $12E;  // Sequencer State Machine Flow Control Register
  SSMFCRset: TSSMFCRset absolute $12E;
  SSMFCRrec: TSSMFCRrec absolute $12E;
const
  SSMIDSO = 0;  m_SSMIDSO = 1;  // SSM ID Scan OK
  SSMIDSF = 1;  m_SSMIDSF = 2;  // SSM ID Scan Fail
  SSMSEH = 2;  m_SSMSEH = 4;  // SSM Single Start Telegram End Handling
  SSMCEH = 3;  m_SSMCEH = 8;  // SSM Continuous Start Telegram End Handling

type
  TRXBC1set = bitpacked set of (e_RXCEA, e_RXCBLA0, e_RXCBLA1, e_RXLSBA, e_RXCEB, e_RXCBLB0, e_RXCBLB1, e_RXLSBB);
  TRXBC1rec = bitpacked record
    RXCEA,
    RXCBLA0,
    RXCBLA1,
    RXLSBA,
    RXCEB,
    RXCBLB0,
    RXCBLB1,
    RXLSBB: TBitField;
  end;
var
  RXBC1: byte absolute $13E;  // Rx Buffer Configuration 1
  RXBC1set: TRXBC1set absolute $13E;
  RXBC1rec: TRXBC1rec absolute $13E;
const
  RXCEA = 0;  m_RXCEA = 1;  // RX CRC Enable data path A
  RXCBLA0 = 1;  m_RXCBLA0 = 2;  // Receive CRC Bit Length Path A
  RXCBLA1 = 2;  m_RXCBLA1 = 4;  // Receive CRC Bit Length Path A
  RXLSBA = 3;  m_RXLSBA = 8;  // Receive Data LSB-First Path A
  RXCEB = 4;  m_RXCEB = 16;  // RX CRC Enable data path B
  RXCBLB0 = 5;  m_RXCBLB0 = 32;  // Receive CRC Bit Length Path B
  RXCBLB1 = 6;  m_RXCBLB1 = 64;  // Receive CRC Bit Length Path B
  RXLSBB = 7;  m_RXLSBB = 128;  // Receive Data LSB-First Path B

type
  TRXBC2set = bitpacked set of (e_RXBPB, e_RXBF, e_RXBCLR);
  TRXBC2rec = bitpacked record
    RXBPB,
    RXBF,
    RXBCLR,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RXBC2: byte absolute $13F;  // Rx Buffer Configuration 2
  RXBC2set: TRXBC2set absolute $13F;
  RXBC2rec: TRXBC2rec absolute $13F;
const
  RXBPB = 0;  m_RXBPB = 1;  // RX Buffer Path Select
  RXBF = 1;  m_RXBF = 2;  // RX Buffer Finish
  RXBCLR = 2;  m_RXBCLR = 4;  // RX Buffer Clear

var
  RXTLLB: byte absolute $140;  // Rx Telegram Length Low Byte Path B
  RXTLHB: byte absolute $141;  // Rx Telegram Length High Byte Path B
  RXCRLB: byte absolute $142;  // Rx CRC Result Low Byte Path B
  RXCRHB: byte absolute $143;  // Rx CRC Result High Byte Path B
  RXCSBB: byte absolute $144;  // Rx CRC Skip Bit Number Path B
  RXCILB: byte absolute $145;  // Rx CRC Init Value Low Byte Path B
  RXCIHB: byte absolute $146;  // Rx CRC Init Value High Byte Path B
  RXCPLB: byte absolute $147;  // Rx CRC Polynomial Low Byte Path B
  RXCPHB: byte absolute $148;  // Rx CRC Polynomial High Byte Path B
  RXDSB: byte absolute $149;  // Receive Data Shift Register Path B
  RXTLLA: byte absolute $14A;  // Rx Telegram Length Low Byte Path A
  RXTLHA: byte absolute $14B;  // Rx Telegram Length High Byte Path A
  RXCRLA: byte absolute $14C;  // Rx CRC Result Low Byte Path A
  RXCRHA: byte absolute $14D;  // Rx CRC Result High Byte Path A
  RXCSBA: byte absolute $14E;  // Rx CRC Skip Bit Number Path A
  RXCILA: byte absolute $14F;  // Rx CRC Init Value Low Byte Path A
  RXCIHA: byte absolute $150;  // Rx CRC Init Value High Byte Path A
  RXCPLA: byte absolute $151;  // Rx CRC Polynomial Low Byte Path A
  RXCPHA: byte absolute $152;  // Rx CRC Polynomial High Byte Path A
  RXDSA: byte absolute $153;  // Receive Data Shift Register Path A

type
  TCRCCRset = bitpacked set of (e_CRCRS, e_REFLI, e_REFLO);
  TCRCCRrec = bitpacked record
    CRCRS,
    REFLI,
    REFLO,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CRCCR: byte absolute $154;  // CRC Control Register
  CRCCRset: TCRCCRset absolute $154;
  CRCCRrec: TCRCCRrec absolute $154;
const
  CRCRS = 0;  m_CRCRS = 1;  // CRC Data Register Reset
  REFLI = 1;  m_REFLI = 2;  // Reflect Data Input Byte
  REFLO = 2;  m_REFLO = 4;  // Reflect Data Output Byte

var
  CRCDOR: byte absolute $155;  // CRC Data Output Register
  IDB0: byte absolute $156;  // ID Check Byte 0
  IDB1: byte absolute $157;  // ID Check Byte 1
  IDB2: byte absolute $158;  // ID Check Byte 2
  IDB3: byte absolute $159;  // ID Check Byte 3

type
  TIDCset = bitpacked set of (e_IDL0, e_IDL1, e_IDBO0, e_IDBO1, e_IDFIM=5, e_IDCLR, e_IDCE);
  TIDCrec = bitpacked record
    IDL0,
    IDL1,
    IDBO0,
    IDBO1,
    ReservedBit4,
    IDFIM,
    IDCLR,
    IDCE: TBitField;
  end;
var
  IDC: byte absolute $15A;  // ID Check Configuration
  IDCset: TIDCset absolute $15A;
  IDCrec: TIDCrec absolute $15A;
const
  IDL0 = 0;  m_IDL0 = 1;  // ID Length
  IDL1 = 1;  m_IDL1 = 2;  // ID Length
  IDBO0 = 2;  m_IDBO0 = 4;  // ID Byte Offset
  IDBO1 = 3;  m_IDBO1 = 8;  // ID Byte Offset
  IDFIM = 5;  m_IDFIM = 32;  // ID Full Interrupt Mask
  IDCLR = 6;  m_IDCLR = 64;  // ID Clear
  IDCE = 7;  m_IDCE = 128;  // ID Check Execute

type
  TIDSset = bitpacked set of (e_IDOK, e_IDFULL);
  TIDSrec = bitpacked record
    IDOK,
    IDFULL,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  IDS: byte absolute $15B;  // ID Check Status
  IDSset: TIDSset absolute $15B;
  IDSrec: TIDSrec absolute $15B;
const
  IDOK = 0;  m_IDOK = 1;  // ID Check Ok Flag
  IDFULL = 1;  m_IDFULL = 2;  // ID Full Flag

var
  RSSAV: byte absolute $15C;  // RSSI Average Value
  RSSPK: byte absolute $15D;  // RSSI Peak Value
  RSSL: byte absolute $15E;  // RSSI Low Threshold
  RSSH: byte absolute $15F;  // RSSI High Threshold

type
  TRSSCset = bitpacked set of (e_RSUP0, e_RSUP1, e_RSUP2, e_RSUP3, e_RSWLH, e_RSHRX, e_RSPKF);
  TRSSCrec = bitpacked record
    RSUP0,
    RSUP1,
    RSUP2,
    RSUP3,
    RSWLH,
    RSHRX,
    RSPKF,
    ReservedBit7: TBitField;
  end;
var
  RSSC: byte absolute $160;  // RSSI Configuration Register
  RSSCset: TRSSCset absolute $160;
  RSSCrec: TRSSCrec absolute $160;
const
  RSUP0 = 0;  m_RSUP0 = 1;  // RSSI Update Period
  RSUP1 = 1;  m_RSUP1 = 2;  // RSSI Update Period
  RSUP2 = 2;  m_RSUP2 = 4;  // RSSI Update Period
  RSUP3 = 3;  m_RSUP3 = 8;  // RSSI Update Period
  RSWLH = 4;  m_RSWLH = 16;  // RSSI Within Low and High Limits
  RSHRX = 5;  m_RSHRX = 32;  // RSSI High Band Reception
  RSPKF = 6;  m_RSPKF = 64;  // RSSI Peak Values to SFIFO

type
  TDBCRset = bitpacked set of (e_DBMD, e_DBCS, e_DBTMS);
  TDBCRrec = bitpacked record
    DBMD,
    DBCS,
    DBTMS,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DBCR: byte absolute $161;  // Debounce Control Register
  DBCRset: TDBCRset absolute $161;
  DBCRrec: TDBCRrec absolute $161;
const
  DBMD = 0;  m_DBMD = 1;  // Debounce Mode
  DBCS = 1;  m_DBCS = 2;  // Debounce Clock Select
  DBTMS = 2;  m_DBTMS = 4;  // Debounce Timer Mask Select

var
  DBTC: byte absolute $162;  // Debounce Timer Compare
  DBENB: byte absolute $163;  // Debounce Enable Port B
  DBENC: byte absolute $164;  // Debounce Enable Port C

type
  TDBGSWset = bitpacked set of (e_DBGGS0, e_DBGGS1, e_DBGGS2, e_DBGGS3, e_CPBFOS0, e_CPBFOS1, e_CPBF, e_DBGSE);
  TDBGSWrec = bitpacked record
    DBGGS0,
    DBGGS1,
    DBGGS2,
    DBGGS3,
    CPBFOS0,
    CPBFOS1,
    CPBF,
    DBGSE: TBitField;
  end;
var
  DBGSW: byte absolute $165;  // Debug Support Switch
  DBGSWset: TDBGSWset absolute $165;
  DBGSWrec: TDBGSWrec absolute $165;
const
  DBGGS0 = 0;  m_DBGGS0 = 1;  // Debug Support Group Select
  DBGGS1 = 1;  m_DBGGS1 = 2;  // Debug Support Group Select
  DBGGS2 = 2;  m_DBGGS2 = 4;  // Debug Support Group Select
  DBGGS3 = 3;  m_DBGGS3 = 8;  // Debug Support Group Select
  CPBFOS0 = 4;  m_CPBFOS0 = 16;  // CPU Busy Flag Output Select
  CPBFOS1 = 5;  m_CPBFOS1 = 32;  // CPU Busy Flag Output Select
  CPBF = 6;  m_CPBF = 64;  // CPU Busy Flag
  DBGSE = 7;  m_DBGSE = 128;  // Debug Support Switch Enable

type
  TSFFRset = bitpacked set of (e_RFL0, e_RFL1, e_RFL2, e_RFC, e_TFL0, e_TFL1, e_TFL2, e_TFC);
  TSFFRrec = bitpacked record
    RFL0,
    RFL1,
    RFL2,
    RFC,
    TFL0,
    TFL1,
    TFL2,
    TFC: TBitField;
  end;
var
  SFFR: byte absolute $166;  // SPI FIFO Fill Status Register
  SFFRset: TSFFRset absolute $166;
  SFFRrec: TSFFRrec absolute $166;
const
  RFL0 = 0;  m_RFL0 = 1;  // Receive Buffer Fill Level
  RFL1 = 1;  m_RFL1 = 2;  // Receive Buffer Fill Level
  RFL2 = 2;  m_RFL2 = 4;  // Receive Buffer Fill Level
  RFC = 3;  m_RFC = 8;  // Rx Buffer Clear
  TFL0 = 4;  m_TFL0 = 16;  // Transmit Buffer Fill Level
  TFL1 = 5;  m_TFL1 = 32;  // Transmit Buffer Fill Level
  TFL2 = 6;  m_TFL2 = 64;  // Transmit Buffer Fill Level
  TFC = 7;  m_TFC = 128;  // Transmit Buffer Clear

type
  TSFIRset = bitpacked set of (e_RIL0, e_RIL1, e_RIL2, e_SRIE, e_TIL0, e_TIL1, e_TIL2, e_STIE);
  TSFIRrec = bitpacked record
    RIL0,
    RIL1,
    RIL2,
    SRIE,
    TIL0,
    TIL1,
    TIL2,
    STIE: TBitField;
  end;
var
  SFIR: byte absolute $167;  // SPI FIFO Interrupt Register
  SFIRset: TSFIRset absolute $167;
  SFIRrec: TSFIRrec absolute $167;
const
  RIL0 = 0;  m_RIL0 = 1;  // Receive Buffer Interrupt Level
  RIL1 = 1;  m_RIL1 = 2;  // Receive Buffer Interrupt Level
  RIL2 = 2;  m_RIL2 = 4;  // Receive Buffer Interrupt Level
  SRIE = 3;  m_SRIE = 8;  // SPI Rx Buffer Interrupt Enable
  TIL0 = 4;  m_TIL0 = 16;  // Transmit Buffer Interrupt Level
  TIL1 = 5;  m_TIL1 = 32;  // Transmit Buffer Interrupt Level
  TIL2 = 6;  m_TIL2 = 64;  // Transmit Buffer Interrupt Level
  STIE = 7;  m_STIE = 128;  // SPI Transmit Buffer Interrupt Enable

type
  TEECR2set = bitpacked set of (e_EEBRE, e_EEFF=6, e_EECF);
  TEECR2rec = bitpacked record
    EEBRE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    EEFF,
    EECF: TBitField;
  end;
var
  EECR2: byte absolute $168;  // EEPROM Control Register 2
  EECR2set: TEECR2set absolute $168;
  EECR2rec: TEECR2rec absolute $168;
const
  EEBRE = 0;  m_EEBRE = 1;  // EEPROM Burst Read Enable
  EEFF = 6;  m_EEFF = 64;  // EEPROM Error Fault Flag
  EECF = 7;  m_EECF = 128;  // EEPROM Error Correction Flag

type
  TPGMSTset = bitpacked set of (e_PGMSYN0, e_PGMSYN1, e_PGMSYN2, e_PGMSYN3, e_PGMSYN4);
  TPGMSTrec = bitpacked record
    PGMSYN0,
    PGMSYN1,
    PGMSYN2,
    PGMSYN3,
    PGMSYN4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PGMST: byte absolute $169;  // Program Memory Status Register
  PGMSTset: TPGMSTset absolute $169;
  PGMSTrec: TPGMSTrec absolute $169;
const
  PGMSYN0 = 0;  m_PGMSYN0 = 1;  // Program Memory Syndrome
  PGMSYN1 = 1;  m_PGMSYN1 = 2;  // Program Memory Syndrome
  PGMSYN2 = 2;  m_PGMSYN2 = 4;  // Program Memory Syndrome
  PGMSYN3 = 3;  m_PGMSYN3 = 8;  // Program Memory Syndrome
  PGMSYN4 = 4;  m_PGMSYN4 = 16;  // Program Memory Syndrome

type
  TEESTset = bitpacked set of (e_EESYN0, e_EESYN1, e_EESYN2, e_EESYN3);
  TEESTrec = bitpacked record
    EESYN0,
    EESYN1,
    EESYN2,
    EESYN3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EEST: byte absolute $16A;  // EEPROM Status Register
  EESTset: TEESTset absolute $16A;
  EESTrec: TEESTrec absolute $16A;
const
  EESYN0 = 0;  m_EESYN0 = 1;  // EEPROM Syndrome
  EESYN1 = 1;  m_EESYN1 = 2;  // EEPROM Syndrome
  EESYN2 = 2;  m_EESYN2 = 4;  // EEPROM Syndrome
  EESYN3 = 3;  m_EESYN3 = 8;  // EEPROM Syndrome

var
  RSHSG: byte absolute $16B;  // RSSI LNA High Sensitivity Gain
  RSIFG: byte absolute $16C;  // RSSI IF Amplifier Gain
  RSLDV: byte absolute $16D;  // RSSI Low Band Damping Value
  RSHDV: byte absolute $16E;  // RSSI High Band Damping Value

type
  TRSCOMset = bitpacked set of (e_RSDC, e_RSIFC, e_RSHISC);
  TRSCOMrec = bitpacked record
    RSDC,
    RSIFC,
    RSHISC,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RSCOM: byte absolute $16F;  // RSSI Compensation Register
  RSCOMset: TRSCOMset absolute $16F;
  RSCOMrec: TRSCOMrec absolute $16F;
const
  RSDC = 0;  m_RSDC = 1;  // RSSI Damping Compensation
  RSIFC = 1;  m_RSIFC = 2;  // RSSI IF Amplifier Compensation
  RSHISC = 2;  m_RSHISC = 4;  // RSSI LNA High Sensitivity Compensation

type
  TOCCRset = bitpacked set of (e_OCEN, e_OCSEL);
  TOCCRrec = bitpacked record
    OCEN,
    OCSEL,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  OCCR: byte absolute $170;  // Oscillator Calibration Counter Configuration Register
  OCCRset: TOCCRset absolute $170;
  OCCRrec: TOCCRrec absolute $170;
const
  OCEN = 0;  m_OCEN = 1;  // Oscillator Calibration Counter Enable
  OCSEL = 1;  m_OCSEL = 2;  // Oscillator Calibration Select Target

var
  OCCNT: byte absolute $171;  // Oscillator Calibration Counter Value
  OCGATE: byte absolute $172;  // Oscillator Calibration Counter Gate

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
  LINCR: byte absolute $173;  // LIN/UART Control Register
  LINCRset: TLINCRset absolute $173;
  LINCRrec: TLINCRrec absolute $173;
const
  LCMD0 = 0;  m_LCMD0 = 1;  // LIN/UART Command and Mode
  LCMD1 = 1;  m_LCMD1 = 2;  // LIN/UART Command and Mode
  LCMD2 = 2;  m_LCMD2 = 4;  // LIN/UART Command and Mode
  LENA = 3;  m_LENA = 8;  // LIN/UART Enable
  LCONF0 = 4;  m_LCONF0 = 16;  // LIN/UART Configuration
  LCONF1 = 5;  m_LCONF1 = 32;  // LIN/UART Configuration
  LIN13 = 6;  m_LIN13 = 64;  // LIN 1.3 Mode
  LSWRES = 7;  m_LSWRES = 128;  // LIN/UART Software Reset

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
  LINSIR: byte absolute $174;  // LIN Status and Interrupt Register
  LINSIRset: TLINSIRset absolute $174;
  LINSIRrec: TLINSIRrec absolute $174;
const
  LRXOK = 0;  m_LRXOK = 1;  // LIN/UART Receive Ok Flag
  LTXOK = 1;  m_LTXOK = 2;  // LIN/UART Transmit Ok Flag
  LIDOK = 2;  m_LIDOK = 4;  // LIN Identifier Ok Flag
  LERR = 3;  m_LERR = 8;  // LIN/UART Error Flag
  LBUSY = 4;  m_LBUSY = 16;  // LIN/UART Busy Flag
  LIDST0 = 5;  m_LIDST0 = 32;  // LIN Identifier Status
  LIDST1 = 6;  m_LIDST1 = 64;  // LIN Identifier Status
  LIDST2 = 7;  m_LIDST2 = 128;  // LIN Identifier Status

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
  LINENIR: byte absolute $175;  // LIN/UART Enable Interrupt Register
  LINENIRset: TLINENIRset absolute $175;
  LINENIRrec: TLINENIRrec absolute $175;
const
  LENRXOK = 0;  m_LENRXOK = 1;  // LIN/UART Enable Receive Ok Interrupt
  LENTXOK = 1;  m_LENTXOK = 2;  // LIN/UART Enable Transmit Ok Interrupt
  LENIDOK = 2;  m_LENIDOK = 4;  // LIN Enable Identifier Ok Interrupt
  LENERR = 3;  m_LENERR = 8;  // LIN/UART Enable Error Interrupt

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
  LINERR: byte absolute $176;  // LIN/UART Error Register
  LINERRset: TLINERRset absolute $176;
  LINERRrec: TLINERRrec absolute $176;
const
  LBERR = 0;  m_LBERR = 1;  // LIN Bit Error Flag
  LCERR = 1;  m_LCERR = 2;  // LIN Checksum Error Flag
  LPERR = 2;  m_LPERR = 4;  // LIN Parity Error Flag
  LSERR = 3;  m_LSERR = 8;  // LIN Synchronization Error Flag
  LFERR = 4;  m_LFERR = 16;  // LIN/UART Framing Error Flag
  LOVERR = 5;  m_LOVERR = 32;  // LIN/UART Overrun Error Flag
  LTOERR = 6;  m_LTOERR = 64;  // LIN Frame Time Out Error Flag
  LABORT = 7;  m_LABORT = 128;  // LIN Abort Flag

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
  LINBTR: byte absolute $177;  // LIN/UART Bit Timing Register
  LINBTRset: TLINBTRset absolute $177;
  LINBTRrec: TLINBTRrec absolute $177;
const
  LBT0 = 0;  m_LBT0 = 1;  // LIN/UART Bit Timing
  LBT1 = 1;  m_LBT1 = 2;  // LIN/UART Bit Timing
  LBT2 = 2;  m_LBT2 = 4;  // LIN/UART Bit Timing
  LBT3 = 3;  m_LBT3 = 8;  // LIN/UART Bit Timing
  LBT4 = 4;  m_LBT4 = 16;  // LIN/UART Bit Timing
  LBT5 = 5;  m_LBT5 = 32;  // LIN/UART Bit Timing
  LDISR = 7;  m_LDISR = 128;  // LIN/UART Disable Bit Timing Resynchronization

var
  LINBRRL: byte absolute $178;  // LIN/UART Baud Rate Register Low Byte

type
  TLINBRRHset = bitpacked set of (e_LDIV8, e_LDIV9, e_LDIV10, e_LDIV11);
  TLINBRRHrec = bitpacked record
    LDIV8,
    LDIV9,
    LDIV10,
    LDIV11,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LINBRRH: byte absolute $179;  // LIN/UART Baud Rate Register High Byte
  LINBRRHset: TLINBRRHset absolute $179;
  LINBRRHrec: TLINBRRHrec absolute $179;
const
  LDIV8 = 0;  m_LDIV8 = 1;  // LIN/UART Clock Divider
  LDIV9 = 1;  m_LDIV9 = 2;  // LIN/UART Clock Divider
  LDIV10 = 2;  m_LDIV10 = 4;  // LIN/UART Clock Divider
  LDIV11 = 3;  m_LDIV11 = 8;  // LIN/UART Clock Divider

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
  LINDLR: byte absolute $17A;  // LIN/UART Data Length Register
  LINDLRset: TLINDLRset absolute $17A;
  LINDLRrec: TLINDLRrec absolute $17A;
const
  LRXDL0 = 0;  m_LRXDL0 = 1;  // LIN Receive Data Length
  LRXDL1 = 1;  m_LRXDL1 = 2;  // LIN Receive Data Length
  LRXDL2 = 2;  m_LRXDL2 = 4;  // LIN Receive Data Length
  LRXDL3 = 3;  m_LRXDL3 = 8;  // LIN Receive Data Length
  LTXDL0 = 4;  m_LTXDL0 = 16;  // LIN Transmit Data Length
  LTXDL1 = 5;  m_LTXDL1 = 32;  // LIN Transmit Data Length
  LTXDL2 = 6;  m_LTXDL2 = 64;  // LIN Transmit Data Length
  LTXDL3 = 7;  m_LTXDL3 = 128;  // LIN Transmit Data Length

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
  LINIDR: byte absolute $17B;  // LIN/UART Identifier Register
  LINIDRset: TLINIDRset absolute $17B;
  LINIDRrec: TLINIDRrec absolute $17B;
const
  LID0 = 0;  m_LID0 = 1;  // LIN Identifier
  LID1 = 1;  m_LID1 = 2;  // LIN Identifier
  LID2 = 2;  m_LID2 = 4;  // LIN Identifier
  LID3 = 3;  m_LID3 = 8;  // LIN Identifier
  LID4 = 4;  m_LID4 = 16;  // LIN Identifier
  LID5 = 5;  m_LID5 = 32;  // LIN Identifier
  LP0 = 6;  m_LP0 = 64;  // LIN Parity
  LP1 = 7;  m_LP1 = 128;  // LIN Parity

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
  LINSEL: byte absolute $17C;  // LIN/UART Data Buffer Selection
  LINSELset: TLINSELset absolute $17C;
  LINSELrec: TLINSELrec absolute $17C;
const
  LINDX0 = 0;  m_LINDX0 = 1;  // LIN Data Buffer Index
  LINDX1 = 1;  m_LINDX1 = 2;  // LIN Data Buffer Index
  LINDX2 = 2;  m_LINDX2 = 4;  // LIN Data Buffer Index
  LAINC = 3;  m_LAINC = 8;  // LIN Auto Increment of Data Buffer Index Disable

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
  LINDAT: byte absolute $17D;  // LIN/UART Data Register
  LINDATset: TLINDATset absolute $17D;
  LINDATrec: TLINDATrec absolute $17D;
const
  LDATA0 = 0;  m_LDATA0 = 1;  // LIN/UART Data
  LDATA1 = 1;  m_LDATA1 = 2;  // LIN/UART Data
  LDATA2 = 2;  m_LDATA2 = 4;  // LIN/UART Data
  LDATA3 = 3;  m_LDATA3 = 8;  // LIN/UART Data
  LDATA4 = 4;  m_LDATA4 = 16;  // LIN/UART Data
  LDATA5 = 5;  m_LDATA5 = 32;  // LIN/UART Data
  LDATA6 = 6;  m_LDATA6 = 64;  // LIN/UART Data
  LDATA7 = 7;  m_LDATA7 = 128;  // LIN/UART Data

type
  TTRCCRset = bitpacked set of (e_TRCCE, e_TRCEN);
  TTRCCRrec = bitpacked record
    TRCCE,
    TRCEN,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TRCCR: byte absolute $17E;  // Trace Unit Control Register
  TRCCRset: TTRCCRset absolute $17E;
  TRCCRrec: TTRCCRrec absolute $17E;
const
  TRCCE = 0;  m_TRCCE = 1;  // Trace Unit Change Enable
  TRCEN = 1;  m_TRCEN = 2;  // Trace Unit Enable

var
  TRCDR: byte absolute $17F;  // Trace Unit Data Register
  TRCID: word absolute $180;  // Trace Identifier
  TRCIDL: byte absolute $180;
  TRCIDH: byte absolute $181;
  // typedefs = 172

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCI0_ISR; external name 'PCI0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCI1_ISR; external name 'PCI1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure VMON_ISR; external name 'VMON_ISR'; // Interrupt 5 Voltage Monitoring Interrupt
procedure AVCCR_ISR; external name 'AVCCR_ISR'; // Interrupt 6 AVCC Reset Interrupt
procedure AVCCL_ISR; external name 'AVCCL_ISR'; // Interrupt 7 AVCC Low Interrupt
procedure T0INT_ISR; external name 'T0INT_ISR'; // Interrupt 8 Timer 0 Interval Interrupt
procedure T1COMP_ISR; external name 'T1COMP_ISR'; // Interrupt 9 Timer/Counter1 Compare Match Interrupt
procedure T1OVF_ISR; external name 'T1OVF_ISR'; // Interrupt 10 Timer/Counter1 Overflow Interrupt
procedure T2COMP_ISR; external name 'T2COMP_ISR'; // Interrupt 11 Timer/Counter2 Compare Match Interrupt
procedure T2OVF_ISR; external name 'T2OVF_ISR'; // Interrupt 12 Timer/Counter2 Overflow Interrupt
procedure T3CAP_ISR; external name 'T3CAP_ISR'; // Interrupt 13 Timer/Counter3 Capture Event Interrupt
procedure T3COMP_ISR; external name 'T3COMP_ISR'; // Interrupt 14 Timer/Counter3 Compare Match Interrupt
procedure T3OVF_ISR; external name 'T3OVF_ISR'; // Interrupt 15 Timer/Counter3 Overflow Interrupt
procedure T4CAP_ISR; external name 'T4CAP_ISR'; // Interrupt 16 Timer/Counter4 Capture Event Interrupt
procedure T4COMP_ISR; external name 'T4COMP_ISR'; // Interrupt 17 Timer/Counter4 Compare Match Interrupt
procedure T4OVF_ISR; external name 'T4OVF_ISR'; // Interrupt 18 Timer/Counter4 Overflow Interrupt
procedure T5COMP_ISR; external name 'T5COMP_ISR'; // Interrupt 19 Timer/Counter5 Compare Match Interrupt
procedure T5OVF_ISR; external name 'T5OVF_ISR'; // Interrupt 20 Timer/Counter5 Overflow Interrupt
procedure SPI_ISR; external name 'SPI_ISR'; // Interrupt 21 SPI Serial Transfer Complete Interrupt
procedure SRX_FIFO_ISR; external name 'SRX_FIFO_ISR'; // Interrupt 22 SPI Rx Buffer Interrupt
procedure STX_FIFO_ISR; external name 'STX_FIFO_ISR'; // Interrupt 23 SPI Tx Buffer Interrupt
procedure LINTC_ISR; external name 'LINTC_ISR'; // Interrupt 24 LIN/UART Transfer Complete Interrupt
procedure LINERR_ISR; external name 'LINERR_ISR'; // Interrupt 25 LIN/UART Error Interrupt
procedure SSM_ISR; external name 'SSM_ISR'; // Interrupt 26 Sequencer State Machine Interrupt
procedure DFFLR_ISR; external name 'DFFLR_ISR'; // Interrupt 27 Data FIFO fill level reached Interrupt
procedure DFOUE_ISR; external name 'DFOUE_ISR'; // Interrupt 28 Data FIFO overflow or underflow error Interrupt
procedure SFFLR_ISR; external name 'SFFLR_ISR'; // Interrupt 29 RSSI/Preamble FIFO fill level reached Interrupt
procedure SFOUE_ISR; external name 'SFOUE_ISR'; // Interrupt 30 RSSI/Preamble FIFO overflow or underflow error Interrupt
procedure TMTCF_ISR; external name 'TMTCF_ISR'; // Interrupt 31 Tx Modulator Telegram Finish Interrupt
procedure UHF_WCOA_ISR; external name 'UHF_WCOA_ISR'; // Interrupt 32 UHF receiver wake up ok on Rx path A
procedure UHF_WCOB_ISR; external name 'UHF_WCOB_ISR'; // Interrupt 33 UHF receiver wake up ok on Rx path B
procedure UHF_SOTA_ISR; external name 'UHF_SOTA_ISR'; // Interrupt 34 UHF receiver start of telegram ok on Rx path A
procedure UHF_SOTB_ISR; external name 'UHF_SOTB_ISR'; // Interrupt 35 UHF receiver start of telegram ok on Rx path B
procedure UHF_EOTA_ISR; external name 'UHF_EOTA_ISR'; // Interrupt 36 UHF receiver end of telegram on Rx path A
procedure UHF_EOTB_ISR; external name 'UHF_EOTB_ISR'; // Interrupt 37 UHF receiver end of telegram on Rx path B
procedure UHF_NBITA_ISR; external name 'UHF_NBITA_ISR'; // Interrupt 38 UHF receiver new bit on Rx path A
procedure UHF_NBITB_ISR; external name 'UHF_NBITB_ISR'; // Interrupt 39 UHF receiver new bit on Rx path B
procedure EXCM_ISR; external name 'EXCM_ISR'; // Interrupt 40 External input Clock monitoring Interrupt
procedure ERDY_ISR; external name 'ERDY_ISR'; // Interrupt 41 EEPROM Ready Interrupt
procedure SPMR_ISR; external name 'SPMR_ISR'; // Interrupt 42 Store Program Memory Ready
procedure IDFULL_ISR; external name 'IDFULL_ISR'; // Interrupt 43 IDSCAN Full Interrupt

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp INT1_ISR
  jmp PCI0_ISR
  jmp PCI1_ISR
  jmp VMON_ISR
  jmp AVCCR_ISR
  jmp AVCCL_ISR
  jmp T0INT_ISR
  jmp T1COMP_ISR
  jmp T1OVF_ISR
  jmp T2COMP_ISR
  jmp T2OVF_ISR
  jmp T3CAP_ISR
  jmp T3COMP_ISR
  jmp T3OVF_ISR
  jmp T4CAP_ISR
  jmp T4COMP_ISR
  jmp T4OVF_ISR
  jmp T5COMP_ISR
  jmp T5OVF_ISR
  jmp SPI_ISR
  jmp SRX_FIFO_ISR
  jmp STX_FIFO_ISR
  jmp LINTC_ISR
  jmp LINERR_ISR
  jmp SSM_ISR
  jmp DFFLR_ISR
  jmp DFOUE_ISR
  jmp SFFLR_ISR
  jmp SFOUE_ISR
  jmp TMTCF_ISR
  jmp UHF_WCOA_ISR
  jmp UHF_WCOB_ISR
  jmp UHF_SOTA_ISR
  jmp UHF_SOTB_ISR
  jmp UHF_EOTA_ISR
  jmp UHF_EOTB_ISR
  jmp UHF_NBITA_ISR
  jmp UHF_NBITB_ISR
  jmp EXCM_ISR
  jmp ERDY_ISR
  jmp SPMR_ISR
  jmp IDFULL_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak PCI0_ISR
  .weak PCI1_ISR
  .weak VMON_ISR
  .weak AVCCR_ISR
  .weak AVCCL_ISR
  .weak T0INT_ISR
  .weak T1COMP_ISR
  .weak T1OVF_ISR
  .weak T2COMP_ISR
  .weak T2OVF_ISR
  .weak T3CAP_ISR
  .weak T3COMP_ISR
  .weak T3OVF_ISR
  .weak T4CAP_ISR
  .weak T4COMP_ISR
  .weak T4OVF_ISR
  .weak T5COMP_ISR
  .weak T5OVF_ISR
  .weak SPI_ISR
  .weak SRX_FIFO_ISR
  .weak STX_FIFO_ISR
  .weak LINTC_ISR
  .weak LINERR_ISR
  .weak SSM_ISR
  .weak DFFLR_ISR
  .weak DFOUE_ISR
  .weak SFFLR_ISR
  .weak SFOUE_ISR
  .weak TMTCF_ISR
  .weak UHF_WCOA_ISR
  .weak UHF_WCOB_ISR
  .weak UHF_SOTA_ISR
  .weak UHF_SOTB_ISR
  .weak UHF_EOTA_ISR
  .weak UHF_EOTB_ISR
  .weak UHF_NBITA_ISR
  .weak UHF_NBITB_ISR
  .weak EXCM_ISR
  .weak ERDY_ISR
  .weak SPMR_ISR
  .weak IDFULL_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set PCI0_ISR, Default_IRQ_handler
  .set PCI1_ISR, Default_IRQ_handler
  .set VMON_ISR, Default_IRQ_handler
  .set AVCCR_ISR, Default_IRQ_handler
  .set AVCCL_ISR, Default_IRQ_handler
  .set T0INT_ISR, Default_IRQ_handler
  .set T1COMP_ISR, Default_IRQ_handler
  .set T1OVF_ISR, Default_IRQ_handler
  .set T2COMP_ISR, Default_IRQ_handler
  .set T2OVF_ISR, Default_IRQ_handler
  .set T3CAP_ISR, Default_IRQ_handler
  .set T3COMP_ISR, Default_IRQ_handler
  .set T3OVF_ISR, Default_IRQ_handler
  .set T4CAP_ISR, Default_IRQ_handler
  .set T4COMP_ISR, Default_IRQ_handler
  .set T4OVF_ISR, Default_IRQ_handler
  .set T5COMP_ISR, Default_IRQ_handler
  .set T5OVF_ISR, Default_IRQ_handler
  .set SPI_ISR, Default_IRQ_handler
  .set SRX_FIFO_ISR, Default_IRQ_handler
  .set STX_FIFO_ISR, Default_IRQ_handler
  .set LINTC_ISR, Default_IRQ_handler
  .set LINERR_ISR, Default_IRQ_handler
  .set SSM_ISR, Default_IRQ_handler
  .set DFFLR_ISR, Default_IRQ_handler
  .set DFOUE_ISR, Default_IRQ_handler
  .set SFFLR_ISR, Default_IRQ_handler
  .set SFOUE_ISR, Default_IRQ_handler
  .set TMTCF_ISR, Default_IRQ_handler
  .set UHF_WCOA_ISR, Default_IRQ_handler
  .set UHF_WCOB_ISR, Default_IRQ_handler
  .set UHF_SOTA_ISR, Default_IRQ_handler
  .set UHF_SOTB_ISR, Default_IRQ_handler
  .set UHF_EOTA_ISR, Default_IRQ_handler
  .set UHF_EOTB_ISR, Default_IRQ_handler
  .set UHF_NBITA_ISR, Default_IRQ_handler
  .set UHF_NBITB_ISR, Default_IRQ_handler
  .set EXCM_ISR, Default_IRQ_handler
  .set ERDY_ISR, Default_IRQ_handler
  .set SPMR_ISR, Default_IRQ_handler
  .set IDFULL_ISR, Default_IRQ_handler
end;

end.
