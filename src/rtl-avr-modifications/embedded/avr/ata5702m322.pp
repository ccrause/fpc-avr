unit ATA5702M322;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  GPIOR0: byte absolute $20;  // General Purpose I/O Register 0

type
  TPRR1set = bitpacked set of (e_PRT1, e_PRT2, e_PRT3, e_PRT4, e_PRT5, e_PRLFR, e_PRLFTP, e_PRLFPH);
  TPRR1rec = bitpacked record
    PRT1,
    PRT2,
    PRT3,
    PRT4,
    PRT5,
    PRLFR,
    PRLFTP,
    PRLFPH: TBitField;
  end;
var
  PRR1: byte absolute $21;  // Power reduction Register 1
  PRR1set: TPRR1set absolute $21;
  PRR1rec: TPRR1rec absolute $21;
const
  PRT1 = 0;  m_PRT1 = 1;  // Power Reduction Timer 1
  PRT2 = 1;  m_PRT2 = 2;  // Power Reduction Timer 2
  PRT3 = 2;  m_PRT3 = 4;  // Power Reduction Timer 3
  PRT4 = 3;  m_PRT4 = 8;  // Power Reduction Timer 4
  PRT5 = 4;  m_PRT5 = 16;  // Power Reduction Timer 5
  PRLFR = 5;  m_PRLFR = 32;  // Power Reduction LF Receiver
  PRLFTP = 6;  m_PRLFTP = 64;  // Power Reduction LF Transponder
  PRLFPH = 7;  m_PRLFPH = 128;  // Power Reduction LF Protocol Handler

type
  TPRR2set = bitpacked set of (e_PRSPI2, e_PRTWI2, e_PRSF, e_PRDF, e_PRTM=6, e_PRSSM);
  TPRR2rec = bitpacked record
    PRSPI2,
    PRTWI2,
    PRSF,
    PRDF,
    ReservedBit4,
    ReservedBit5,
    PRTM,
    PRSSM: TBitField;
  end;
var
  PRR2: byte absolute $22;  // Power reduction register 2
  PRR2set: TPRR2set absolute $22;
  PRR2rec: TPRR2rec absolute $22;
const
  PRSPI2 = 0;  m_PRSPI2 = 1;  // Power Reduction SPI2
  PRTWI2 = 1;  m_PRTWI2 = 2;  // Power Reduction TWI2
  PRSF = 2;  m_PRSF = 4;  // Power Reduction Support FIFO
  PRDF = 3;  m_PRDF = 8;  // Power Reduction Data FIFO
  PRTM = 6;  m_PRTM = 64;  // Power Reduction Tx Modulator
  PRSSM = 7;  m_PRSSM = 128;  // Power Reduction Sequencer State Machine

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
  TPORTCset = bitpacked set of (e_PC0, e_PC1, e_PC2);
  TPORTCrec = bitpacked record
    PC0,
    PC1,
    PC2,
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
  PC1 = 1;  m_PC1 = 2;
  PC2 = 2;  m_PC2 = 4;

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
  TTPCR2set = bitpacked set of (e_TPMA, e_TPMOD, e_TPPSD, e_TPD, e_TPNFTO, e_TPWDLV0, e_TPWDLV1);
  TTPCR2rec = bitpacked record
    TPMA,
    TPMOD,
    TPPSD,
    TPD,
    TPNFTO,
    TPWDLV0,
    TPWDLV1,
    ReservedBit7: TBitField;
  end;
var
  TPCR2: byte absolute $2C;  // Transponder Control 2 Register
  TPCR2set: TTPCR2set absolute $2C;
  TPCR2rec: TTPCR2rec absolute $2C;
const
  TPMA = 0;  m_TPMA = 1;  // Transponder Mode Acknowledge
  TPMOD = 1;  m_TPMOD = 2;  // Transponder Modulation
  TPPSD = 2;  m_TPPSD = 4;  // Transponder Power Switch Disable
  TPD = 3;  m_TPD = 8;  // Transponder Disable
  TPNFTO = 4;  m_TPNFTO = 16;  // Transponder No Field Timeout enable
  TPWDLV0 = 5;  m_TPWDLV0 = 32;  // Transponder watch dog value for No Field timeout (with SRC clk)
  TPWDLV1 = 6;  m_TPWDLV1 = 64;  // Transponder watch dog value for No Field timeout (with SRC clk)

type
  TTPFRset = bitpacked set of (e_TPF, e_TPFTF, e_TPNFTF, e_TPBERF);
  TTPFRrec = bitpacked record
    TPF,
    TPFTF,
    TPNFTF,
    TPBERF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPFR: byte absolute $2D;  // Transponder Flag Register
  TPFRset: TTPFRset absolute $2D;
  TPFRrec: TTPFRrec absolute $2D;
const
  TPF = 0;  m_TPF = 1;  // Transponder Flag
  TPFTF = 1;  m_TPFTF = 2;  // Transponder Field Timeout Flag
  TPNFTF = 2;  m_TPNFTF = 4;  // Transponder No Field Timeout Flag
  TPBERF = 3;  m_TPBERF = 8;  // Transponder Bit Error Flag

type
  TMCUCRset = bitpacked set of (e_IVL0, e_IVL1, e_SPIIO, e_ENPS, e_PUD, e_TRCCE, e_TRCEN, e_IVSEL);
  TMCUCRrec = bitpacked record
    IVL0,
    IVL1,
    SPIIO,
    ENPS,
    PUD,
    TRCCE,
    TRCEN,
    IVSEL: TBitField;
  end;
var
  MCUCR: byte absolute $2E;  // MCU control Register
  MCUCRset: TMCUCRset absolute $2E;
  MCUCRrec: TMCUCRrec absolute $2E;
const
  IVL0 = 0;  m_IVL0 = 1;  // Interrupt Vector Location
  IVL1 = 1;  m_IVL1 = 2;  // Interrupt Vector Location
  SPIIO = 2;  m_SPIIO = 4;  // SPI Interrupt Only
  ENPS = 3;  m_ENPS = 8;  // Enable Port Settings
  PUD = 4;  m_PUD = 16;  // Pull-up Resistors Disable
  TRCCE = 5;  m_TRCCE = 32;  // Trace Change Enable
  TRCEN = 6;  m_TRCEN = 64;  // Trace Enable
  IVSEL = 7;  m_IVSEL = 128;  // Interrupt Vector Select

type
  TFSCRset = bitpacked set of (e_TXMOD, e_SFM, e_TXMS0, e_TXMS1, e_PAOER, e_PAON=7);
  TFSCRrec = bitpacked record
    TXMOD,
    SFM,
    TXMS0,
    TXMS1,
    PAOER,
    ReservedBit5,
    ReservedBit6,
    PAON: TBitField;
  end;
var
  FSCR: byte absolute $2F;  // Frequency Synthesizer Control Register
  FSCRset: TFSCRset absolute $2F;
  FSCRrec: TFSCRrec absolute $2F;
const
  TXMOD = 0;  m_TXMOD = 1;  // Tx Modulation
  SFM = 1;  m_SFM = 2;  // Select FSK Modulation
  TXMS0 = 2;  m_TXMS0 = 4;  // Tx Modulation Source
  TXMS1 = 3;  m_TXMS1 = 8;  // Tx Modulation Source
  PAOER = 4;  m_PAOER = 16;  // Power Amplifier Output Enable Register
  PAON = 7;  m_PAON = 128;  // Power Amplifier Output is On

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
  T1CR: byte absolute $31;  // Timer1 control Register
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
  T3CR: byte absolute $33;  // Timer3 control Register
  T3CRset: TT3CRset absolute $33;
  T3CRrec: TT3CRrec absolute $33;
const
  T3OTM = 0;  m_T3OTM = 1;  // Timer3 Overflow Toggle Mask
  T3CTM = 1;  m_T3CTM = 2;  // Timer3 Compare Toggle Mask
  T3CRM = 2;  m_T3CRM = 4;  // Timer3 Compare Reset Mask
  T3CPRM = 3;  m_T3CPRM = 8;  // Timer3 CaPture Reset Mask
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
  T4CR: byte absolute $34;  // Timer4 control Register
  T4CRset: TT4CRset absolute $34;
  T4CRrec: TT4CRrec absolute $34;
const
  T4OTM = 0;  m_T4OTM = 1;  // Timer4 Overflow Toggle Mask
  T4CTM = 1;  m_T4CTM = 2;  // Timer4 Compare Toggle Mask
  T4CRM = 2;  m_T4CRM = 4;  // Timer4 Compare Reset Mask
  T4CPRM = 3;  m_T4CPRM = 8;  // Timer4 CaPture Reset Mask
  T4TOP = 4;  m_T4TOP = 16;  // Timer4 Toggle Output Preset
  T4RES = 5;  m_T4RES = 32;  // Timer4 Reset
  T4TOS = 6;  m_T4TOS = 64;  // Timer4 Toggle with Start
  T4ENA = 7;  m_T4ENA = 128;  // Timer4 Enable

type
  TLTCMRset = bitpacked set of (e_LTPS0, e_LTPS1, e_LTPS2, e_LTCRM, e_LTCIM, e_LTCM, e_LTSM, e_LTENA);
  TLTCMRrec = bitpacked record
    LTPS0,
    LTPS1,
    LTPS2,
    LTCRM,
    LTCIM,
    LTCM,
    LTSM,
    LTENA: TBitField;
  end;
var
  LTCMR: byte absolute $35;  // LF Timer Control Mode Register
  LTCMRset: TLTCMRset absolute $35;
  LTCMRrec: TLTCMRrec absolute $35;
const
  LTPS0 = 0;  m_LTPS0 = 1;  // LF Timer Prescaler Select bit 0
  LTPS1 = 1;  m_LTPS1 = 2;  // LF Timer Prescaler Select bit 1
  LTPS2 = 2;  m_LTPS2 = 4;  // LF Timer Prescaler Select bit 2
  LTCRM = 3;  m_LTCRM = 8;  // LF Timer Compare Reset Mask
  LTCIM = 4;  m_LTCIM = 16;  // LF Timer Compare Interrupt Mask
  LTCM = 5;  m_LTCM = 32;  // LF Timer Continuous Mode
  LTSM = 6;  m_LTSM = 64;  // LF Timer Start Mode
  LTENA = 7;  m_LTENA = 128;  // LF Timer Enable

type
  TEECR2set = bitpacked set of (e_EEBRE, e_E2CIM, e_E2AVF=5, e_E2FF, e_E2CF);
  TEECR2rec = bitpacked record
    EEBRE,
    E2CIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    E2AVF,
    E2FF,
    E2CF: TBitField;
  end;
var
  EECR2: byte absolute $36;  // EEPROM Control Register 2
  EECR2set: TEECR2set absolute $36;
  EECR2rec: TEECR2rec absolute $36;
const
  EEBRE = 0;  m_EEBRE = 1;  // EEPROM Burst Read Enable
  E2CIM = 1;  m_E2CIM = 2;  // EEPROM Error Code Correction Interrupt Mask
  E2AVF = 5;  m_E2AVF = 32;  // EEPROM Access Violation Flag
  E2FF = 6;  m_E2FF = 64;  // EEPROM error Fault Flag bit
  E2CF = 7;  m_E2CF = 128;  // EEPROM Error Correction Code Flag

type
  TPHTCRset = bitpacked set of (e_FRFIFO=5, e_CPM, e_CSM);
  TPHTCRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FRFIFO,
    CPM,
    CSM: TBitField;
  end;
var
  PHTCR: byte absolute $37;  // PH Telegram Configuration Register
  PHTCRset: TPHTCRset absolute $37;
  PHTCRrec: TPHTCRrec absolute $37;
const
  FRFIFO = 5;  m_FRFIFO = 32;  // ID Frame stored in FIFO
  CPM = 6;  m_CPM = 64;  // Continuous Pattern Mode
  CSM = 7;  m_CSM = 128;  // Continue or Single receive Mode

type
  TLDFFLset = bitpacked set of (e_LDFFL0, e_LDFFL1, e_LDFFL2, e_LDFFL3, e_LDFFL4, e_LDFFL5, e_LDFCLR=7);
  TLDFFLrec = bitpacked record
    LDFFL0,
    LDFFL1,
    LDFFL2,
    LDFFL3,
    LDFFL4,
    LDFFL5,
    ReservedBit6,
    LDFCLR: TBitField;
  end;
var
  LDFFL: byte absolute $38;  // LF Data FIFO Fill Level Register
  LDFFLset: TLDFFLset absolute $38;
  LDFFLrec: TLDFFLrec absolute $38;
const
  LDFFL0 = 0;  m_LDFFL0 = 1;  // LF Data Fifo Fill Level
  LDFFL1 = 1;  m_LDFFL1 = 2;  // LF Data Fifo Fill Level
  LDFFL2 = 2;  m_LDFFL2 = 4;  // LF Data Fifo Fill Level
  LDFFL3 = 3;  m_LDFFL3 = 8;  // LF Data Fifo Fill Level
  LDFFL4 = 4;  m_LDFFL4 = 16;  // LF Data Fifo Fill Level
  LDFFL5 = 5;  m_LDFFL5 = 32;  // LF Data Fifo Fill Level
  LDFCLR = 7;  m_LDFCLR = 128;  // LF Data FIFO Clear

var
  LDFD: byte absolute $39;  // LF Data FIFO Data Register

type
  TPRR0set = bitpacked set of (e_PRSPI, e_PRLFRS, e_PRTXDC, e_PRCRC, e_PRVM, e_PRCO, e_PRCU, e_PRTWI1);
  TPRR0rec = bitpacked record
    PRSPI,
    PRLFRS,
    PRTXDC,
    PRCRC,
    PRVM,
    PRCO,
    PRCU,
    PRTWI1: TBitField;
  end;
var
  PRR0: byte absolute $3A;  // Power reduction Register 0
  PRR0set: TPRR0set absolute $3A;
  PRR0rec: TPRR0rec absolute $3A;
const
  PRSPI = 0;  m_PRSPI = 1;  // Power Reduction Serial Peripheral Interface
  PRLFRS = 1;  m_PRLFRS = 2;  // Power Reduction LF RSSI
  PRTXDC = 2;  m_PRTXDC = 4;  // Power Reduction Transmit DSP Control
  PRCRC = 3;  m_PRCRC = 8;  // Power Reduction CRC
  PRVM = 4;  m_PRVM = 16;  // Power Reduction Voltage Monitor
  PRCO = 5;  m_PRCO = 32;  // Power Reduction Clock Output
  PRCU = 6;  m_PRCU = 64;  // Power Reduction Crypto Unit
  PRTWI1 = 7;  m_PRTWI1 = 128;  // Power Reduction Two Wire Interface 1

type
  TPHFRset = bitpacked set of (e_CRCEF, e_PHTBLF, e_PHDFF, e_PHIDFF, e_PHID0F, e_PHID1F);
  TPHFRrec = bitpacked record
    CRCEF,
    PHTBLF,
    PHDFF,
    PHIDFF,
    PHID0F,
    PHID1F,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PHFR: byte absolute $3B;  // Protocol Handler Flag Register
  PHFRset: TPHFRset absolute $3B;
  PHFRrec: TPHFRrec absolute $3B;
const
  CRCEF = 0;  m_CRCEF = 1;  // PH CRC Error Status Flag
  PHTBLF = 1;  m_PHTBLF = 2;  // Protocol Handler Telegram Bit Length Flag
  PHDFF = 2;  m_PHDFF = 4;  // Protocol Handler Date Frame Flag
  PHIDFF = 3;  m_PHIDFF = 8;  // Protocol Handler ID Frame Flag
  PHID0F = 4;  m_PHID0F = 16;  // Protocol Handler IDentifier 0 Flag
  PHID1F = 5;  m_PHID1F = 32;  // Protocol Handler IDentifier 1 Flag

type
  TLFFRset = bitpacked set of (e_LFSYDF, e_LFDEF, e_LFEOF, e_LFTOF, e_LFSD=6, e_LFES);
  TLFFRrec = bitpacked record
    LFSYDF,
    LFDEF,
    LFEOF,
    LFTOF,
    ReservedBit4,
    ReservedBit5,
    LFSD,
    LFES: TBitField;
  end;
var
  LFFR: byte absolute $3C;  // LF Receiver Flag Register
  LFFRset: TLFFRset absolute $3C;
  LFFRrec: TLFFRrec absolute $3C;
const
  LFSYDF = 0;  m_LFSYDF = 1;  // LF Synchronization Detect Flag
  LFDEF = 1;  m_LFDEF = 2;  // LF Decoder Error Flag
  LFEOF = 2;  m_LFEOF = 4;  // LF End of Telegram Flag
  LFTOF = 3;  m_LFTOF = 8;  // LF telegram Time Out Flag
  LFSD = 6;  m_LFSD = 64;  // LF Signal Detect
  LFES = 7;  m_LFES = 128;  // LF Envelope Signal

type
  TAESCRset = bitpacked set of (e_AESWK, e_AESWD, e_AESIM, e_AESD, e_AESXOR, e_AESRES, e_AESLKM, e_AESE);
  TAESCRrec = bitpacked record
    AESWK,
    AESWD,
    AESIM,
    AESD,
    AESXOR,
    AESRES,
    AESLKM,
    AESE: TBitField;
  end;
var
  AESCR: byte absolute $3D;  // AES Control Register
  AESCRset: TAESCRset absolute $3D;
  AESCRrec: TAESCRrec absolute $3D;
const
  AESWK = 0;  m_AESWK = 1;  // AES Write Key
  AESWD = 1;  m_AESWD = 2;  // AES Write Data
  AESIM = 2;  m_AESIM = 4;  // AES Interrupt Mask
  AESD = 3;  m_AESD = 8;  // AES Direction
  AESXOR = 4;  m_AESXOR = 16;  // AES State XOR load
  AESRES = 5;  m_AESRES = 32;  // AES Reset
  AESLKM = 6;  m_AESLKM = 64;  // AES Load Key Memory
  AESE = 7;  m_AESE = 128;  // AES Enable

type
  TAESSRset = bitpacked set of (e_AESRF, e_AESERF=7);
  TAESSRrec = bitpacked record
    AESRF,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    AESERF: TBitField;
  end;
var
  AESSR: byte absolute $3E;  // AES Status Register
  AESSRset: TAESSRset absolute $3E;
  AESSRrec: TAESSRrec absolute $3E;
const
  AESRF = 0;  m_AESRF = 1;  // AES Ready Flag
  AESERF = 7;  m_AESERF = 128;  // AES Error Flag

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
  EEPAGE = 6;  m_EEPAGE = 64;  // EEPROM page access (multiple bytes access mode)
  NVMBSY = 7;  m_NVMBSY = 128;  // Non-volatile memory busy

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
  EEPR: byte absolute $43;  // EEPROM Protection Register
  EEPRset: TEEPRset absolute $43;
  EEPRrec: TEEPRrec absolute $43;
const
  EEAP0 = 0;  m_EEAP0 = 1;  // EEPROM Access Protection
  EEAP1 = 1;  m_EEAP1 = 2;  // EEPROM Access Protection
  EEAP2 = 2;  m_EEAP2 = 4;  // EEPROM Access Protection
  EEAP3 = 3;  m_EEAP3 = 8;  // EEPROM Access Protection

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
  PCICR: byte absolute $46;  // Pin change Interrupt control Register
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
  EIMSK: byte absolute $47;  // External Interrupt Mask Register
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

type
  TLDFCKSWset = bitpacked set of (e_LDFSCSW, e_LDFSCKS);
  TLDFCKSWrec = bitpacked record
    LDFSCSW,
    LDFSCKS,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LDFCKSW: byte absolute $49;  // LF Data FIFO Clock Switch Register
  LDFCKSWset: TLDFCKSWset absolute $49;
  LDFCKSWrec: TLDFCKSWrec absolute $49;
const
  LDFSCSW = 0;  m_LDFSCSW = 1;  // LF Data FIFO Synchronous Clock Switch
  LDFSCKS = 1;  m_LDFSCKS = 2;  // LF Data FIFO Synchronous Clock Status

type
  TVMSCRset = bitpacked set of (e_VMF, e_VMDIH);
  TVMSCRrec = bitpacked record
    VMF,
    VMDIH,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VMSCR: byte absolute $4A;  // Voltage Monitor Status and Control Register
  VMSCRset: TVMSCRset absolute $4A;
  VMSCRrec: TVMSCRrec absolute $4A;
const
  VMF = 0;  m_VMF = 1;  // Voltage Monitor Flag
  VMDIH = 1;  m_VMDIH = 2;  // Voltage Monitor Disable Hysteresis

type
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_WDRF=3, e_DWRF, e_TPRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    ReservedBit2,
    WDRF,
    DWRF,
    TPRF,
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
  TPRF = 5;  m_TPRF = 32;  // Transponder Reset Flag

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
  SPCR: byte absolute $4C;  // SPI control Register
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
  SPIE = 7;  m_SPIE = 128;  // Spe Interrupt Enable

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
  TLFCR0set = bitpacked set of (e_LFCE1, e_LFCE2, e_LFCE3, e_LFBR0, e_LFBR1, e_LFMG, e_LFRRT0, e_LFRRT1);
  TLFCR0rec = bitpacked record
    LFCE1,
    LFCE2,
    LFCE3,
    LFBR0,
    LFBR1,
    LFMG,
    LFRRT0,
    LFRRT1: TBitField;
  end;
var
  LFCR0: byte absolute $4F;  // LF Receiver Control Register 0
  LFCR0set: TLFCR0set absolute $4F;
  LFCR0rec: TLFCR0rec absolute $4F;
const
  LFCE1 = 0;  m_LFCE1 = 1;  // LF Receiver Channel 1 Enable
  LFCE2 = 1;  m_LFCE2 = 2;  // LF Receiver Channel 2 Enable
  LFCE3 = 2;  m_LFCE3 = 4;  // LF Receiver Channel 3 Enable
  LFBR0 = 3;  m_LFBR0 = 8;  // LF Receiver Bit Rate
  LFBR1 = 4;  m_LFBR1 = 16;  // LF Receiver Bit Rate
  LFMG = 5;  m_LFMG = 32;  // LF Receiver Maximum Gain Select
  LFRRT0 = 6;  m_LFRRT0 = 64;  // LF Receiver Reset Time
  LFRRT1 = 7;  m_LFRRT1 = 128;  // LF Receiver Reset Time

type
  TLFCR1set = bitpacked set of (e_RSST0, e_RSST1, e_LFFM1, e_ARMDE, e_FLLEN, e_ADTHEN, e_LFPEEN, e_LFRE);
  TLFCR1rec = bitpacked record
    RSST0,
    RSST1,
    LFFM1,
    ARMDE,
    FLLEN,
    ADTHEN,
    LFPEEN,
    LFRE: TBitField;
  end;
var
  LFCR1: byte absolute $50;  // LF Receiver Control Register 1
  LFCR1set: TLFCR1set absolute $50;
  LFCR1rec: TLFCR1rec absolute $50;
const
  RSST0 = 0;  m_RSST0 = 1;  // RSSI Startup Time
  RSST1 = 1;  m_RSST1 = 2;  // RSSI Startup Time
  LFFM1 = 2;  m_LFFM1 = 4;  // LF Function Mode bit 1
  ARMDE = 3;  m_ARMDE = 8;  // Analog Reset Manchester Detector Enable
  FLLEN = 4;  m_FLLEN = 16;  // FLL Enable
  ADTHEN = 5;  m_ADTHEN = 32;  // Adapt Threshold Enable
  LFPEEN = 6;  m_LFPEEN = 64;  // LF Port Event Enable
  LFRE = 7;  m_LFRE = 128;  // LF Receiver Enable

var
  DWDR: byte absolute $51;  // Debug Wire Data Register

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
  T0IFR: byte absolute $52;  // Timer0 Interrupt Flag Register
  T0IFRset: TT0IFRset absolute $52;
  T0IFRrec: TT0IFRrec absolute $52;
const
  T0F = 0;  m_T0F = 1;  // Timer0 Flag

type
  TSPMCSRset = bitpacked set of (e_SELFPRGEN, e_PGERS, e_PGWRT, e_FLSEL0, e_FLSEL1, e_FLSEL2, e_RWWSB, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SELFPRGEN,
    PGERS,
    PGWRT,
    FLSEL0,
    FLSEL1,
    FLSEL2,
    RWWSB,
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
  FLSEL0 = 3;  m_FLSEL0 = 8;  // Fuse Lockbit select
  FLSEL1 = 4;  m_FLSEL1 = 16;  // Fuse Lockbit select
  FLSEL2 = 5;  m_FLSEL2 = 32;  // Fuse Lockbit select
  RWWSB = 6;  m_RWWSB = 64;  // Read-While-Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

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
  SMCR: byte absolute $58;  // Sleep mode control Register
  SMCRset: TSMCRset absolute $58;
  SMCRrec: TSMCRrec absolute $58;
const
  SE = 0;  m_SE = 1;  // Sleep Enable
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select
  SM2 = 3;  m_SM2 = 8;  // Sleep Mode Select

type
  TTPSRset = bitpacked set of (e_TPA, e_TPGAP, e_TPPSW, e_TPBCOK);
  TTPSRrec = bitpacked record
    TPA,
    TPGAP,
    TPPSW,
    TPBCOK,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPSR: byte absolute $59;  // Transponder Status Register
  TPSRset: TTPSRset absolute $59;
  TPSRrec: TTPSRrec absolute $59;
const
  TPA = 0;  m_TPA = 1;  // Transponder Active
  TPGAP = 1;  m_TPGAP = 2;  // Transponder GAP Signal
  TPPSW = 2;  m_TPPSW = 4;  // Transponder Power Switch
  TPBCOK = 3;  m_TPBCOK = 8;  // Transponder Battery Charge OK

type
  TLFCR2set = bitpacked set of (e_LFSEN0, e_LFSEN1, e_LFDAMP, e_LFVC0=5, e_LFVC1, e_LFVC2);
  TLFCR2rec = bitpacked record
    LFSEN0,
    LFSEN1,
    LFDAMP,
    ReservedBit3,
    ReservedBit4,
    LFVC0,
    LFVC1,
    LFVC2: TBitField;
  end;
var
  LFCR2: byte absolute $5A;  // LF Receiver Control Register 2
  LFCR2set: TLFCR2set absolute $5A;
  LFCR2rec: TLFCR2rec absolute $5A;
const
  LFSEN0 = 0;  m_LFSEN0 = 1;  // LF Sensitivity Mode
  LFSEN1 = 1;  m_LFSEN1 = 2;  // LF Sensitivity Mode
  LFDAMP = 2;  m_LFDAMP = 4;  // LF coil Damping level select
  LFVC0 = 5;  m_LFVC0 = 32;  // LF Velocity Control
  LFVC1 = 6;  m_LFVC1 = 64;  // LF Velocity Control
  LFVC2 = 7;  m_LFVC2 = 128;  // LF Velocity Control

type
  TLFCR3set = bitpacked set of (e_LFRCTEN, e_LFRCPCEN, e_LFRCPM, e_LFTON, e_LFTS0, e_LFTS1, e_LFTS2, e_LFSBEN);
  TLFCR3rec = bitpacked record
    LFRCTEN,
    LFRCPCEN,
    LFRCPM,
    LFTON,
    LFTS0,
    LFTS1,
    LFTS2,
    LFSBEN: TBitField;
  end;
var
  LFCR3: byte absolute $5B;  // LF Receiver Control Register 3
  LFCR3set: TLFCR3set absolute $5B;
  LFCR3rec: TLFCR3rec absolute $5B;
const
  LFRCTEN = 0;  m_LFRCTEN = 1;  // LF RC Trim Enable
  LFRCPCEN = 1;  m_LFRCPCEN = 2;  // LF RC Pump Continuous Enable
  LFRCPM = 2;  m_LFRCPM = 4;  // LF RC Pump mode Enable
  LFTON = 3;  m_LFTON = 8;  // LF On Time with Activated Standby Mode
  LFTS0 = 4;  m_LFTS0 = 16;  // LF Standby Time
  LFTS1 = 5;  m_LFTS1 = 32;  // LF Standby Time
  LFTS2 = 6;  m_LFTS2 = 64;  // LF Standby Time
  LFSBEN = 7;  m_LFSBEN = 128;  // LF Standby mode Enable

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
  TFSENset = bitpacked set of (e_SDPU, e_SDEN, e_GAEN, e_PEEN, e_ASEN, e_ANTT);
  TFSENrec = bitpacked record
    SDPU,
    SDEN,
    GAEN,
    PEEN,
    ASEN,
    ANTT,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FSEN: byte absolute $60;  // Frequency Synthesizer Enable register
  FSENset: TFSENset absolute $60;
  FSENrec: TFSENrec absolute $60;
const
  SDPU = 0;  m_SDPU = 1;  // Sigma-delta Modulator Power Up
  SDEN = 1;  m_SDEN = 2;  // Sigma-delta Modulator Enable
  GAEN = 2;  m_GAEN = 4;  // Gauss Filtering Enable
  PEEN = 3;  m_PEEN = 8;  // Pre-emphasis Filtering Enable
  ASEN = 4;  m_ASEN = 16;  // ASK Shaping Enable
  ANTT = 5;  m_ANTT = 32;  // Antenna Tuning Active

type
  TFSFCRset = bitpacked set of (e_BTSEL0, e_BTSEL1, e_ASDIV0=4, e_ASDIV1, e_ASDIV2, e_ASDIV3);
  TFSFCRrec = bitpacked record
    BTSEL0,
    BTSEL1,
    ReservedBit2,
    ReservedBit3,
    ASDIV0,
    ASDIV1,
    ASDIV2,
    ASDIV3: TBitField;
  end;
var
  FSFCR: byte absolute $61;  // Frequency Synthesizer Filter Control Register
  FSFCRset: TFSFCRset absolute $61;
  FSFCRrec: TFSFCRrec absolute $61;
const
  BTSEL0 = 0;  m_BTSEL0 = 1;  // Gauss Filter BT Selection
  BTSEL1 = 1;  m_BTSEL1 = 2;  // Gauss Filter BT Selection
  ASDIV0 = 4;  m_ASDIV0 = 16;  // ASK Shaping Divider
  ASDIV1 = 5;  m_ASDIV1 = 32;  // ASK Shaping Divider
  ASDIV2 = 6;  m_ASDIV2 = 64;  // ASK Shaping Divider
  ASDIV3 = 7;  m_ASDIV3 = 128;  // ASK Shaping Divider

var
  GACDIV: word absolute $62;  // Gauss Clock Divider
  GACDIVL: byte absolute $62;
  GACDIVH: byte absolute $63;
  FFREQ1L: byte absolute $64;  // Fractional Frequency 1 Setting, Low Byte
  FFREQ1M: byte absolute $65;  // Fractional Frequency 1 Setting, Middle Byte
  FFREQ1H: byte absolute $66;  // Fractional Frequency 1 Setting, High Byte
  FFREQ2L: byte absolute $67;  // Fractional Frequency 2 Setting, Low Byte
  FFREQ2M: byte absolute $68;  // Fractional Frequency 2 Setting, Middle Byte
  FFREQ2H: byte absolute $69;  // Fractional Frequency 2 Setting, High Byte

type
  TBBTE2set = bitpacked set of (e_TDEPO, e_DITDIS);
  TBBTE2rec = bitpacked record
    TDEPO,
    DITDIS,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BBTE2: byte absolute $6A;  // Base Band Test Enable 2
  BBTE2set: TBBTE2set absolute $6A;
  BBTE2rec: TBBTE2rec absolute $6A;
const
  TDEPO = 0;  m_TDEPO = 1;  // Tx DSP External Pin Output
  DITDIS = 1;  m_DITDIS = 2;  // Dither Disable on Sigma Delta Modulator

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
  EICRA: byte absolute $6B;  // External Interrupt control Register
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
  PCMSK0: byte absolute $6C;  // Pin change Mask Register 0
  PCMSK0set: TPCMSK0set absolute $6C;
  PCMSK0rec: TPCMSK0rec absolute $6C;
const
  PCINT0 = 0;  m_PCINT0 = 1;  // Pin Change Enable Mask bit 0
  PCINT1 = 1;  m_PCINT1 = 2;  // Pin Change Enable Mask bit 1
  PCINT2 = 2;  m_PCINT2 = 4;  // Pin Change Enable Mask bit 2
  PCINT3 = 3;  m_PCINT3 = 8;  // Pin Change Enable Mask bit 3
  PCINT4 = 4;  m_PCINT4 = 16;  // Pin Change Enable Mask bit 4
  PCINT5 = 5;  m_PCINT5 = 32;  // Pin Change Enable Mask bit 5
  PCINT6 = 6;  m_PCINT6 = 64;  // Pin Change Enable Mask bit 6
  PCINT7 = 7;  m_PCINT7 = 128;  // Pin Change Enable Mask bit 7

type
  TPCMSK1set = bitpacked set of (e_PCINT8, e_PCINT9, e_PCINT10, e_PCINT11, e_PCINT12, e_PCINT13, e_PCINT14, e_PCINT15);
  TPCMSK1rec = bitpacked record
    PCINT8,
    PCINT9,
    PCINT10,
    PCINT11,
    PCINT12,
    PCINT13,
    PCINT14,
    PCINT15: TBitField;
  end;
var
  PCMSK1: byte absolute $6D;  // Pin change Mask Register 1
  PCMSK1set: TPCMSK1set absolute $6D;
  PCMSK1rec: TPCMSK1rec absolute $6D;
const
  PCINT8 = 0;  m_PCINT8 = 1;  // Pin Change Enable Mask bit 8
  PCINT9 = 1;  m_PCINT9 = 2;  // Pin Change Enable Mask bit 9
  PCINT10 = 2;  m_PCINT10 = 4;  // Pin Change Enable Mask bit 10
  PCINT11 = 3;  m_PCINT11 = 8;  // Pin Change Enable Mask bit 11
  PCINT12 = 4;  m_PCINT12 = 16;  // Pin Change Enable Mask bit 12
  PCINT13 = 5;  m_PCINT13 = 32;  // Pin Change Enable Mask bit 13
  PCINT14 = 6;  m_PCINT14 = 64;  // Pin Change Enable Mask bit 14
  PCINT15 = 7;  m_PCINT15 = 128;  // Pin Change Enable Mask bit 15

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
  WDTCR: byte absolute $6E;  // Watchdog Timer0 control Register
  WDTCRset: TWDTCRset absolute $6E;
  WDTCRrec: TWDTCRrec absolute $6E;
const
  WDPS0 = 0;  m_WDPS0 = 1;  // Watchdog Prescaler Select
  WDPS1 = 1;  m_WDPS1 = 2;  // Watchdog Prescaler Select
  WDPS2 = 2;  m_WDPS2 = 4;  // Watchdog Prescaler Select
  WDE = 3;  m_WDE = 8;  // Watchdog System Reset Enable
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
  T3CNT: word absolute $77;  // Timer3 counter Register
  T3CNTL: byte absolute $77;
  T3CNTH: byte absolute $78;
  T3COR: word absolute $79;  // Timer3 compare Register
  T3CORL: byte absolute $79;
  T3CORH: byte absolute $7A;
  T3ICR: word absolute $7B;  // Timer3 input capture Register
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
  T3MRA: byte absolute $7D;  // Timer3 mode Register
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
  T3MRB: byte absolute $7E;  // Timer3 mode Register
  T3MRBset: TT3MRBset absolute $7E;
  T3MRBrec: TT3MRBrec absolute $7E;
const
  T3SCE = 1;  m_T3SCE = 2;  // Timer3 Software Capture Enable
  T3CNC = 2;  m_T3CNC = 4;  // Timer3 input Capture Noise Canceller
  T3CE0 = 3;  m_T3CE0 = 8;  // Timer3 Capture Edge select
  T3CE1 = 4;  m_T3CE1 = 16;  // Timer3 Capture Edge select
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
  T3IMR: byte absolute $7F;  // Timer3 interrupt mask Register
  T3IMRset: TT3IMRset absolute $7F;
  T3IMRrec: TT3IMRrec absolute $7F;
const
  T3OIM = 0;  m_T3OIM = 1;  // Timer3 Overflow Interrupt Mask
  T3CIM = 1;  m_T3CIM = 2;  // Timer3 Compare Interrupt Mask
  T3CPIM = 2;  m_T3CPIM = 4;  // Timer3 Capture Interrupt Mask

var
  T4CNT: word absolute $80;  // Timer4 counter Register
  T4CNTL: byte absolute $80;
  T4CNTH: byte absolute $81;
  T4COR: word absolute $82;  // Timer4 compare Register
  T4CORL: byte absolute $82;
  T4CORH: byte absolute $83;
  T4ICR: word absolute $84;  // Timer4 input capture Register
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
  T4MRA: byte absolute $86;  // Timer4 mode Register
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
  T4MRB: byte absolute $87;  // Timer4 mode Register
  T4MRBset: TT4MRBset absolute $87;
  T4MRBrec: TT4MRBrec absolute $87;
const
  T4SCE = 1;  m_T4SCE = 2;  // Timer4 Software Capture Enable
  T4CNC = 2;  m_T4CNC = 4;  // Timer4 input Capture Noise Canceller
  T4CE0 = 3;  m_T4CE0 = 8;  // Timer4 Capture Edge select
  T4CE1 = 4;  m_T4CE1 = 16;  // Timer4 Capture Edge select
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
  T4IMR: byte absolute $88;  // Timer4 interrupt mask Register
  T4IMRset: TT4IMRset absolute $88;
  T4IMRrec: TT4IMRrec absolute $88;
const
  T4OIM = 0;  m_T4OIM = 1;  // Timer4 Overflow Interrupt Mask
  T4CIM = 1;  m_T4CIM = 2;  // Timer4 Compare Interrupt Mask
  T4CPIM = 2;  m_T4CPIM = 4;  // Timer4 Capture Interrupt Mask

var
  T5TEMP: byte absolute $89;  // Timer5 Temp Register
  T5OCR: word absolute $8A;  // Timer5 Output Compare Register
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
  T5CCR: byte absolute $8C;  // Timer5 Control Register
  T5CCRset: TT5CCRset absolute $8C;
  T5CCRrec: TT5CCRrec absolute $8C;
const
  T5CS0 = 0;  m_T5CS0 = 1;  // Timer5 Clock Select
  T5CS1 = 1;  m_T5CS1 = 2;  // Timer5 Clock Select
  T5CS2 = 2;  m_T5CS2 = 4;  // Timer5 Clock Select
  T5CTC = 3;  m_T5CTC = 8;  // Clear Timer5 on Compare Match

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
  T5OIM = 0;  m_T5OIM = 1;  // Timer5 Output Overflow Interrupt Mask
  T5CIM = 1;  m_T5CIM = 2;  // Timer5 Output Compare Interrupt Mask

type
  TLFCALR1set = bitpacked set of (e_LFSTC0, e_LFSTC1, e_LFSTC2, e_ICOMPRT0, e_ICOMPRT1, e_SEL150M0, e_SEL150M1, e_SEL150M2);
  TLFCALR1rec = bitpacked record
    LFSTC0,
    LFSTC1,
    LFSTC2,
    ICOMPRT0,
    ICOMPRT1,
    SEL150M0,
    SEL150M1,
    SEL150M2: TBitField;
  end;
var
  LFCALR1: byte absolute $90;  // LF Receiver Calibration Register 1
  LFCALR1set: TLFCALR1set absolute $90;
  LFCALR1rec: TLFCALR1rec absolute $90;
const
  LFSTC0 = 0;  m_LFSTC0 = 1;  // lf_stim_trim_current
  LFSTC1 = 1;  m_LFSTC1 = 2;  // lf_stim_trim_current
  LFSTC2 = 2;  m_LFSTC2 = 4;  // lf_stim_trim_current
  ICOMPRT0 = 3;  m_ICOMPRT0 = 8;  // icomp_range_trim
  ICOMPRT1 = 4;  m_ICOMPRT1 = 16;  // icomp_range_trim
  SEL150M0 = 5;  m_SEL150M0 = 32;  // Bandgap Calibration of VREF1
  SEL150M1 = 6;  m_SEL150M1 = 64;  // Bandgap Calibration of VREF1
  SEL150M2 = 7;  m_SEL150M2 = 128;  // Bandgap Calibration of VREF1

type
  TLFCALR2set = bitpacked set of (e_LFSTRES0, e_LFSTRES1, e_LFSTRES2, e_LFSTRES3, e_LFSTRES4, e_LFSTRES5, e_LFSRM, e_TIKOMPD);
  TLFCALR2rec = bitpacked record
    LFSTRES0,
    LFSTRES1,
    LFSTRES2,
    LFSTRES3,
    LFSTRES4,
    LFSTRES5,
    LFSRM,
    TIKOMPD: TBitField;
  end;
var
  LFCALR2: byte absolute $91;  // LF Receiver Calibration Register 2
  LFCALR2set: TLFCALR2set absolute $91;
  LFCALR2rec: TLFCALR2rec absolute $91;
const
  LFSTRES0 = 0;  m_LFSTRES0 = 1;  // lf_stim_trim_res
  LFSTRES1 = 1;  m_LFSTRES1 = 2;  // lf_stim_trim_res
  LFSTRES2 = 2;  m_LFSTRES2 = 4;  // lf_stim_trim_res
  LFSTRES3 = 3;  m_LFSTRES3 = 8;  // lf_stim_trim_res
  LFSTRES4 = 4;  m_LFSTRES4 = 16;  // lf_stim_trim_res
  LFSTRES5 = 5;  m_LFSTRES5 = 32;  // lf_stim_trim_res
  LFSRM = 6;  m_LFSRM = 64;  // lf_stim_res_mode
  TIKOMPD = 7;  m_TIKOMPD = 128;  // trim_ikomp_data

type
  TLFCALR3set = bitpacked set of (e_TCGAIN10, e_TCGAIN11, e_TCGAIN12, e_TCGAIN13, e_TCGAIN14, e_TCGAIN15, e_TCGAIN16, e_TCGAIN17);
  TLFCALR3rec = bitpacked record
    TCGAIN10,
    TCGAIN11,
    TCGAIN12,
    TCGAIN13,
    TCGAIN14,
    TCGAIN15,
    TCGAIN16,
    TCGAIN17: TBitField;
  end;
var
  LFCALR3: byte absolute $92;  // LF Receiver Calibration Register 3
  LFCALR3set: TLFCALR3set absolute $92;
  LFCALR3rec: TLFCALR3rec absolute $92;
const
  TCGAIN10 = 0;  m_TCGAIN10 = 1;  // Trim coarse gain
  TCGAIN11 = 1;  m_TCGAIN11 = 2;  // Trim coarse gain
  TCGAIN12 = 2;  m_TCGAIN12 = 4;  // Trim coarse gain
  TCGAIN13 = 3;  m_TCGAIN13 = 8;  // Trim coarse gain
  TCGAIN14 = 4;  m_TCGAIN14 = 16;  // Trim coarse gain
  TCGAIN15 = 5;  m_TCGAIN15 = 32;  // Trim coarse gain
  TCGAIN16 = 6;  m_TCGAIN16 = 64;  // Trim coarse gain
  TCGAIN17 = 7;  m_TCGAIN17 = 128;  // Trim coarse gain

type
  TLFCALR4set = bitpacked set of (e_TCGAIN20, e_TCGAIN21, e_TCGAIN22, e_TCGAIN23, e_TCGAIN24, e_TCGAIN25, e_TCGAIN26, e_TCGAIN27);
  TLFCALR4rec = bitpacked record
    TCGAIN20,
    TCGAIN21,
    TCGAIN22,
    TCGAIN23,
    TCGAIN24,
    TCGAIN25,
    TCGAIN26,
    TCGAIN27: TBitField;
  end;
var
  LFCALR4: byte absolute $93;  // LF Receiver Calibration Register 4
  LFCALR4set: TLFCALR4set absolute $93;
  LFCALR4rec: TLFCALR4rec absolute $93;
const
  TCGAIN20 = 0;  m_TCGAIN20 = 1;  // Trim coarse gain bit 8
  TCGAIN21 = 1;  m_TCGAIN21 = 2;  // Trim coarse gain bit 9
  TCGAIN22 = 2;  m_TCGAIN22 = 4;  // Trim coarse gain bit 10
  TCGAIN23 = 3;  m_TCGAIN23 = 8;  // Trim coarse gain bit 11
  TCGAIN24 = 4;  m_TCGAIN24 = 16;  // Trim coarse gain bit 12
  TCGAIN25 = 5;  m_TCGAIN25 = 32;  // Trim coarse gain bit 13
  TCGAIN26 = 6;  m_TCGAIN26 = 64;  // Trim coarse gain bit 14
  TCGAIN27 = 7;  m_TCGAIN27 = 128;  // Trim coarse gain bit 15

type
  TLFCALR5set = bitpacked set of (e_TCGAIN30, e_TCGAIN31, e_TCGAIN32, e_TCGAIN34=4, e_TCGAIN35, e_TCGAIN36, e_TCGAIN37);
  TLFCALR5rec = bitpacked record
    TCGAIN30,
    TCGAIN31,
    TCGAIN32,
    ReservedBit3,
    TCGAIN34,
    TCGAIN35,
    TCGAIN36,
    TCGAIN37: TBitField;
  end;
var
  LFCALR5: byte absolute $94;  // LF Receiver Calibration Register 5
  LFCALR5set: TLFCALR5set absolute $94;
  LFCALR5rec: TLFCALR5rec absolute $94;
const
  TCGAIN30 = 0;  m_TCGAIN30 = 1;  // Trim coarse gain bit 16
  TCGAIN31 = 1;  m_TCGAIN31 = 2;  // Trim coarse gain bit 17
  TCGAIN32 = 2;  m_TCGAIN32 = 4;  // Trim coarse gain bit 18
  TCGAIN34 = 4;  m_TCGAIN34 = 16;  // Trim coarse gain bit 20
  TCGAIN35 = 5;  m_TCGAIN35 = 32;  // Trim coarse gain bit 21
  TCGAIN36 = 6;  m_TCGAIN36 = 64;  // Trim coarse gain bit 22
  TCGAIN37 = 7;  m_TCGAIN37 = 128;  // Trim coarse gain bit 23

type
  TLFCALR6set = bitpacked set of (e_TCGAIN40, e_TCGAIN41, e_TCGAIN42, e_TCGAIN43, e_TCGAIN44);
  TLFCALR6rec = bitpacked record
    TCGAIN40,
    TCGAIN41,
    TCGAIN42,
    TCGAIN43,
    TCGAIN44,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFCALR6: byte absolute $95;  // LF Receiver Calibration Register 6
  LFCALR6set: TLFCALR6set absolute $95;
  LFCALR6rec: TLFCALR6rec absolute $95;
const
  TCGAIN40 = 0;  m_TCGAIN40 = 1;  // Trim coarse gain bit 24
  TCGAIN41 = 1;  m_TCGAIN41 = 2;  // Trim coarse gain bit 25
  TCGAIN42 = 2;  m_TCGAIN42 = 4;  // Trim coarse gain bit 26
  TCGAIN43 = 3;  m_TCGAIN43 = 8;  // Trim coarse gain bit 27
  TCGAIN44 = 4;  m_TCGAIN44 = 16;  // Trim coarse gain bit 28

var
  LFCALR7: byte absolute $96;  // LF Receiver Calibration Register 7
  LFCALR8: byte absolute $97;  // LF Receiver Calibration Register 8
  LFCALR9: byte absolute $98;  // LF Receiver Calibration Register 9
  LFCALR10: byte absolute $99;  // LF Receiver Calibration Register 10
  LFCALR11: byte absolute $9A;  // LF Receiver Calibration Register 11
  LFCALR12: byte absolute $9B;  // LF Receiver Calibration Register 12
  LFCALR13: byte absolute $9C;  // LF Receiver Calibration Register 13
  LFCALR14: byte absolute $9D;  // LF Receiver Calibration Register 14
  LFCALR15: byte absolute $9E;  // LF Receiver Calibration Register 15
  LFCALR16: byte absolute $9F;  // LF Receiver Calibration Register 16
  LFCALR17: byte absolute $A0;  // LF Receiver Calibration Register 17
  LFCALR18: byte absolute $A1;  // LF Receiver Calibration Register 18
  LFCALR19: byte absolute $A2;  // LF Receiver Calibration Register 19
  LFCALR20: byte absolute $A3;  // LF Receiver Calibration Register 20
  LFCALR21: byte absolute $A4;  // LF Receiver Calibration Register 21
  LFCALR22: byte absolute $A5;  // LF Receiver Calibration Register 22
  LFCALR23: byte absolute $A6;  // LF Receiver Calibration Register 23
  LFCALR24: byte absolute $A7;  // LF Receiver Calibration Register 24
  LFCALR25: byte absolute $A8;  // LF Receiver Calibration Register 25
  LFCALR26: byte absolute $A9;  // LF Receiver Calibration Register 26
  LFCALR27: byte absolute $AA;  // LF Receiver Calibration Register 27
  LFCALR28: byte absolute $AB;  // LF Receiver Calibration Register 28
  LFCALR29: byte absolute $AC;  // LF Receiver Calibration Register 29
  LFCALR30: byte absolute $AD;  // LF Receiver Calibration Register 30
  LFCALR31: byte absolute $AE;  // LF Receiver Calibration Register 31
  LFCALR32: byte absolute $AF;  // LF Receiver Calibration Register 32
  LFCALR33: byte absolute $B0;  // LF Receiver Calibration Register 33
  LFCALR34: byte absolute $B1;  // LF Receiver Calibration Register 34
  LFCALR35: byte absolute $B2;  // LF Receiver Calibration Register 35
  LFCALR36: byte absolute $B3;  // LF Receiver Calibration Register 36
  LFCALR37: byte absolute $B4;  // LF Receiver Calibration Register 37
  LFCALR38: byte absolute $B5;  // LF Receiver Calibration Register 38
  LFCALR39: byte absolute $B6;  // LF Receiver Calibration Register 39
  LFCALR40: byte absolute $B7;  // LF Receiver Calibration Register 40
  LFCALR41: byte absolute $B8;  // LF Receiver Calibration Register 41
  LFCALR42: byte absolute $B9;  // LF Receiver Calibration Register 42
  LFCALR43: byte absolute $BA;  // LF Receiver Calibration Register 43
  LFCALR44: byte absolute $BB;  // LF Receiver Calibration Register 44
  LFCALR45: byte absolute $BC;  // LF Receiver Calibration Register 45
  LFCALR46: byte absolute $BD;  // LF Receiver Calibration Register 46
  LFCALR47: byte absolute $BE;  // LF Receiver Calibration Register 47
  LFCALR48: byte absolute $BF;  // LF Receiver Calibration Register 48
  LFCALR49: byte absolute $C0;  // LF Receiver Calibration Register 49
  LFCALR50: byte absolute $C1;  // LF Receiver Calibration Register 50
  LFCALR51: byte absolute $C2;  // LF Receiver Calibration Register 51
  LFCALR52: byte absolute $C3;  // LF Receiver Calibration Register 52
  LFCALR53: byte absolute $C4;  // LF Receiver Calibration Register 53
  XFUSE: byte absolute $C5;
  MRCCAL: byte absolute $C6;  // Middle RC oscillator calibration Register
  FRCCAL: byte absolute $C7;  // Fast RC oscillator calibration Register

type
  TRCTCALset = bitpacked set of (e_FRCTC, e_MRCTC0, e_MRCTC1, e_MRCTC2, e_DI_MRCBG);
  TRCTCALrec = bitpacked record
    FRCTC,
    MRCTC0,
    MRCTC1,
    MRCTC2,
    DI_MRCBG,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RCTCAL: byte absolute $C8;  // RC oscillator Temperature Compensation register
  RCTCALset: TRCTCALset absolute $C8;
  RCTCALrec: TRCTCALrec absolute $C8;
const
  FRCTC = 0;  m_FRCTC = 1;  // FRC Oscillator Temperature Compensation bit
  MRCTC0 = 1;  m_MRCTC0 = 2;  // Medium frequency RC Oscillator Temperature Compensation
  MRCTC1 = 2;  m_MRCTC1 = 4;  // Medium frequency RC Oscillator Temperature Compensation
  MRCTC2 = 3;  m_MRCTC2 = 8;  // Medium frequency RC Oscillator Temperature Compensation
  DI_MRCBG = 4;  m_DI_MRCBG = 16;  // Disable MRC Oscillator Bandgap

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
  CMSR: byte absolute $C9;  // Clock management status Register
  CMSRset: TCMSRset absolute $C9;
  CMSRrec: TCMSRrec absolute $C9;
const
  ECF = 0;  m_ECF = 1;  // External clock fail

type
  TCMOCRset = bitpacked set of (e_FRCAO, e_MRCAO, e_FRCACT);
  TCMOCRrec = bitpacked record
    FRCAO,
    MRCAO,
    FRCACT,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CMOCR: byte absolute $CA;  // Clock management override control register
  CMOCRset: TCMOCRset absolute $CA;
  CMOCRrec: TCMOCRrec absolute $CA;
const
  FRCAO = 0;  m_FRCAO = 1;  // FRC Always On
  MRCAO = 1;  m_MRCAO = 2;  // MRC Always On
  FRCACT = 2;  m_FRCACT = 4;  // FRC Active

type
  TSUPFRset = bitpacked set of (e_AVCCRF, e_AVCCLF);
  TSUPFRrec = bitpacked record
    AVCCRF,
    AVCCLF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPFR: byte absolute $CB;  // Supply Interrupt Flag Register
  SUPFRset: TSUPFRset absolute $CB;
  SUPFRrec: TSUPFRrec absolute $CB;
const
  AVCCRF = 0;  m_AVCCRF = 1;  // AVCC reset interrupt flag
  AVCCLF = 1;  m_AVCCLF = 2;  // AVCC low interrupt flag

type
  TSUPCRset = bitpacked set of (e_AVCCRM, e_AVCCLM, e_PVEN, e_AVDIC, e_AVEN, e_DVHEN, e_VMRESM, e_VMEMEN);
  TSUPCRrec = bitpacked record
    AVCCRM,
    AVCCLM,
    PVEN,
    AVDIC,
    AVEN,
    DVHEN,
    VMRESM,
    VMEMEN: TBitField;
  end;
var
  SUPCR: byte absolute $CC;  // Supply Control Register
  SUPCRset: TSUPCRset absolute $CC;
  SUPCRrec: TSUPCRrec absolute $CC;
const
  AVCCRM = 0;  m_AVCCRM = 1;  // AVCC Reset Interrupt Mask
  AVCCLM = 1;  m_AVCCLM = 2;  // AVCC Low Interrupt Mask
  PVEN = 2;  m_PVEN = 4;  // Power amplifier Voltage supply Enable
  AVDIC = 3;  m_AVDIC = 8;  // AVCC Double Internal Current
  AVEN = 4;  m_AVEN = 16;  // AVCC Enable
  DVHEN = 5;  m_DVHEN = 32;  // DVCC High Current Mode Enable
  VMRESM = 6;  m_VMRESM = 64;  // VMEM Reset Mask
  VMEMEN = 7;  m_VMEMEN = 128;  // Memory Voltage Regulator Enable

type
  TSUPCA1set = bitpacked set of (e_PV22=2, e_PVDIC, e_PVCAL0, e_PVCAL1, e_PVCAL2, e_PVCAL3);
  TSUPCA1rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    PV22,
    PVDIC,
    PVCAL0,
    PVCAL1,
    PVCAL2,
    PVCAL3: TBitField;
  end;
var
  SUPCA1: byte absolute $CD;  // Supply calibration register 1
  SUPCA1set: TSUPCA1set absolute $CD;
  SUPCA1rec: TSUPCA1rec absolute $CD;
const
  PV22 = 2;  m_PV22 = 4;  // Power Amplifier Voltage 2.2V
  PVDIC = 3;  m_PVDIC = 8;  // Power Amplifier Regulator Double Internal Current
  PVCAL0 = 4;  m_PVCAL0 = 16;  // Power Amplifier Regulator Calibration
  PVCAL1 = 5;  m_PVCAL1 = 32;  // Power Amplifier Regulator Calibration
  PVCAL2 = 6;  m_PVCAL2 = 64;  // Power Amplifier Regulator Calibration
  PVCAL3 = 7;  m_PVCAL3 = 128;  // Power Amplifier Regulator Calibration

type
  TSUPCA2set = bitpacked set of (e_BGCAL0, e_BGCAL1, e_BGCAL2, e_BGCAL3);
  TSUPCA2rec = bitpacked record
    BGCAL0,
    BGCAL1,
    BGCAL2,
    BGCAL3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA2: byte absolute $CE;  // Supply calibration register 2
  SUPCA2set: TSUPCA2set absolute $CE;
  SUPCA2rec: TSUPCA2rec absolute $CE;
const
  BGCAL0 = 0;  m_BGCAL0 = 1;  // Band Gap Calibration
  BGCAL1 = 1;  m_BGCAL1 = 2;  // Band Gap Calibration
  BGCAL2 = 2;  m_BGCAL2 = 4;  // Band Gap Calibration
  BGCAL3 = 3;  m_BGCAL3 = 8;  // Band Gap Calibration

type
  TSUPCA3set = bitpacked set of (e_ACAL0, e_ACAL1, e_ACAL2, e_ACAL3, e_ACAL4, e_ACAL5, e_ACAL6, e_ACAL7);
  TSUPCA3rec = bitpacked record
    ACAL0,
    ACAL1,
    ACAL2,
    ACAL3,
    ACAL4,
    ACAL5,
    ACAL6,
    ACAL7: TBitField;
  end;
var
  SUPCA3: byte absolute $CF;  // Supply calibration register 3
  SUPCA3set: TSUPCA3set absolute $CF;
  SUPCA3rec: TSUPCA3rec absolute $CF;
const
  ACAL0 = 0;  m_ACAL0 = 1;  // AVCC Regulator Output Voltage Calibration
  ACAL1 = 1;  m_ACAL1 = 2;  // AVCC Regulator Output Voltage Calibration
  ACAL2 = 2;  m_ACAL2 = 4;  // AVCC Regulator Output Voltage Calibration
  ACAL3 = 3;  m_ACAL3 = 8;  // AVCC Regulator Output Voltage Calibration
  ACAL4 = 4;  m_ACAL4 = 16;  // AVCC Regulator Output Voltage Calibration
  ACAL5 = 5;  m_ACAL5 = 32;  // AVCC Regulator Output Voltage Calibration
  ACAL6 = 6;  m_ACAL6 = 64;  // AVCC Regulator Output Voltage Calibration
  ACAL7 = 7;  m_ACAL7 = 128;  // AVCC Regulator Output Voltage Calibration

type
  TSUPCA4set = bitpacked set of (e_ICONST0, e_ICONST1, e_ICONST2, e_ICONST3, e_ICONST4, e_ICONST5);
  TSUPCA4rec = bitpacked record
    ICONST0,
    ICONST1,
    ICONST2,
    ICONST3,
    ICONST4,
    ICONST5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA4: byte absolute $D0;  // Supply calibration register 4
  SUPCA4set: TSUPCA4set absolute $D0;
  SUPCA4rec: TSUPCA4rec absolute $D0;
const
  ICONST0 = 0;  m_ICONST0 = 1;  // ICONST Constant current of bandgap
  ICONST1 = 1;  m_ICONST1 = 2;  // ICONST Constant current of bandgap
  ICONST2 = 2;  m_ICONST2 = 4;  // ICONST Constant current of bandgap
  ICONST3 = 3;  m_ICONST3 = 8;  // ICONST Constant current of bandgap
  ICONST4 = 4;  m_ICONST4 = 16;  // ICONST Constant current of bandgap
  ICONST5 = 5;  m_ICONST5 = 32;  // ICONST Constant current of bandgap

var
  CALRDY: byte absolute $D1;  // Calibration ready signature

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
  DFS: byte absolute $D2;  // Data FIFO Status Register
  DFSset: TDFSset absolute $D2;
  DFSrec: TDFSrec absolute $D2;
const
  DFFLRF = 0;  m_DFFLRF = 1;  // Data FIFO Fill-Level Reached Status Flag
  DFUFL = 1;  m_DFUFL = 2;  // Data FIFO Underflow Flag
  DFOFL = 2;  m_DFOFL = 4;  // Data FIFO Overflow Flag

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
  DFL: byte absolute $D5;  // Data FIFO Fill Level Register
  DFLset: TDFLset absolute $D5;
  DFLrec: TDFLrec absolute $D5;
const
  DFFLS0 = 0;  m_DFFLS0 = 1;  // Data FIFO Fill Level Status
  DFFLS1 = 1;  m_DFFLS1 = 2;  // Data FIFO Fill Level Status
  DFFLS2 = 2;  m_DFFLS2 = 4;  // Data FIFO Fill Level Status
  DFFLS3 = 3;  m_DFFLS3 = 8;  // Data FIFO Fill Level Status
  DFFLS4 = 4;  m_DFFLS4 = 16;  // Data FIFO Fill Level Status
  DFFLS5 = 5;  m_DFFLS5 = 32;  // Data FIFO Fill Level Status
  DFCLR = 7;  m_DFCLR = 128;  // Data FIFO Clear

var
  DFWP: byte absolute $D6;  // Data FIFO Write Pointer
  DFRP: byte absolute $D7;  // Data FIFO Read Pointer
  DFD: byte absolute $D8;  // Data FIFO Data Register

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
  DFI: byte absolute $D9;  // Data FIFO Interrupt Mask Register
  DFIset: TDFIset absolute $D9;
  DFIrec: TDFIrec absolute $D9;
const
  DFFLIM = 0;  m_DFFLIM = 1;  // Data FIFO Fill-level Interrupt Mask
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
  DFC: byte absolute $DA;  // Data FIFO Configuration Register
  DFCset: TDFCset absolute $DA;
  DFCrec: TDFCrec absolute $DA;
const
  DFFLC0 = 0;  m_DFFLC0 = 1;  // Data FIFO Fill-Level Configuration
  DFFLC1 = 1;  m_DFFLC1 = 2;  // Data FIFO Fill-Level Configuration
  DFFLC2 = 2;  m_DFFLC2 = 4;  // Data FIFO Fill-Level Configuration
  DFFLC3 = 3;  m_DFFLC3 = 8;  // Data FIFO Fill-Level Configuration
  DFFLC4 = 4;  m_DFFLC4 = 16;  // Data FIFO Fill-Level Configuration
  DFFLC5 = 5;  m_DFFLC5 = 32;  // Data FIFO Fill-Level Configuration
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
  SFS: byte absolute $DB;  // Support FIFO Status Register
  SFSset: TSFSset absolute $DB;
  SFSrec: TSFSrec absolute $DB;
const
  SFFLRF = 0;  m_SFFLRF = 1;  // Support FIFO Fill-Level Reached Status Flag
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
  SFL: byte absolute $DC;  // Support FIFO Fill Level Register
  SFLset: TSFLset absolute $DC;
  SFLrec: TSFLrec absolute $DC;
const
  SFFLS0 = 0;  m_SFFLS0 = 1;  // Support FIFO Fill Level Status
  SFFLS1 = 1;  m_SFFLS1 = 2;  // Support FIFO Fill Level Status
  SFFLS2 = 2;  m_SFFLS2 = 4;  // Support FIFO Fill Level Status
  SFFLS3 = 3;  m_SFFLS3 = 8;  // Support FIFO Fill Level Status
  SFFLS4 = 4;  m_SFFLS4 = 16;  // Support FIFO Fill Level Status
  SFCLR = 7;  m_SFCLR = 128;  // Support FIFO Clear

var
  SFWP: byte absolute $DD;  // Support FIFO Write Pointer
  SFRP: byte absolute $DE;  // Support FIFO Read Pointer
  SFD: byte absolute $DF;  // Support FIFO Data Register

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
  SFI: byte absolute $E0;  // Support FIFO Interrupt Mask Register
  SFIset: TSFIset absolute $E0;
  SFIrec: TSFIrec absolute $E0;
const
  SFFLIM = 0;  m_SFFLIM = 1;  // Support FIFO Fill-level Interrupt Mask
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
  SFC: byte absolute $E1;  // Support FIFO Configuration Register
  SFCset: TSFCset absolute $E1;
  SFCrec: TSFCrec absolute $E1;
const
  SFFLC0 = 0;  m_SFFLC0 = 1;  // Support FIFO Fill-Level Configuration
  SFFLC1 = 1;  m_SFFLC1 = 2;  // Support FIFO Fill-Level Configuration
  SFFLC2 = 2;  m_SFFLC2 = 4;  // Support FIFO Fill-Level Configuration
  SFFLC3 = 3;  m_SFFLC3 = 8;  // Support FIFO Fill-Level Configuration
  SFFLC4 = 4;  m_SFFLC4 = 16;  // Support FIFO Fill-Level Configuration
  SFDRA = 7;  m_SFDRA = 128;  // Support FIFO Direct Read Access Operational Mode

type
  TSSMCRset = bitpacked set of (e_SSMTGE=2, e_SSMTPE, e_SSMPVE, e_SSMTAE);
  TSSMCRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    SSMTGE,
    SSMTPE,
    SSMPVE,
    SSMTAE,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMCR: byte absolute $E2;  // SSM Control Register
  SSMCRset: TSSMCRset absolute $E2;
  SSMCRrec: TSSMCRrec absolute $E2;
const
  SSMTGE = 2;  m_SSMTGE = 4;  // Sequencer State Machine Tx Gauss Enable
  SSMTPE = 3;  m_SSMTPE = 8;  // Sequencer State Machine Tx Preemphasis Enable
  SSMPVE = 4;  m_SSMPVE = 16;  // Sequencer State Machine PV Enable
  SSMTAE = 5;  m_SSMTAE = 32;  // Sequencer State Machine Tx Ask-Shaping Enable

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
  GTCCR: byte absolute $E3;  // General Timer/Counter Control Register
  GTCCRset: TGTCCRset absolute $E3;
  GTCCRrec: TGTCCRrec absolute $E3;
const
  PSR10 = 0;  m_PSR10 = 1;  // PreScaler Reset
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

type
  TSSMFBRset = bitpacked set of (e_SSMPLDT=5);
  TSSMFBRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    SSMPLDT,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMFBR: byte absolute $E4;  // SSM Filter Bandwidth Register
  SSMFBRset: TSSMFBRset absolute $E4;
  SSMFBRrec: TSSMFBRrec absolute $E4;
const
  SSMPLDT = 5;  m_SSMPLDT = 32;  // Sequencer State Machine PLL Lock Delay Time

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
  SSMRR: byte absolute $E5;  // SSM Run Register
  SSMRRset: TSSMRRset absolute $E5;
  SSMRRrec: TSSMRRrec absolute $E5;
const
  SSMR = 0;  m_SSMR = 1;  // Sequencer State Machine Run
  SSMST = 1;  m_SSMST = 2;  // Sequencer State Machine Stop

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
  SSMSR: byte absolute $E6;  // SSM Status Register
  SSMSRset: TSSMSRset absolute $E6;
  SSMSRrec: TSSMSRrec absolute $E6;
const
  SSMESM0 = 0;  m_SSMESM0 = 1;  // Sequencer State Machine Error State Machine
  SSMESM1 = 1;  m_SSMESM1 = 2;  // Sequencer State Machine Error State Machine
  SSMESM2 = 2;  m_SSMESM2 = 4;  // Sequencer State Machine Error State Machine
  SSMESM3 = 3;  m_SSMESM3 = 8;  // Sequencer State Machine Error State Machine
  SSMERR = 7;  m_SSMERR = 128;  // Sequencer State Machine Error

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
  SSMIFR: byte absolute $E7;  // SSM Interrupt Flag Register
  SSMIFRset: TSSMIFRset absolute $E7;
  SSMIFRrec: TSSMIFRrec absolute $E7;
const
  SSMIF = 0;  m_SSMIF = 1;  // Sequencer State Machine Interrupt Flag

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
  SSMIMR: byte absolute $E8;  // SSM interrupt mask register
  SSMIMRset: TSSMIMRset absolute $E8;
  SSMIMRrec: TSSMIMRrec absolute $E8;
const
  SSMIM = 0;  m_SSMIM = 1;  // Sequencer State Machine Interrupt Mask

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
  MSMSTR: byte absolute $E9;  // Master State Machine state register
  MSMSTRset: TMSMSTRset absolute $E9;
  MSMSTRrec: TMSMSTRrec absolute $E9;
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
  SSMSTR: byte absolute $EA;  // SSM State Register
  SSMSTRset: TSSMSTRset absolute $EA;
  SSMSTRrec: TSSMSTRrec absolute $EA;
const
  SSMSTA0 = 0;  m_SSMSTA0 = 1;  // Sequencer State Machine State A
  SSMSTA1 = 1;  m_SSMSTA1 = 2;  // Sequencer State Machine State A
  SSMSTA2 = 2;  m_SSMSTA2 = 4;  // Sequencer State Machine State A
  SSMSTA3 = 3;  m_SSMSTA3 = 8;  // Sequencer State Machine State A
  SSMSTA4 = 4;  m_SSMSTA4 = 16;  // Sequencer State Machine State A
  SSMSTA5 = 5;  m_SSMSTA5 = 32;  // Sequencer State Machine State A

type
  TVXMCTRLset = bitpacked set of (e_VX_SEL0, e_VX_SEL1, e_EN_VX, e_EN_VX_OUT, e_EN_VX_IN);
  TVXMCTRLrec = bitpacked record
    VX_SEL0,
    VX_SEL1,
    EN_VX,
    EN_VX_OUT,
    EN_VX_IN,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VXMCTRL: byte absolute $EB;  // VX Mode Control Register
  VXMCTRLset: TVXMCTRLset absolute $EB;
  VXMCTRLrec: TVXMCTRLrec absolute $EB;
const
  VX_SEL0 = 0;  m_VX_SEL0 = 1;  // Select VX voltage level
  VX_SEL1 = 1;  m_VX_SEL1 = 2;  // Select VX voltage level
  EN_VX = 2;  m_EN_VX = 4;  // Enable the VX_LDO
  EN_VX_OUT = 3;  m_EN_VX_OUT = 8;  // Enable PB4 as an VX/VBAT Supply Output
  EN_VX_IN = 4;  m_EN_VX_IN = 16;  // Enable VX Inputs

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
  MSMCR1: byte absolute $EC;  // Master State Machine Control Register 1
  MSMCR1set: TMSMCR1set absolute $EC;
  MSMCR1rec: TMSMCR1rec absolute $EC;
const
  MSMSM00 = 0;  m_MSMSM00 = 1;  // Master State Machine SubState Machine Select 0
  MSMSM01 = 1;  m_MSMSM01 = 2;  // Master State Machine SubState Machine Select 0
  MSMSM02 = 2;  m_MSMSM02 = 4;  // Master State Machine SubState Machine Select 0
  MSMSM03 = 3;  m_MSMSM03 = 8;  // Master State Machine SubState Machine Select 0
  MSMSM10 = 4;  m_MSMSM10 = 16;  // Master State Machine SubState Machine Select 1
  MSMSM11 = 5;  m_MSMSM11 = 32;  // Master State Machine SubState Machine Select 1
  MSMSM12 = 6;  m_MSMSM12 = 64;  // Master State Machine SubState Machine Select 1
  MSMSM13 = 7;  m_MSMSM13 = 128;  // Master State Machine SubState Machine Select 1

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
  MSMCR2: byte absolute $ED;  // Master State Machine Control Register 2
  MSMCR2set: TMSMCR2set absolute $ED;
  MSMCR2rec: TMSMCR2rec absolute $ED;
const
  MSMSM20 = 0;  m_MSMSM20 = 1;  // Master State Machine SubState Machine Select 2
  MSMSM21 = 1;  m_MSMSM21 = 2;  // Master State Machine SubState Machine Select 2
  MSMSM22 = 2;  m_MSMSM22 = 4;  // Master State Machine SubState Machine Select 2
  MSMSM23 = 3;  m_MSMSM23 = 8;  // Master State Machine SubState Machine Select 2
  MSMSM30 = 4;  m_MSMSM30 = 16;  // Master State Machine SubState Machine Select 3
  MSMSM31 = 5;  m_MSMSM31 = 32;  // Master State Machine SubState Machine Select 3
  MSMSM32 = 6;  m_MSMSM32 = 64;  // Master State Machine SubState Machine Select 3
  MSMSM33 = 7;  m_MSMSM33 = 128;  // Master State Machine SubState Machine Select 3

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
  MSMCR3: byte absolute $EE;  // Master State Machine Control Register 3
  MSMCR3set: TMSMCR3set absolute $EE;
  MSMCR3rec: TMSMCR3rec absolute $EE;
const
  MSMSM40 = 0;  m_MSMSM40 = 1;  // Master State Machine SubState Machine Select 4
  MSMSM41 = 1;  m_MSMSM41 = 2;  // Master State Machine SubState Machine Select 4
  MSMSM42 = 2;  m_MSMSM42 = 4;  // Master State Machine SubState Machine Select 4
  MSMSM43 = 3;  m_MSMSM43 = 8;  // Master State Machine SubState Machine Select 4
  MSMSM50 = 4;  m_MSMSM50 = 16;  // Master State Machine SubState Machine Select 5
  MSMSM51 = 5;  m_MSMSM51 = 32;  // Master State Machine SubState Machine Select 5
  MSMSM52 = 6;  m_MSMSM52 = 64;  // Master State Machine SubState Machine Select 5
  MSMSM53 = 7;  m_MSMSM53 = 128;  // Master State Machine SubState Machine Select 5

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
  MSMCR4: byte absolute $EF;  // Master State Machine Control Register 4
  MSMCR4set: TMSMCR4set absolute $EF;
  MSMCR4rec: TMSMCR4rec absolute $EF;
const
  MSMSM60 = 0;  m_MSMSM60 = 1;  // Master State Machine SubState Machine Select 6
  MSMSM61 = 1;  m_MSMSM61 = 2;  // Master State Machine SubState Machine Select 6
  MSMSM62 = 2;  m_MSMSM62 = 4;  // Master State Machine SubState Machine Select 6
  MSMSM63 = 3;  m_MSMSM63 = 8;  // Master State Machine SubState Machine Select 6
  MSMSM70 = 4;  m_MSMSM70 = 16;  // Master State Machine SubState Machine Select 7
  MSMSM71 = 5;  m_MSMSM71 = 32;  // Master State Machine SubState Machine Select 7
  MSMSM72 = 6;  m_MSMSM72 = 64;  // Master State Machine SubState Machine Select 7
  MSMSM73 = 7;  m_MSMSM73 = 128;  // Master State Machine SubState Machine Select 7

type
  TSP2CRset = bitpacked set of (e_SP2R0, e_SP2R1, e_CPHA2, e_CPOL2, e_MSTR2, e_DORD2, e_SP2E, e_SP2IE);
  TSP2CRrec = bitpacked record
    SP2R0,
    SP2R1,
    CPHA2,
    CPOL2,
    MSTR2,
    DORD2,
    SP2E,
    SP2IE: TBitField;
  end;
var
  SP2CR: byte absolute $F7;  // SPI2 control Register
  SP2CRset: TSP2CRset absolute $F7;
  SP2CRrec: TSP2CRrec absolute $F7;
const
  SP2R0 = 0;  m_SP2R0 = 1;  // SPI2 Clock Rate Select
  SP2R1 = 1;  m_SP2R1 = 2;  // SPI2 Clock Rate Select
  CPHA2 = 2;  m_CPHA2 = 4;  // Clock Phase
  CPOL2 = 3;  m_CPOL2 = 8;  // Clock Polarity
  MSTR2 = 4;  m_MSTR2 = 16;  // Master/Slave Select
  DORD2 = 5;  m_DORD2 = 32;  // Data Order
  SP2E = 6;  m_SP2E = 64;  // SPI2 Enable
  SP2IE = 7;  m_SP2IE = 128;  // Spi2 Interrupt Enable

var
  SP2DR: byte absolute $F8;  // SPI2 Data Register

type
  TSP2SRset = bitpacked set of (e_SPI22X, e_WCOL2=6, e_SP2IF);
  TSP2SRrec = bitpacked record
    SPI22X,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    WCOL2,
    SP2IF: TBitField;
  end;
var
  SP2SR: byte absolute $F9;  // SPI2 Status Register
  SP2SRset: TSP2SRset absolute $F9;
  SP2SRrec: TSP2SRrec absolute $F9;
const
  SPI22X = 0;  m_SPI22X = 1;  // Double SPI2 Speed Bit
  WCOL2 = 6;  m_WCOL2 = 64;  // Write Colliion Flag
  SP2IF = 7;  m_SP2IF = 128;  // SPI2 Interrupt Flag

var
  TRCID: word absolute $FC;  // Trace ID Register
  TRCIDL: byte absolute $FC;
  TRCIDH: byte absolute $FD;
  TRCDR: byte absolute $FF;  // Trace Data Register

type
  TFESRset = bitpacked set of (e_XRDY=2, e_PLCK, e_ANTS);
  TFESRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    XRDY,
    PLCK,
    ANTS,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FESR: byte absolute $100;  // Front-End Status Register
  FESRset: TFESRset absolute $100;
  FESRrec: TFESRrec absolute $100;
const
  XRDY = 2;  m_XRDY = 4;  // XTO ready
  PLCK = 3;  m_PLCK = 8;  // PLL locked
  ANTS = 4;  m_ANTS = 16;  // Antenna saturated

type
  TFEEN1set = bitpacked set of (e_PLEN, e_PLCAL, e_XTOEN, e_PLSP1=6, e_ATEN);
  TFEEN1rec = bitpacked record
    PLEN,
    PLCAL,
    XTOEN,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    PLSP1,
    ATEN: TBitField;
  end;
var
  FEEN1: byte absolute $101;  // Front-End Enable Register 1
  FEEN1set: TFEEN1set absolute $101;
  FEEN1rec: TFEEN1rec absolute $101;
const
  PLEN = 0;  m_PLEN = 1;  // PLL enable
  PLCAL = 1;  m_PLCAL = 2;  // PLL calibration mode
  XTOEN = 2;  m_XTOEN = 4;  // Cristal Oscillator enable
  PLSP1 = 6;  m_PLSP1 = 64;  // PLL Speedup 1
  ATEN = 7;  m_ATEN = 128;  // Antenna Tuning Enable

type
  TFEEN2set = bitpacked set of (e_PAEN=2, e_PLPEN=4, e_CPBIA=6);
  TFEEN2rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    PAEN,
    ReservedBit3,
    PLPEN,
    ReservedBit5,
    CPBIA,
    ReservedBit7: TBitField;
  end;
var
  FEEN2: byte absolute $102;  // Front-End Enable Register 2
  FEEN2set: TFEEN2set absolute $102;
  FEEN2rec: TFEEN2rec absolute $102;
const
  PAEN = 2;  m_PAEN = 4;  // Power Amplifier enable
  PLPEN = 4;  m_PLPEN = 16;  // PLL Post En IQ divider
  CPBIA = 6;  m_CPBIA = 64;  // Cap Array Bias

var
  FELNA: byte absolute $103;  // Reserved

type
  TFEATset = bitpacked set of (e_ANTN0, e_ANTN1, e_ANTN2, e_ANTN3);
  TFEATrec = bitpacked record
    ANTN0,
    ANTN1,
    ANTN2,
    ANTN3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FEAT: byte absolute $104;  // Front-End Antenna Tuning
  FEATset: TFEATset absolute $104;
  FEATrec: TFEATrec absolute $104;
const
  ANTN0 = 0;  m_ANTN0 = 1;  // Antenna Tuning
  ANTN1 = 1;  m_ANTN1 = 2;  // Antenna Tuning
  ANTN2 = 2;  m_ANTN2 = 4;  // Antenna Tuning
  ANTN3 = 3;  m_ANTN3 = 8;  // Antenna Tuning

type
  TFEPACset = bitpacked set of (e_PACR0, e_PACR1, e_PACR2, e_PACR3, e_PACR4, e_PACR5, e_PACR6, e_PACR7);
  TFEPACrec = bitpacked record
    PACR0,
    PACR1,
    PACR2,
    PACR3,
    PACR4,
    PACR5,
    PACR6,
    PACR7: TBitField;
  end;
var
  FEPAC: byte absolute $105;  // Front-End Power Amplifier Control Register
  FEPACset: TFEPACset absolute $105;
  FEPACrec: TFEPACrec absolute $105;
const
  PACR0 = 0;  m_PACR0 = 1;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR1 = 1;  m_PACR1 = 2;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR2 = 2;  m_PACR2 = 4;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR3 = 3;  m_PACR3 = 8;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR4 = 4;  m_PACR4 = 16;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR5 = 5;  m_PACR5 = 32;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR6 = 6;  m_PACR6 = 64;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand
  PACR7 = 7;  m_PACR7 = 128;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand

var
  FEVCT: byte absolute $106;  // Front-End VCO Tuning Register

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
  FEBT: byte absolute $107;  // Front-End RC Tuning Register
  FEBTset: TFEBTset absolute $107;
  FEBTrec: TFEBTrec absolute $107;
const
  CTN20 = 0;  m_CTN20 = 1;  // Capacitor Tuning
  CTN21 = 1;  m_CTN21 = 2;  // Capacitor Tuning
  RTN20 = 2;  m_RTN20 = 4;  // Resistor Tuning
  RTN21 = 3;  m_RTN21 = 8;  // Resistor Tuning

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
  FEMS: byte absolute $108;  // Front-End Main and Swallow Control Register
  FEMSset: TFEMSset absolute $108;
  FEMSrec: TFEMSrec absolute $108;
const
  PLLS0 = 0;  m_PLLS0 = 1;  // PLL Swallow
  PLLS1 = 1;  m_PLLS1 = 2;  // PLL Swallow
  PLLS2 = 2;  m_PLLS2 = 4;  // PLL Swallow
  PLLS3 = 3;  m_PLLS3 = 8;  // PLL Swallow
  PLLM0 = 4;  m_PLLM0 = 16;  // PLL Mode
  PLLM1 = 5;  m_PLLM1 = 32;  // PLL Mode
  PLLM2 = 6;  m_PLLM2 = 64;  // PLL Mode
  PLLM3 = 7;  m_PLLM3 = 128;  // PLL Mode

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
  FETN4: byte absolute $109;  // Front-End RC Tuning 4bit Register
  FETN4set: TFETN4set absolute $109;
  FETN4rec: TFETN4rec absolute $109;
const
  CTN40 = 0;  m_CTN40 = 1;  // 4 bit Capacitor Tuning
  CTN41 = 1;  m_CTN41 = 2;  // 4 bit Capacitor Tuning
  CTN42 = 2;  m_CTN42 = 4;  // 4 bit Capacitor Tuning
  CTN43 = 3;  m_CTN43 = 8;  // 4 bit Capacitor Tuning
  RTN40 = 4;  m_RTN40 = 16;  // 4 bit Resistor Tuning
  RTN41 = 5;  m_RTN41 = 32;  // 4 bit Resistor Tuning
  RTN42 = 6;  m_RTN42 = 64;  // 4 bit Resistor Tuning
  RTN43 = 7;  m_RTN43 = 128;  // 4 bit Resistor Tuning

type
  TFECRset = bitpacked set of (e_LBNHB, e_S4N3, e_PLCKG=4, e_ANPS);
  TFECRrec = bitpacked record
    LBNHB,
    S4N3,
    ReservedBit2,
    ReservedBit3,
    PLCKG,
    ANPS,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FECR: byte absolute $10A;  // Front-End Control Register
  FECRset: TFECRset absolute $10A;
  FECRrec: TFECRrec absolute $10A;
const
  LBNHB = 0;  m_LBNHB = 1;  // Select Low-Band Not High-Band
  S4N3 = 1;  m_S4N3 = 2;  // Select 433 Not 315MHz Band
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
  FEVCO: byte absolute $10B;  // Front-End VCO and PLL control
  FEVCOset: TFEVCOset absolute $10B;
  FEVCOrec: TFEVCOrec absolute $10B;
const
  CPCC0 = 0;  m_CPCC0 = 1;  // Charge pump current control
  CPCC1 = 1;  m_CPCC1 = 2;  // Charge pump current control
  CPCC2 = 2;  m_CPCC2 = 4;  // Charge pump current control
  CPCC3 = 3;  m_CPCC3 = 8;  // Charge pump current control
  VCOB0 = 4;  m_VCOB0 = 16;  // VCO Bias
  VCOB1 = 5;  m_VCOB1 = 32;  // VCO Bias
  VCOB2 = 6;  m_VCOB2 = 64;  // VCO Bias
  VCOB3 = 7;  m_VCOB3 = 128;  // VCO Bias

type
  TFEALRset = bitpacked set of (e_RNGE0, e_RNGE1);
  TFEALRrec = bitpacked record
    RNGE0,
    RNGE1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FEALR: byte absolute $10C;  // Front-End Antenna Level Detector Range
  FEALRset: TFEALRset absolute $10C;
  FEALRrec: TFEALRrec absolute $10C;
const
  RNGE0 = 0;  m_RNGE0 = 1;  // Range of the ANT_TUNE level detector
  RNGE1 = 1;  m_RNGE1 = 2;  // Range of the ANT_TUNE level detector

type
  TFEANTset = bitpacked set of (e_LVLC0, e_LVLC1, e_LVLC2, e_LVLC3);
  TFEANTrec = bitpacked record
    LVLC0,
    LVLC1,
    LVLC2,
    LVLC3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FEANT: byte absolute $10D;  // Front-End Antenna
  FEANTset: TFEANTset absolute $10D;
  FEANTrec: TFEANTrec absolute $10D;
const
  LVLC0 = 0;  m_LVLC0 = 1;  // antenna signal LeVeL
  LVLC1 = 1;  m_LVLC1 = 2;  // antenna signal LeVeL
  LVLC2 = 2;  m_LVLC2 = 4;  // antenna signal LeVeL
  LVLC3 = 3;  m_LVLC3 = 8;  // antenna signal LeVeL

var
  FEBIA: byte absolute $10E;  // Reserved
  CLKOD: byte absolute $115;  // Clock output divider settings Register

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
  CLKOCR: byte absolute $116;  // Clock output control Register
  CLKOCRset: TCLKOCRset absolute $116;
  CLKOCRrec: TCLKOCRrec absolute $116;
const
  CLKOS0 = 0;  m_CLKOS0 = 1;  // Clock output source
  CLKOS1 = 1;  m_CLKOS1 = 2;  // Clock output source
  CLKOEN = 2;  m_CLKOEN = 4;  // Clock output driver enable

type
  TFETE1set = bitpacked set of (e_ADCT, e_XTOT, e_LNLT, e_LNHT, e_PATE, e_AMPT, e_VCOT);
  TFETE1rec = bitpacked record
    ADCT,
    XTOT,
    LNLT,
    LNHT,
    PATE,
    AMPT,
    VCOT,
    ReservedBit7: TBitField;
  end;
var
  FETE1: byte absolute $11C;  // Front-End Test Enable Register 1
  FETE1set: TFETE1set absolute $11C;
  FETE1rec: TFETE1rec absolute $11C;
const
  ADCT = 0;  m_ADCT = 1;
  XTOT = 1;  m_XTOT = 2;
  LNLT = 2;  m_LNLT = 4;
  LNHT = 3;  m_LNHT = 8;
  PATE = 4;  m_PATE = 16;
  AMPT = 5;  m_AMPT = 32;
  VCOT = 6;  m_VCOT = 64;

type
  TFETE2set = bitpacked set of (e_RCCT, e_PPFT, e_LFT, e_CPT, e_PFDT, e_DADCT, e_PRET, e_SWALT);
  TFETE2rec = bitpacked record
    RCCT,
    PPFT,
    LFT,
    CPT,
    PFDT,
    DADCT,
    PRET,
    SWALT: TBitField;
  end;
var
  FETE2: byte absolute $11D;  // Front-End Test Enable Register 2
  FETE2set: TFETE2set absolute $11D;
  FETE2rec: TFETE2rec absolute $11D;
const
  RCCT = 0;  m_RCCT = 1;
  PPFT = 1;  m_PPFT = 2;
  LFT = 2;  m_LFT = 4;
  CPT = 3;  m_CPT = 8;
  PFDT = 4;  m_PFDT = 16;
  DADCT = 5;  m_DADCT = 32;
  PRET = 6;  m_PRET = 64;
  SWALT = 7;  m_SWALT = 128;

type
  TFETE3set = bitpacked set of (e_BIOUT, e_RMPTST);
  TFETE3rec = bitpacked record
    BIOUT,
    RMPTST,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FETE3: byte absolute $11E;  // Front-End Test Enable Register 3
  FETE3set: TFETE3set absolute $11E;
  FETE3rec: TFETE3rec absolute $11E;
const
  BIOUT = 0;  m_BIOUT = 1;
  RMPTST = 1;  m_RMPTST = 2;

var
  FETD: byte absolute $11F;  // Front-End Test Data Register

type
  TTMFSMset = bitpacked set of (e_TMSSM0, e_TMSSM1, e_TMSSM2, e_TMSSM3, e_TMMSM0, e_TMMSM1, e_TMMSM2);
  TTMFSMrec = bitpacked record
    TMSSM0,
    TMSSM1,
    TMSSM2,
    TMSSM3,
    TMMSM0,
    TMMSM1,
    TMMSM2,
    ReservedBit7: TBitField;
  end;
var
  TMFSM: byte absolute $120;  // Tx Modulator Finite State Machine
  TMFSMset: TTMFSMset absolute $120;
  TMFSMrec: TTMFSMrec absolute $120;
const
  TMSSM0 = 0;  m_TMSSM0 = 1;  // Tx Modulator Sub State Machine
  TMSSM1 = 1;  m_TMSSM1 = 2;  // Tx Modulator Sub State Machine
  TMSSM2 = 2;  m_TMSSM2 = 4;  // Tx Modulator Sub State Machine
  TMSSM3 = 3;  m_TMSSM3 = 8;  // Tx Modulator Sub State Machine
  TMMSM0 = 4;  m_TMMSM0 = 16;  // Tx Modulator Master State Machine
  TMMSM1 = 5;  m_TMMSM1 = 32;  // Tx Modulator Master State Machine
  TMMSM2 = 6;  m_TMMSM2 = 64;  // Tx Modulator Master State Machine

var
  TMCRC: word absolute $121;  // Tx Modulator CRC Result
  TMCRCL: byte absolute $121;
  TMCRCH: byte absolute $122;
  TMCSB: byte absolute $123;  // Tx Modulator CRC Skip Bit Number
  TMCI: word absolute $124;  // Tx Modulator CRC Init Value
  TMCIL: byte absolute $124;
  TMCIH: byte absolute $125;
  TMCP: word absolute $126;  // Tx Modulator CRC Polynomial
  TMCPL: byte absolute $126;
  TMCPH: byte absolute $127;
  TMSHR: byte absolute $128;  // Tx Modulator Shift Register
  TMTLL: word absolute $129;  // Tx Modulator Telegram Length Register
  TMTLLL: byte absolute $129;
  TMTLLH: byte absolute $12A;

type
  TTMSSCset = bitpacked set of (e_TMSSP0, e_TMSSP1, e_TMSSP2, e_TMSSP3, e_TMSSL0, e_TMSSL1, e_TMSSL2, e_TMSSH);
  TTMSSCrec = bitpacked record
    TMSSP0,
    TMSSP1,
    TMSSP2,
    TMSSP3,
    TMSSL0,
    TMSSL1,
    TMSSL2,
    TMSSH: TBitField;
  end;
var
  TMSSC: byte absolute $12B;  // Tx Modulator Stop Sequence Configuration
  TMSSCset: TTMSSCset absolute $12B;
  TMSSCrec: TTMSSCrec absolute $12B;
const
  TMSSP0 = 0;  m_TMSSP0 = 1;  // Tx Modulator Stop Sequence Pattern
  TMSSP1 = 1;  m_TMSSP1 = 2;  // Tx Modulator Stop Sequence Pattern
  TMSSP2 = 2;  m_TMSSP2 = 4;  // Tx Modulator Stop Sequence Pattern
  TMSSP3 = 3;  m_TMSSP3 = 8;  // Tx Modulator Stop Sequence Pattern
  TMSSL0 = 4;  m_TMSSL0 = 16;  // Tx Modulator Stop Sequence Length
  TMSSL1 = 5;  m_TMSSL1 = 32;  // Tx Modulator Stop Sequence Length
  TMSSL2 = 6;  m_TMSSL2 = 64;  // Tx Modulator Stop Sequence Length
  TMSSH = 7;  m_TMSSH = 128;  // Tx Modulator Stop Sequence Hold Mode

type
  TTMSRset = bitpacked set of (e_TMTCF);
  TTMSRrec = bitpacked record
    TMTCF,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TMSR: byte absolute $12C;  // Tx Modulator Status Register
  TMSRset: TTMSRset absolute $12C;
  TMSRrec: TTMSRrec absolute $12C;
const
  TMTCF = 0;  m_TMTCF = 1;  // Tx Modulator Transmission Complete Status Flag

type
  TTMCR2set = bitpacked set of (e_TMCRCE, e_TMCRCSE0, e_TMCRCSE1, e_TMNRZE, e_TMPOL, e_TMSSE, e_TMLSB);
  TTMCR2rec = bitpacked record
    TMCRCE,
    TMCRCSE0,
    TMCRCSE1,
    TMNRZE,
    TMPOL,
    TMSSE,
    TMLSB,
    ReservedBit7: TBitField;
  end;
var
  TMCR2: byte absolute $12D;  // Tx Modulator Control Register 2
  TMCR2set: TTMCR2set absolute $12D;
  TMCR2rec: TTMCR2rec absolute $12D;
const
  TMCRCE = 0;  m_TMCRCE = 1;  // Tx Modulator CRC Enable
  TMCRCSE0 = 1;  m_TMCRCSE0 = 2;  // Tx Modulator CRC Select
  TMCRCSE1 = 2;  m_TMCRCSE1 = 4;  // Tx Modulator CRC Select
  TMNRZE = 3;  m_TMNRZE = 8;  // Tx Modulator NRZ Mode Enable
  TMPOL = 4;  m_TMPOL = 16;  // Tx Modulator Polarity
  TMSSE = 5;  m_TMSSE = 32;  // Tx Modulator Stop Sequence Enable
  TMLSB = 6;  m_TMLSB = 64;  // Tx Modulator Least Significant Bit First

type
  TTMCR1set = bitpacked set of (e_TMPIS0, e_TMPIS1, e_TMPIS2, e_TMSCS, e_TMCIM);
  TTMCR1rec = bitpacked record
    TMPIS0,
    TMPIS1,
    TMPIS2,
    TMSCS,
    TMCIM,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TMCR1: byte absolute $12E;  // Tx Modulator Control Register 1
  TMCR1set: TTMCR1set absolute $12E;
  TMCR1rec: TTMCR1rec absolute $12E;
const
  TMPIS0 = 0;  m_TMPIS0 = 1;  // Tx Modulator Port Interface Select
  TMPIS1 = 1;  m_TMPIS1 = 2;  // Tx Modulator Port Interface Select
  TMPIS2 = 2;  m_TMPIS2 = 4;  // Tx Modulator Port Interface Select
  TMSCS = 3;  m_TMSCS = 8;  // Tx Modulator Serial Output Clock Select
  TMCIM = 4;  m_TMCIM = 16;  // Tx Modulator Transmission Complete Interrupt Mask

type
  TLFDSR1set = bitpacked set of (e_LOTHA0, e_LOTHA1, e_HITHA0, e_HITHA1, e_CTTHA0, e_CTTHA1);
  TLFDSR1rec = bitpacked record
    LOTHA0,
    LOTHA1,
    HITHA0,
    HITHA1,
    CTTHA0,
    CTTHA1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFDSR1: byte absolute $130;  // LF Receiver Decoder Setting Register 1
  LFDSR1set: TLFDSR1set absolute $130;
  LFDSR1rec: TLFDSR1rec absolute $130;
const
  LOTHA0 = 0;  m_LOTHA0 = 1;  // Low Threshold A
  LOTHA1 = 1;  m_LOTHA1 = 2;  // Low Threshold A
  HITHA0 = 2;  m_HITHA0 = 4;  // High Threshold A
  HITHA1 = 3;  m_HITHA1 = 8;  // High Threshold A
  CTTHA0 = 4;  m_CTTHA0 = 16;  // Count Threshold A
  CTTHA1 = 5;  m_CTTHA1 = 32;  // Count Threshold A

type
  TLFDSR2set = bitpacked set of (e_LOTHB0, e_LOTHB1, e_HITHB0, e_HITHB1, e_CTTHB0, e_CTTHB1);
  TLFDSR2rec = bitpacked record
    LOTHB0,
    LOTHB1,
    HITHB0,
    HITHB1,
    CTTHB0,
    CTTHB1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFDSR2: byte absolute $131;  // LF Receiver Decoder Setting Register 2
  LFDSR2set: TLFDSR2set absolute $131;
  LFDSR2rec: TLFDSR2rec absolute $131;
const
  LOTHB0 = 0;  m_LOTHB0 = 1;  // Low Threshold B
  LOTHB1 = 1;  m_LOTHB1 = 2;  // Low Threshold B
  HITHB0 = 2;  m_HITHB0 = 4;  // High Threshold B
  HITHB1 = 3;  m_HITHB1 = 8;  // High Threshold B
  CTTHB0 = 4;  m_CTTHB0 = 16;  // Count Threshold B
  CTTHB1 = 5;  m_CTTHB1 = 32;  // Count Threshold B

type
  TLFDSR3set = bitpacked set of (e_PBDTH0, e_PBDTH1, e_QCTH0=3, e_QCTH1, e_QCTH2);
  TLFDSR3rec = bitpacked record
    PBDTH0,
    PBDTH1,
    ReservedBit2,
    QCTH0,
    QCTH1,
    QCTH2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFDSR3: byte absolute $132;  // LF Receiver Decoder Setting Register 3
  LFDSR3set: TLFDSR3set absolute $132;
  LFDSR3rec: TLFDSR3rec absolute $132;
const
  PBDTH0 = 0;  m_PBDTH0 = 1;  // Preburst Detection Threshold
  PBDTH1 = 1;  m_PBDTH1 = 2;  // Preburst Detection Threshold
  QCTH0 = 3;  m_QCTH0 = 8;  // Quality Check Threshold
  QCTH1 = 4;  m_QCTH1 = 16;  // Quality Check Threshold
  QCTH2 = 5;  m_QCTH2 = 32;  // Quality Check Threshold

type
  TLFDSR4set = bitpacked set of (e_SDTHA0, e_SDTHA1, e_SDTHA2, e_SCTHA0, e_SCTHA1, e_SCTHA2, e_SRSTC0, e_SRSTC1);
  TLFDSR4rec = bitpacked record
    SDTHA0,
    SDTHA1,
    SDTHA2,
    SCTHA0,
    SCTHA1,
    SCTHA2,
    SRSTC0,
    SRSTC1: TBitField;
  end;
var
  LFDSR4: byte absolute $133;  // LF Receiver Decoder Setting Register 4
  LFDSR4set: TLFDSR4set absolute $133;
  LFDSR4rec: TLFDSR4rec absolute $133;
const
  SDTHA0 = 0;  m_SDTHA0 = 1;  // Sync Detection Threshold A
  SDTHA1 = 1;  m_SDTHA1 = 2;  // Sync Detection Threshold A
  SDTHA2 = 2;  m_SDTHA2 = 4;  // Sync Detection Threshold A
  SCTHA0 = 3;  m_SCTHA0 = 8;  // Sync Count Threshold A
  SCTHA1 = 4;  m_SCTHA1 = 16;  // Sync Count Threshold A
  SCTHA2 = 5;  m_SCTHA2 = 32;  // Sync Count Threshold A
  SRSTC0 = 6;  m_SRSTC0 = 64;  // Sync Restart Control
  SRSTC1 = 7;  m_SRSTC1 = 128;  // Sync Restart Control

type
  TLFDSR5set = bitpacked set of (e_SDTHB0, e_SDTHB1, e_SDTHB2, e_SCTHB0, e_SCTHB1, e_SCTHB2, e_SSUTA, e_SSUTB);
  TLFDSR5rec = bitpacked record
    SDTHB0,
    SDTHB1,
    SDTHB2,
    SCTHB0,
    SCTHB1,
    SCTHB2,
    SSUTA,
    SSUTB: TBitField;
  end;
var
  LFDSR5: byte absolute $134;  // LF Decoder Setting 5 Register
  LFDSR5set: TLFDSR5set absolute $134;
  LFDSR5rec: TLFDSR5rec absolute $134;
const
  SDTHB0 = 0;  m_SDTHB0 = 1;  // Sync Detection Threshold B
  SDTHB1 = 1;  m_SDTHB1 = 2;  // Sync Detection Threshold B
  SDTHB2 = 2;  m_SDTHB2 = 4;  // Sync Detection Threshold B
  SCTHB0 = 3;  m_SCTHB0 = 8;  // Sync Count Threshold B
  SCTHB1 = 4;  m_SCTHB1 = 16;  // Sync Count Threshold B
  SCTHB2 = 5;  m_SCTHB2 = 32;  // Sync Count Threshold B
  SSUTA = 6;  m_SSUTA = 64;  // Snyc Start-Up Time A
  SSUTB = 7;  m_SSUTB = 128;  // Snyc Start-Up Time B

type
  TLFDSR6set = bitpacked set of (e_TODU0, e_TODU1, e_TODU2, e_TODS0, e_TODS1, e_TODS2);
  TLFDSR6rec = bitpacked record
    TODU0,
    TODU1,
    TODU2,
    TODS0,
    TODS1,
    TODS2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFDSR6: byte absolute $135;  // LF Decoder Setting 6 Register
  LFDSR6set: TLFDSR6set absolute $135;
  LFDSR6rec: TLFDSR6rec absolute $135;
const
  TODU0 = 0;  m_TODU0 = 1;  // Time Out Decode Unit
  TODU1 = 1;  m_TODU1 = 2;  // Time Out Decode Unit
  TODU2 = 2;  m_TODU2 = 4;  // Time Out Decode Unit
  TODS0 = 3;  m_TODS0 = 8;  // Time Out Timer Delta Sync detect
  TODS1 = 4;  m_TODS1 = 16;  // Time Out Timer Delta Sync detect
  TODS2 = 5;  m_TODS2 = 32;  // Time Out Timer Delta Sync detect

type
  TLFDSR7set = bitpacked set of (e_PBSP0, e_PBSP1, e_PBG0, e_PBG1, e_MDSP0, e_MDSP1, e_MDG0, e_MDG1);
  TLFDSR7rec = bitpacked record
    PBSP0,
    PBSP1,
    PBG0,
    PBG1,
    MDSP0,
    MDSP1,
    MDG0,
    MDG1: TBitField;
  end;
var
  LFDSR7: byte absolute $136;  // LF Decoder Setting 7 Register
  LFDSR7set: TLFDSR7set absolute $136;
  LFDSR7rec: TLFDSR7rec absolute $136;
const
  PBSP0 = 0;  m_PBSP0 = 1;  // FLL Preburst Speed
  PBSP1 = 1;  m_PBSP1 = 2;  // FLL Preburst Speed
  PBG0 = 2;  m_PBG0 = 4;  // FLL Preburst Gain
  PBG1 = 3;  m_PBG1 = 8;  // FLL Preburst Gain
  MDSP0 = 4;  m_MDSP0 = 16;  // FLL Manchester Detector Speed
  MDSP1 = 5;  m_MDSP1 = 32;  // FLL Manchester Detector Speed
  MDG0 = 6;  m_MDG0 = 64;  // FLL Manchester Detector Gain
  MDG1 = 7;  m_MDG1 = 128;  // FLL Manchester Detector Gain

type
  TLFDSR8set = bitpacked set of (e_CLD0, e_CLD1, e_CLD2, e_LGFE, e_ASWTH0, e_ASWTH1, e_ASWTH2);
  TLFDSR8rec = bitpacked record
    CLD0,
    CLD1,
    CLD2,
    LGFE,
    ASWTH0,
    ASWTH1,
    ASWTH2,
    ReservedBit7: TBitField;
  end;
var
  LFDSR8: byte absolute $137;  // LF Decoder Setting 8 Register
  LFDSR8set: TLFDSR8set absolute $137;
  LFDSR8rec: TLFDSR8rec absolute $137;
const
  CLD0 = 0;  m_CLD0 = 1;  // Counter Limit Delta
  CLD1 = 1;  m_CLD1 = 2;  // Counter Limit Delta
  CLD2 = 2;  m_CLD2 = 4;  // Counter Limit Delta
  LGFE = 3;  m_LGFE = 8;  // Loop Gain Fading Enable
  ASWTH0 = 4;  m_ASWTH0 = 16;  // Adaptive Switch Threshold
  ASWTH1 = 5;  m_ASWTH1 = 32;  // Adaptive Switch Threshold
  ASWTH2 = 6;  m_ASWTH2 = 64;  // Adaptive Switch Threshold

type
  TLFDSR9set = bitpacked set of (e_STW0, e_STW1, e_STW2, e_STW3, e_STW4);
  TLFDSR9rec = bitpacked record
    STW0,
    STW1,
    STW2,
    STW3,
    STW4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFDSR9: byte absolute $138;  // LF Decoder Setting 9 Register
  LFDSR9set: TLFDSR9set absolute $138;
  LFDSR9rec: TLFDSR9rec absolute $138;
const
  STW0 = 0;  m_STW0 = 1;  // Step Width
  STW1 = 1;  m_STW1 = 2;  // Step Width
  STW2 = 2;  m_STW2 = 4;  // Step Width
  STW3 = 3;  m_STW3 = 8;  // Step Width
  STW4 = 4;  m_STW4 = 16;  // Step Width

type
  TLFDSR10set = bitpacked set of (e_FCL0, e_FCL1, e_FCL2, e_FCL3, e_FCL4, e_FCL5, e_STBTH0, e_STBTH1);
  TLFDSR10rec = bitpacked record
    FCL0,
    FCL1,
    FCL2,
    FCL3,
    FCL4,
    FCL5,
    STBTH0,
    STBTH1: TBitField;
  end;
var
  LFDSR10: byte absolute $139;  // LF Decoder Setting 10 Register
  LFDSR10set: TLFDSR10set absolute $139;
  LFDSR10rec: TLFDSR10rec absolute $139;
const
  FCL0 = 0;  m_FCL0 = 1;  // Frequency Control Limit
  FCL1 = 1;  m_FCL1 = 2;  // Frequency Control Limit
  FCL2 = 2;  m_FCL2 = 4;  // Frequency Control Limit
  FCL3 = 3;  m_FCL3 = 8;  // Frequency Control Limit
  FCL4 = 4;  m_FCL4 = 16;  // Frequency Control Limit
  FCL5 = 5;  m_FCL5 = 32;  // Frequency Control Limit
  STBTH0 = 6;  m_STBTH0 = 64;  // Stop Bit Correlator Threshold
  STBTH1 = 7;  m_STBTH1 = 128;  // Stop Bit Correlator Threshold

type
  TLFDSR11set = bitpacked set of (e_TINITA0, e_TINITA1, e_TINITA2, e_TINITA3, e_TINITB0, e_TINITB1, e_TINITB2, e_TINITB3);
  TLFDSR11rec = bitpacked record
    TINITA0,
    TINITA1,
    TINITA2,
    TINITA3,
    TINITB0,
    TINITB1,
    TINITB2,
    TINITB3: TBitField;
  end;
var
  LFDSR11: byte absolute $13A;  // Low Frequency Decoder Setting Register 11
  LFDSR11set: TLFDSR11set absolute $13A;
  LFDSR11rec: TLFDSR11rec absolute $13A;
const
  TINITA0 = 0;  m_TINITA0 = 1;  // Time Init A
  TINITA1 = 1;  m_TINITA1 = 2;  // Time Init A
  TINITA2 = 2;  m_TINITA2 = 4;  // Time Init A
  TINITA3 = 3;  m_TINITA3 = 8;  // Time Init A
  TINITB0 = 4;  m_TINITB0 = 16;  // Time Init B
  TINITB1 = 5;  m_TINITB1 = 32;  // Time Init B
  TINITB2 = 6;  m_TINITB2 = 64;  // Time Init B
  TINITB3 = 7;  m_TINITB3 = 128;  // Time Init B

type
  TEEPR1set = bitpacked set of (e_EEPS4WD, e_EEPS4RD, e_EEPS5WD, e_EEPS5RD, e_EEPS6WD, e_EEPS6RD, e_EEPS7WD, e_EEPS7RD);
  TEEPR1rec = bitpacked record
    EEPS4WD,
    EEPS4RD,
    EEPS5WD,
    EEPS5RD,
    EEPS6WD,
    EEPS6RD,
    EEPS7WD,
    EEPS7RD: TBitField;
  end;
var
  EEPR1: byte absolute $13B;  // EEPROM Protection Register 1
  EEPR1set: TEEPR1set absolute $13B;
  EEPR1rec: TEEPR1rec absolute $13B;
const
  EEPS4WD = 0;  m_EEPS4WD = 1;  // EEPROM Protection Section 4 Write Disable
  EEPS4RD = 1;  m_EEPS4RD = 2;  // EEPROM Protection Section 4 Read Disable
  EEPS5WD = 2;  m_EEPS5WD = 4;  // EEPROM Protection Section 5 Write Disable
  EEPS5RD = 3;  m_EEPS5RD = 8;  // EEPROM Protection Section 5 Read Disable
  EEPS6WD = 4;  m_EEPS6WD = 16;  // EEPROM Protection Section 6 Write Disable
  EEPS6RD = 5;  m_EEPS6RD = 32;  // EEPROM Protection Section 6 Read Disable
  EEPS7WD = 6;  m_EEPS7WD = 64;  // EEPROM Protection Section 7 Write Disable
  EEPS7RD = 7;  m_EEPS7RD = 128;  // EEPROM Protection Section 7 Read Disable

type
  TEEPR2set = bitpacked set of (e_EEPS8WD, e_EEPS8RD, e_EEPS9WD, e_EEPS9RD, e_EEPS10WD, e_EEPS10RD, e_EEPS11WD, e_EEPS11RD);
  TEEPR2rec = bitpacked record
    EEPS8WD,
    EEPS8RD,
    EEPS9WD,
    EEPS9RD,
    EEPS10WD,
    EEPS10RD,
    EEPS11WD,
    EEPS11RD: TBitField;
  end;
var
  EEPR2: byte absolute $13C;  // EEPROM Protection Register 2
  EEPR2set: TEEPR2set absolute $13C;
  EEPR2rec: TEEPR2rec absolute $13C;
const
  EEPS8WD = 0;  m_EEPS8WD = 1;  // EEPROM Protection Section 8 Write Disable
  EEPS8RD = 1;  m_EEPS8RD = 2;  // EEPROM Protection Section 8 Read Disable
  EEPS9WD = 2;  m_EEPS9WD = 4;  // EEPROM Protection Section 9 Write Disable
  EEPS9RD = 3;  m_EEPS9RD = 8;  // EEPROM Protection Section 9 Read Disable
  EEPS10WD = 4;  m_EEPS10WD = 16;  // EEPROM Protection Section 10 Write Disableble
  EEPS10RD = 5;  m_EEPS10RD = 32;  // EEPROM Protection Section 10 Read Disable
  EEPS11WD = 6;  m_EEPS11WD = 64;  // EEPROM Protection Section 11 Write Disable
  EEPS11RD = 7;  m_EEPS11RD = 128;  // EEPROM Protection Section 11 Read Disable

type
  TEEPR3set = bitpacked set of (e_EEPS12WD, e_EEPS12RD);
  TEEPR3rec = bitpacked record
    EEPS12WD,
    EEPS12RD,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EEPR3: byte absolute $13D;  // EEPROM Protection Register 3
  EEPR3set: TEEPR3set absolute $13D;
  EEPR3rec: TEEPR3rec absolute $13D;
const
  EEPS12WD = 0;  m_EEPS12WD = 1;  // EEPROM Protection Section 12 Write Disable
  EEPS12RD = 1;  m_EEPS12RD = 2;  // EEPROM Protection Section 12 Read Disable

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
  CRCCR: byte absolute $145;  // CRC Control Register
  CRCCRset: TCRCCRset absolute $145;
  CRCCRrec: TCRCCRrec absolute $145;
const
  CRCRS = 0;  m_CRCRS = 1;  // CRC Data Register Reset
  REFLI = 1;  m_REFLI = 2;  // Reflect Data Input Byte
  REFLO = 2;  m_REFLO = 4;  // Reflect Data Output Byte

var
  CRCDOR: byte absolute $146;  // CRC Data Output Register

type
  TLFSRCTMset = bitpacked set of (e_LFSRCT1, e_LFSRCT2, e_LFSRCT3, e_LFSRCT4, e_LFSRCT5, e_LFSRCT6, e_LFSRCT7, e_LFSRCT8);
  TLFSRCTMrec = bitpacked record
    LFSRCT1,
    LFSRCT2,
    LFSRCT3,
    LFSRCT4,
    LFSRCT5,
    LFSRCT6,
    LFSRCT7,
    LFSRCT8: TBitField;
  end;
var
  LFSRCTM: byte absolute $151;  // LF Receiver SRC Tuning MSB
  LFSRCTMset: TLFSRCTMset absolute $151;
  LFSRCTMrec: TLFSRCTMrec absolute $151;
const
  LFSRCT1 = 0;  m_LFSRCT1 = 1;  // LF Receiver SRC Tuning Tuning value
  LFSRCT2 = 1;  m_LFSRCT2 = 2;  // LF Receiver SRC Tuning Tuning value
  LFSRCT3 = 2;  m_LFSRCT3 = 4;  // LF Receiver SRC Tuning Tuning value
  LFSRCT4 = 3;  m_LFSRCT4 = 8;  // LF Receiver SRC Tuning Tuning value
  LFSRCT5 = 4;  m_LFSRCT5 = 16;  // LF Receiver SRC Tuning Tuning value
  LFSRCT6 = 5;  m_LFSRCT6 = 32;  // LF Receiver SRC Tuning Tuning value
  LFSRCT7 = 6;  m_LFSRCT7 = 64;  // LF Receiver SRC Tuning Tuning value
  LFSRCT8 = 7;  m_LFSRCT8 = 128;  // LF Receiver SRC Tuning Tuning value

type
  TDBCRset = bitpacked set of (e_DBMD, e_DBCS, e_DBTMS, e_DBHA);
  TDBCRrec = bitpacked record
    DBMD,
    DBCS,
    DBTMS,
    DBHA,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DBCR: byte absolute $152;  // DeBounce Control Register
  DBCRset: TDBCRset absolute $152;
  DBCRrec: TDBCRrec absolute $152;
const
  DBMD = 0;  m_DBMD = 1;  // Debounce Mode
  DBCS = 1;  m_DBCS = 2;  // Debounce Clock Select
  DBTMS = 2;  m_DBTMS = 4;  // Debounce Timer Mask Select
  DBHA = 3;  m_DBHA = 8;  // Debounce Handshake Active

var
  DBTC: byte absolute $153;  // Debounce Timer Compare Register
  DBENB: byte absolute $154;  // DeBounce Enable Port B
  DBENC: byte absolute $155;  // DeBounce Enable Port C

type
  TDBGSWset = bitpacked set of (e_DBGGS0, e_DBGGS1, e_DBGGS2, e_DBGGS3, e_CPBFOS0, e_CPBFOS1, e_CPBF, e_ATEST);
  TDBGSWrec = bitpacked record
    DBGGS0,
    DBGGS1,
    DBGGS2,
    DBGGS3,
    CPBFOS0,
    CPBFOS1,
    CPBF,
    ATEST: TBitField;
  end;
var
  DBGSW: byte absolute $156;  // Debugging Support Switch
  DBGSWset: TDBGSWset absolute $156;
  DBGSWrec: TDBGSWrec absolute $156;
const
  DBGGS0 = 0;  m_DBGGS0 = 1;  // Debugging Support Group Select
  DBGGS1 = 1;  m_DBGGS1 = 2;  // Debugging Support Group Select
  DBGGS2 = 2;  m_DBGGS2 = 4;  // Debugging Support Group Select
  DBGGS3 = 3;  m_DBGGS3 = 8;  // Debugging Support Group Select
  CPBFOS0 = 4;  m_CPBFOS0 = 16;  // CPU Busy Flag Output Select
  CPBFOS1 = 5;  m_CPBFOS1 = 32;  // CPU Busy Flag Output Select
  CPBF = 6;  m_CPBF = 64;  // CPU Busy Flag
  ATEST = 7;  m_ATEST = 128;  // Analog Test Pins Enable

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
  SFFR: byte absolute $157;  // SPI FIFO Fill Status Register
  SFFRset: TSFFRset absolute $157;
  SFFRrec: TSFFRrec absolute $157;
const
  RFL0 = 0;  m_RFL0 = 1;  // Receive Buffer Fill Level
  RFL1 = 1;  m_RFL1 = 2;  // Receive Buffer Fill Level
  RFL2 = 2;  m_RFL2 = 4;  // Receive Buffer Fill Level
  RFC = 3;  m_RFC = 8;  // Rx Buffer Clear
  TFL0 = 4;  m_TFL0 = 16;  // Transmit Buffer Fill Level
  TFL1 = 5;  m_TFL1 = 32;  // Transmit Buffer Fill Level
  TFL2 = 6;  m_TFL2 = 64;  // Transmit Buffer Fill Level
  TFC = 7;  m_TFC = 128;  // SPI Tx Buffer Clear

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
  SFIR: byte absolute $158;  // SPI FIFO Interrupt Register
  SFIRset: TSFIRset absolute $158;
  SFIRrec: TSFIRrec absolute $158;
const
  RIL0 = 0;  m_RIL0 = 1;  // Receive Buffer Interrupt Level
  RIL1 = 1;  m_RIL1 = 2;  // Receive Buffer Interrupt Level
  RIL2 = 2;  m_RIL2 = 4;  // Receive Buffer Interrupt Level
  SRIE = 3;  m_SRIE = 8;  // Rx Buffer Interrupt Enable
  TIL0 = 4;  m_TIL0 = 16;  // Transmit Buffer Interrupt Level
  TIL1 = 5;  m_TIL1 = 32;  // Transmit Buffer Interrupt Level
  TIL2 = 6;  m_TIL2 = 64;  // Transmit Buffer Interrupt Level
  STIE = 7;  m_STIE = 128;  // SPI Rx Buffer Interrupt Enable

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
  T2IFR: byte absolute $159;  // Timer2 Interrupt Flag Register
  T2IFRset: TT2IFRset absolute $159;
  T2IFRrec: TT2IFRrec absolute $159;
const
  T2OFF = 0;  m_T2OFF = 1;  // Timer2 Overflow Flag
  T2COF = 1;  m_T2COF = 2;  // Timer2 Compare Flag

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
  PGMST: byte absolute $15A;  // Program Memory Status Register
  PGMSTset: TPGMSTset absolute $15A;
  PGMSTrec: TPGMSTrec absolute $15A;
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
  EEST: byte absolute $15B;  // EEPROM Status Register
  EESTset: TEESTset absolute $15B;
  EESTrec: TEESTrec absolute $15B;
const
  EESYN0 = 0;  m_EESYN0 = 1;  // EEPROM Syndrome
  EESYN1 = 1;  m_EESYN1 = 2;  // EEPROM Syndrome
  EESYN2 = 2;  m_EESYN2 = 4;  // EEPROM Syndrome
  EESYN3 = 3;  m_EESYN3 = 8;  // EEPROM Syndrome

type
  TLFSRCTLset = bitpacked set of (e_LFSRCT0);
  TLFSRCTLrec = bitpacked record
    LFSRCT0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFSRCTL: byte absolute $15C;  // LF Receiver SRC Tuning LSB
  LFSRCTLset: TLFSRCTLset absolute $15C;
  LFSRCTLrec: TLFSRCTLrec absolute $15C;
const
  LFSRCT0 = 0;  m_LFSRCT0 = 1;  // LF Receiver SRC Tuning Tuning value

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
  PCIFR: byte absolute $161;  // Pin change Interrupt flag Register
  PCIFRset: TPCIFRset absolute $161;
  PCIFRrec: TPCIFRrec absolute $161;
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
  T0CR: byte absolute $162;  // Timer0 Control Register
  T0CRset: TT0CRset absolute $162;
  T0CRrec: TT0CRrec absolute $162;
const
  T0PS0 = 0;  m_T0PS0 = 1;  // Timer0 Prescaler Select
  T0PS1 = 1;  m_T0PS1 = 2;  // Timer0 Prescaler Select
  T0PS2 = 2;  m_T0PS2 = 4;  // Timer0 Prescaler Select
  T0IE = 3;  m_T0IE = 8;  // Timer0 Interrupt Enable
  T0PR = 4;  m_T0PR = 16;  // Timer0 Prescaler Reset

var
  DBEND: byte absolute $164;  // DeBounce Enable Port D

type
  TTPCR1set = bitpacked set of (e_TPQPLM=2, e_TPBR=4, e_TPDFCP0, e_TPDFCP1, e_TPMODE);
  TTPCR1rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    TPQPLM,
    ReservedBit3,
    TPBR,
    TPDFCP0,
    TPDFCP1,
    TPMODE: TBitField;
  end;
var
  TPCR1: byte absolute $165;  // Transponder Control Register 1
  TPCR1set: TTPCR1set absolute $165;
  TPCR1rec: TTPCR1rec absolute $165;
const
  TPQPLM = 2;  m_TPQPLM = 4;  // Transponder Quadrature Pulse Length Operation Modulation
  TPBR = 4;  m_TPBR = 16;  // Transponder Bit Rate
  TPDFCP0 = 5;  m_TPDFCP0 = 32;  // Transponder Decoder Field Clock Prescaler value
  TPDFCP1 = 6;  m_TPDFCP1 = 64;  // Transponder Decoder Field Clock Prescaler value
  TPMODE = 7;  m_TPMODE = 128;  // Transponder Mode

type
  TTPIMRset = bitpacked set of (e_TPIM, e_TPFTIM, e_TPNFTIM, e_TPBERIM);
  TTPIMRrec = bitpacked record
    TPIM,
    TPFTIM,
    TPNFTIM,
    TPBERIM,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPIMR: byte absolute $166;  // Transponder Interrupt Mask Register
  TPIMRset: TTPIMRset absolute $166;
  TPIMRrec: TTPIMRrec absolute $166;
const
  TPIM = 0;  m_TPIM = 1;  // Transponder Interrupt Mask
  TPFTIM = 1;  m_TPFTIM = 2;  // Transponder Field Timeout Interrupt Mask
  TPNFTIM = 2;  m_TPNFTIM = 4;  // Transponder No Field Timeout Interrupt Mask
  TPBERIM = 3;  m_TPBERIM = 8;  // Transponder Bit Error Interrupt Mask

type
  TTPDCR1set = bitpacked set of (e_TPDCL10, e_TPDCL11, e_TPDCL12, e_TPDCL13, e_TPDCL14, e_TPDCL15);
  TTPDCR1rec = bitpacked record
    TPDCL10,
    TPDCL11,
    TPDCL12,
    TPDCL13,
    TPDCL14,
    TPDCL15,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPDCR1: byte absolute $167;  // Transponder Decoder Comparator Register 1
  TPDCR1set: TTPDCR1set absolute $167;
  TPDCR1rec: TTPDCR1rec absolute $167;
const
  TPDCL10 = 0;  m_TPDCL10 = 1;  // Transponder Decode Comparator Length value 1
  TPDCL11 = 1;  m_TPDCL11 = 2;  // Transponder Decode Comparator Length value 1
  TPDCL12 = 2;  m_TPDCL12 = 4;  // Transponder Decode Comparator Length value 1
  TPDCL13 = 3;  m_TPDCL13 = 8;  // Transponder Decode Comparator Length value 1
  TPDCL14 = 4;  m_TPDCL14 = 16;  // Transponder Decode Comparator Length value 1
  TPDCL15 = 5;  m_TPDCL15 = 32;  // Transponder Decode Comparator Length value 1

type
  TTPDCR2set = bitpacked set of (e_TPDCL20, e_TPDCL21, e_TPDCL22, e_TPDCL23, e_TPDCL24, e_TPDCL25);
  TTPDCR2rec = bitpacked record
    TPDCL20,
    TPDCL21,
    TPDCL22,
    TPDCL23,
    TPDCL24,
    TPDCL25,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPDCR2: byte absolute $168;  // Transponder Decoder Comparator Register 2
  TPDCR2set: TTPDCR2set absolute $168;
  TPDCR2rec: TTPDCR2rec absolute $168;
const
  TPDCL20 = 0;  m_TPDCL20 = 1;  // Transponder Decode Comparator Length value 2
  TPDCL21 = 1;  m_TPDCL21 = 2;  // Transponder Decode Comparator Length value 2
  TPDCL22 = 2;  m_TPDCL22 = 4;  // Transponder Decode Comparator Length value 2
  TPDCL23 = 3;  m_TPDCL23 = 8;  // Transponder Decode Comparator Length value 2
  TPDCL24 = 4;  m_TPDCL24 = 16;  // Transponder Decode Comparator Length value 2
  TPDCL25 = 5;  m_TPDCL25 = 32;  // Transponder Decode Comparator Length value 2

type
  TTPDCR3set = bitpacked set of (e_TPDCL30, e_TPDCL31, e_TPDCL32, e_TPDCL33, e_TPDCL34, e_TPDCL35);
  TTPDCR3rec = bitpacked record
    TPDCL30,
    TPDCL31,
    TPDCL32,
    TPDCL33,
    TPDCL34,
    TPDCL35,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPDCR3: byte absolute $169;  // Transponder Decoder Comparator Register 3
  TPDCR3set: TTPDCR3set absolute $169;
  TPDCR3rec: TTPDCR3rec absolute $169;
const
  TPDCL30 = 0;  m_TPDCL30 = 1;  // Transponder Decode Comparator Length value 3
  TPDCL31 = 1;  m_TPDCL31 = 2;  // Transponder Decode Comparator Length value 3
  TPDCL32 = 2;  m_TPDCL32 = 4;  // Transponder Decode Comparator Length value 3
  TPDCL33 = 3;  m_TPDCL33 = 8;  // Transponder Decode Comparator Length value 3
  TPDCL34 = 4;  m_TPDCL34 = 16;  // Transponder Decode Comparator Length value 3
  TPDCL35 = 5;  m_TPDCL35 = 32;  // Transponder Decode Comparator Length value 3

type
  TTPDCR4set = bitpacked set of (e_TPDCL40, e_TPDCL41, e_TPDCL42, e_TPDCL43, e_TPDCL44, e_TPDCL45);
  TTPDCR4rec = bitpacked record
    TPDCL40,
    TPDCL41,
    TPDCL42,
    TPDCL43,
    TPDCL44,
    TPDCL45,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPDCR4: byte absolute $16A;  // Transponder Decoder Comparator Register 4
  TPDCR4set: TTPDCR4set absolute $16A;
  TPDCR4rec: TTPDCR4rec absolute $16A;
const
  TPDCL40 = 0;  m_TPDCL40 = 1;  // Transponder Decode Comparator Length value 4
  TPDCL41 = 1;  m_TPDCL41 = 2;  // Transponder Decode Comparator Length value 4
  TPDCL42 = 2;  m_TPDCL42 = 4;  // Transponder Decode Comparator Length value 4
  TPDCL43 = 3;  m_TPDCL43 = 8;  // Transponder Decode Comparator Length value 4
  TPDCL44 = 4;  m_TPDCL44 = 16;  // Transponder Decode Comparator Length value 4
  TPDCL45 = 5;  m_TPDCL45 = 32;  // Transponder Decode Comparator Length value 4

type
  TTPDCR5set = bitpacked set of (e_TPDCL50, e_TPDCL51, e_TPDCL52, e_TPDCL53, e_TPDCL54, e_TPDCL55);
  TTPDCR5rec = bitpacked record
    TPDCL50,
    TPDCL51,
    TPDCL52,
    TPDCL53,
    TPDCL54,
    TPDCL55,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPDCR5: byte absolute $16B;  // Transponder Decoder Comparator Register 5
  TPDCR5set: TTPDCR5set absolute $16B;
  TPDCR5rec: TTPDCR5rec absolute $16B;
const
  TPDCL50 = 0;  m_TPDCL50 = 1;  // Transponder Decode Comparator Length value 5
  TPDCL51 = 1;  m_TPDCL51 = 2;  // Transponder Decode Comparator Length value 5
  TPDCL52 = 2;  m_TPDCL52 = 4;  // Transponder Decode Comparator Length value 5
  TPDCL53 = 3;  m_TPDCL53 = 8;  // Transponder Decode Comparator Length value 5
  TPDCL54 = 4;  m_TPDCL54 = 16;  // Transponder Decode Comparator Length value 5
  TPDCL55 = 5;  m_TPDCL55 = 32;  // Transponder Decode Comparator Length value 5

type
  TTPECR1set = bitpacked set of (e_TPECL10, e_TPECL11, e_TPECL12, e_TPECL13, e_TPECL14, e_TPECL15, e_TPECL16, e_TPECL17);
  TTPECR1rec = bitpacked record
    TPECL10,
    TPECL11,
    TPECL12,
    TPECL13,
    TPECL14,
    TPECL15,
    TPECL16,
    TPECL17: TBitField;
  end;
var
  TPECR1: byte absolute $16C;  // Transponder Encoder Comparator Register 1
  TPECR1set: TTPECR1set absolute $16C;
  TPECR1rec: TTPECR1rec absolute $16C;
const
  TPECL10 = 0;  m_TPECL10 = 1;  // Transponder Encode Comparator Length value 1
  TPECL11 = 1;  m_TPECL11 = 2;  // Transponder Encode Comparator Length value 1
  TPECL12 = 2;  m_TPECL12 = 4;  // Transponder Encode Comparator Length value 1
  TPECL13 = 3;  m_TPECL13 = 8;  // Transponder Encode Comparator Length value 1
  TPECL14 = 4;  m_TPECL14 = 16;  // Transponder Encode Comparator Length value 1
  TPECL15 = 5;  m_TPECL15 = 32;  // Transponder Encode Comparator Length value 1
  TPECL16 = 6;  m_TPECL16 = 64;  // Transponder Encode Comparator Length value 1
  TPECL17 = 7;  m_TPECL17 = 128;  // Transponder Encode Comparator Length value 1

type
  TTPECR2set = bitpacked set of (e_TPECL20, e_TPECL21, e_TPECL22, e_TPECL23, e_TPECL24, e_TPECL25, e_TPECL26, e_TPECL27);
  TTPECR2rec = bitpacked record
    TPECL20,
    TPECL21,
    TPECL22,
    TPECL23,
    TPECL24,
    TPECL25,
    TPECL26,
    TPECL27: TBitField;
  end;
var
  TPECR2: byte absolute $16D;  // Transponder Encoder Comparator Register 2
  TPECR2set: TTPECR2set absolute $16D;
  TPECR2rec: TTPECR2rec absolute $16D;
const
  TPECL20 = 0;  m_TPECL20 = 1;  // Transponder Encode Comparator Length value 2
  TPECL21 = 1;  m_TPECL21 = 2;  // Transponder Encode Comparator Length value 2
  TPECL22 = 2;  m_TPECL22 = 4;  // Transponder Encode Comparator Length value 2
  TPECL23 = 3;  m_TPECL23 = 8;  // Transponder Encode Comparator Length value 2
  TPECL24 = 4;  m_TPECL24 = 16;  // Transponder Encode Comparator Length value 2
  TPECL25 = 5;  m_TPECL25 = 32;  // Transponder Encode Comparator Length value 2
  TPECL26 = 6;  m_TPECL26 = 64;  // Transponder Encode Comparator Length value 2
  TPECL27 = 7;  m_TPECL27 = 128;  // Transponder Encode Comparator Length value 2

type
  TTPECR3set = bitpacked set of (e_TPECL30, e_TPECL31, e_TPECL32, e_TPECL33, e_TPECL34, e_TPECL35, e_TPECL36, e_TPECL37);
  TTPECR3rec = bitpacked record
    TPECL30,
    TPECL31,
    TPECL32,
    TPECL33,
    TPECL34,
    TPECL35,
    TPECL36,
    TPECL37: TBitField;
  end;
var
  TPECR3: byte absolute $16E;  // Transponder Encoder Comparator Register 3
  TPECR3set: TTPECR3set absolute $16E;
  TPECR3rec: TTPECR3rec absolute $16E;
const
  TPECL30 = 0;  m_TPECL30 = 1;  // Transponder Encode Comparator Length value 3
  TPECL31 = 1;  m_TPECL31 = 2;  // Transponder Encode Comparator Length value 3
  TPECL32 = 2;  m_TPECL32 = 4;  // Transponder Encode Comparator Length value 3
  TPECL33 = 3;  m_TPECL33 = 8;  // Transponder Encode Comparator Length value 3
  TPECL34 = 4;  m_TPECL34 = 16;  // Transponder Encode Comparator Length value 3
  TPECL35 = 5;  m_TPECL35 = 32;  // Transponder Encode Comparator Length value 3
  TPECL36 = 6;  m_TPECL36 = 64;  // Transponder Encode Comparator Length value 3
  TPECL37 = 7;  m_TPECL37 = 128;  // Transponder Encode Comparator Length value 3

type
  TTPECR4set = bitpacked set of (e_TPECL40, e_TPECL41, e_TPECL42, e_TPECL43, e_TPECL44, e_TPECL45, e_TPECL46, e_TPECL47);
  TTPECR4rec = bitpacked record
    TPECL40,
    TPECL41,
    TPECL42,
    TPECL43,
    TPECL44,
    TPECL45,
    TPECL46,
    TPECL47: TBitField;
  end;
var
  TPECR4: byte absolute $16F;  // Transponder Encoder Comparator Register 4
  TPECR4set: TTPECR4set absolute $16F;
  TPECR4rec: TTPECR4rec absolute $16F;
const
  TPECL40 = 0;  m_TPECL40 = 1;  // Transponder Encode Comparator Length value 4
  TPECL41 = 1;  m_TPECL41 = 2;  // Transponder Encode Comparator Length value 4
  TPECL42 = 2;  m_TPECL42 = 4;  // Transponder Encode Comparator Length value 4
  TPECL43 = 3;  m_TPECL43 = 8;  // Transponder Encode Comparator Length value 4
  TPECL44 = 4;  m_TPECL44 = 16;  // Transponder Encode Comparator Length value 4
  TPECL45 = 5;  m_TPECL45 = 32;  // Transponder Encode Comparator Length value 4
  TPECL46 = 6;  m_TPECL46 = 64;  // Transponder Encode Comparator Length value 4
  TPECL47 = 7;  m_TPECL47 = 128;  // Transponder Encode Comparator Length value 4

type
  TTPECMRset = bitpacked set of (e_TPECM10, e_TPECM11, e_TPECM20, e_TPECM21, e_TPECM30, e_TPECM31, e_TPECM40, e_TPECM41);
  TTPECMRrec = bitpacked record
    TPECM10,
    TPECM11,
    TPECM20,
    TPECM21,
    TPECM30,
    TPECM31,
    TPECM40,
    TPECM41: TBitField;
  end;
var
  TPECMR: byte absolute $170;  // Transponder Encoder Mode Register
  TPECMRset: TTPECMRset absolute $170;
  TPECMRrec: TTPECMRrec absolute $170;
const
  TPECM10 = 0;  m_TPECM10 = 1;  // Transponder Encoder Mode 1
  TPECM11 = 1;  m_TPECM11 = 2;  // Transponder Encoder Mode 1
  TPECM20 = 2;  m_TPECM20 = 4;  // Transponder Encoder Mode 2
  TPECM21 = 3;  m_TPECM21 = 8;  // Transponder Encoder Mode 2
  TPECM30 = 4;  m_TPECM30 = 16;  // Transponder Encoder Mode 3
  TPECM31 = 5;  m_TPECM31 = 32;  // Transponder Encoder Mode 3
  TPECM40 = 6;  m_TPECM40 = 64;  // Transponder Encoder Mode 4
  TPECM41 = 7;  m_TPECM41 = 128;  // Transponder Encoder Mode 4

type
  TTPCR3set = bitpacked set of (e_TPTD, e_TPRD, e_TPTLIW, e_TPRCD=5);
  TTPCR3rec = bitpacked record
    TPTD,
    TPRD,
    TPTLIW,
    ReservedBit3,
    ReservedBit4,
    TPRCD,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPCR3: byte absolute $171;  // Transponder Control Register 3
  TPCR3set: TTPCR3set absolute $171;
  TPCR3rec: TTPCR3rec absolute $171;
const
  TPTD = 0;  m_TPTD = 1;  // Transponder Transmit Data
  TPRD = 1;  m_TPRD = 2;  // Transponder Receive Data
  TPTLIW = 2;  m_TPTLIW = 4;  // Transponder Transmit Listen Window
  TPRCD = 5;  m_TPRCD = 32;  // Transponder Reception Continuous Damping

type
  TTPCR4set = bitpacked set of (e_TPBCCS0, e_TPBCCS1, e_TPBCCS2, e_TPBCCS3, e_TPBCM);
  TTPCR4rec = bitpacked record
    TPBCCS0,
    TPBCCS1,
    TPBCCS2,
    TPBCCS3,
    TPBCM,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPCR4: byte absolute $172;  // Transponder Control Register 4
  TPCR4set: TTPCR4set absolute $172;
  TPCR4rec: TTPCR4rec absolute $172;
const
  TPBCCS0 = 0;  m_TPBCCS0 = 1;  // Transponder Battery Charge Current Select
  TPBCCS1 = 1;  m_TPBCCS1 = 2;  // Transponder Battery Charge Current Select
  TPBCCS2 = 2;  m_TPBCCS2 = 4;  // Transponder Battery Charge Current Select
  TPBCCS3 = 3;  m_TPBCCS3 = 8;  // Transponder Battery Charge Current Select
  TPBCM = 4;  m_TPBCM = 16;  // Transponder Battery Charge Mode

type
  TTPCR5set = bitpacked set of (e_TPMUD0, e_TPMUD1, e_TPMUD2, e_TPMD0=4, e_TPMD1, e_TPMD2);
  TTPCR5rec = bitpacked record
    TPMUD0,
    TPMUD1,
    TPMUD2,
    ReservedBit3,
    TPMD0,
    TPMD1,
    TPMD2,
    ReservedBit7: TBitField;
  end;
var
  TPCR5: byte absolute $173;  // Transponder Control Register 5
  TPCR5set: TTPCR5set absolute $173;
  TPCR5rec: TTPCR5rec absolute $173;
const
  TPMUD0 = 0;  m_TPMUD0 = 1;  // Transponder Modulation Undamped Level Select
  TPMUD1 = 1;  m_TPMUD1 = 2;  // Transponder Modulation Undamped Level Select
  TPMUD2 = 2;  m_TPMUD2 = 4;  // Transponder Modulation Undamped Level Select
  TPMD0 = 4;  m_TPMD0 = 16;  // Transponder Modulation Damping Select
  TPMD1 = 5;  m_TPMD1 = 32;  // Transponder Modulation Damping Select
  TPMD2 = 6;  m_TPMD2 = 64;  // Transponder Modulation Damping Select

type
  TTPCALR1set = bitpacked set of (e_TPBG_IREF0, e_TPBG_IREF1, e_TPBG_IREF2, e_TPBG_IREF3, e_TPBG_IREF4, e_TPBG_IREF5);
  TTPCALR1rec = bitpacked record
    TPBG_IREF0,
    TPBG_IREF1,
    TPBG_IREF2,
    TPBG_IREF3,
    TPBG_IREF4,
    TPBG_IREF5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPCALR1: byte absolute $175;  // Transponder Calibration Register 1
  TPCALR1set: TTPCALR1set absolute $175;
  TPCALR1rec: TTPCALR1rec absolute $175;
const
  TPBG_IREF0 = 0;  m_TPBG_IREF0 = 1;  // Transponder Bandgap IREF
  TPBG_IREF1 = 1;  m_TPBG_IREF1 = 2;  // Transponder Bandgap IREF
  TPBG_IREF2 = 2;  m_TPBG_IREF2 = 4;  // Transponder Bandgap IREF
  TPBG_IREF3 = 3;  m_TPBG_IREF3 = 8;  // Transponder Bandgap IREF
  TPBG_IREF4 = 4;  m_TPBG_IREF4 = 16;  // Transponder Bandgap IREF
  TPBG_IREF5 = 5;  m_TPBG_IREF5 = 32;  // Transponder Bandgap IREF

type
  TTPCALR2set = bitpacked set of (e_TPBG_UREF0, e_TPBG_UREF1, e_TPBG_UREF2, e_TPBG_UREF3, e_TPBG_UREF4, e_TPBG_UREF5, e_TPBG_UREF6);
  TTPCALR2rec = bitpacked record
    TPBG_UREF0,
    TPBG_UREF1,
    TPBG_UREF2,
    TPBG_UREF3,
    TPBG_UREF4,
    TPBG_UREF5,
    TPBG_UREF6,
    ReservedBit7: TBitField;
  end;
var
  TPCALR2: byte absolute $176;  // Transponder Calibration Register 2
  TPCALR2set: TTPCALR2set absolute $176;
  TPCALR2rec: TTPCALR2rec absolute $176;
const
  TPBG_UREF0 = 0;  m_TPBG_UREF0 = 1;  // Transponder Bandgap UREF
  TPBG_UREF1 = 1;  m_TPBG_UREF1 = 2;  // Transponder Bandgap UREF
  TPBG_UREF2 = 2;  m_TPBG_UREF2 = 4;  // Transponder Bandgap UREF
  TPBG_UREF3 = 3;  m_TPBG_UREF3 = 8;  // Transponder Bandgap UREF
  TPBG_UREF4 = 4;  m_TPBG_UREF4 = 16;  // Transponder Bandgap UREF
  TPBG_UREF5 = 5;  m_TPBG_UREF5 = 32;  // Transponder Bandgap UREF
  TPBG_UREF6 = 6;  m_TPBG_UREF6 = 64;  // Transponder Bandgap UREF

type
  TTPCALR3set = bitpacked set of (e_LFVCC_TPCAL0, e_LFVCC_TPCAL1, e_LFVCC_TPCAL2, e_TPORTH0, e_TPORTH1);
  TTPCALR3rec = bitpacked record
    LFVCC_TPCAL0,
    LFVCC_TPCAL1,
    LFVCC_TPCAL2,
    TPORTH0,
    TPORTH1,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPCALR3: byte absolute $177;  // Transponder Calibration Register 3
  TPCALR3set: TTPCALR3set absolute $177;
  TPCALR3rec: TTPCALR3rec absolute $177;
const
  LFVCC_TPCAL0 = 0;  m_LFVCC_TPCAL0 = 1;  // Not used
  LFVCC_TPCAL1 = 1;  m_LFVCC_TPCAL1 = 2;  // Not used
  LFVCC_TPCAL2 = 2;  m_LFVCC_TPCAL2 = 4;  // Not used
  TPORTH0 = 3;  m_TPORTH0 = 8;  // Transponder Power On Reset Threshold
  TPORTH1 = 4;  m_TPORTH1 = 16;  // Transponder Power On Reset Threshold

type
  TTPCALR4set = bitpacked set of (e_TPINIT_CAL0, e_TPINIT_CAL1, e_TPINIT_CAL2, e_COMPVC_CAL0, e_COMPVC_CAL1);
  TTPCALR4rec = bitpacked record
    TPINIT_CAL0,
    TPINIT_CAL1,
    TPINIT_CAL2,
    COMPVC_CAL0,
    COMPVC_CAL1,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPCALR4: byte absolute $178;  // Transponder Calibration Register 4
  TPCALR4set: TTPCALR4set absolute $178;
  TPCALR4rec: TTPCALR4rec absolute $178;
const
  TPINIT_CAL0 = 0;  m_TPINIT_CAL0 = 1;  // Transponder Init Calibration
  TPINIT_CAL1 = 1;  m_TPINIT_CAL1 = 2;  // Transponder Init Calibration
  TPINIT_CAL2 = 2;  m_TPINIT_CAL2 = 4;  // Transponder Init Calibration
  COMPVC_CAL0 = 3;  m_COMPVC_CAL0 = 8;  // Comparator VC Calibration
  COMPVC_CAL1 = 4;  m_COMPVC_CAL1 = 16;  // Comparator VC Calibration

var
  TPCALR5: byte absolute $179;  // Transponder Calibration Register 5
  TPCALR6: byte absolute $17A;  // Transponder Calibration Register 6
  TPCALR7: byte absolute $17B;  // Transponder Calibration Register 7
  TPCALR8: byte absolute $17C;  // Transponder Calibration Register 8
  TPCALR9: byte absolute $17D;  // Transponder Calibration Register 9
  TPCALR10: byte absolute $17E;  // Transponder Calibration Register 10
  AESDPR: byte absolute $17F;  // AES Data Pointer Register
  AESKR: byte absolute $180;  // AES Key Register
  AESDR: byte absolute $181;  // AES Data Register
  GPIOR3: byte absolute $182;  // General Purpose I/O Register 3
  GPIOR4: byte absolute $183;  // General Purpose I/O Register 4
  GPIOR5: byte absolute $184;  // General Purpose I/O Register 5
  GPIOR6: byte absolute $185;  // General Purpose I/O Register 6
  GPIOR7: byte absolute $186;  // General Purpose I/O Register 7
  GPIOR8: byte absolute $187;  // General Purpose I/O Register 8
  PHBCRR: byte absolute $188;  // Protocol Handler Bit Counter Read Register

type
  TLFCPRset = bitpacked set of (e_LFCALP, e_LFCALRY, e_TPCD=6, e_LFCPCE);
  TLFCPRrec = bitpacked record
    LFCALP,
    LFCALRY,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    TPCD,
    LFCPCE: TBitField;
  end;
var
  LFCPR: byte absolute $18E;  // LF Receiver Calibration Protect Register
  LFCPRset: TLFCPRset absolute $18E;
  LFCPRrec: TLFCPRrec absolute $18E;
const
  LFCALP = 0;  m_LFCALP = 1;  // LF Calibration Protection
  LFCALRY = 1;  m_LFCALRY = 2;  // LF Calibration Ready
  TPCD = 6;  m_TPCD = 64;  // Transponder Constant Disable
  LFCPCE = 7;  m_LFCPCE = 128;  // LF Calibration Protect Change Enable

type
  TLFIMRset = bitpacked set of (e_LFSYDIM, e_LFDEIM, e_LFEOIM);
  TLFIMRrec = bitpacked record
    LFSYDIM,
    LFDEIM,
    LFEOIM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFIMR: byte absolute $18F;  // LF Receiver Interrupt Mask Register
  LFIMRset: TLFIMRset absolute $18F;
  LFIMRrec: TLFIMRrec absolute $18F;
const
  LFSYDIM = 0;  m_LFSYDIM = 1;  // LF Synchronization Detected Interrupt Mask
  LFDEIM = 1;  m_LFDEIM = 2;  // LF Decoder Error Interrupt Mask
  LFEOIM = 2;  m_LFEOIM = 4;  // LF End Of telegram Interrupt Mask

var
  PHID0: dword absolute $190;  // PH ID0 Register
  PHID0L: word absolute $190;
  PHID0H: word absolute $192;
  PHID0L: byte absolute $194;  // PH Identifier 0 Length Register
  PHID1: dword absolute $195;  // PH ID1 Register
  PHID1L: word absolute $195;
  PHID1H: word absolute $197;
  PHID1L: byte absolute $199;  // PH Identifier 1 Length Register
  PHIDFR: byte absolute $19A;  // Protocol Handler ID Frame Register
  LFSYSY: dword absolute $19B;  // LF Receiver Synchronization Symbols Register
  LFSYSYL: word absolute $19B;
  LFSYSYH: word absolute $19D;

type
  TLFSYLEset = bitpacked set of (e_LFSYLE0, e_LFSYLE1, e_LFSYLE2, e_LFSYLE3, e_LFSYLE4, e_LFSYLE5);
  TLFSYLErec = bitpacked record
    LFSYLE0,
    LFSYLE1,
    LFSYLE2,
    LFSYLE3,
    LFSYLE4,
    LFSYLE5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFSYLE: byte absolute $19F;  // LF Receiver Synchronization Length Register
  LFSYLEset: TLFSYLEset absolute $19F;
  LFSYLErec: TLFSYLErec absolute $19F;
const
  LFSYLE0 = 0;  m_LFSYLE0 = 1;
  LFSYLE1 = 1;  m_LFSYLE1 = 2;
  LFSYLE2 = 2;  m_LFSYLE2 = 4;
  LFSYLE3 = 3;  m_LFSYLE3 = 8;
  LFSYLE4 = 4;  m_LFSYLE4 = 16;
  LFSYLE5 = 5;  m_LFSYLE5 = 32;

type
  TLFSTOPset = bitpacked set of (e_LFSTSY0, e_LFSTSY1, e_LFSTSY2, e_LFSTSY3, e_LFSTL0, e_LFSTL1, e_LFSTL2);
  TLFSTOPrec = bitpacked record
    LFSTSY0,
    LFSTSY1,
    LFSTSY2,
    LFSTSY3,
    LFSTL0,
    LFSTL1,
    LFSTL2,
    ReservedBit7: TBitField;
  end;
var
  LFSTOP: byte absolute $1A0;  // LF Receiver Stop Bit Register
  LFSTOPset: TLFSTOPset absolute $1A0;
  LFSTOPrec: TLFSTOPrec absolute $1A0;
const
  LFSTSY0 = 0;  m_LFSTSY0 = 1;  // LF Stop Bits Symbols
  LFSTSY1 = 1;  m_LFSTSY1 = 2;  // LF Stop Bits Symbols
  LFSTSY2 = 2;  m_LFSTSY2 = 4;  // LF Stop Bits Symbols
  LFSTSY3 = 3;  m_LFSTSY3 = 8;  // LF Stop Bits Symbols
  LFSTL0 = 4;  m_LFSTL0 = 16;  // LF Stop Bits Length
  LFSTL1 = 5;  m_LFSTL1 = 32;  // LF Stop Bits Length
  LFSTL2 = 6;  m_LFSTL2 = 64;  // LF Stop Bits Length

var
  LTCOR: byte absolute $1A1;  // LF Timer Compare Register

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
  T1IFR: byte absolute $1A2;  // Timer1 Interrupt Flag Register
  T1IFRset: TT1IFRset absolute $1A2;
  T1IFRrec: TT1IFRrec absolute $1A2;
const
  T1OFF = 0;  m_T1OFF = 1;  // Timer1 Overflow Flag
  T1COF = 1;  m_T1COF = 2;  // Timer1 Compare Flag

var
  PHTBLR: byte absolute $1A4;  // Protocol Handler Telegram Bit Length Register
  PHDFR: byte absolute $1A5;  // Protocol Handler Data Frame end Register

type
  TLTEMRset = bitpacked set of (e_ID0EM, e_ID1EM, e_IDFEM, e_DFEM, e_TBLEM, e_FLEM, e_EOFEM, e_LTCOF);
  TLTEMRrec = bitpacked record
    ID0EM,
    ID1EM,
    IDFEM,
    DFEM,
    TBLEM,
    FLEM,
    EOFEM,
    LTCOF: TBitField;
  end;
var
  LTEMR: byte absolute $1A6;  // LF Timer Event Mask Register
  LTEMRset: TLTEMRset absolute $1A6;
  LTEMRrec: TLTEMRrec absolute $1A6;
const
  ID0EM = 0;  m_ID0EM = 1;  // ID0 Event Mask
  ID1EM = 1;  m_ID1EM = 2;  // ID1 Event Mask
  IDFEM = 2;  m_IDFEM = 4;  // Identifier Frame Event Mask
  DFEM = 3;  m_DFEM = 8;  // Data Frame end reached Event Mask
  TBLEM = 4;  m_TBLEM = 16;  // Telegram Bit Length reached Event Mask
  FLEM = 5;  m_FLEM = 32;  // Fill Level reached Event Mask
  EOFEM = 6;  m_EOFEM = 64;  // End OF telegram Event Mask
  LTCOF = 7;  m_LTCOF = 128;  // LF Timer Compare Flag

type
  TLFQC3set = bitpacked set of (e_LFQS30, e_LFQS31, e_LFQS32, e_LFQS33, e_LFCS30, e_LFCS31, e_LFCS32, e_LFCS33);
  TLFQC3rec = bitpacked record
    LFQS30,
    LFQS31,
    LFQS32,
    LFQS33,
    LFCS30,
    LFCS31,
    LFCS32,
    LFCS33: TBitField;
  end;
var
  LFQC3: byte absolute $1A7;  // LF Receiver Channel 3 Quality Faktor Register
  LFQC3set: TLFQC3set absolute $1A7;
  LFQC3rec: TLFQC3rec absolute $1A7;
const
  LFQS30 = 0;  m_LFQS30 = 1;  // LF resistor select channel 3
  LFQS31 = 1;  m_LFQS31 = 2;  // LF resistor select channel 3
  LFQS32 = 2;  m_LFQS32 = 4;  // LF resistor select channel 3
  LFQS33 = 3;  m_LFQS33 = 8;  // LF resistor select channel 3
  LFCS30 = 4;  m_LFCS30 = 16;  // LF capacitor select channel 3
  LFCS31 = 5;  m_LFCS31 = 32;  // LF capacitor select channel 3
  LFCS32 = 6;  m_LFCS32 = 64;  // LF capacitor select channel 3
  LFCS33 = 7;  m_LFCS33 = 128;  // LF capacitor select channel 3

type
  TLFQC2set = bitpacked set of (e_LFQS20, e_LFQS21, e_LFQS22, e_LFQS23, e_LFCS20, e_LFCS21, e_LFCS22, e_LFCS23);
  TLFQC2rec = bitpacked record
    LFQS20,
    LFQS21,
    LFQS22,
    LFQS23,
    LFCS20,
    LFCS21,
    LFCS22,
    LFCS23: TBitField;
  end;
var
  LFQC2: byte absolute $1A8;  // LF Receiver Channel 2 Quality Faktor Register
  LFQC2set: TLFQC2set absolute $1A8;
  LFQC2rec: TLFQC2rec absolute $1A8;
const
  LFQS20 = 0;  m_LFQS20 = 1;  // LF resistor select channel 2
  LFQS21 = 1;  m_LFQS21 = 2;  // LF resistor select channel 2
  LFQS22 = 2;  m_LFQS22 = 4;  // LF resistor select channel 2
  LFQS23 = 3;  m_LFQS23 = 8;  // LF resistor select channel 2
  LFCS20 = 4;  m_LFCS20 = 16;  // LF capacitor select channel 2
  LFCS21 = 5;  m_LFCS21 = 32;  // LF capacitor select channel 2
  LFCS22 = 6;  m_LFCS22 = 64;  // LF capacitor select channel 2
  LFCS23 = 7;  m_LFCS23 = 128;  // LF capacitor select channel 2

type
  TLFQC1set = bitpacked set of (e_LFQS10, e_LFQS11, e_LFQS12, e_LFQS13, e_LFCS10, e_LFCS11, e_LFCS12, e_LFCS13);
  TLFQC1rec = bitpacked record
    LFQS10,
    LFQS11,
    LFQS12,
    LFQS13,
    LFCS10,
    LFCS11,
    LFCS12,
    LFCS13: TBitField;
  end;
var
  LFQC1: byte absolute $1A9;  // LF Receiver Channel 1 Quality Faktor Register
  LFQC1set: TLFQC1set absolute $1A9;
  LFQC1rec: TLFQC1rec absolute $1A9;
const
  LFQS10 = 0;  m_LFQS10 = 1;  // LF resistor select channel 1
  LFQS11 = 1;  m_LFQS11 = 2;  // LF resistor select channel 1
  LFQS12 = 2;  m_LFQS12 = 4;  // LF resistor select channel 1
  LFQS13 = 3;  m_LFQS13 = 8;  // LF resistor select channel 1
  LFCS10 = 4;  m_LFCS10 = 16;  // LF capacitor select channel 1
  LFCS11 = 5;  m_LFCS11 = 32;  // LF capacitor select channel 1
  LFCS12 = 6;  m_LFCS12 = 64;  // LF capacitor select channel 1
  LFCS13 = 7;  m_LFCS13 = 128;  // LF capacitor select channel 1

var
  TW2BR: byte absolute $1AA;  // TWI2 Bit Rate Register

type
  TTW2CRset = bitpacked set of (e_TW2IE, e_TW2EN=2, e_TW2WC, e_TW2STO, e_TW2STA, e_TW2EA, e_TW2INT);
  TTW2CRrec = bitpacked record
    TW2IE,
    ReservedBit1,
    TW2EN,
    TW2WC,
    TW2STO,
    TW2STA,
    TW2EA,
    TW2INT: TBitField;
  end;
var
  TW2CR: byte absolute $1AB;  // TWI2 Control Register
  TW2CRset: TTW2CRset absolute $1AB;
  TW2CRrec: TTW2CRrec absolute $1AB;
const
  TW2IE = 0;  m_TW2IE = 1;  // TWI2 Interrupt Enable
  TW2EN = 2;  m_TW2EN = 4;  // TWI2 Enable
  TW2WC = 3;  m_TW2WC = 8;  // TWI2 Write Collision Flag
  TW2STO = 4;  m_TW2STO = 16;  // TWI2 STOP Condition
  TW2STA = 5;  m_TW2STA = 32;  // TWI2 START Condition
  TW2EA = 6;  m_TW2EA = 64;  // TWI2 Enable Acknowledge
  TW2INT = 7;  m_TW2INT = 128;  // TWI2 Interrupt Flag

type
  TTW2SRset = bitpacked set of (e_TW2PS0, e_TW2PS1, e_TW2S0=3, e_TW2S1, e_TW2S2, e_TW2S3, e_TW2S4);
  TTW2SRrec = bitpacked record
    TW2PS0,
    TW2PS1,
    ReservedBit2,
    TW2S0,
    TW2S1,
    TW2S2,
    TW2S3,
    TW2S4: TBitField;
  end;
var
  TW2SR: byte absolute $1AC;  // TWI2 Status Register
  TW2SRset: TTW2SRset absolute $1AC;
  TW2SRrec: TTW2SRrec absolute $1AC;
const
  TW2PS0 = 0;  m_TW2PS0 = 1;  // TWI2 Prescaler
  TW2PS1 = 1;  m_TW2PS1 = 2;  // TWI2 Prescaler
  TW2S0 = 3;  m_TW2S0 = 8;  // TWI2 Status
  TW2S1 = 4;  m_TW2S1 = 16;  // TWI2 Status
  TW2S2 = 5;  m_TW2S2 = 32;  // TWI2 Status
  TW2S3 = 6;  m_TW2S3 = 64;  // TWI2 Status
  TW2S4 = 7;  m_TW2S4 = 128;  // TWI2 Status

var
  TW2DR: byte absolute $1AD;  // TWI2 Data Register

type
  TTW2ARset = bitpacked set of (e_TW2GCE, e_TW2A0, e_TW2A1, e_TW2A2, e_TW2A3, e_TW2A4, e_TW2A5, e_TW2A6);
  TTW2ARrec = bitpacked record
    TW2GCE,
    TW2A0,
    TW2A1,
    TW2A2,
    TW2A3,
    TW2A4,
    TW2A5,
    TW2A6: TBitField;
  end;
var
  TW2AR: byte absolute $1AE;  // TWI2 (Slave) Address Register
  TW2ARset: TTW2ARset absolute $1AE;
  TW2ARrec: TTW2ARrec absolute $1AE;
const
  TW2GCE = 0;  m_TW2GCE = 1;  // TWI2 General Call Recognition Enable
  TW2A0 = 1;  m_TW2A0 = 2;  // TWI2 (Slave) Address
  TW2A1 = 2;  m_TW2A1 = 4;  // TWI2 (Slave) Address
  TW2A2 = 3;  m_TW2A2 = 8;  // TWI2 (Slave) Address
  TW2A3 = 4;  m_TW2A3 = 16;  // TWI2 (Slave) Address
  TW2A4 = 5;  m_TW2A4 = 32;  // TWI2 (Slave) Address
  TW2A5 = 6;  m_TW2A5 = 64;  // TWI2 (Slave) Address
  TW2A6 = 7;  m_TW2A6 = 128;  // TWI2 (Slave) Address

type
  TTW2AMRset = bitpacked set of (e_TW2AM0=1, e_TW2AM1, e_TW2AM2, e_TW2AM3, e_TW2AM4, e_TW2AM5, e_TW2AM6);
  TTW2AMRrec = bitpacked record
    ReservedBit0,
    TW2AM0,
    TW2AM1,
    TW2AM2,
    TW2AM3,
    TW2AM4,
    TW2AM5,
    TW2AM6: TBitField;
  end;
var
  TW2AMR: byte absolute $1AF;  // TWI2 Address Mask Register
  TW2AMRset: TTW2AMRset absolute $1AF;
  TW2AMRrec: TTW2AMRrec absolute $1AF;
const
  TW2AM0 = 1;  m_TW2AM0 = 2;  // TWI2 Address Mask
  TW2AM1 = 2;  m_TW2AM1 = 4;  // TWI2 Address Mask
  TW2AM2 = 3;  m_TW2AM2 = 8;  // TWI2 Address Mask
  TW2AM3 = 4;  m_TW2AM3 = 16;  // TWI2 Address Mask
  TW2AM4 = 5;  m_TW2AM4 = 32;  // TWI2 Address Mask
  TW2AM5 = 6;  m_TW2AM5 = 64;  // TWI2 Address Mask
  TW2AM6 = 7;  m_TW2AM6 = 128;  // TWI2 Address Mask

type
  TRSCRset = bitpacked set of (e_RSSDEN, e_RSOS, e_RSEOR, e_RSOFM, e_RSMODE0, e_RSMODE1, e_RSRES=7);
  TRSCRrec = bitpacked record
    RSSDEN,
    RSOS,
    RSEOR,
    RSOFM,
    RSMODE0,
    RSMODE1,
    ReservedBit6,
    RSRES: TBitField;
  end;
var
  RSCR: byte absolute $1B0;  // RSSI Control Register
  RSCRset: TRSCRset absolute $1B0;
  RSCRrec: TRSCRrec absolute $1B0;
const
  RSSDEN = 0;  m_RSSDEN = 1;  // RSSI Sign Detection Enable Bit
  RSOS = 1;  m_RSOS = 2;  // RSSI Operation Start Bit
  RSEOR = 2;  m_RSEOR = 4;  // RSSI End Operation Request Bit
  RSOFM = 3;  m_RSOFM = 8;  // RSSI Operation Flag Mask Bit
  RSMODE0 = 4;  m_RSMODE0 = 16;  // RSSI Mode Bit 0
  RSMODE1 = 5;  m_RSMODE1 = 32;  // RSSI Mode Bit 1
  RSRES = 7;  m_RSRES = 128;  // RSSI Reset Bit

type
  TRSSRset = bitpacked set of (e_RSRDY, e_RSSVLD);
  TRSSRrec = bitpacked record
    RSRDY,
    RSSVLD,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RSSR: byte absolute $1B1;  // RSSI Status Register
  RSSRset: TRSSRset absolute $1B1;
  RSSRrec: TRSSRrec absolute $1B1;
const
  RSRDY = 0;  m_RSRDY = 1;  // RSSI Ready Bit
  RSSVLD = 1;  m_RSSVLD = 2;  // RSSI Sample Valid Bit

type
  TRSMS1Rset = bitpacked set of (e_RSCH1E, e_RSCH2E, e_RSCH3E, e_RSINTM, e_RSSTIM, e_RSCMS, e_RSSSV, e_RSSCAL);
  TRSMS1Rrec = bitpacked record
    RSCH1E,
    RSCH2E,
    RSCH3E,
    RSINTM,
    RSSTIM,
    RSCMS,
    RSSSV,
    RSSCAL: TBitField;
  end;
var
  RSMS1R: byte absolute $1B2;  // RSSI Measurement Setting 1 Register
  RSMS1Rset: TRSMS1Rset absolute $1B2;
  RSMS1Rrec: TRSMS1Rrec absolute $1B2;
const
  RSCH1E = 0;  m_RSCH1E = 1;  // RSSI Channel 1 Enable Bit
  RSCH2E = 1;  m_RSCH2E = 2;  // RSSI Channel 2 Enable Bit
  RSCH3E = 2;  m_RSCH3E = 4;  // RSSI Channel 3 Enable Bit
  RSINTM = 3;  m_RSINTM = 8;  // RSSI internal Measurement Bit
  RSSTIM = 4;  m_RSSTIM = 16;  // RSSI Stimulus Bit
  RSCMS = 5;  m_RSCMS = 32;  // RSSI Current Mode Select Bit
  RSSSV = 6;  m_RSSSV = 64;  // RSSI Show Sample Value Bit
  RSSCAL = 7;  m_RSSCAL = 128;  // RSSI Set Calibration Bit

type
  TRSMS2Rset = bitpacked set of (e_RSSADR0, e_RSSADR1, e_RSSADR2, e_RSSADR3, e_RSAVGS0, e_RSAVGS1, e_RSAVGS2, e_RSAVGS3);
  TRSMS2Rrec = bitpacked record
    RSSADR0,
    RSSADR1,
    RSSADR2,
    RSSADR3,
    RSAVGS0,
    RSAVGS1,
    RSAVGS2,
    RSAVGS3: TBitField;
  end;
var
  RSMS2R: byte absolute $1B3;  // RSSI Measurement Setting 2 Register
  RSMS2Rset: TRSMS2Rset absolute $1B3;
  RSMS2Rrec: TRSMS2Rrec absolute $1B3;
const
  RSSADR0 = 0;  m_RSSADR0 = 1;  // RSSI Sample Address Bit 0
  RSSADR1 = 1;  m_RSSADR1 = 2;  // RSSI Sample Address Bit 1
  RSSADR2 = 2;  m_RSSADR2 = 4;  // RSSI Sample Address Bit 2
  RSSADR3 = 3;  m_RSSADR3 = 8;  // RSSI Sample Address Bit 3
  RSAVGS0 = 4;  m_RSAVGS0 = 16;  // RSSI Average Select Bit 0
  RSAVGS1 = 5;  m_RSAVGS1 = 32;  // RSSI Average Select Bit 1
  RSAVGS2 = 6;  m_RSAVGS2 = 64;  // RSSI Average Select Bit 2
  RSAVGS3 = 7;  m_RSAVGS3 = 128;  // RSSI Average Select Bit 3

type
  TRSFRset = bitpacked set of (e_RSOOR1, e_RSOOR2, e_RSOOR3, e_RSOFF, e_RSAOOR1=5, e_RSAOOR2, e_RSAOOR3);
  TRSFRrec = bitpacked record
    RSOOR1,
    RSOOR2,
    RSOOR3,
    RSOFF,
    ReservedBit4,
    RSAOOR1,
    RSAOOR2,
    RSAOOR3: TBitField;
  end;
var
  RSFR: byte absolute $1B4;  // RSSI Flag Register
  RSFRset: TRSFRset absolute $1B4;
  RSFRrec: TRSFRrec absolute $1B4;
const
  RSOOR1 = 0;  m_RSOOR1 = 1;  // RSSI Out of Range Channel 1 Bit
  RSOOR2 = 1;  m_RSOOR2 = 2;  // RSSI Out of Range Channel 2 Bit
  RSOOR3 = 2;  m_RSOOR3 = 4;  // RSSI Out of Range Channel 3 Bit
  RSOFF = 3;  m_RSOFF = 8;  // RSSI Operation Finish Flag Bit
  RSAOOR1 = 5;  m_RSAOOR1 = 32;  // RSSI Averaging Out of Range Channel 1 Bit
  RSAOOR2 = 6;  m_RSAOOR2 = 64;  // RSSI Averaging Out of Range Channel 2 Bit
  RSAOOR3 = 7;  m_RSAOOR3 = 128;  // RSSI Averaging Out of Range Channel 3 Bit

type
  TRSCALIBset = bitpacked set of (e_RSCALIB0, e_RSCALIB1, e_RSCALIB2, e_RSCALIB3, e_RSCALIB4, e_RSCALIB5, e_RSCALIB6, e_RSCALIB7);
  TRSCALIBrec = bitpacked record
    RSCALIB0,
    RSCALIB1,
    RSCALIB2,
    RSCALIB3,
    RSCALIB4,
    RSCALIB5,
    RSCALIB6,
    RSCALIB7: TBitField;
  end;
var
  RSCALIB: byte absolute $1B6;  // RSSI Calibration Register
  RSCALIBset: TRSCALIBset absolute $1B6;
  RSCALIBrec: TRSCALIBrec absolute $1B6;
const
  RSCALIB0 = 0;  m_RSCALIB0 = 1;  // RSSI Calibration Bit 0
  RSCALIB1 = 1;  m_RSCALIB1 = 2;  // RSSI Calibration Bit 1
  RSCALIB2 = 2;  m_RSCALIB2 = 4;  // RSSI Calibration Bit 2
  RSCALIB3 = 3;  m_RSCALIB3 = 8;  // RSSI Calibration Bit 3
  RSCALIB4 = 4;  m_RSCALIB4 = 16;  // RSSI Calibration Bit 4
  RSCALIB5 = 5;  m_RSCALIB5 = 32;  // RSSI Calibration Bit 5
  RSCALIB6 = 6;  m_RSCALIB6 = 64;  // RSSI Calibration Bit 6
  RSCALIB7 = 7;  m_RSCALIB7 = 128;  // RSSI Calibration Bit 7

type
  TRSDLYRset = bitpacked set of (e_RSTRD0, e_RSTRD1, e_RSTRD2, e_RSTRD3, e_RSTRD4, e_RSTRD5, e_RSRD0, e_RSRD1);
  TRSDLYRrec = bitpacked record
    RSTRD0,
    RSTRD1,
    RSTRD2,
    RSTRD3,
    RSTRD4,
    RSTRD5,
    RSRD0,
    RSRD1: TBitField;
  end;
var
  RSDLYR: byte absolute $1B7;  // RSSI Delay Register
  RSDLYRset: TRSDLYRset absolute $1B7;
  RSDLYRrec: TRSDLYRrec absolute $1B7;
const
  RSTRD0 = 0;  m_RSTRD0 = 1;  // RSSI Tracking Delay Bit 0
  RSTRD1 = 1;  m_RSTRD1 = 2;  // RSSI Tracking Delay Bit 1
  RSTRD2 = 2;  m_RSTRD2 = 4;  // RSSI Tracking Delay Bit 2
  RSTRD3 = 3;  m_RSTRD3 = 8;  // RSSI Tracking Delay Bit 3
  RSTRD4 = 4;  m_RSTRD4 = 16;  // RSSI Tracking Delay Bit 4
  RSTRD5 = 5;  m_RSTRD5 = 32;  // RSSI Tracking Delay Bit 5
  RSRD0 = 6;  m_RSRD0 = 64;  // RSSI Range Delay Bit 0
  RSRD1 = 7;  m_RSRD1 = 128;  // RSSI Range Delay Bit 1

type
  TRSRES1Lset = bitpacked set of (e_RSRES1L0, e_RSRES1L1, e_RSRES1L2, e_RSRES1L3, e_RSRES1L4, e_RSRES1L5, e_RSRES1L6, e_RSRES1L7);
  TRSRES1Lrec = bitpacked record
    RSRES1L0,
    RSRES1L1,
    RSRES1L2,
    RSRES1L3,
    RSRES1L4,
    RSRES1L5,
    RSRES1L6,
    RSRES1L7: TBitField;
  end;
var
  RSRES1L: byte absolute $1B8;  // RSSI Result 1 Low Byte Register
  RSRES1Lset: TRSRES1Lset absolute $1B8;
  RSRES1Lrec: TRSRES1Lrec absolute $1B8;
const
  RSRES1L0 = 0;  m_RSRES1L0 = 1;  // RSSI Result 1 Low Byte Bit 0
  RSRES1L1 = 1;  m_RSRES1L1 = 2;  // RSSI Result 1 Low Byte Bit 1
  RSRES1L2 = 2;  m_RSRES1L2 = 4;  // RSSI Result 1 Low Byte Bit 2
  RSRES1L3 = 3;  m_RSRES1L3 = 8;  // RSSI Result 1 Low Byte Bit 3
  RSRES1L4 = 4;  m_RSRES1L4 = 16;  // RSSI Result 1 Low Byte Bit 4
  RSRES1L5 = 5;  m_RSRES1L5 = 32;  // RSSI Result 1 Low Byte Bit 5
  RSRES1L6 = 6;  m_RSRES1L6 = 64;  // RSSI Result 1 Low Byte Bit 6
  RSRES1L7 = 7;  m_RSRES1L7 = 128;  // RSSI Result 1 Low Byte Bit 7

type
  TRSRES1Hset = bitpacked set of (e_RSRES1H0, e_RSRES1H1, e_RSRES1H2, e_RSRES1H3, e_RSRES1H4, e_RSRES1H5, e_RSRES1H6, e_RSRES1H7);
  TRSRES1Hrec = bitpacked record
    RSRES1H0,
    RSRES1H1,
    RSRES1H2,
    RSRES1H3,
    RSRES1H4,
    RSRES1H5,
    RSRES1H6,
    RSRES1H7: TBitField;
  end;
var
  RSRES1H: byte absolute $1B9;  // RSSI Result 1 High Byte Register
  RSRES1Hset: TRSRES1Hset absolute $1B9;
  RSRES1Hrec: TRSRES1Hrec absolute $1B9;
const
  RSRES1H0 = 0;  m_RSRES1H0 = 1;  // RSSI Result 1 High Byte Bit 0
  RSRES1H1 = 1;  m_RSRES1H1 = 2;  // RSSI Result 1 High Byte Bit 1
  RSRES1H2 = 2;  m_RSRES1H2 = 4;  // RSSI Result 1 High Byte Bit 2
  RSRES1H3 = 3;  m_RSRES1H3 = 8;  // RSSI Result 1 High Byte Bit 3
  RSRES1H4 = 4;  m_RSRES1H4 = 16;  // RSSI Result 1 High Byte Bit 4
  RSRES1H5 = 5;  m_RSRES1H5 = 32;  // RSSI Result 1 High Byte Bit 5
  RSRES1H6 = 6;  m_RSRES1H6 = 64;  // RSSI Result 1 High Byte Bit 6
  RSRES1H7 = 7;  m_RSRES1H7 = 128;  // RSSI Result 1 High Byte Bit 7

type
  TRSRES2Lset = bitpacked set of (e_RSRES2L0, e_RSRES2L1, e_RSRES2L2, e_RSRES2L3, e_RSRES2L4, e_RSRES2L5, e_RSRES2L6, e_RSRES2L7);
  TRSRES2Lrec = bitpacked record
    RSRES2L0,
    RSRES2L1,
    RSRES2L2,
    RSRES2L3,
    RSRES2L4,
    RSRES2L5,
    RSRES2L6,
    RSRES2L7: TBitField;
  end;
var
  RSRES2L: byte absolute $1BA;  // RSSI Result 2 Low Byte Register
  RSRES2Lset: TRSRES2Lset absolute $1BA;
  RSRES2Lrec: TRSRES2Lrec absolute $1BA;
const
  RSRES2L0 = 0;  m_RSRES2L0 = 1;  // RSSI Result 2 Low Byte Bit 0
  RSRES2L1 = 1;  m_RSRES2L1 = 2;  // RSSI Result 2 Low Byte Bit 1
  RSRES2L2 = 2;  m_RSRES2L2 = 4;  // RSSI Result 2 Low Byte Bit 2
  RSRES2L3 = 3;  m_RSRES2L3 = 8;  // RSSI Result 2 Low Byte Bit 3
  RSRES2L4 = 4;  m_RSRES2L4 = 16;  // RSSI Result 2 Low Byte Bit 4
  RSRES2L5 = 5;  m_RSRES2L5 = 32;  // RSSI Result 2 Low Byte Bit 5
  RSRES2L6 = 6;  m_RSRES2L6 = 64;  // RSSI Result 2 Low Byte Bit 6
  RSRES2L7 = 7;  m_RSRES2L7 = 128;  // RSSI Result 2 Low Byte Bit 7

type
  TRSRES2Hset = bitpacked set of (e_RSRES2H0, e_RSRES2H1, e_RSRES2H2, e_RSRES2H3, e_RSRES2H4, e_RSRES2H5, e_RSRES2H6, e_RSRES2H7);
  TRSRES2Hrec = bitpacked record
    RSRES2H0,
    RSRES2H1,
    RSRES2H2,
    RSRES2H3,
    RSRES2H4,
    RSRES2H5,
    RSRES2H6,
    RSRES2H7: TBitField;
  end;
var
  RSRES2H: byte absolute $1BB;  // RSSI Result 2 High Byte Register
  RSRES2Hset: TRSRES2Hset absolute $1BB;
  RSRES2Hrec: TRSRES2Hrec absolute $1BB;
const
  RSRES2H0 = 0;  m_RSRES2H0 = 1;  // RSSI Result 2 High Byte Bit 0
  RSRES2H1 = 1;  m_RSRES2H1 = 2;  // RSSI Result 2 High Byte Bit 1
  RSRES2H2 = 2;  m_RSRES2H2 = 4;  // RSSI Result 2 High Byte Bit 2
  RSRES2H3 = 3;  m_RSRES2H3 = 8;  // RSSI Result 2 High Byte Bit 3
  RSRES2H4 = 4;  m_RSRES2H4 = 16;  // RSSI Result 2 High Byte Bit 4
  RSRES2H5 = 5;  m_RSRES2H5 = 32;  // RSSI Result 2 High Byte Bit 5
  RSRES2H6 = 6;  m_RSRES2H6 = 64;  // RSSI Result 2 High Byte Bit 6
  RSRES2H7 = 7;  m_RSRES2H7 = 128;  // RSSI Result 2 High Byte Bit 7

type
  TRSRES3Lset = bitpacked set of (e_RSRES3L0, e_RSRES3L1, e_RSRES3L2, e_RSRES3L3, e_RSRES3L4, e_RSRES3L5, e_RSRES3L6, e_RSRES3L7);
  TRSRES3Lrec = bitpacked record
    RSRES3L0,
    RSRES3L1,
    RSRES3L2,
    RSRES3L3,
    RSRES3L4,
    RSRES3L5,
    RSRES3L6,
    RSRES3L7: TBitField;
  end;
var
  RSRES3L: byte absolute $1BC;  // RSSI Result 3 Low Byte Register
  RSRES3Lset: TRSRES3Lset absolute $1BC;
  RSRES3Lrec: TRSRES3Lrec absolute $1BC;
const
  RSRES3L0 = 0;  m_RSRES3L0 = 1;  // RSSI Result 3 Low Byte Bit 0
  RSRES3L1 = 1;  m_RSRES3L1 = 2;  // RSSI Result 3 Low Byte Bit 1
  RSRES3L2 = 2;  m_RSRES3L2 = 4;  // RSSI Result 3 Low Byte Bit 2
  RSRES3L3 = 3;  m_RSRES3L3 = 8;  // RSSI Result 3 Low Byte Bit 3
  RSRES3L4 = 4;  m_RSRES3L4 = 16;  // RSSI Result 3 Low Byte Bit 4
  RSRES3L5 = 5;  m_RSRES3L5 = 32;  // RSSI Result 3 Low Byte Bit 5
  RSRES3L6 = 6;  m_RSRES3L6 = 64;  // RSSI Result 3 Low Byte Bit 6
  RSRES3L7 = 7;  m_RSRES3L7 = 128;  // RSSI Result 3 Low Byte Bit 7

type
  TRSRES3Hset = bitpacked set of (e_RSRES3H0, e_RSRES3H1, e_RSRES3H2, e_RSRES3H3, e_RSRES3H4, e_RSRES3H5, e_RSRES3H6, e_RSRES3H7);
  TRSRES3Hrec = bitpacked record
    RSRES3H0,
    RSRES3H1,
    RSRES3H2,
    RSRES3H3,
    RSRES3H4,
    RSRES3H5,
    RSRES3H6,
    RSRES3H7: TBitField;
  end;
var
  RSRES3H: byte absolute $1BD;  // RSSI Result 3 High Byte Register
  RSRES3Hset: TRSRES3Hset absolute $1BD;
  RSRES3Hrec: TRSRES3Hrec absolute $1BD;
const
  RSRES3H0 = 0;  m_RSRES3H0 = 1;  // RSSI Result 3 High Byte Bit 0
  RSRES3H1 = 1;  m_RSRES3H1 = 2;  // RSSI Result 3 High Byte Bit 1
  RSRES3H2 = 2;  m_RSRES3H2 = 4;  // RSSI Result 3 High Byte Bit 2
  RSRES3H3 = 3;  m_RSRES3H3 = 8;  // RSSI Result 3 High Byte Bit 3
  RSRES3H4 = 4;  m_RSRES3H4 = 16;  // RSSI Result 3 High Byte Bit 4
  RSRES3H5 = 5;  m_RSRES3H5 = 32;  // RSSI Result 3 High Byte Bit 5
  RSRES3H6 = 6;  m_RSRES3H6 = 64;  // RSSI Result 3 High Byte Bit 6
  RSRES3H7 = 7;  m_RSRES3H7 = 128;  // RSSI Result 3 High Byte Bit 7

type
  TRSRES4Lset = bitpacked set of (e_RSRES4L0, e_RSRES4L1, e_RSRES4L2, e_RSRES4L3, e_RSRES4L4, e_RSRES4L5, e_RSRES4L6, e_RSRES4L7);
  TRSRES4Lrec = bitpacked record
    RSRES4L0,
    RSRES4L1,
    RSRES4L2,
    RSRES4L3,
    RSRES4L4,
    RSRES4L5,
    RSRES4L6,
    RSRES4L7: TBitField;
  end;
var
  RSRES4L: byte absolute $1BE;  // RSSI Result 4 Low Byte Register
  RSRES4Lset: TRSRES4Lset absolute $1BE;
  RSRES4Lrec: TRSRES4Lrec absolute $1BE;
const
  RSRES4L0 = 0;  m_RSRES4L0 = 1;  // RSSI Result 4 Low Byte Bit 0
  RSRES4L1 = 1;  m_RSRES4L1 = 2;  // RSSI Result 4 Low Byte Bit 1
  RSRES4L2 = 2;  m_RSRES4L2 = 4;  // RSSI Result 4 Low Byte Bit 2
  RSRES4L3 = 3;  m_RSRES4L3 = 8;  // RSSI Result 4 Low Byte Bit 3
  RSRES4L4 = 4;  m_RSRES4L4 = 16;  // RSSI Result 4 Low Byte Bit 4
  RSRES4L5 = 5;  m_RSRES4L5 = 32;  // RSSI Result 4 Low Byte Bit 5
  RSRES4L6 = 6;  m_RSRES4L6 = 64;  // RSSI Result 4 Low Byte Bit 6
  RSRES4L7 = 7;  m_RSRES4L7 = 128;  // RSSI Result 4 Low Byte Bit 7

type
  TRSRES4Hset = bitpacked set of (e_RSRES4H0, e_RSRES4H1, e_RSRES4H2, e_RSRES4H3, e_RSRES4H4, e_RSRES4H5, e_RSRES4H6, e_RSRES4H7);
  TRSRES4Hrec = bitpacked record
    RSRES4H0,
    RSRES4H1,
    RSRES4H2,
    RSRES4H3,
    RSRES4H4,
    RSRES4H5,
    RSRES4H6,
    RSRES4H7: TBitField;
  end;
var
  RSRES4H: byte absolute $1BF;  // RSSI Result 4 High Byte Register
  RSRES4Hset: TRSRES4Hset absolute $1BF;
  RSRES4Hrec: TRSRES4Hrec absolute $1BF;
const
  RSRES4H0 = 0;  m_RSRES4H0 = 1;  // RSSI Result 4 High Byte Bit 0
  RSRES4H1 = 1;  m_RSRES4H1 = 2;  // RSSI Result 4 High Byte Bit 1
  RSRES4H2 = 2;  m_RSRES4H2 = 4;  // RSSI Result 4 High Byte Bit 2
  RSRES4H3 = 3;  m_RSRES4H3 = 8;  // RSSI Result 4 High Byte Bit 3
  RSRES4H4 = 4;  m_RSRES4H4 = 16;  // RSSI Result 4 High Byte Bit 4
  RSRES4H5 = 5;  m_RSRES4H5 = 32;  // RSSI Result 4 High Byte Bit 5
  RSRES4H6 = 6;  m_RSRES4H6 = 64;  // RSSI Result 4 High Byte Bit 6
  RSRES4H7 = 7;  m_RSRES4H7 = 128;  // RSSI Result 4 High Byte Bit 7

type
  TRSSRCRset = bitpacked set of (e_SRCMODE0, e_SRCMODE1, e_SRCMIN0, e_SRCMIN1, e_SRCCLR, e_SRCSTEP0=6, e_SRCSTEP1);
  TRSSRCRrec = bitpacked record
    SRCMODE0,
    SRCMODE1,
    SRCMIN0,
    SRCMIN1,
    SRCCLR,
    ReservedBit5,
    SRCSTEP0,
    SRCSTEP1: TBitField;
  end;
var
  RSSRCR: byte absolute $1C0;  // RSSI SRC Calibration Register
  RSSRCRset: TRSSRCRset absolute $1C0;
  RSSRCRrec: TRSSRCRrec absolute $1C0;
const
  SRCMODE0 = 0;  m_SRCMODE0 = 1;  // RSSI SRC Calibration Mode Bit 0
  SRCMODE1 = 1;  m_SRCMODE1 = 2;  // RSSI SRC Calibration Mode Bit 1
  SRCMIN0 = 2;  m_SRCMIN0 = 4;  // RSSI SRC Minimum Value Bit 0
  SRCMIN1 = 3;  m_SRCMIN1 = 8;  // RSSI SRC Minimum Value Bit 1
  SRCCLR = 4;  m_SRCCLR = 16;  // RSSI SRC Clear Bit
  SRCSTEP0 = 6;  m_SRCSTEP0 = 64;  // RSSI SRC Step Bit 0
  SRCSTEP1 = 7;  m_SRCSTEP1 = 128;  // RSSI SRC Step Bit 1

type
  TSD12RRset = bitpacked set of (e_SD12RR0, e_SD12RR1, e_SD12RR2, e_SD12RR3, e_SD12RR4, e_SD12RR5, e_SD12RR6, e_SD12RR7);
  TSD12RRrec = bitpacked record
    SD12RR0,
    SD12RR1,
    SD12RR2,
    SD12RR3,
    SD12RR4,
    SD12RR5,
    SD12RR6,
    SD12RR7: TBitField;
  end;
var
  SD12RR: byte absolute $1C1;  // Sign Detection Channel 1 vs 2 Result Register
  SD12RRset: TSD12RRset absolute $1C1;
  SD12RRrec: TSD12RRrec absolute $1C1;
const
  SD12RR0 = 0;  m_SD12RR0 = 1;  // Sign Detection Channel 1 vs 2 Result Bit 0
  SD12RR1 = 1;  m_SD12RR1 = 2;  // Sign Detection Channel 1 vs 2 Result Bit 1
  SD12RR2 = 2;  m_SD12RR2 = 4;  // Sign Detection Channel 1 vs 2 Result Bit 2
  SD12RR3 = 3;  m_SD12RR3 = 8;  // Sign Detection Channel 1 vs 2 Result Bit 3
  SD12RR4 = 4;  m_SD12RR4 = 16;  // Sign Detection Channel 1 vs 2 Result Bit 4
  SD12RR5 = 5;  m_SD12RR5 = 32;  // Sign Detection Channel 1 vs 2 Result Bit 5
  SD12RR6 = 6;  m_SD12RR6 = 64;  // Sign Detection Channel 1 vs 2 Result Bit 6
  SD12RR7 = 7;  m_SD12RR7 = 128;  // Sign Detection Channel 1 vs 2 Result Bit 7

type
  TSD13RRset = bitpacked set of (e_SD13RR0, e_SD13RR1, e_SD13RR2, e_SD13RR3, e_SD13RR4, e_SD13RR5, e_SD13RR6, e_SD13RR7);
  TSD13RRrec = bitpacked record
    SD13RR0,
    SD13RR1,
    SD13RR2,
    SD13RR3,
    SD13RR4,
    SD13RR5,
    SD13RR6,
    SD13RR7: TBitField;
  end;
var
  SD13RR: byte absolute $1C2;  // Sign Detection Channel 1 vs 3 Result Register
  SD13RRset: TSD13RRset absolute $1C2;
  SD13RRrec: TSD13RRrec absolute $1C2;
const
  SD13RR0 = 0;  m_SD13RR0 = 1;  // Sign Detection Channel 1 vs 3 Result Bit 0
  SD13RR1 = 1;  m_SD13RR1 = 2;  // Sign Detection Channel 1 vs 3 Result Bit 1
  SD13RR2 = 2;  m_SD13RR2 = 4;  // Sign Detection Channel 1 vs 3 Result Bit 2
  SD13RR3 = 3;  m_SD13RR3 = 8;  // Sign Detection Channel 1 vs 3 Result Bit 3
  SD13RR4 = 4;  m_SD13RR4 = 16;  // Sign Detection Channel 1 vs 3 Result Bit 4
  SD13RR5 = 5;  m_SD13RR5 = 32;  // Sign Detection Channel 1 vs 3 Result Bit 5
  SD13RR6 = 6;  m_SD13RR6 = 64;  // Sign Detection Channel 1 vs 3 Result Bit 6
  SD13RR7 = 7;  m_SD13RR7 = 128;  // Sign Detection Channel 1 vs 3 Result Bit 7

type
  TSD23RRset = bitpacked set of (e_SD23RR0, e_SD23RR1, e_SD23RR2, e_SD23RR3, e_SD23RR4, e_SD23RR5, e_SD23RR6, e_SD23RR7);
  TSD23RRrec = bitpacked record
    SD23RR0,
    SD23RR1,
    SD23RR2,
    SD23RR3,
    SD23RR4,
    SD23RR5,
    SD23RR6,
    SD23RR7: TBitField;
  end;
var
  SD23RR: byte absolute $1C3;  // Sign Detection Channel 2 vs 3 Result Register
  SD23RRset: TSD23RRset absolute $1C3;
  SD23RRrec: TSD23RRrec absolute $1C3;
const
  SD23RR0 = 0;  m_SD23RR0 = 1;  // Sign Detection Channel 2 vs 3 Result Bit 0
  SD23RR1 = 1;  m_SD23RR1 = 2;  // Sign Detection Channel 2 vs 3 Result Bit 1
  SD23RR2 = 2;  m_SD23RR2 = 4;  // Sign Detection Channel 2 vs 3 Result Bit 2
  SD23RR3 = 3;  m_SD23RR3 = 8;  // Sign Detection Channel 2 vs 3 Result Bit 3
  SD23RR4 = 4;  m_SD23RR4 = 16;  // Sign Detection Channel 2 vs 3 Result Bit 4
  SD23RR5 = 5;  m_SD23RR5 = 32;  // Sign Detection Channel 2 vs 3 Result Bit 5
  SD23RR6 = 6;  m_SD23RR6 = 64;  // Sign Detection Channel 2 vs 3 Result Bit 6
  SD23RR7 = 7;  m_SD23RR7 = 128;  // Sign Detection Channel 2 vs 3 Result Bit 7

type
  TSD360Rset = bitpacked set of (e_SD360R0, e_SD360R1, e_SD360R2, e_SD360R3, e_SD360R4, e_SD360R5, e_SD360R6, e_SD360R7);
  TSD360Rrec = bitpacked record
    SD360R0,
    SD360R1,
    SD360R2,
    SD360R3,
    SD360R4,
    SD360R5,
    SD360R6,
    SD360R7: TBitField;
  end;
var
  SD360R: byte absolute $1C4;  // Sign Detection 360 Degree Result Register
  SD360Rset: TSD360Rset absolute $1C4;
  SD360Rrec: TSD360Rrec absolute $1C4;
const
  SD360R0 = 0;  m_SD360R0 = 1;  // Sign Detection 360 Degree Result Bit 0
  SD360R1 = 1;  m_SD360R1 = 2;  // Sign Detection 360 Degree Result Bit 1
  SD360R2 = 2;  m_SD360R2 = 4;  // Sign Detection 360 Degree Result Bit 2
  SD360R3 = 3;  m_SD360R3 = 8;  // Sign Detection 360 Degree Result Bit 3
  SD360R4 = 4;  m_SD360R4 = 16;  // Sign Detection 360 Degree Result Bit 4
  SD360R5 = 5;  m_SD360R5 = 32;  // Sign Detection 360 Degree Result Bit 5
  SD360R6 = 6;  m_SD360R6 = 64;  // Sign Detection 360 Degree Result Bit 6
  SD360R7 = 7;  m_SD360R7 = 128;  // Sign Detection 360 Degree Result Bit 7

type
  TRSDBGRset = bitpacked set of (e_RSSANA, e_RSINFM=2, e_RSFPD, e_RSHOME, e_RSDBGS0, e_RSDBGS1, e_RSDBGEN);
  TRSDBGRrec = bitpacked record
    RSSANA,
    ReservedBit1,
    RSINFM,
    RSFPD,
    RSHOME,
    RSDBGS0,
    RSDBGS1,
    RSDBGEN: TBitField;
  end;
var
  RSDBGR: byte absolute $1C5;  // RSSI Debug Register
  RSDBGRset: TRSDBGRset absolute $1C5;
  RSDBGRrec: TRSDBGRrec absolute $1C5;
const
  RSSANA = 0;  m_RSSANA = 1;  // RSSI Set Analog Bit
  RSINFM = 2;  m_RSINFM = 4;  // RSSI Infinity Measurement Bit
  RSFPD = 3;  m_RSFPD = 8;  // RSSI Fix Pre-Divider Bit
  RSHOME = 4;  m_RSHOME = 16;  // RSSI Hold Measurement Bit
  RSDBGS0 = 5;  m_RSDBGS0 = 32;  // RSSI Debug Select Bit 0
  RSDBGS1 = 6;  m_RSDBGS1 = 64;  // RSSI Debug Select Bit 1
  RSDBGEN = 7;  m_RSDBGEN = 128;  // RSSI Debug Enable Bit

type
  TLDFSset = bitpacked set of (e_LDFFLR, e_LDFUF, e_LDFOF);
  TLDFSrec = bitpacked record
    LDFFLR,
    LDFUF,
    LDFOF,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LDFS: byte absolute $1D1;  // LF Data FIFO Status Register
  LDFSset: TLDFSset absolute $1D1;
  LDFSrec: TLDFSrec absolute $1D1;
const
  LDFFLR = 0;  m_LDFFLR = 1;  // LF Data FIFO Fill-Level Reached flag
  LDFUF = 1;  m_LDFUF = 2;  // LF Data FIFO UnderFlow flag
  LDFOF = 2;  m_LDFOF = 4;  // LF Data FIFO OverFlow flag

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
  T4IFR: byte absolute $1D2;  // Timer4 interrupt flag Register
  T4IFRset: TT4IFRset absolute $1D2;
  T4IFRrec: TT4IFRrec absolute $1D2;
const
  T4OFF = 0;  m_T4OFF = 1;  // Timer4 OverFlow Flag
  T4COF = 1;  m_T4COF = 2;  // Timer4 Compare Flag
  T4ICF = 2;  m_T4ICF = 4;  // Timer4 Input Capture Flag

type
  TLDFWPset = bitpacked set of (e_LDFWP0, e_LDFWP1, e_LDFWP2, e_LDFWP3, e_LDFWP4, e_LDFWP5);
  TLDFWPrec = bitpacked record
    LDFWP0,
    LDFWP1,
    LDFWP2,
    LDFWP3,
    LDFWP4,
    LDFWP5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LDFWP: byte absolute $1D3;  // LF Data FIFO Write Pointer
  LDFWPset: TLDFWPset absolute $1D3;
  LDFWPrec: TLDFWPrec absolute $1D3;
const
  LDFWP0 = 0;  m_LDFWP0 = 1;  // LF Data FIFO Write Pointer bit 5
  LDFWP1 = 1;  m_LDFWP1 = 2;  // LF Data FIFO Write Pointer bit 5
  LDFWP2 = 2;  m_LDFWP2 = 4;  // LF Data FIFO Write Pointer bit 5
  LDFWP3 = 3;  m_LDFWP3 = 8;  // LF Data FIFO Write Pointer bit 5
  LDFWP4 = 4;  m_LDFWP4 = 16;  // LF Data FIFO Write Pointer bit 5
  LDFWP5 = 5;  m_LDFWP5 = 32;  // LF Data FIFO Write Pointer bit 5

type
  TLDFRPset = bitpacked set of (e_LDFRP0, e_LDFRP1, e_LDFRP2, e_LDFRP3, e_LDFRP4, e_LDFRP5);
  TLDFRPrec = bitpacked record
    LDFRP0,
    LDFRP1,
    LDFRP2,
    LDFRP3,
    LDFRP4,
    LDFRP5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LDFRP: byte absolute $1D4;  // LF Data FIFO Read Pointer
  LDFRPset: TLDFRPset absolute $1D4;
  LDFRPrec: TLDFRPrec absolute $1D4;
const
  LDFRP0 = 0;  m_LDFRP0 = 1;  // LF Data FIFO Read Pointer
  LDFRP1 = 1;  m_LDFRP1 = 2;  // LF Data FIFO Read Pointer
  LDFRP2 = 2;  m_LDFRP2 = 4;  // LF Data FIFO Read Pointer
  LDFRP3 = 3;  m_LDFRP3 = 8;  // LF Data FIFO Read Pointer
  LDFRP4 = 4;  m_LDFRP4 = 16;  // LF Data FIFO Read Pointer
  LDFRP5 = 5;  m_LDFRP5 = 32;  // LF Data FIFO Read Pointer

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
  T5IFR: byte absolute $1D5;  // Timer5 Interrupt Flag Register
  T5IFRset: TT5IFRset absolute $1D5;
  T5IFRrec: TT5IFRrec absolute $1D5;
const
  T5OFF = 0;  m_T5OFF = 1;  // Timer5 Output Overflow Flag
  T5COF = 1;  m_T5COF = 2;  // Timer5 Output Compare Output Match Flag

type
  TLDFIMset = bitpacked set of (e_LDFFLIM, e_LDFEIM);
  TLDFIMrec = bitpacked record
    LDFFLIM,
    LDFEIM,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LDFIM: byte absolute $1D6;  // LF Data FIFO Interrupt Mask Register
  LDFIMset: TLDFIMset absolute $1D6;
  LDFIMrec: TLDFIMrec absolute $1D6;
const
  LDFFLIM = 0;  m_LDFFLIM = 1;  // LF Data FIFO Fill-level Interrupt Mask
  LDFEIM = 1;  m_LDFEIM = 2;  // LF Data FIFO Error Interrupt Mask

type
  TLDFCset = bitpacked set of (e_LDFFLC0, e_LDFFLC1, e_LDFFLC2, e_LDFFLC3, e_LDFFLC4, e_LDFFLC5, e_LDFMSB);
  TLDFCrec = bitpacked record
    LDFFLC0,
    LDFFLC1,
    LDFFLC2,
    LDFFLC3,
    LDFFLC4,
    LDFFLC5,
    LDFMSB,
    ReservedBit7: TBitField;
  end;
var
  LDFC: byte absolute $1D7;  // LF Data FIFO Configuration Register
  LDFCset: TLDFCset absolute $1D7;
  LDFCrec: TLDFCrec absolute $1D7;
const
  LDFFLC0 = 0;  m_LDFFLC0 = 1;  // LF Data FIFO Fill-Level Configuration
  LDFFLC1 = 1;  m_LDFFLC1 = 2;  // LF Data FIFO Fill-Level Configuration
  LDFFLC2 = 2;  m_LDFFLC2 = 4;  // LF Data FIFO Fill-Level Configuration
  LDFFLC3 = 3;  m_LDFFLC3 = 8;  // LF Data FIFO Fill-Level Configuration
  LDFFLC4 = 4;  m_LDFFLC4 = 16;  // LF Data FIFO Fill-Level Configuration
  LDFFLC5 = 5;  m_LDFFLC5 = 32;  // LF Data FIFO Fill-Level Configuration
  LDFMSB = 6;  m_LDFMSB = 64;  // LF Data FIFO MSB alignment bit

type
  TPHIMRset = bitpacked set of (e_PHTBLIM=1, e_PHDFIM, e_PHIDFIM, e_PHID0IM, e_PHID1IM);
  TPHIMRrec = bitpacked record
    ReservedBit0,
    PHTBLIM,
    PHDFIM,
    PHIDFIM,
    PHID0IM,
    PHID1IM,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PHIMR: byte absolute $1D8;  // Protocol Handler Interrupt Mask Register
  PHIMRset: TPHIMRset absolute $1D8;
  PHIMRrec: TPHIMRrec absolute $1D8;
const
  PHTBLIM = 1;  m_PHTBLIM = 2;  // Protocol Handler Telegram Bit Length Interrupt Mask
  PHDFIM = 2;  m_PHDFIM = 4;  // Protocol Handler Date Frame Interrupt Mask
  PHIDFIM = 3;  m_PHIDFIM = 8;  // Protocol Handler ID Frame Interrupt Mask
  PHID0IM = 4;  m_PHID0IM = 16;  // Protocol Handler IDentifier 0 Interrupt Mask
  PHID1IM = 5;  m_PHID1IM = 32;  // Protocol Handler IDentifier 1 Interrupt Mask

type
  TPHCRCRset = bitpacked set of (e_CRCFR=2, e_CRCSE0=4, e_CRCSE1, e_CRCEN=7);
  TPHCRCRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    CRCFR,
    ReservedBit3,
    CRCSE0,
    CRCSE1,
    ReservedBit6,
    CRCEN: TBitField;
  end;
var
  PHCRCR: byte absolute $1D9;  // Protocol Handler CRC Control Register
  PHCRCRset: TPHCRCRset absolute $1D9;
  PHCRCRrec: TPHCRCRrec absolute $1D9;
const
  CRCFR = 2;  m_CRCFR = 4;  // CRC ID Frame
  CRCSE0 = 4;  m_CRCSE0 = 16;  // CRC size bit 0
  CRCSE1 = 5;  m_CRCSE1 = 32;  // CRC size bit 1
  CRCEN = 7;  m_CRCEN = 128;  // CRC Enable

var
  PHCST: word absolute $1DA;  // PH CRC Start Value Register
  PHCSTL: byte absolute $1DA;
  PHCSTH: byte absolute $1DB;
  PHCRP: word absolute $1DC;  // PH CRC Polynomial Register
  PHCRPL: byte absolute $1DC;
  PHCRPH: byte absolute $1DD;
  PHCSR: word absolute $1DE;  // PH CRC Checksum Register
  PHCSRL: byte absolute $1DE;
  PHCSRH: byte absolute $1DF;
  CRCDIR: byte absolute $1E0;  // CRC Data Input Register

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
  T3IFR: byte absolute $1E1;  // Timer3 interrupt flag Register
  T3IFRset: TT3IFRset absolute $1E1;
  T3IFRrec: TT3IFRrec absolute $1E1;
const
  T3OFF = 0;  m_T3OFF = 1;  // Timer3 OverFlow Flag
  T3COF = 1;  m_T3COF = 2;  // Timer3 Compare Flag
  T3ICF = 2;  m_T3ICF = 4;  // Timer3 Input Capture Flag

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
  CMCR: byte absolute $1E3;  // Clock Management Control Register
  CMCRset: TCMCRset absolute $1E3;
  CMCRrec: TCMCRrec absolute $1E3;
const
  CMM0 = 0;  m_CMM0 = 1;  // Clock Management Mode
  CMM1 = 1;  m_CMM1 = 2;  // Clock Management Mode
  CMM2 = 2;  m_CMM2 = 4;  // Clock Management Mode
  CCS = 3;  m_CCS = 8;  // Core Clock Select
  CMONEN = 6;  m_CMONEN = 64;  // Clock monitor enable
  CMCCE = 7;  m_CMCCE = 128;  // Clock management control change enable

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
  CMIMR: byte absolute $1E4;  // Clock interrupt mask Register
  CMIMRset: TCMIMRset absolute $1E4;
  CMIMRrec: TCMIMRrec absolute $1E4;
const
  ECIE = 0;  m_ECIE = 1;  // External clock interrupt enable

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
  CLPR: byte absolute $1E5;  // Clock Prescaler Register
  CLPRset: TCLPRset absolute $1E5;
  CLPRrec: TCLPRrec absolute $1E5;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // System Clock Prescaler Select
  CLKPS1 = 1;  m_CLKPS1 = 2;  // System Clock Prescaler Select
  CLKPS2 = 2;  m_CLKPS2 = 4;  // System Clock Prescaler Select
  CLTPS0 = 3;  m_CLTPS0 = 8;  // Timer Clock Prescaler Select
  CLTPS1 = 4;  m_CLTPS1 = 16;  // Timer Clock Prescaler Select
  CLTPS2 = 5;  m_CLTPS2 = 32;  // Timer Clock Prescaler Select
  CLPCE = 7;  m_CLPCE = 128;  // Clock Prescaler Change Enable

type
  TVMCRset = bitpacked set of (e_VMLS0, e_VMLS1, e_VMLS2, e_VMLS3, e_VMIM, e_VMPS0, e_VMPS1, e_VMRS);
  TVMCRrec = bitpacked record
    VMLS0,
    VMLS1,
    VMLS2,
    VMLS3,
    VMIM,
    VMPS0,
    VMPS1,
    VMRS: TBitField;
  end;
var
  VMCR: byte absolute $1E6;  // Voltage Monitor Control Register
  VMCRset: TVMCRset absolute $1E6;
  VMCRrec: TVMCRrec absolute $1E6;
const
  VMLS0 = 0;  m_VMLS0 = 1;  // Voltage Monitor Level Select
  VMLS1 = 1;  m_VMLS1 = 2;  // Voltage Monitor Level Select
  VMLS2 = 2;  m_VMLS2 = 4;  // Voltage Monitor Level Select
  VMLS3 = 3;  m_VMLS3 = 8;  // Voltage Monitor Level Select
  VMIM = 4;  m_VMIM = 16;  // Voltage Monitor Interrupt Mask
  VMPS0 = 5;  m_VMPS0 = 32;  // Voltage Monitor Power Supply Select
  VMPS1 = 6;  m_VMPS1 = 64;  // Voltage Monitor Power Supply Select
  VMRS = 7;  m_VMRS = 128;  // Voltage Monitor Range Select

type
  TDBONDRset = bitpacked set of (e_BBESD, e_AGND_BB, e_ISO_GND, e_AGND_LF, e_BTEST4, e_BTEST5, e_BTEST6);
  TDBONDRrec = bitpacked record
    BBESD,
    AGND_BB,
    ISO_GND,
    AGND_LF,
    BTEST4,
    BTEST5,
    BTEST6,
    ReservedBit7: TBitField;
  end;
var
  DBONDR: byte absolute $1E7;  // Downbond Test Register
  DBONDRset: TDBONDRset absolute $1E7;
  DBONDRrec: TDBONDRrec absolute $1E7;
const
  BBESD = 0;  m_BBESD = 1;  // Bond BBESD
  AGND_BB = 1;  m_AGND_BB = 2;  // Bond AGND BB
  ISO_GND = 2;  m_ISO_GND = 4;  // Bond ISO SUBS3 GND
  AGND_LF = 3;  m_AGND_LF = 8;  // Bond AGND LF
  BTEST4 = 4;  m_BTEST4 = 16;  // Bond Test 4
  BTEST5 = 5;  m_BTEST5 = 32;  // Bond Test 5
  BTEST6 = 6;  m_BTEST6 = 64;  // Bond Test 6

var
  CALRDYLF: byte absolute $1E8;  // Calibration ready signature LFVCC
  TW1BR: byte absolute $1E9;  // TWI1 Bit Rate Register

type
  TTW1CRset = bitpacked set of (e_TW1IE, e_TW1EN=2, e_TW1WC, e_TW1STO, e_TW1STA, e_TW1EA, e_TW1INT);
  TTW1CRrec = bitpacked record
    TW1IE,
    ReservedBit1,
    TW1EN,
    TW1WC,
    TW1STO,
    TW1STA,
    TW1EA,
    TW1INT: TBitField;
  end;
var
  TW1CR: byte absolute $1EA;  // TWI1 Control Register
  TW1CRset: TTW1CRset absolute $1EA;
  TW1CRrec: TTW1CRrec absolute $1EA;
const
  TW1IE = 0;  m_TW1IE = 1;  // TWI1 Interrupt Enable
  TW1EN = 2;  m_TW1EN = 4;  // TWI1 Enable
  TW1WC = 3;  m_TW1WC = 8;  // TWI1 Write Collision Flag
  TW1STO = 4;  m_TW1STO = 16;  // TWI1 STOP Condition
  TW1STA = 5;  m_TW1STA = 32;  // TWI1 START Condition
  TW1EA = 6;  m_TW1EA = 64;  // TWI1 Enable Acknowledge
  TW1INT = 7;  m_TW1INT = 128;  // TWI1 Interrupt Flag

type
  TTW1SRset = bitpacked set of (e_TW1PS0, e_TW1PS1, e_TW1S0=3, e_TW1S1, e_TW1S2, e_TW1S3, e_TW1S4);
  TTW1SRrec = bitpacked record
    TW1PS0,
    TW1PS1,
    ReservedBit2,
    TW1S0,
    TW1S1,
    TW1S2,
    TW1S3,
    TW1S4: TBitField;
  end;
var
  TW1SR: byte absolute $1EB;  // TWI1 Status Register
  TW1SRset: TTW1SRset absolute $1EB;
  TW1SRrec: TTW1SRrec absolute $1EB;
const
  TW1PS0 = 0;  m_TW1PS0 = 1;  // TWI1 Prescaler
  TW1PS1 = 1;  m_TW1PS1 = 2;  // TWI1 Prescaler
  TW1S0 = 3;  m_TW1S0 = 8;  // TWI1 Status
  TW1S1 = 4;  m_TW1S1 = 16;  // TWI1 Status
  TW1S2 = 5;  m_TW1S2 = 32;  // TWI1 Status
  TW1S3 = 6;  m_TW1S3 = 64;  // TWI1 Status
  TW1S4 = 7;  m_TW1S4 = 128;  // TWI1 Status

var
  TW1DR: byte absolute $1EC;  // TWI1 Data Register

type
  TTW1ARset = bitpacked set of (e_TW1GCE, e_TW1A0, e_TW1A1, e_TW1A2, e_TW1A3, e_TW1A4, e_TW1A5, e_TW1A6);
  TTW1ARrec = bitpacked record
    TW1GCE,
    TW1A0,
    TW1A1,
    TW1A2,
    TW1A3,
    TW1A4,
    TW1A5,
    TW1A6: TBitField;
  end;
var
  TW1AR: byte absolute $1ED;  // TWI1 (Slave) Address Register
  TW1ARset: TTW1ARset absolute $1ED;
  TW1ARrec: TTW1ARrec absolute $1ED;
const
  TW1GCE = 0;  m_TW1GCE = 1;  // TWI1 General Call Recognition Enable
  TW1A0 = 1;  m_TW1A0 = 2;  // TWI1 (Slave) Address
  TW1A1 = 2;  m_TW1A1 = 4;  // TWI1 (Slave) Address
  TW1A2 = 3;  m_TW1A2 = 8;  // TWI1 (Slave) Address
  TW1A3 = 4;  m_TW1A3 = 16;  // TWI1 (Slave) Address
  TW1A4 = 5;  m_TW1A4 = 32;  // TWI1 (Slave) Address
  TW1A5 = 6;  m_TW1A5 = 64;  // TWI1 (Slave) Address
  TW1A6 = 7;  m_TW1A6 = 128;  // TWI1 (Slave) Address

type
  TTW1AMRset = bitpacked set of (e_TW1AM0=1, e_TW1AM1, e_TW1AM2, e_TW1AM3, e_TW1AM4, e_TW1AM5, e_TW1AM6);
  TTW1AMRrec = bitpacked record
    ReservedBit0,
    TW1AM0,
    TW1AM1,
    TW1AM2,
    TW1AM3,
    TW1AM4,
    TW1AM5,
    TW1AM6: TBitField;
  end;
var
  TW1AMR: byte absolute $1EE;  // TWI1 Address Mask Register
  TW1AMRset: TTW1AMRset absolute $1EE;
  TW1AMRrec: TTW1AMRrec absolute $1EE;
const
  TW1AM0 = 1;  m_TW1AM0 = 2;  // TWI1 Address Mask
  TW1AM1 = 2;  m_TW1AM1 = 4;  // TWI1 Address Mask
  TW1AM2 = 3;  m_TW1AM2 = 8;  // TWI1 Address Mask
  TW1AM3 = 4;  m_TW1AM3 = 16;  // TWI1 Address Mask
  TW1AM4 = 5;  m_TW1AM4 = 32;  // TWI1 Address Mask
  TW1AM5 = 6;  m_TW1AM5 = 64;  // TWI1 Address Mask
  TW1AM6 = 7;  m_TW1AM6 = 128;  // TWI1 Address Mask

type
  TPDSCRset = bitpacked set of (e_PDSC0, e_PDSC1, e_PDSC2, e_PDSC3, e_PDSC4, e_STBTEST, e_RSSISEL, e_ATBSEL);
  TPDSCRrec = bitpacked record
    PDSC0,
    PDSC1,
    PDSC2,
    PDSC3,
    PDSC4,
    STBTEST,
    RSSISEL,
    ATBSEL: TBitField;
  end;
var
  PDSCR: byte absolute $1EF;  // Pad Driver Strength Control Register
  PDSCRset: TPDSCRset absolute $1EF;
  PDSCRrec: TPDSCRrec absolute $1EF;
const
  PDSC0 = 0;  m_PDSC0 = 1;  // Pad Driver Strength Control
  PDSC1 = 1;  m_PDSC1 = 2;  // Pad Driver Strength Control
  PDSC2 = 2;  m_PDSC2 = 4;  // Pad Driver Strength Control
  PDSC3 = 3;  m_PDSC3 = 8;  // Pad Driver Strength Control
  PDSC4 = 4;  m_PDSC4 = 16;  // Pad Driver Strength Control
  STBTEST = 5;  m_STBTEST = 32;  // Standby Test Enable
  RSSISEL = 6;  m_RSSISEL = 64;  // Testmode Enable for RSSI Measurement
  ATBSEL = 7;  m_ATBSEL = 128;  // Analog Testbus Select

type
  TTMOCRset = bitpacked set of (e_TO1PIS0, e_TO1PIS1, e_TO2PIS0, e_TO2PIS1, e_TO3PIS0, e_TO3PIS1, e_TO4PIS0, e_TO4PIS1);
  TTMOCRrec = bitpacked record
    TO1PIS0,
    TO1PIS1,
    TO2PIS0,
    TO2PIS1,
    TO3PIS0,
    TO3PIS1,
    TO4PIS0,
    TO4PIS1: TBitField;
  end;
var
  TMOCR: byte absolute $1F0;  // Timer Modulator Output Control Register
  TMOCRset: TTMOCRset absolute $1F0;
  TMOCRrec: TTMOCRrec absolute $1F0;
const
  TO1PIS0 = 0;  m_TO1PIS0 = 1;  // Timer modulator Output 1 Port Interface Select
  TO1PIS1 = 1;  m_TO1PIS1 = 2;  // Timer modulator Output 1 Port Interface Select
  TO2PIS0 = 2;  m_TO2PIS0 = 4;  // Timer modulator Output 2 Port Interface Select
  TO2PIS1 = 3;  m_TO2PIS1 = 8;  // Timer modulator Output 2 Port Interface Select
  TO3PIS0 = 4;  m_TO3PIS0 = 16;  // Timer modulator Output 3 Port Interface Select
  TO3PIS1 = 5;  m_TO3PIS1 = 32;  // Timer modulator Output 3 Port Interface Select
  TO4PIS0 = 6;  m_TO4PIS0 = 64;  // Timer modulator Output 4 Port Interface Select
  TO4PIS1 = 7;  m_TO4PIS1 = 128;  // Timer modulator Output 4 Port Interface Select

type
  TSRCCALset = bitpacked set of (e_SRCCAL1, e_SRCCAL2, e_SRCCAL3, e_SRCCAL4, e_SRCCAL5, e_SRCCAL6, e_SRCCAL7, e_SRCCAL8);
  TSRCCALrec = bitpacked record
    SRCCAL1,
    SRCCAL2,
    SRCCAL3,
    SRCCAL4,
    SRCCAL5,
    SRCCAL6,
    SRCCAL7,
    SRCCAL8: TBitField;
  end;
var
  SRCCAL: byte absolute $1F1;  // Slow RC oscillator calibration
  SRCCALset: TSRCCALset absolute $1F1;
  SRCCALrec: TSRCCALrec absolute $1F1;
const
  SRCCAL1 = 0;  m_SRCCAL1 = 1;  // Slow RC oscillator calibration bit 1
  SRCCAL2 = 1;  m_SRCCAL2 = 2;  // Slow RC oscillator calibration bit 2
  SRCCAL3 = 2;  m_SRCCAL3 = 4;  // Slow RC oscillator calibration bit 3
  SRCCAL4 = 3;  m_SRCCAL4 = 8;  // Slow RC oscillator calibration bit 4
  SRCCAL5 = 4;  m_SRCCAL5 = 16;  // Slow RC oscillator calibration bit 5
  SRCCAL6 = 5;  m_SRCCAL6 = 32;  // Slow RC oscillator calibration bit 6
  SRCCAL7 = 6;  m_SRCCAL7 = 64;  // Slow RC oscillator calibration bit 7
  SRCCAL8 = 7;  m_SRCCAL8 = 128;  // Slow RC oscillator calibration bit 8

type
  TSRCTCALset = bitpacked set of (e_SRCTC0, e_SRCTC1, e_SRCTC2, e_SRCS0, e_SRCS1, e_DIS_SRC=6, e_HOLD_SRC);
  TSRCTCALrec = bitpacked record
    SRCTC0,
    SRCTC1,
    SRCTC2,
    SRCS0,
    SRCS1,
    ReservedBit5,
    DIS_SRC,
    HOLD_SRC: TBitField;
  end;
var
  SRCTCAL: byte absolute $1F2;  // SRC oscillator Temperature Compensation register
  SRCTCALset: TSRCTCALset absolute $1F2;
  SRCTCALrec: TSRCTCALrec absolute $1F2;
const
  SRCTC0 = 0;  m_SRCTC0 = 1;  // SRC Oscillator Temperature Compensation
  SRCTC1 = 1;  m_SRCTC1 = 2;  // SRC Oscillator Temperature Compensation
  SRCTC2 = 2;  m_SRCTC2 = 4;  // SRC Oscillator Temperature Compensation
  SRCS0 = 3;  m_SRCS0 = 8;  // SRC Oscillator Select delta current
  SRCS1 = 4;  m_SRCS1 = 16;  // SRC Oscillator Select delta current
  DIS_SRC = 6;  m_DIS_SRC = 64;  // Disable SRC Bandgap
  HOLD_SRC = 7;  m_HOLD_SRC = 128;  // Stop SRC-Osccillator output

type
  TSUPCA5set = bitpacked set of (e_IPTAT0, e_IPTAT1, e_IPTAT2, e_IPTAT3, e_IPTAT4, e_IPTAT5);
  TSUPCA5rec = bitpacked record
    IPTAT0,
    IPTAT1,
    IPTAT2,
    IPTAT3,
    IPTAT4,
    IPTAT5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA5: byte absolute $1F3;  // Supply calibration register 5
  SUPCA5set: TSUPCA5set absolute $1F3;
  SUPCA5rec: TSUPCA5rec absolute $1F3;
const
  IPTAT0 = 0;  m_IPTAT0 = 1;  // IPTAT current of bandgap
  IPTAT1 = 1;  m_IPTAT1 = 2;  // IPTAT current of bandgap
  IPTAT2 = 2;  m_IPTAT2 = 4;  // IPTAT current of bandgap
  IPTAT3 = 3;  m_IPTAT3 = 8;  // IPTAT current of bandgap
  IPTAT4 = 4;  m_IPTAT4 = 16;  // IPTAT current of bandgap
  IPTAT5 = 5;  m_IPTAT5 = 32;  // IPTAT current of bandgap

type
  TSUPCA6set = bitpacked set of (e_VBGTR0, e_VBGTR1, e_VBGTR2, e_VBGTR3, e_VBGTR4, e_VBGTR5, e_VBGTR6, e_VBGTR7);
  TSUPCA6rec = bitpacked record
    VBGTR0,
    VBGTR1,
    VBGTR2,
    VBGTR3,
    VBGTR4,
    VBGTR5,
    VBGTR6,
    VBGTR7: TBitField;
  end;
var
  SUPCA6: byte absolute $1F4;  // Supply calibration register 6
  SUPCA6set: TSUPCA6set absolute $1F4;
  SUPCA6rec: TSUPCA6rec absolute $1F4;
const
  VBGTR0 = 0;  m_VBGTR0 = 1;  // Threshold voltage of bandgap
  VBGTR1 = 1;  m_VBGTR1 = 2;  // Threshold voltage of bandgap
  VBGTR2 = 2;  m_VBGTR2 = 4;  // Threshold voltage of bandgap
  VBGTR3 = 3;  m_VBGTR3 = 8;  // Threshold voltage of bandgap
  VBGTR4 = 4;  m_VBGTR4 = 16;  // Threshold voltage of bandgap
  VBGTR5 = 5;  m_VBGTR5 = 32;  // Threshold voltage of bandgap
  VBGTR6 = 6;  m_VBGTR6 = 64;  // Threshold voltage of bandgap
  VBGTR7 = 7;  m_VBGTR7 = 128;  // Threshold voltage of bandgap

type
  TSUPCA7set = bitpacked set of (e_VCCCAL0, e_VCCCAL1, e_VCCCAL2, e_LFVCCBD0, e_LFVCCBD1, e_LFVCCBD2);
  TSUPCA7rec = bitpacked record
    VCCCAL0,
    VCCCAL1,
    VCCCAL2,
    LFVCCBD0,
    LFVCCBD1,
    LFVCCBD2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA7: byte absolute $1F5;  // Supply calibration register 7
  SUPCA7set: TSUPCA7set absolute $1F5;
  SUPCA7rec: TSUPCA7rec absolute $1F5;
const
  VCCCAL0 = 0;  m_VCCCAL0 = 1;  // LFVCC and DVCC Output Voltage Calibration
  VCCCAL1 = 1;  m_VCCCAL1 = 2;  // LFVCC and DVCC Output Voltage Calibration
  VCCCAL2 = 2;  m_VCCCAL2 = 4;  // LFVCC and DVCC Output Voltage Calibration
  LFVCCBD0 = 3;  m_LFVCCBD0 = 8;  // VREF voltage for LFVCC Brown-out-Detector
  LFVCCBD1 = 4;  m_LFVCCBD1 = 16;  // VREF voltage for LFVCC Brown-out-Detector
  LFVCCBD2 = 5;  m_LFVCCBD2 = 32;  // VREF voltage for LFVCC Brown-out-Detector

type
  TSUPCA8set = bitpacked set of (e_VSWBD0, e_VSWBD1, e_VSWBD2, e_DVCCBD0, e_DVCCBD1, e_DVCCBD2);
  TSUPCA8rec = bitpacked record
    VSWBD0,
    VSWBD1,
    VSWBD2,
    DVCCBD0,
    DVCCBD1,
    DVCCBD2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA8: byte absolute $1F6;  // Supply calibration register 8
  SUPCA8set: TSUPCA8set absolute $1F6;
  SUPCA8rec: TSUPCA8rec absolute $1F6;
const
  VSWBD0 = 0;  m_VSWBD0 = 1;  // VSIG voltage for LFVCC Brown-out-Detector
  VSWBD1 = 1;  m_VSWBD1 = 2;  // VSIG voltage for LFVCC Brown-out-Detector
  VSWBD2 = 2;  m_VSWBD2 = 4;  // VSIG voltage for LFVCC Brown-out-Detector
  DVCCBD0 = 3;  m_DVCCBD0 = 8;  // VREF voltage for DVCC Brown-out-Detector
  DVCCBD1 = 4;  m_DVCCBD1 = 16;  // VREF voltage for DVCC Brown-out-Detector
  DVCCBD2 = 5;  m_DVCCBD2 = 32;  // VREF voltage for DVCC Brown-out-Detector

type
  TSUPCA9set = bitpacked set of (e_VMEM0, e_VMEM1, e_VMEM2, e_VMEM3, e_VMEM4, e_VMEM5, e_VMEM6, e_VMEM7);
  TSUPCA9rec = bitpacked record
    VMEM0,
    VMEM1,
    VMEM2,
    VMEM3,
    VMEM4,
    VMEM5,
    VMEM6,
    VMEM7: TBitField;
  end;
var
  SUPCA9: byte absolute $1F7;  // Supply calibration register 9
  SUPCA9set: TSUPCA9set absolute $1F7;
  SUPCA9rec: TSUPCA9rec absolute $1F7;
const
  VMEM0 = 0;  m_VMEM0 = 1;  // VMEM ldo voltage
  VMEM1 = 1;  m_VMEM1 = 2;  // VMEM ldo voltage
  VMEM2 = 2;  m_VMEM2 = 4;  // VMEM ldo voltage
  VMEM3 = 3;  m_VMEM3 = 8;  // VMEM ldo voltage
  VMEM4 = 4;  m_VMEM4 = 16;  // VMEM ldo voltage
  VMEM5 = 5;  m_VMEM5 = 32;  // VMEM ldo voltage
  VMEM6 = 6;  m_VMEM6 = 64;  // VMEM ldo voltage
  VMEM7 = 7;  m_VMEM7 = 128;  // VMEM ldo voltage

var
  SUPCA10: byte absolute $1F8;  // Supply calibration register 10

type
  TTPCALR11set = bitpacked set of (e_MTBTR0, e_MTBTR1, e_ENDVBD, e_ENLFBD, e_ENVSWBD, e_TPCALR115, e_TPCALR116, e_TPCALR117);
  TTPCALR11rec = bitpacked record
    MTBTR0,
    MTBTR1,
    ENDVBD,
    ENLFBD,
    ENVSWBD,
    TPCALR115,
    TPCALR116,
    TPCALR117: TBitField;
  end;
var
  TPCALR11: byte absolute $1F9;  // Transponder Calibration Register 11
  TPCALR11set: TTPCALR11set absolute $1F9;
  TPCALR11rec: TTPCALR11rec absolute $1F9;
const
  MTBTR0 = 0;  m_MTBTR0 = 1;  // Measurement Buffer Trimming bit 0
  MTBTR1 = 1;  m_MTBTR1 = 2;  // Measurement Buffer Trimming bit 1
  ENDVBD = 2;  m_ENDVBD = 4;  // Enable DVCC Brown Out Detection
  ENLFBD = 3;  m_ENLFBD = 8;  // Enable LFVCC Brown Out Detection
  ENVSWBD = 4;  m_ENVSWBD = 16;  // Enable VSW Brown Out Detection
  TPCALR115 = 5;  m_TPCALR115 = 32;
  TPCALR116 = 6;  m_TPCALR116 = 64;
  TPCALR117 = 7;  m_TPCALR117 = 128;

type
  TTPCALR12set = bitpacked set of (e_TPDMOD, e_TPCALR121, e_TPCALR122, e_TPCALR123, e_TPCALR124, e_TPCALR125, e_TPCALR126, e_TPCALR127);
  TTPCALR12rec = bitpacked record
    TPDMOD,
    TPCALR121,
    TPCALR122,
    TPCALR123,
    TPCALR124,
    TPCALR125,
    TPCALR126,
    TPCALR127: TBitField;
  end;
var
  TPCALR12: byte absolute $1FA;  // Transponder Calibration Register 12
  TPCALR12set: TTPCALR12set absolute $1FA;
  TPCALR12rec: TTPCALR12rec absolute $1FA;
const
  TPDMOD = 0;  m_TPDMOD = 1;  // Transponder Direct Modulation
  TPCALR121 = 1;  m_TPCALR121 = 2;
  TPCALR122 = 2;  m_TPCALR122 = 4;
  TPCALR123 = 3;  m_TPCALR123 = 8;
  TPCALR124 = 4;  m_TPCALR124 = 16;
  TPCALR125 = 5;  m_TPCALR125 = 32;
  TPCALR126 = 6;  m_TPCALR126 = 64;
  TPCALR127 = 7;  m_TPCALR127 = 128;

var
  TPCALR13: byte absolute $1FB;  // Transponder Calibration Register 13
  PMTER: byte absolute $1FE;  // Power Management Test Enable Register

type
  TSRCCALLset = bitpacked set of (e_SRCCAL0);
  TSRCCALLrec = bitpacked record
    SRCCAL0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SRCCALL: byte absolute $1FF;  // Slow RC oscillator calibration LSB
  SRCCALLset: TSRCCALLset absolute $1FF;
  SRCCALLrec: TSRCCALLrec absolute $1FF;
const
  SRCCAL0 = 0;  m_SRCCAL0 = 1;  // Slow RC oscillator calibration bit 0
  // typedefs = 230

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCI0_ISR; external name 'PCI0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCI1_ISR; external name 'PCI1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure VMON_ISR; external name 'VMON_ISR'; // Interrupt 5 Voltage Monitoring Interrupt
procedure AVCCR_ISR; external name 'AVCCR_ISR'; // Interrupt 6 AVCC Reset Interrupt
procedure AVCCL_ISR; external name 'AVCCL_ISR'; // Interrupt 7 AVCC Low Interrupt
procedure T0INT_ISR; external name 'T0INT_ISR'; // Interrupt 8 Timer0 Interval Interrupt
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
procedure SSM_ISR; external name 'SSM_ISR'; // Interrupt 24 Sequencer State Machine Interrupt
procedure DFFLR_ISR; external name 'DFFLR_ISR'; // Interrupt 25 Data FIFO fill level reached Interrupt
procedure DFOUE_ISR; external name 'DFOUE_ISR'; // Interrupt 26 Data FIFO overflow or underflow error Interrupt
procedure SFFLR_ISR; external name 'SFFLR_ISR'; // Interrupt 27 RSSI/Preamble FIFO fill level reached Interrupt
procedure SFOUE_ISR; external name 'SFOUE_ISR'; // Interrupt 28 RSSI/Preamble FIFO overflow or underflow error Interrupt
procedure TMTCF_ISR; external name 'TMTCF_ISR'; // Interrupt 29 Tx Modulator Telegram Finish Interrupt
procedure AES_ISR; external name 'AES_ISR'; // Interrupt 30 AES Krypto Unit Interrupt
procedure TPINT_ISR; external name 'TPINT_ISR'; // Interrupt 31 Transponder Mode Interrupt
procedure TPTOERR_ISR; external name 'TPTOERR_ISR'; // Interrupt 32 Transponder Timeout Error Interrupt
procedure LFID0INT_ISR; external name 'LFID0INT_ISR'; // Interrupt 33 LF receiver Identifier 0 Interrupt
procedure LFID1INT_ISR; external name 'LFID1INT_ISR'; // Interrupt 34 LF receiver Identifier 1 Interrupt
procedure LFFEINT_ISR; external name 'LFFEINT_ISR'; // Interrupt 35 LF receiver Frame End Interrupt
procedure LFBCR_ISR; external name 'LFBCR_ISR'; // Interrupt 36 LF receiver Bit Count Reached Interrupt
procedure LFPBD_ISR; external name 'LFPBD_ISR'; // Interrupt 37 LF receiver PreBurst Detected Interrupt
procedure LFDE_ISR; external name 'LFDE_ISR'; // Interrupt 38 LF receiver Decoder Error Interrupt
procedure LFEOT_ISR; external name 'LFEOT_ISR'; // Interrupt 39 LF receiver End of Telegram Interrupt
procedure LFTCOR_ISR; external name 'LFTCOR_ISR'; // Interrupt 40 LF receiver Timer Compare Match Interrupt
procedure LFRSCO_ISR; external name 'LFRSCO_ISR'; // Interrupt 41 LF receiver RSSI measurement Interrupt
procedure LDFFLR_ISR; external name 'LDFFLR_ISR'; // Interrupt 42 LF Data FIFO Fill Level Reached Interrupt
procedure LDFOUE_ISR; external name 'LDFOUE_ISR'; // Interrupt 43 LF Data FIFO Overflow or Underflow Error Interrupt
procedure EXCM_ISR; external name 'EXCM_ISR'; // Interrupt 44 External input Clock monitoring Interrupt
procedure E2CINT_ISR; external name 'E2CINT_ISR'; // Interrupt 45 EEPROM Error Correction Interrupt
procedure ERDY_ISR; external name 'ERDY_ISR'; // Interrupt 46 EEPROM Ready Interrupt
procedure SPMR_ISR; external name 'SPMR_ISR'; // Interrupt 47 Store Program Memory Ready
procedure TWI1_ISR; external name 'TWI1_ISR'; // Interrupt 48 TWI1 Interrupt
procedure SPI2_ISR; external name 'SPI2_ISR'; // Interrupt 49 SPI2 Interrupt
procedure TWI2_ISR; external name 'TWI2_ISR'; // Interrupt 50 TWI2 Interrupt

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
  jmp SSM_ISR
  jmp DFFLR_ISR
  jmp DFOUE_ISR
  jmp SFFLR_ISR
  jmp SFOUE_ISR
  jmp TMTCF_ISR
  jmp AES_ISR
  jmp TPINT_ISR
  jmp TPTOERR_ISR
  jmp LFID0INT_ISR
  jmp LFID1INT_ISR
  jmp LFFEINT_ISR
  jmp LFBCR_ISR
  jmp LFPBD_ISR
  jmp LFDE_ISR
  jmp LFEOT_ISR
  jmp LFTCOR_ISR
  jmp LFRSCO_ISR
  jmp LDFFLR_ISR
  jmp LDFOUE_ISR
  jmp EXCM_ISR
  jmp E2CINT_ISR
  jmp ERDY_ISR
  jmp SPMR_ISR
  jmp TWI1_ISR
  jmp SPI2_ISR
  jmp TWI2_ISR

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
  .weak SSM_ISR
  .weak DFFLR_ISR
  .weak DFOUE_ISR
  .weak SFFLR_ISR
  .weak SFOUE_ISR
  .weak TMTCF_ISR
  .weak AES_ISR
  .weak TPINT_ISR
  .weak TPTOERR_ISR
  .weak LFID0INT_ISR
  .weak LFID1INT_ISR
  .weak LFFEINT_ISR
  .weak LFBCR_ISR
  .weak LFPBD_ISR
  .weak LFDE_ISR
  .weak LFEOT_ISR
  .weak LFTCOR_ISR
  .weak LFRSCO_ISR
  .weak LDFFLR_ISR
  .weak LDFOUE_ISR
  .weak EXCM_ISR
  .weak E2CINT_ISR
  .weak ERDY_ISR
  .weak SPMR_ISR
  .weak TWI1_ISR
  .weak SPI2_ISR
  .weak TWI2_ISR

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
  .set SSM_ISR, Default_IRQ_handler
  .set DFFLR_ISR, Default_IRQ_handler
  .set DFOUE_ISR, Default_IRQ_handler
  .set SFFLR_ISR, Default_IRQ_handler
  .set SFOUE_ISR, Default_IRQ_handler
  .set TMTCF_ISR, Default_IRQ_handler
  .set AES_ISR, Default_IRQ_handler
  .set TPINT_ISR, Default_IRQ_handler
  .set TPTOERR_ISR, Default_IRQ_handler
  .set LFID0INT_ISR, Default_IRQ_handler
  .set LFID1INT_ISR, Default_IRQ_handler
  .set LFFEINT_ISR, Default_IRQ_handler
  .set LFBCR_ISR, Default_IRQ_handler
  .set LFPBD_ISR, Default_IRQ_handler
  .set LFDE_ISR, Default_IRQ_handler
  .set LFEOT_ISR, Default_IRQ_handler
  .set LFTCOR_ISR, Default_IRQ_handler
  .set LFRSCO_ISR, Default_IRQ_handler
  .set LDFFLR_ISR, Default_IRQ_handler
  .set LDFOUE_ISR, Default_IRQ_handler
  .set EXCM_ISR, Default_IRQ_handler
  .set E2CINT_ISR, Default_IRQ_handler
  .set ERDY_ISR, Default_IRQ_handler
  .set SPMR_ISR, Default_IRQ_handler
  .set TWI1_ISR, Default_IRQ_handler
  .set SPI2_ISR, Default_IRQ_handler
  .set TWI2_ISR, Default_IRQ_handler
end;

end.
