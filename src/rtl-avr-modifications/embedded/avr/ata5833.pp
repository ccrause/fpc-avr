unit ATA5833;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TPRR0set = bitpacked set of (e_PRSPI, e_PRRXDC, e_PRTXDC, e_PRCRC, e_PRVM, e_PRCO);
  TPRR0rec = bitpacked record
    PRSPI,
    PRRXDC,
    PRTXDC,
    PRCRC,
    PRVM,
    PRCO,
    ReservedBit6,
    ReservedBit7: TBitField;
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
  TPRR2set = bitpacked set of (e_PRXB, e_PRXA, e_PRSF, e_PRDF, e_PRIDS, e_PRRS, e_PRTM, e_PRSSM);
  TPRR2rec = bitpacked record
    PRXB,
    PRXA,
    PRSF,
    PRDF,
    PRIDS,
    PRRS,
    PRTM,
    PRSSM: TBitField;
  end;
var
  PRR2: byte absolute $23;  // Power Reduction Register 2
  PRR2set: TPRR2set absolute $23;
  PRR2rec: TPRR2rec absolute $23;
const
  PRXB = 0;  m_PRXB = 1;  // Power Reduction Rx Buffer B
  PRXA = 1;  m_PRXA = 2;  // Power Reduction Rx Buffer A
  PRSF = 2;  m_PRSF = 4;  // Power Reduction Preamble/RSSI FIFO
  PRDF = 3;  m_PRDF = 8;  // Power Reduction Data FIFO
  PRIDS = 4;  m_PRIDS = 16;  // Power Reduction ID Scan
  PRRS = 5;  m_PRRS = 32;  // Power Reduction RSSI Buffer
  PRTM = 6;  m_PRTM = 64;  // Power Reduction Tx Modulator
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
  RDPR: byte absolute $24;  // Rx DSP power reduction register
  RDPRset: TRDPRset absolute $24;
  RDPRrec: TRDPRrec absolute $24;
const
  PRPTB = 0;  m_PRPTB = 1;  // Power reduction register for the demodulator and receiving path A
  PRPTA = 1;  m_PRPTA = 2;  // Power reduction register for the demodulator and receiving path B
  PRFLT = 2;  m_PRFLT = 4;  // Power reduction register for the digital channel filter
  PRTMP = 3;  m_PRTMP = 8;  // Power reduction register for temperature measurement
  APRPTB = 4;  m_APRPTB = 16;  // Automatic Power Reduction of Path B
  APRPTA = 5;  m_APRPTA = 32;  // Automatic Power Reduction of Path A
  ARDPRF = 6;  m_ARDPRF = 64;  // Automatic Rx DSP Power Reduction Flag
  RDPRF = 7;  m_RDPRF = 128;  // Rx DSP power reduction register(RDPR) busy flag

var
  PINB: byte absolute $25;  // Port B Input Pins
  DDRB: byte absolute $26;  // Port B Data Direction Register

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
  DDRC: byte absolute $29;  // Port C Data Direction Register

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
  FSCR: byte absolute $2B;  // Frequency Synthesizer Control Register
  FSCRset: TFSCRset absolute $2B;
  FSCRrec: TFSCRrec absolute $2B;
const
  TXMOD = 0;  m_TXMOD = 1;  // Tx Modulation
  SFM = 1;  m_SFM = 2;  // Select FSK Modulation
  TXMS0 = 2;  m_TXMS0 = 4;  // Tx Modulation Source
  TXMS1 = 3;  m_TXMS1 = 8;  // Tx Modulation Source
  PAOER = 4;  m_PAOER = 16;  // Power Amplifier Output Enable Register
  PAON = 7;  m_PAON = 128;  // Power Amplifier Output is On

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
  RDSIFR: byte absolute $2D;  // Rx DSP status interrupt flag register
  RDSIFRset: TRDSIFRset absolute $2D;
  RDSIFRrec: TRDSIFRrec absolute $2D;
const
  NBITA = 0;  m_NBITA = 1;  // New Bit on Rx path A
  NBITB = 1;  m_NBITB = 2;  // New Bit on Rx path B
  EOTA = 2;  m_EOTA = 4;  // End Of Telegram on path A
  EOTB = 3;  m_EOTB = 8;  // End Of Telegram on path B
  SOTA = 4;  m_SOTA = 16;  // Start Of Telegram on path A
  SOTB = 5;  m_SOTB = 32;  // Start Of Telegram on path B
  WCOA = 6;  m_WCOA = 64;  // Wake Conditions Ok on path A
  WCOB = 7;  m_WCOB = 128;  // Wake Conditions Ok on path B

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
  PB4HS = 5;  m_PB4HS = 32;  // Port B4 High Side Driver enable
  PB7LS = 6;  m_PB7LS = 64;  // Port B7 Low Side Driver enable
  PB7HS = 7;  m_PB7HS = 128;  // Port B7 High Side Driver enable

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
  PCIFR: byte absolute $2F;  // Pin change Interrupt flag Register
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
  T0PS0 = 0;  m_T0PS0 = 1;  // Timer 0 Prescaler Select
  T0PS1 = 1;  m_T0PS1 = 2;  // Timer 0 Prescaler Select
  T0PS2 = 2;  m_T0PS2 = 4;  // Timer 0 Prescaler Select
  T0IE = 3;  m_T0IE = 8;  // Timer 0 Interrupt Enable
  T0PR = 4;  m_T0PR = 16;  // Timer 0 Prescaler Reset

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
  T3CPRM = 3;  m_T3CPRM = 8;  // Timer3 CaPture reset Mask
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
  T4CPRM = 3;  m_T4CPRM = 8;  // Timer4 CaPture reset Mask
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
  T3IFR: byte absolute $37;  // Timer3 interrupt flag Register
  T3IFRset: TT3IFRset absolute $37;
  T3IFRrec: TT3IFRrec absolute $37;
const
  T3OFF = 0;  m_T3OFF = 1;  // Timer3 OverFlow Flag
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
  T4IFR: byte absolute $38;  // Timer4 interrupt flag Register
  T4IFRset: TT4IFRset absolute $38;
  T4IFRrec: TT4IFRrec absolute $38;
const
  T4OFF = 0;  m_T4OFF = 1;  // Timer4 OverFlow Flag
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
  T5OFF = 0;  m_T5OFF = 1;  // Timer5 Output Overflow Flag
  T5COF = 1;  m_T5COF = 2;  // Timer5 Output Compare Output Match Flag

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
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_WDRF=3);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    ReservedBit2,
    WDRF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MCUSR: byte absolute $4B;  // MCU Status Register
  MCUSRset: TMCUSRset absolute $4B;
  MCUSRrec: TMCUSRrec absolute $4B;
const
  PORF = 0;  m_PORF = 1;  // Power-on Reset flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

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
  DWDR: byte absolute $51;  // debugWire communication Register

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
  RDCR: byte absolute $53;  // Rx DSP control register
  RDCRset: TRDCRset absolute $53;
  RDCRrec: TRDCRrec absolute $53;
const
  RDPU = 0;  m_RDPU = 1;  // Rx DSP Power Up
  ADIVEN = 1;  m_ADIVEN = 2;  // Divided ADC clock enable
  RDEN = 2;  m_RDEN = 4;  // Rx DSP enable

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
  EOTSA: byte absolute $54;  // End Of Telegram Status on path A
  EOTSAset: TEOTSAset absolute $54;
  EOTSArec: TEOTSArec absolute $54;
const
  CARFA = 0;  m_CARFA = 1;  // CARrier check Failed on path A
  AMPFA = 1;  m_AMPFA = 2;  // AMPlitude Failed on path A
  SYTFA = 2;  m_SYTFA = 4;  // SYmbol Timing check Failed on path A
  MANFA = 3;  m_MANFA = 8;  // MANchester coding Failed on path A
  TMOFA = 4;  m_TMOFA = 16;  // Time-Out Fail on path A
  TELRA = 5;  m_TELRA = 32;  // Telegram Length Reached on path A
  RRFA = 6;  m_RRFA = 64;  // RSSI Range Fail on path A
  EOTBF = 7;  m_EOTBF = 128;  // End Of Telegram on path B Flag

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
  EOTCA: byte absolute $55;  // End Of Telegram Conditions for path A
  EOTCAset: TEOTCAset absolute $55;
  EOTCArec: TEOTCArec absolute $55;
const
  CARFEA = 0;  m_CARFEA = 1;  // CARrier check Failed Enable for path A
  AMPFEA = 1;  m_AMPFEA = 2;  // AMPlitude Failed Enable for path A
  SYTFEA = 2;  m_SYTFEA = 4;  // SYmbol Timing check Failed Enable for path A
  MANFEA = 3;  m_MANFEA = 8;  // MANchester Coding Failed Enable for path A
  TMOFEA = 4;  m_TMOFEA = 16;  // Time-Out Fail Enable on path A
  TELREA = 5;  m_TELREA = 32;  // Telegram Length Reached Enable on path A
  RRFEA = 6;  m_RRFEA = 64;  // RSSI Range Fail Enable on path A
  EOTBFE = 7;  m_EOTBFE = 128;  // End Of Telegram on path B Fail Enable

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
  EOTSB: byte absolute $56;  // End Of Telegram Status on path B
  EOTSBset: TEOTSBset absolute $56;
  EOTSBrec: TEOTSBrec absolute $56;
const
  CARFB = 0;  m_CARFB = 1;  // CARrier check Failed on path B
  AMPFB = 1;  m_AMPFB = 2;  // AMPlitude Failed on path B
  SYTFB = 2;  m_SYTFB = 4;  // SYmbol Timing check Failed on path B
  MANFB = 3;  m_MANFB = 8;  // MANchester coding Failed on path B
  TMOFB = 4;  m_TMOFB = 16;  // Time-Out Fail on path B
  TELRB = 5;  m_TELRB = 32;  // Telegram Length Reached on path B
  RRFB = 6;  m_RRFB = 64;  // RSSI Range Fail on path B
  EOTAF = 7;  m_EOTAF = 128;  // End Of Telegram on path A Flag

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
  EOTCB: byte absolute $57;  // End Of Telegram Conditions for path B
  EOTCBset: TEOTCBset absolute $57;
  EOTCBrec: TEOTCBrec absolute $57;
const
  CARFEB = 0;  m_CARFEB = 1;  // CARrier check Failed Enable for path B
  AMPFEB = 1;  m_AMPFEB = 2;  // AMPlitude Failed Enable for path B
  SYTFEB = 2;  m_SYTFEB = 4;  // SYmbol Timing check Failed Enable for path B
  MANFEB = 3;  m_MANFEB = 8;  // MANchester Coding Failed Enable for path B
  TMOFEB = 4;  m_TMOFEB = 16;  // Time-Out Fail Enable on path B
  TELREB = 5;  m_TELREB = 32;  // Telegram Length Reached Enable on path B
  RRFEB = 6;  m_RRFEB = 64;  // RSSI Range Fail Enable on path B
  EOTAFE = 7;  m_EOTAFE = 128;  // End Of Telegram on path B Fail Enable

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
  TCMCRset = bitpacked set of (e_CMM0, e_CMM1, e_CMM2, e_CCS, e_SRCD, e_CMONEN=6, e_CMCCE);
  TCMCRrec = bitpacked record
    CMM0,
    CMM1,
    CMM2,
    CCS,
    SRCD,
    ReservedBit5,
    CMONEN,
    CMCCE: TBitField;
  end;
var
  CMCR: byte absolute $59;  // Clock Management Control Register
  CMCRset: TCMCRset absolute $59;
  CMCRrec: TCMCRrec absolute $59;
const
  CMM0 = 0;  m_CMM0 = 1;  // Clock Management Mode
  CMM1 = 1;  m_CMM1 = 2;  // Clock Management Mode
  CMM2 = 2;  m_CMM2 = 4;  // Clock Management Mode
  CCS = 3;  m_CCS = 8;  // Core Clock Select
  SRCD = 4;  m_SRCD = 16;  // Slow RC oscillator disable
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
  CMIMR: byte absolute $5A;  // Clock Interrupt Mask Register
  CMIMRset: TCMIMRset absolute $5A;
  CMIMRrec: TCMIMRrec absolute $5A;
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
  CLPR: byte absolute $5B;  // Clock Prescaler Register
  CLPRset: TCLPRset absolute $5B;
  CLPRrec: TCLPRrec absolute $5B;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select
  CLTPS0 = 3;  m_CLTPS0 = 8;  // Timer Clock Prescaler Select
  CLTPS1 = 4;  m_CLTPS1 = 16;  // Timer Clock Prescaler Select
  CLTPS2 = 5;  m_CLTPS2 = 32;  // Timer Clock Prescaler Select
  CLPCE = 7;  m_CLPCE = 128;  // Clock Prescaler Change Enable

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
  SPMCSR: byte absolute $5C;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $5C;
  SPMCSRrec: TSPMCSRrec absolute $5C;
const
  SELFPRGEN = 0;  m_SELFPRGEN = 1;  // Self Programming Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
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
  TPCMSK1set = bitpacked set of (e_PCINT8, e_PCINT9, e_PCINT10, e_PCINT11, e_PCINT12, e_PCINT13);
  TPCMSK1rec = bitpacked record
    PCINT8,
    PCINT9,
    PCINT10,
    PCINT11,
    PCINT12,
    PCINT13,
    ReservedBit6,
    ReservedBit7: TBitField;
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
  T3CS0 = 0;  m_T3CS0 = 1;  // Timer 3 Clock Select
  T3CS1 = 1;  m_T3CS1 = 2;  // Timer 3 Clock Select
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
  T4CS0 = 0;  m_T4CS0 = 1;  // Timer 4 Clock Select
  T4CS1 = 1;  m_T4CS1 = 2;  // Timer 4 Clock Select
  T4PS0 = 2;  m_T4PS0 = 4;  // Timer 4 Prescaler Select
  T4PS1 = 3;  m_T4PS1 = 8;  // Timer 4 Prescaler Select
  T4PS2 = 4;  m_T4PS2 = 16;  // Timer 4 Prescaler Select

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
  PSR10 = 0;  m_PSR10 = 1;  // PreScaler Reset
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

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
  SOTSB: byte absolute $91;  // Start Of Telegram Status for path B
  SOTSBset: TSOTSBset absolute $91;
  SOTSBrec: TSOTSBrec absolute $91;
const
  CAROB = 0;  m_CAROB = 1;  // CARrier check Ok on path B
  AMPOB = 1;  m_AMPOB = 2;  // AMPlitude Ok on path B
  SYTOB = 2;  m_SYTOB = 4;  // Symbol Timing Ok on path B
  MANOB = 3;  m_MANOB = 8;  // Manchester Coding Ok on path B
  WUPOB = 4;  m_WUPOB = 16;  // Wake Up Pattern matched on path B
  SFIDOB = 5;  m_SFIDOB = 32;  // Start of Frame IDentifier matched on path B
  RROB = 6;  m_RROB = 64;  // RSSI Range Ok on Path B
  WCOAO = 7;  m_WCOAO = 128;  // Wake Check Ok on path A Ok

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
  SOTSA: byte absolute $92;  // Start Of Telegram Status for path A
  SOTSAset: TSOTSAset absolute $92;
  SOTSArec: TSOTSArec absolute $92;
const
  CAROA = 0;  m_CAROA = 1;  // CARrier check Ok on path A
  AMPOA = 1;  m_AMPOA = 2;  // AMPlitude Ok on path A
  SYTOA = 2;  m_SYTOA = 4;  // Symbol Timing Ok on path A
  MANOA = 3;  m_MANOA = 8;  // Manchester Coding Ok on path A
  WUPOA = 4;  m_WUPOA = 16;  // Wake Up Pattern matched on path A
  SFIDOA = 5;  m_SFIDOA = 32;  // Start of Frame IDentifier matched on path A
  RROA = 6;  m_RROA = 64;  // RSSI Range Ok on Path A
  WCOBO = 7;  m_WCOBO = 128;  // Wake Check Ok on path B Ok

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
  SOTCB: byte absolute $93;  // Start Of Telegram Conditions for path B
  SOTCBset: TSOTCBset absolute $93;
  SOTCBrec: TSOTCBrec absolute $93;
const
  CAROEB = 0;  m_CAROEB = 1;  // CARrier check Ok Enabled for path B
  AMPOEB = 1;  m_AMPOEB = 2;  // AMPlitude Ok Enabled for path B
  SYTOEB = 2;  m_SYTOEB = 4;  // Symbol Timing Ok Enabled for path B
  MANOEB = 3;  m_MANOEB = 8;  // Manchester Coding Ok Enabled for path B
  WUPEB = 4;  m_WUPEB = 16;  // Wake Up Pattern match Enabled for path B
  SFIDEB = 5;  m_SFIDEB = 32;  // Start of Frame IDentifier match Enabled for path B
  RROEB = 6;  m_RROEB = 64;  // RSSI Range OK Enable for path B
  WCOAOE = 7;  m_WCOAOE = 128;  // Wake Check OK from path A Ok Enable

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
  SOTCA: byte absolute $94;  // Start Of Telegram Conditions for path A
  SOTCAset: TSOTCAset absolute $94;
  SOTCArec: TSOTCArec absolute $94;
const
  CAROEA = 0;  m_CAROEA = 1;  // CARrier check Ok Enabled for path A
  AMPOEA = 1;  m_AMPOEA = 2;  // AMPlitude Ok Enabled for path A
  SYTOEA = 2;  m_SYTOEA = 4;  // Symbol Timing Ok Enabled for path A
  MANOEA = 3;  m_MANOEA = 8;  // Manchester Coding Ok Enabled for path A
  WUPEA = 4;  m_WUPEA = 16;  // Wake Up Pattern match Enabled for path A
  SFIDEA = 5;  m_SFIDEA = 32;  // Start of Frame IDentifier match Enabled for path A
  RROEA = 6;  m_RROEA = 64;  // RSSI Range OK Enable for path A
  WCOBOE = 7;  m_WCOBOE = 128;  // Wake Check OK from path B Ok Enable

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
  TESRB: byte absolute $95;  // Telegram Status Register on Path B
  TESRBset: TTESRBset absolute $95;
  TESRBrec: TTESRBrec absolute $95;
const
  CRCOB = 0;  m_CRCOB = 1;  // Cyclic Redundancy Check Ok on path B
  EOTLB0 = 1;  m_EOTLB0 = 2;  // End of Telegram Location on path B
  EOTLB1 = 2;  m_EOTLB1 = 4;  // End of Telegram Location on path B

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
  TESRA: byte absolute $96;  // Telegram Status Register on Path A
  TESRAset: TTESRAset absolute $96;
  TESRArec: TTESRArec absolute $96;
const
  CRCOA = 0;  m_CRCOA = 1;  // Cyclic Redundancy Check Ok on path A
  EOTLA0 = 1;  m_EOTLA0 = 2;  // End of Telegram Location on path A
  EOTLA1 = 2;  m_EOTLA1 = 4;  // End of Telegram Location on path A

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
  RDSIMR: byte absolute $98;  // Rx DSP status interrupt mask register
  RDSIMRset: TRDSIMRset absolute $98;
  RDSIMRrec: TRDSIMRrec absolute $98;
const
  NBITAM = 0;  m_NBITAM = 1;  // New bit on Rx path A interrupt mask register
  NBITBM = 1;  m_NBITBM = 2;  // New bit on Rx path B interrupt mask register
  EOTAM = 2;  m_EOTAM = 4;  // End Of Telegram on Rx path A interrupt mask register
  EOTBM = 3;  m_EOTBM = 8;  // End Of Telegram on Rx path B interrupt mask register
  SOTAM = 4;  m_SOTAM = 16;  // Start Of Telegram on Rx path A interrupt mask register
  SOTBM = 5;  m_SOTBM = 32;  // Start Of Telegram on Rx path B interrupt mask register
  WCOAM = 6;  m_WCOAM = 64;  // Wake Conditions Ok on path A interrupt mask register
  WCOBM = 7;  m_WCOBM = 128;  // Wake Conditions Ok on path B interrupt mask register

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
  RDOCR: byte absolute $99;  // Rx DSP output control
  RDOCRset: TRDOCRset absolute $99;
  RDOCRrec: TRDOCRrec absolute $99;
const
  TMDS0 = 1;  m_TMDS0 = 2;  // Transparent Mode Data Select
  TMDS1 = 2;  m_TMDS1 = 4;  // Transparent Mode Data Select
  ETRPA = 3;  m_ETRPA = 8;  // Enable Transparent Path A
  ETRPB = 4;  m_ETRPB = 16;  // Enable Transparent Path B
  RDSIDA = 5;  m_RDSIDA = 32;  // Rx DSP Start bit Is Data for path A
  RDSIDB = 6;  m_RDSIDB = 64;  // Rx DSP Start bit Is Data for path B

var
  TEMPL: byte absolute $9B;  // Temperature Low byte
  TEMPH: byte absolute $9C;  // Temperature High byte

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
  SYCB: byte absolute $9D;  // Symbol check configuration for data path B
  SYCBset: TSYCBset absolute $9D;
  SYCBrec: TSYCBrec absolute $9D;
const
  SYCSB0 = 0;  m_SYCSB0 = 1;  // Symbol Check check size for data path B
  SYCSB1 = 1;  m_SYCSB1 = 2;  // Symbol Check check size for data path B
  SYCSB2 = 2;  m_SYCSB2 = 4;  // Symbol Check check size for data path B
  SYCSB3 = 3;  m_SYCSB3 = 8;  // Symbol Check check size for data path B
  SYTLB0 = 4;  m_SYTLB0 = 16;  // Symbol timing limit for path B
  SYTLB1 = 5;  m_SYTLB1 = 32;  // Symbol timing limit for path B
  SYTLB2 = 6;  m_SYTLB2 = 64;  // Symbol timing limit for path B
  SYTLB3 = 7;  m_SYTLB3 = 128;  // Symbol timing limit for path B

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
  SYCA: byte absolute $9E;  // Symbol check configuration for data path A
  SYCAset: TSYCAset absolute $9E;
  SYCArec: TSYCArec absolute $9E;
const
  SYCSA0 = 0;  m_SYCSA0 = 1;  // Symbol Check check size for data path A
  SYCSA1 = 1;  m_SYCSA1 = 2;  // Symbol Check check size for data path A
  SYCSA2 = 2;  m_SYCSA2 = 4;  // Symbol Check check size for data path A
  SYCSA3 = 3;  m_SYCSA3 = 8;  // Symbol Check check size for data path A
  SYTLA0 = 4;  m_SYTLA0 = 16;  // Symbol timing limit for path A
  SYTLA1 = 5;  m_SYTLA1 = 32;  // Symbol timing limit for path A
  SYTLA2 = 6;  m_SYTLA2 = 64;  // Symbol timing limit for path A
  SYTLA3 = 7;  m_SYTLA3 = 128;  // Symbol timing limit for path A

var
  RXFOB: byte absolute $9F;  // Received Frequency Offset vs Intermediate Frequency on path B
  RXFOA: byte absolute $A0;  // Received Frequency Offset vs Intermediate Frequency on path A

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
  DMMB: byte absolute $A1;  // Demodulator Mode for Path B
  DMMBset: TDMMBset absolute $A1;
  DMMBrec: TDMMBrec absolute $A1;
const
  DMATB0 = 0;  m_DMATB0 = 1;  // Demodulator Amplitude Threshold for path B
  DMATB1 = 1;  m_DMATB1 = 2;  // Demodulator Amplitude Threshold for path B
  DMATB2 = 2;  m_DMATB2 = 4;  // Demodulator Amplitude Threshold for path B
  DMATB3 = 3;  m_DMATB3 = 8;  // Demodulator Amplitude Threshold for path B
  DMATB4 = 4;  m_DMATB4 = 16;  // Demodulator Amplitude Threshold for path B
  DMPB = 5;  m_DMPB = 32;  // Demodulator Data Polarity Selection for path B
  DMHB = 6;  m_DMHB = 64;  // Demodulator Hold Mode for path B
  DMNEB = 7;  m_DMNEB = 128;  // Demodulator NRZ Enable for path B

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
  DMMA: byte absolute $A2;  // Demodulator Mode for path A
  DMMAset: TDMMAset absolute $A2;
  DMMArec: TDMMArec absolute $A2;
const
  DMATA0 = 0;  m_DMATA0 = 1;  // Demodulator Amplitude Threshold for path A
  DMATA1 = 1;  m_DMATA1 = 2;  // Demodulator Amplitude Threshold for path A
  DMATA2 = 2;  m_DMATA2 = 4;  // Demodulator Amplitude Threshold for path A
  DMATA3 = 3;  m_DMATA3 = 8;  // Demodulator Amplitude Threshold for path A
  DMATA4 = 4;  m_DMATA4 = 16;  // Demodulator Amplitude Threshold for path A
  DMPA = 5;  m_DMPA = 32;  // Demodulator Data Polarity Selection for path A
  DMHA = 6;  m_DMHA = 64;  // Demodulator Hold Mode for path A
  DMNEA = 7;  m_DMNEA = 128;  // Demodulator NRZ Enable for path A

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
  DMCDB: byte absolute $A3;  // Demodulator Carrier Detect for path B
  DMCDBset: TDMCDBset absolute $A3;
  DMCDBrec: TDMCDBrec absolute $A3;
const
  DMCLB0 = 0;  m_DMCLB0 = 1;  // Demodulator Carrier Detect Limit for path B
  DMCLB1 = 1;  m_DMCLB1 = 2;  // Demodulator Carrier Detect Limit for path B
  DMCLB2 = 2;  m_DMCLB2 = 4;  // Demodulator Carrier Detect Limit for path B
  DMCLB3 = 3;  m_DMCLB3 = 8;  // Demodulator Carrier Detect Limit for path B
  DMCLB4 = 4;  m_DMCLB4 = 16;  // Demodulator Carrier Detect Limit for path B
  DMCTB0 = 5;  m_DMCTB0 = 32;  // Demodulator Carrier Detect Time for path B
  DMCTB1 = 6;  m_DMCTB1 = 64;  // Demodulator Carrier Detect Time for path B
  DMCTB2 = 7;  m_DMCTB2 = 128;  // Demodulator Carrier Detect Time for path B

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
  DMCDA: byte absolute $A4;  // Demodulator Carrier Detect for path A
  DMCDAset: TDMCDAset absolute $A4;
  DMCDArec: TDMCDArec absolute $A4;
const
  DMCLA0 = 0;  m_DMCLA0 = 1;  // Demodulator Carrier Detect Limit for path A
  DMCLA1 = 1;  m_DMCLA1 = 2;  // Demodulator Carrier Detect Limit for path A
  DMCLA2 = 2;  m_DMCLA2 = 4;  // Demodulator Carrier Detect Limit for path A
  DMCLA3 = 3;  m_DMCLA3 = 8;  // Demodulator Carrier Detect Limit for path A
  DMCLA4 = 4;  m_DMCLA4 = 16;  // Demodulator Carrier Detect Limit for path A
  DMCTA0 = 5;  m_DMCTA0 = 32;  // Demodulator Carrier Detect Time for path A
  DMCTA1 = 6;  m_DMCTA1 = 64;  // Demodulator Carrier Detect Time for path A
  DMCTA2 = 7;  m_DMCTA2 = 128;  // Demodulator Carrier Detect Time for path A

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
  DMCRB: byte absolute $A5;  // Demodulator Control Register for path B
  DMCRBset: TDMCRBset absolute $A5;
  DMCRBrec: TDMCRBrec absolute $A5;
const
  DMPGB0 = 0;  m_DMPGB0 = 1;  // Demodulator PLL loop gain for path B
  DMPGB1 = 1;  m_DMPGB1 = 2;  // Demodulator PLL loop gain for path B
  DMPGB2 = 2;  m_DMPGB2 = 4;  // Demodulator PLL loop gain for path B
  DMPGB3 = 3;  m_DMPGB3 = 8;  // Demodulator PLL loop gain for path B
  DMPGB4 = 4;  m_DMPGB4 = 16;  // Demodulator PLL loop gain for path B
  SASKB = 5;  m_SASKB = 32;  // Select ASK input for path B
  SY1TB = 6;  m_SY1TB = 64;  // Symbol check with only 1T on path B
  DMARB = 7;  m_DMARB = 128;  // Demodulator automatic restart on path B

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
  DMCRA: byte absolute $A6;  // Demodulator Control Register for path A
  DMCRAset: TDMCRAset absolute $A6;
  DMCRArec: TDMCRArec absolute $A6;
const
  DMPGA0 = 0;  m_DMPGA0 = 1;  // Demodulator PLL loop gain for path A
  DMPGA1 = 1;  m_DMPGA1 = 2;  // Demodulator PLL loop gain for path A
  DMPGA2 = 2;  m_DMPGA2 = 4;  // Demodulator PLL loop gain for path A
  DMPGA3 = 3;  m_DMPGA3 = 8;  // Demodulator PLL loop gain for path A
  DMPGA4 = 4;  m_DMPGA4 = 16;  // Demodulator PLL loop gain for path A
  SASKA = 5;  m_SASKA = 32;  // Select ASK input for path A
  SY1TA = 6;  m_SY1TA = 64;  // Symbol check with only 1T on path A
  DMARA = 7;  m_DMARA = 128;  // Demodulator automatic restart on path A

type
  TDMDRBset = bitpacked set of (e_DMAB0, e_DMAB1, e_DMAB2, e_DMAB3, e_DMDNB0, e_DMDNB1, e_DMDNB2, e_DMDNB3);
  TDMDRBrec = bitpacked record
    DMAB0,
    DMAB1,
    DMAB2,
    DMAB3,
    DMDNB0,
    DMDNB1,
    DMDNB2,
    DMDNB3: TBitField;
  end;
var
  DMDRB: byte absolute $A7;  // Demodulator Data Rate on path B
  DMDRBset: TDMDRBset absolute $A7;
  DMDRBrec: TDMDRBrec absolute $A7;
const
  DMAB0 = 0;  m_DMAB0 = 1;  // Demodulator Moving Average Data Rate factor on path B
  DMAB1 = 1;  m_DMAB1 = 2;  // Demodulator Moving Average Data Rate factor on path B
  DMAB2 = 2;  m_DMAB2 = 4;  // Demodulator Moving Average Data Rate factor on path B
  DMAB3 = 3;  m_DMAB3 = 8;  // Demodulator Moving Average Data Rate factor on path B
  DMDNB0 = 4;  m_DMDNB0 = 16;  // Demodulator Downsampling on path B
  DMDNB1 = 5;  m_DMDNB1 = 32;  // Demodulator Downsampling on path B
  DMDNB2 = 6;  m_DMDNB2 = 64;  // Demodulator Downsampling on path B
  DMDNB3 = 7;  m_DMDNB3 = 128;  // Demodulator Downsampling on path B

type
  TDMDRAset = bitpacked set of (e_DMAA0, e_DMAA1, e_DMAA2, e_DMAA3, e_DMDNA0, e_DMDNA1, e_DMDNA2, e_DMDNA3);
  TDMDRArec = bitpacked record
    DMAA0,
    DMAA1,
    DMAA2,
    DMAA3,
    DMDNA0,
    DMDNA1,
    DMDNA2,
    DMDNA3: TBitField;
  end;
var
  DMDRA: byte absolute $A8;  // Demodulator Data Rate on path A
  DMDRAset: TDMDRAset absolute $A8;
  DMDRArec: TDMDRArec absolute $A8;
const
  DMAA0 = 0;  m_DMAA0 = 1;  // Demodulator Moving Average Data Rate factor on path A
  DMAA1 = 1;  m_DMAA1 = 2;  // Demodulator Moving Average Data Rate factor on path A
  DMAA2 = 2;  m_DMAA2 = 4;  // Demodulator Moving Average Data Rate factor on path A
  DMAA3 = 3;  m_DMAA3 = 8;  // Demodulator Moving Average Data Rate factor on path A
  DMDNA0 = 4;  m_DMDNA0 = 16;  // Demodulator Downsampling on path A
  DMDNA1 = 5;  m_DMDNA1 = 32;  // Demodulator Downsampling on path A
  DMDNA2 = 6;  m_DMDNA2 = 64;  // Demodulator Downsampling on path A
  DMDNA3 = 7;  m_DMDNA3 = 128;  // Demodulator Downsampling on path A

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
  CHCR: byte absolute $A9;  // Channel Filter Configuration Register
  CHCRset: TCHCRset absolute $A9;
  CHCRrec: TCHCRrec absolute $A9;
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
  CHDN: byte absolute $AA;  // Channel Filter Down Sampling Register
  CHDNset: TCHDNset absolute $AA;
  CHDNrec: TCHDNrec absolute $AA;
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
  SFIDCB: byte absolute $AB;  // Start-Frame ID Control for data path B
  SFIDCBset: TSFIDCBset absolute $AB;
  SFIDCBrec: TSFIDCBrec absolute $AB;
const
  SFIDTB0 = 0;  m_SFIDTB0 = 1;  // Start-Frame ID threshold for data path B
  SFIDTB1 = 1;  m_SFIDTB1 = 2;  // Start-Frame ID threshold for data path B
  SFIDTB2 = 2;  m_SFIDTB2 = 4;  // Start-Frame ID threshold for data path B
  SFIDTB3 = 3;  m_SFIDTB3 = 8;  // Start-Frame ID threshold for data path B
  SFIDTB4 = 4;  m_SFIDTB4 = 16;  // Start-Frame ID threshold for data path B
  SEMEB = 7;  m_SEMEB = 128;  // Serial mode enable for data path B

type
  TSFIDLBset = bitpacked set of (e_SFIDLB0, e_SFIDLB1, e_SFIDLB2, e_SFIDLB3, e_SFIDLB4, e_SFIDLB5);
  TSFIDLBrec = bitpacked record
    SFIDLB0,
    SFIDLB1,
    SFIDLB2,
    SFIDLB3,
    SFIDLB4,
    SFIDLB5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFIDLB: byte absolute $AC;  // Start-Frame ID Length for data path B
  SFIDLBset: TSFIDLBset absolute $AC;
  SFIDLBrec: TSFIDLBrec absolute $AC;
const
  SFIDLB0 = 0;  m_SFIDLB0 = 1;  // Start-Frame ID Length for data path B
  SFIDLB1 = 1;  m_SFIDLB1 = 2;  // Start-Frame ID Length for data path B
  SFIDLB2 = 2;  m_SFIDLB2 = 4;  // Start-Frame ID Length for data path B
  SFIDLB3 = 3;  m_SFIDLB3 = 8;  // Start-Frame ID Length for data path B
  SFIDLB4 = 4;  m_SFIDLB4 = 16;  // Start-Frame ID Length for data path B
  SFIDLB5 = 5;  m_SFIDLB5 = 32;  // Start-Frame ID Length for data path B

type
  TWUPTBset = bitpacked set of (e_WUPTB0, e_WUPTB1, e_WUPTB2, e_WUPTB3, e_WUPTB4);
  TWUPTBrec = bitpacked record
    WUPTB0,
    WUPTB1,
    WUPTB2,
    WUPTB3,
    WUPTB4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WUPTB: byte absolute $AD;  // Wake-Up Pattern Threshold for data path B
  WUPTBset: TWUPTBset absolute $AD;
  WUPTBrec: TWUPTBrec absolute $AD;
const
  WUPTB0 = 0;  m_WUPTB0 = 1;  // Wake-Up Pattern Threshold for data path B
  WUPTB1 = 1;  m_WUPTB1 = 2;  // Wake-Up Pattern Threshold for data path B
  WUPTB2 = 2;  m_WUPTB2 = 4;  // Wake-Up Pattern Threshold for data path B
  WUPTB3 = 3;  m_WUPTB3 = 8;  // Wake-Up Pattern Threshold for data path B
  WUPTB4 = 4;  m_WUPTB4 = 16;  // Wake-Up Pattern Threshold for data path B

type
  TWUPLBset = bitpacked set of (e_WUPLB0, e_WUPLB1, e_WUPLB2, e_WUPLB3, e_WUPLB4, e_WUPLB5);
  TWUPLBrec = bitpacked record
    WUPLB0,
    WUPLB1,
    WUPLB2,
    WUPLB3,
    WUPLB4,
    WUPLB5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WUPLB: byte absolute $AE;  // Wake-Up Pattern Length for data path B
  WUPLBset: TWUPLBset absolute $AE;
  WUPLBrec: TWUPLBrec absolute $AE;
const
  WUPLB0 = 0;  m_WUPLB0 = 1;  // Wake-Up Pattern Length for data path B
  WUPLB1 = 1;  m_WUPLB1 = 2;  // Wake-Up Pattern Length for data path B
  WUPLB2 = 2;  m_WUPLB2 = 4;  // Wake-Up Pattern Length for data path B
  WUPLB3 = 3;  m_WUPLB3 = 8;  // Wake-Up Pattern Length for data path B
  WUPLB4 = 4;  m_WUPLB4 = 16;  // Wake-Up Pattern Length for data path B
  WUPLB5 = 5;  m_WUPLB5 = 32;  // Wake-Up Pattern Length for data path B

var
  SFID1B: byte absolute $AF;  // Start-Frame ID byte 1 for data path B
  SFID2B: byte absolute $B0;  // Start-Frame ID byte 2 for data path B
  SFID3B: byte absolute $B1;  // Start-Frame ID byte 3 for data path B
  SFID4B: byte absolute $B2;  // Start-Frame ID byte 4 for data path B
  WUP1B: byte absolute $B3;  // Wake-Up Pattern byte 1 for data path B
  WUP2B: byte absolute $B4;  // Wake-Up Pattern byte 2 for data path B
  WUP3B: byte absolute $B5;  // Wake-Up Pattern byte 3 for data path B
  WUP4B: byte absolute $B6;  // Wake-Up Pattern byte 4 for data path B

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
  SFIDCA: byte absolute $B7;  // Start-Frame ID Control for data path A
  SFIDCAset: TSFIDCAset absolute $B7;
  SFIDCArec: TSFIDCArec absolute $B7;
const
  SFIDTA0 = 0;  m_SFIDTA0 = 1;  // Start-Frame ID threshold for data path A
  SFIDTA1 = 1;  m_SFIDTA1 = 2;  // Start-Frame ID threshold for data path A
  SFIDTA2 = 2;  m_SFIDTA2 = 4;  // Start-Frame ID threshold for data path A
  SFIDTA3 = 3;  m_SFIDTA3 = 8;  // Start-Frame ID threshold for data path A
  SFIDTA4 = 4;  m_SFIDTA4 = 16;  // Start-Frame ID threshold for data path A
  SEMEA = 7;  m_SEMEA = 128;  // Serial mode enable for data path A

type
  TSFIDLAset = bitpacked set of (e_SFIDLA0, e_SFIDLA1, e_SFIDLA2, e_SFIDLA3, e_SFIDLA4, e_SFIDLA5);
  TSFIDLArec = bitpacked record
    SFIDLA0,
    SFIDLA1,
    SFIDLA2,
    SFIDLA3,
    SFIDLA4,
    SFIDLA5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFIDLA: byte absolute $B8;  // Start-Frame ID Length for data path A
  SFIDLAset: TSFIDLAset absolute $B8;
  SFIDLArec: TSFIDLArec absolute $B8;
const
  SFIDLA0 = 0;  m_SFIDLA0 = 1;  // Start-Frame ID Length for data path A
  SFIDLA1 = 1;  m_SFIDLA1 = 2;  // Start-Frame ID Length for data path A
  SFIDLA2 = 2;  m_SFIDLA2 = 4;  // Start-Frame ID Length for data path A
  SFIDLA3 = 3;  m_SFIDLA3 = 8;  // Start-Frame ID Length for data path A
  SFIDLA4 = 4;  m_SFIDLA4 = 16;  // Start-Frame ID Length for data path A
  SFIDLA5 = 5;  m_SFIDLA5 = 32;  // Start-Frame ID Length for data path A

type
  TWUPTAset = bitpacked set of (e_WUPTA0, e_WUPTA1, e_WUPTA2, e_WUPTA3, e_WUPTA4);
  TWUPTArec = bitpacked record
    WUPTA0,
    WUPTA1,
    WUPTA2,
    WUPTA3,
    WUPTA4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WUPTA: byte absolute $B9;  // Wake-Up Pattern Threshold for data path A
  WUPTAset: TWUPTAset absolute $B9;
  WUPTArec: TWUPTArec absolute $B9;
const
  WUPTA0 = 0;  m_WUPTA0 = 1;  // Wake-Up Pattern Threshold for data path A
  WUPTA1 = 1;  m_WUPTA1 = 2;  // Wake-Up Pattern Threshold for data path A
  WUPTA2 = 2;  m_WUPTA2 = 4;  // Wake-Up Pattern Threshold for data path A
  WUPTA3 = 3;  m_WUPTA3 = 8;  // Wake-Up Pattern Threshold for data path A
  WUPTA4 = 4;  m_WUPTA4 = 16;  // Wake-Up Pattern Threshold for data path A

type
  TWUPLAset = bitpacked set of (e_WUPLA0, e_WUPLA1, e_WUPLA2, e_WUPLA3, e_WUPLA4, e_WUPLA5);
  TWUPLArec = bitpacked record
    WUPLA0,
    WUPLA1,
    WUPLA2,
    WUPLA3,
    WUPLA4,
    WUPLA5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WUPLA: byte absolute $BA;  // Wake-Up Pattern Length for data path A
  WUPLAset: TWUPLAset absolute $BA;
  WUPLArec: TWUPLArec absolute $BA;
const
  WUPLA0 = 0;  m_WUPLA0 = 1;  // Wake-Up Pattern Length for data path A
  WUPLA1 = 1;  m_WUPLA1 = 2;  // Wake-Up Pattern Length for data path A
  WUPLA2 = 2;  m_WUPLA2 = 4;  // Wake-Up Pattern Length for data path A
  WUPLA3 = 3;  m_WUPLA3 = 8;  // Wake-Up Pattern Length for data path A
  WUPLA4 = 4;  m_WUPLA4 = 16;  // Wake-Up Pattern Length for data path A
  WUPLA5 = 5;  m_WUPLA5 = 32;  // Wake-Up Pattern Length for data path A

var
  SFID1A: byte absolute $BB;  // Start-Frame ID byte 1 for data path A
  SFID2A: byte absolute $BC;  // Start-Frame ID byte 2 for data path A
  SFID3A: byte absolute $BD;  // Start-Frame ID byte 3 for data path A
  SFID4A: byte absolute $BE;  // Start-Frame ID byte 4 for data path A
  WUP1A: byte absolute $BF;  // Wake-Up Pattern byte 1 for data path A
  WUP2A: byte absolute $C0;  // Wake-Up Pattern byte 2 for data path A
  WUP3A: byte absolute $C1;  // Wake-Up Pattern byte 3 for data path A
  WUP4A: byte absolute $C2;  // Wake-Up Pattern byte 4 for data path A
  CLKOD: byte absolute $C3;  // Clock output divider settings Register

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
  CLKOCR: byte absolute $C4;  // Clock output control Register
  CLKOCRset: TCLKOCRset absolute $C4;
  CLKOCRrec: TCLKOCRrec absolute $C4;
const
  CLKOS0 = 0;  m_CLKOS0 = 1;  // Clock output source
  CLKOS1 = 1;  m_CLKOS1 = 2;  // Clock output source
  CLKOEN = 2;  m_CLKOEN = 4;  // Clock output driver enable

var
  XFUSE: byte absolute $C5;

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
  SRCCAL: byte absolute $C6;  // Slow RC oscillator calibration Register
  SRCCALset: TSRCCALset absolute $C6;
  SRCCALrec: TSRCCALrec absolute $C6;
const
  SRCCAL0 = 0;  m_SRCCAL0 = 1;  // Slow RC oscillator calibration
  SRCCAL1 = 1;  m_SRCCAL1 = 2;  // Slow RC oscillator calibration
  SRCCAL2 = 2;  m_SRCCAL2 = 4;  // Slow RC oscillator calibration
  SRCCAL3 = 3;  m_SRCCAL3 = 8;  // Slow RC oscillator calibration
  SRCCAL4 = 4;  m_SRCCAL4 = 16;  // Slow RC oscillator calibration
  SRCCAL5 = 5;  m_SRCCAL5 = 32;  // Slow RC oscillator calibration
  SRCTC0 = 6;  m_SRCTC0 = 64;  // Slow RC oscillator temperature compensation
  SRCTC1 = 7;  m_SRCTC1 = 128;  // Slow RC oscillator temperature compensation

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
  FRCCAL: byte absolute $C7;  // Fast RC oscillator calibration Register
  FRCCALset: TFRCCALset absolute $C7;
  FRCCALrec: TFRCCALrec absolute $C7;
const
  FRCCAL0 = 0;  m_FRCCAL0 = 1;  // Fast RC oscillator calibration
  FRCCAL1 = 1;  m_FRCCAL1 = 2;  // Fast RC oscillator calibration
  FRCCAL2 = 2;  m_FRCCAL2 = 4;  // Fast RC oscillator calibration
  FRCCAL3 = 3;  m_FRCCAL3 = 8;  // Fast RC oscillator calibration
  FRCCAL4 = 4;  m_FRCCAL4 = 16;  // Fast RC oscillator calibration
  FRCTC = 5;  m_FRCTC = 32;  // Fast RC oscillator temperature compensation

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
  CMSR: byte absolute $C8;  // Clock management status Register
  CMSRset: TCMSRset absolute $C8;
  CMSRrec: TCMSRrec absolute $C8;
const
  ECF = 0;  m_ECF = 1;  // External clock fail

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
  CMOCR: byte absolute $C9;  // Clock management override control register
  CMOCRset: TCMOCRset absolute $C9;
  CMOCRrec: TCMOCRrec absolute $C9;
const
  FRCAO = 0;  m_FRCAO = 1;  // FRC Always On
  SRCAO = 1;  m_SRCAO = 2;  // SRC Always On
  FRCACT = 2;  m_FRCACT = 4;  // FRC Active
  SRCACT = 3;  m_SRCACT = 8;  // SRC Active

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
  SUPFR: byte absolute $CA;  // Supply Interrupt Flag Register
  SUPFRset: TSUPFRset absolute $CA;
  SUPFRrec: TSUPFRrec absolute $CA;
const
  AVCCRF = 0;  m_AVCCRF = 1;  // AVCC reset interrupt flag
  AVCCLF = 1;  m_AVCCLF = 2;  // AVCC low interrupt flag

type
  TSUPCRset = bitpacked set of (e_AVCCRM, e_AVCCLM, e_PVEN, e_DVDIS=4, e_AVEN, e_AVDIC);
  TSUPCRrec = bitpacked record
    AVCCRM,
    AVCCLM,
    PVEN,
    ReservedBit3,
    DVDIS,
    AVEN,
    AVDIC,
    ReservedBit7: TBitField;
  end;
var
  SUPCR: byte absolute $CB;  // Supply Control Register
  SUPCRset: TSUPCRset absolute $CB;
  SUPCRrec: TSUPCRrec absolute $CB;
const
  AVCCRM = 0;  m_AVCCRM = 1;  // AVCC Reset Interrupt Mask Bit
  AVCCLM = 1;  m_AVCCLM = 2;  // AVCC Low Interrupt Mask Bit
  PVEN = 2;  m_PVEN = 4;  // Power amplifier Voltage supply Enable
  DVDIS = 4;  m_DVDIS = 16;  // DVCC Disable
  AVEN = 5;  m_AVEN = 32;  // AVCC Enable
  AVDIC = 6;  m_AVDIC = 64;  // AVCC Double Internal Current

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
  SUPCA1: byte absolute $CC;  // Supply calibration register 1
  SUPCA1set: TSUPCA1set absolute $CC;
  SUPCA1rec: TSUPCA1rec absolute $CC;
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
  SUPCA2: byte absolute $CD;  // Supply calibration register 2
  SUPCA2set: TSUPCA2set absolute $CD;
  SUPCA2rec: TSUPCA2rec absolute $CD;
const
  BGCAL0 = 0;  m_BGCAL0 = 1;  // Band Gap Calibration
  BGCAL1 = 1;  m_BGCAL1 = 2;  // Band Gap Calibration
  BGCAL2 = 2;  m_BGCAL2 = 4;  // Band Gap Calibration
  BGCAL3 = 3;  m_BGCAL3 = 8;  // Band Gap Calibration

type
  TSUPCA3set = bitpacked set of (e_ACAL4, e_ACAL5, e_ACAL6, e_ACAL7, e_DCAL4, e_DCAL5, e_DCAL6);
  TSUPCA3rec = bitpacked record
    ACAL4,
    ACAL5,
    ACAL6,
    ACAL7,
    DCAL4,
    DCAL5,
    DCAL6,
    ReservedBit7: TBitField;
  end;
var
  SUPCA3: byte absolute $CE;  // Supply calibration register 3
  SUPCA3set: TSUPCA3set absolute $CE;
  SUPCA3rec: TSUPCA3rec absolute $CE;
const
  ACAL4 = 0;  m_ACAL4 = 1;  // AVCC Reset Threshold Calibration bit 4
  ACAL5 = 1;  m_ACAL5 = 2;  // AVCC Reset Threshold Calibration bit 5
  ACAL6 = 2;  m_ACAL6 = 4;  // AVCC Reset Threshold Calibration bit 6
  ACAL7 = 3;  m_ACAL7 = 8;  // AVCC Reset Threshold Calibration bit 7
  DCAL4 = 4;  m_DCAL4 = 16;  // DVCC Reset Threshold Calibration bit 4
  DCAL5 = 5;  m_DCAL5 = 32;  // DVCC Reset Threshold Calibration bit 5
  DCAL6 = 6;  m_DCAL6 = 64;  // DVCC Reset Threshold Calibration bit 6

type
  TSUPCA4set = bitpacked set of (e_ACAL0, e_ACAL1, e_ACAL2, e_ACAL3, e_DCAL0, e_DCAL1, e_DCAL2, e_DCAL3);
  TSUPCA4rec = bitpacked record
    ACAL0,
    ACAL1,
    ACAL2,
    ACAL3,
    DCAL0,
    DCAL1,
    DCAL2,
    DCAL3: TBitField;
  end;
var
  SUPCA4: byte absolute $CF;  // Supply calibration register 4
  SUPCA4set: TSUPCA4set absolute $CF;
  SUPCA4rec: TSUPCA4rec absolute $CF;
const
  ACAL0 = 0;  m_ACAL0 = 1;  // AVCC Regulator Output Voltage Calibration bit 0
  ACAL1 = 1;  m_ACAL1 = 2;  // AVCC Regulator Output Voltage Calibration bit 1
  ACAL2 = 2;  m_ACAL2 = 4;  // AVCC Regulator Output Voltage Calibration bit 2
  ACAL3 = 3;  m_ACAL3 = 8;  // AVCC Regulator Output Voltage Calibration bit 3
  DCAL0 = 4;  m_DCAL0 = 16;  // DVCC Regulator Output Voltage Calibration bit 0
  DCAL1 = 5;  m_DCAL1 = 32;  // DVCC Regulator Output Voltage Calibration bit 1
  DCAL2 = 6;  m_DCAL2 = 64;  // DVCC Regulator Output Voltage Calibration bit 2
  DCAL3 = 7;  m_DCAL3 = 128;  // DVCC Regulator Output Voltage Calibration bit 3

var
  CALRDY: byte absolute $D0;  // Calibration ready signature

type
  TVMCALset = bitpacked set of (e_VMCAL0, e_VMCAL1, e_VMCAL2);
  TVMCALrec = bitpacked record
    VMCAL0,
    VMCAL1,
    VMCAL2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VMCAL: byte absolute $D1;  // Voltage Monitor Calibration register
  VMCALset: TVMCALset absolute $D1;
  VMCALrec: TVMCALrec absolute $D1;
const
  VMCAL0 = 0;  m_VMCAL0 = 1;  // Voltage monitor calibration
  VMCAL1 = 1;  m_VMCAL1 = 2;  // Voltage monitor calibration
  VMCAL2 = 2;  m_VMCAL2 = 4;  // Voltage monitor calibration

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

var
  DFTL: word absolute $D3;  // Data FIFO Telegram Length
  DFTLL: byte absolute $D3;
  DFTLH: byte absolute $D4;

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

type
  TDFWPset = bitpacked set of (e_DFWP0, e_DFWP1, e_DFWP2, e_DFWP3, e_DFWP4, e_DFWP5);
  TDFWPrec = bitpacked record
    DFWP0,
    DFWP1,
    DFWP2,
    DFWP3,
    DFWP4,
    DFWP5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DFWP: byte absolute $D6;  // Data FIFO Write Pointer
  DFWPset: TDFWPset absolute $D6;
  DFWPrec: TDFWPrec absolute $D6;
const
  DFWP0 = 0;  m_DFWP0 = 1;  // Data FIFO Write Pointer
  DFWP1 = 1;  m_DFWP1 = 2;  // Data FIFO Write Pointer
  DFWP2 = 2;  m_DFWP2 = 4;  // Data FIFO Write Pointer
  DFWP3 = 3;  m_DFWP3 = 8;  // Data FIFO Write Pointer
  DFWP4 = 4;  m_DFWP4 = 16;  // Data FIFO Write Pointer
  DFWP5 = 5;  m_DFWP5 = 32;  // Data FIFO Write Pointer

type
  TDFRPset = bitpacked set of (e_DFRP0, e_DFRP1, e_DFRP2, e_DFRP3, e_DFRP4, e_DFRP5);
  TDFRPrec = bitpacked record
    DFRP0,
    DFRP1,
    DFRP2,
    DFRP3,
    DFRP4,
    DFRP5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DFRP: byte absolute $D7;  // Data FIFO Read Pointer
  DFRPset: TDFRPset absolute $D7;
  DFRPrec: TDFRPrec absolute $D7;
const
  DFRP0 = 0;  m_DFRP0 = 1;  // Data FIFO Read Pointer
  DFRP1 = 1;  m_DFRP1 = 2;  // Data FIFO Read Pointer
  DFRP2 = 2;  m_DFRP2 = 4;  // Data FIFO Read Pointer
  DFRP3 = 3;  m_DFRP3 = 8;  // Data FIFO Read Pointer
  DFRP4 = 4;  m_DFRP4 = 16;  // Data FIFO Read Pointer
  DFRP5 = 5;  m_DFRP5 = 32;  // Data FIFO Read Pointer

var
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

type
  TSFWPset = bitpacked set of (e_SFWP0, e_SFWP1, e_SFWP2, e_SFWP3, e_SFWP4);
  TSFWPrec = bitpacked record
    SFWP0,
    SFWP1,
    SFWP2,
    SFWP3,
    SFWP4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFWP: byte absolute $DD;  // Support FIFO Write Pointer
  SFWPset: TSFWPset absolute $DD;
  SFWPrec: TSFWPrec absolute $DD;
const
  SFWP0 = 0;  m_SFWP0 = 1;  // Support FIFO Write Pointer
  SFWP1 = 1;  m_SFWP1 = 2;  // Support FIFO Write Pointer
  SFWP2 = 2;  m_SFWP2 = 4;  // Support FIFO Write Pointer
  SFWP3 = 3;  m_SFWP3 = 8;  // Support FIFO Write Pointer
  SFWP4 = 4;  m_SFWP4 = 16;  // Support FIFO Write Pointer

type
  TSFRPset = bitpacked set of (e_SFRP0, e_SFRP1, e_SFRP2, e_SFRP3, e_SFRP4);
  TSFRPrec = bitpacked record
    SFRP0,
    SFRP1,
    SFRP2,
    SFRP3,
    SFRP4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SFRP: byte absolute $DE;  // Support FIFO Read Pointer
  SFRPset: TSFRPset absolute $DE;
  SFRPrec: TSFRPrec absolute $DE;
const
  SFRP0 = 0;  m_SFRP0 = 1;  // Support FIFO Read Pointer
  SFRP1 = 1;  m_SFRP1 = 2;  // Support FIFO Read Pointer
  SFRP2 = 2;  m_SFRP2 = 4;  // Support FIFO Read Pointer
  SFRP3 = 3;  m_SFRP3 = 8;  // Support FIFO Read Pointer
  SFRP4 = 4;  m_SFRP4 = 16;  // Support FIFO Read Pointer

var
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
  TSSMCRset = bitpacked set of (e_SSMTX, e_SSMTM, e_SSMTGE, e_SSMTPE, e_SSMPVE, e_SSMTAE, e_SETRPA, e_SETRPB);
  TSSMCRrec = bitpacked record
    SSMTX,
    SSMTM,
    SSMTGE,
    SSMTPE,
    SSMPVE,
    SSMTAE,
    SETRPA,
    SETRPB: TBitField;
  end;
var
  SSMCR: byte absolute $E2;  // SSM Control Register
  SSMCRset: TSSMCRset absolute $E2;
  SSMCRrec: TSSMCRrec absolute $E2;
const
  SSMTX = 0;  m_SSMTX = 1;  // Sequencer State Machine Tx
  SSMTM = 1;  m_SSMTM = 2;  // Sequencer State Machine Temperature Measurement
  SSMTGE = 2;  m_SSMTGE = 4;  // Sequencer State Machine Tx Gauss Enable
  SSMTPE = 3;  m_SSMTPE = 8;  // Sequencer State Machine Tx Preemphasis Enable
  SSMPVE = 4;  m_SSMPVE = 16;  // Sequencer State Machine PV Enable
  SSMTAE = 5;  m_SSMTAE = 32;  // Sequencer State Machine Tx Ask-Shaping Enable
  SETRPA = 6;  m_SETRPA = 64;  // Sequencer State Machine Enable Transparent Path A
  SETRPB = 7;  m_SETRPB = 128;  // Sequencer State Machine Enable Transparent Path B

type
  TSSMRCRset = bitpacked set of (e_SSMPA, e_SSMPB, e_SSMADA, e_SSMADB, e_SSMPVS, e_SSMIFA, e_SSMIDSE, e_SSMTMOE);
  TSSMRCRrec = bitpacked record
    SSMPA,
    SSMPB,
    SSMADA,
    SSMADB,
    SSMPVS,
    SSMIFA,
    SSMIDSE,
    SSMTMOE: TBitField;
  end;
var
  SSMRCR: byte absolute $E3;  // SSM Rx Control Register
  SSMRCRset: TSSMRCRset absolute $E3;
  SSMRCRrec: TSSMRCRrec absolute $E3;
const
  SSMPA = 0;  m_SSMPA = 1;  // Sequencer State Machine Path A
  SSMPB = 1;  m_SSMPB = 2;  // Sequencer State Machine Path B
  SSMADA = 2;  m_SSMADA = 4;  // Sequencer State Machine Antenna Damping Disable Path A
  SSMADB = 3;  m_SSMADB = 8;  // Sequencer State Machine Antenna Damping Disable Path B
  SSMPVS = 4;  m_SSMPVS = 16;  // Sequencer State Machine Path Valid After SOT
  SSMIFA = 5;  m_SSMIFA = 32;  // Sequencer State Machine IF Amplifier Enable
  SSMIDSE = 6;  m_SSMIDSE = 64;  // Sequencer State Machine ID Scan Enable
  SSMTMOE = 7;  m_SSMTMOE = 128;  // Sequencer State Machine Transparent Mode Output Enable

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
  SSMFBR: byte absolute $E4;  // SSM Filter Bandwidth Register
  SSMFBRset: TSSMFBRset absolute $E4;
  SSMFBRrec: TSSMFBRrec absolute $E4;
const
  SSMFID0 = 0;  m_SSMFID0 = 1;  // Sequencer State Machine Filter Delay
  SSMFID1 = 1;  m_SSMFID1 = 2;  // Sequencer State Machine Filter Delay
  SSMFID2 = 2;  m_SSMFID2 = 4;  // Sequencer State Machine Filter Delay
  SSMDFDT = 3;  m_SSMDFDT = 8;  // Sequencer State Machine Double Filter Delay Time
  SSMHADT = 4;  m_SSMHADT = 16;  // Sequencer State Machine Half Antennadamping Delay Time
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
  SSMXSR: byte absolute $EB;  // SSM extended State Register
  SSMXSRset: TSSMXSRset absolute $EB;
  SSMXSRrec: TSSMXSRrec absolute $EB;
const
  SSMSTB0 = 0;  m_SSMSTB0 = 1;  // Sequencer State Machine State B
  SSMSTB1 = 1;  m_SSMSTB1 = 2;  // Sequencer State Machine State B
  SSMSTB2 = 2;  m_SSMSTB2 = 4;  // Sequencer State Machine State B
  SSMSTB3 = 3;  m_SSMSTB3 = 8;  // Sequencer State Machine State B
  SSMSTB4 = 4;  m_SSMSTB4 = 16;  // Sequencer State Machine State B
  SSMSTB5 = 5;  m_SSMSTB5 = 32;  // Sequencer State Machine State B

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
  GTCR: byte absolute $F0;  // Get Telegram Control Register
  GTCRset: TGTCRset absolute $F0;
  GTCRrec: TGTCRrec absolute $F0;
const
  RXTEHA = 0;  m_RXTEHA = 1;  // Rx Telegram End Handling Path A
  GAPMA = 1;  m_GAPMA = 2;  // Gap Mode Path A
  DARA = 2;  m_DARA = 4;  // Demodulator Automatic Restart on Path A
  IWUPA = 3;  m_IWUPA = 8;  // Intermittent WUP Mode Path A
  RXTEHB = 4;  m_RXTEHB = 16;  // Rx Telegram End Handling Path B
  GAPMB = 5;  m_GAPMB = 32;  // Gap Mode Path B
  DARB = 6;  m_DARB = 64;  // Demodulator Automatic Restart on Path B
  IWUPB = 7;  m_IWUPB = 128;  // Intermittent WUP Mode Path B

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
  SOTC1A: byte absolute $F1;  // Start Of Telegram Conditions 1 for Path A
  SOTC1Aset: TSOTC1Aset absolute $F1;
  SOTC1Arec: TSOTC1Arec absolute $F1;
const
  CAROEA1 = 0;  m_CAROEA1 = 1;  // CARrier check Ok Enabled for path A
  AMPOEA1 = 1;  m_AMPOEA1 = 2;  // AMPlitude Ok Enabled for path A
  SYTOEA1 = 2;  m_SYTOEA1 = 4;  // Symbol Timing Ok Enabled for path A
  MANOEA1 = 3;  m_MANOEA1 = 8;  // Manchester Coding Ok Enabled for path A
  WUPEA1 = 4;  m_WUPEA1 = 16;  // Wake Up Pattern match Enabled for path A
  SFIDEA1 = 5;  m_SFIDEA1 = 32;  // Start of Frame IDentifier match Enabled for path A
  RROEA1 = 6;  m_RROEA1 = 64;  // RSSI Range OK Enable for path A
  WCOBOE1 = 7;  m_WCOBOE1 = 128;  // Wake Check OK from path B Ok Enable

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
  SOTC2A: byte absolute $F2;  // Start Of Telegram Conditions 2 for Path A
  SOTC2Aset: TSOTC2Aset absolute $F2;
  SOTC2Arec: TSOTC2Arec absolute $F2;
const
  CAROEA2 = 0;  m_CAROEA2 = 1;  // CARrier check Ok Enabled for path A
  AMPOEA2 = 1;  m_AMPOEA2 = 2;  // AMPlitude Ok Enabled for path A
  SYTOEA2 = 2;  m_SYTOEA2 = 4;  // Symbol Timing Ok Enabled for path A
  MANOEA2 = 3;  m_MANOEA2 = 8;  // Manchester Coding Ok Enabled for path A
  WUPEA2 = 4;  m_WUPEA2 = 16;  // Wake Up Pattern match Enabled for path A
  SFIDEA2 = 5;  m_SFIDEA2 = 32;  // Start of Frame IDentifier match Enabled for path A
  RROEA2 = 6;  m_RROEA2 = 64;  // RSSI Range OK Enable for path A
  WCOBOE2 = 7;  m_WCOBOE2 = 128;  // Wake Check OK from path B Ok Enable

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
  SOTC1B: byte absolute $F3;  // Start Of Telegram Conditions 1 for Path B
  SOTC1Bset: TSOTC1Bset absolute $F3;
  SOTC1Brec: TSOTC1Brec absolute $F3;
const
  CAROEB1 = 0;  m_CAROEB1 = 1;  // CARrier check Ok Enabled for path B
  AMPOEB1 = 1;  m_AMPOEB1 = 2;  // AMPlitude Ok Enabled for path B
  SYTOEB1 = 2;  m_SYTOEB1 = 4;  // Symbol Timing Ok Enabled for path B
  MANOEB1 = 3;  m_MANOEB1 = 8;  // Manchester Coding Ok Enabled for path B
  WUPEB1 = 4;  m_WUPEB1 = 16;  // Wake Up Pattern match Enabled for path B
  SFIDEB1 = 5;  m_SFIDEB1 = 32;  // Start of Frame IDentifier match Enabled for path B
  RROEB1 = 6;  m_RROEB1 = 64;  // RSSI Range Ok on Path A
  WCOAOE1 = 7;  m_WCOAOE1 = 128;  // Wake Check Ok on path B Ok

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
  SOTC2B: byte absolute $F4;  // Start Of Telegram Conditions 2 for Path B
  SOTC2Bset: TSOTC2Bset absolute $F4;
  SOTC2Brec: TSOTC2Brec absolute $F4;
const
  CAROEB2 = 0;  m_CAROEB2 = 1;  // CARrier check Ok Enabled for path B
  AMPOEB2 = 1;  m_AMPOEB2 = 2;  // AMPlitude Ok Enabled for path B
  SYTOEB2 = 2;  m_SYTOEB2 = 4;  // Symbol Timing Ok Enabled for path B
  MANOEB2 = 3;  m_MANOEB2 = 8;  // Manchester Coding Ok Enabled for path B
  WUPEB2 = 4;  m_WUPEB2 = 16;  // Wake Up Pattern match Enabled for path B
  SFIDEB2 = 5;  m_SFIDEB2 = 32;  // Start of Frame IDentifier match Enabled for path B
  RROEB2 = 6;  m_RROEB2 = 64;  // RSSI Range Ok on Path A
  WCOAOE2 = 7;  m_WCOAOE2 = 128;  // Wake Check Ok on path B Ok

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
  EOTC1A: byte absolute $F5;  // End Of Telegram Conditions 1 for Path A
  EOTC1Aset: TEOTC1Aset absolute $F5;
  EOTC1Arec: TEOTC1Arec absolute $F5;
const
  CARFEA1 = 0;  m_CARFEA1 = 1;  // CARrier check Failed Enable for path A
  AMPFEA1 = 1;  m_AMPFEA1 = 2;  // AMPlitude Failed Enable for path A
  SYTFEA1 = 2;  m_SYTFEA1 = 4;  // SYmbol Timing check Failed Enable for Path A
  MANFEA1 = 3;  m_MANFEA1 = 8;  // MANchester Coding Failed Enable for Path A
  TMOFEA1 = 4;  m_TMOFEA1 = 16;  // Time-Out Fail Enable on Path A
  TELREA1 = 5;  m_TELREA1 = 32;  // Telegram Length Reached Enable on Path A
  RRFEA1 = 6;  m_RRFEA1 = 64;  // RSSI Range Fail Enable on Path A
  EOTBFE1 = 7;  m_EOTBFE1 = 128;  // End Of Telegram on Path B Fail Enable

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
  EOTC2A: byte absolute $F6;  // End Of Telegram Conditions 2 for Path A
  EOTC2Aset: TEOTC2Aset absolute $F6;
  EOTC2Arec: TEOTC2Arec absolute $F6;
const
  CARFEA2 = 0;  m_CARFEA2 = 1;  // CARrier check Failed Enable for path A
  AMPFEA2 = 1;  m_AMPFEA2 = 2;  // AMPlitude Failed Enable for path A
  SYTFEA2 = 2;  m_SYTFEA2 = 4;  // SYmbol Timing check Failed Enable for Path A
  MANFEA2 = 3;  m_MANFEA2 = 8;  // MANchester Coding Failed Enable for Path A
  TMOFEA2 = 4;  m_TMOFEA2 = 16;  // Time-Out Fail Enable on Path A
  TELREA2 = 5;  m_TELREA2 = 32;  // Telegram Length Reached Enable on Path A
  RRFEA2 = 6;  m_RRFEA2 = 64;  // RSSI Range Fail Enable on Path A
  EOTBFE2 = 7;  m_EOTBFE2 = 128;  // End Of Telegram on Path B Fail Enable

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
  EOTC3A: byte absolute $F7;  // End Of Telegram Conditions 3 for Path A
  EOTC3Aset: TEOTC3Aset absolute $F7;
  EOTC3Arec: TEOTC3Arec absolute $F7;
const
  CARFEA3 = 0;  m_CARFEA3 = 1;  // CARrier check Failed Enable for path A
  AMPFEA3 = 1;  m_AMPFEA3 = 2;  // AMPlitude Failed Enable for path A
  SYTFEA3 = 2;  m_SYTFEA3 = 4;  // SYmbol Timing check Failed Enable for Path A
  MANFEA3 = 3;  m_MANFEA3 = 8;  // MANchester Coding Failed Enable for Path A
  TMOFEA3 = 4;  m_TMOFEA3 = 16;  // Time-Out Fail Enable on Path A
  TELREA3 = 5;  m_TELREA3 = 32;  // Telegram Length Reached Enable on Path A
  RRFEA3 = 6;  m_RRFEA3 = 64;  // RSSI Range Fail Enable on Path A
  EOTBFE3 = 7;  m_EOTBFE3 = 128;  // End Of Telegram on Path B Fail Enable

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
  EOTC1B: byte absolute $F8;  // End Of Telegram Conditions 1 for Path B
  EOTC1Bset: TEOTC1Bset absolute $F8;
  EOTC1Brec: TEOTC1Brec absolute $F8;
const
  CARFEB1 = 0;  m_CARFEB1 = 1;  // CARrier check Failed Enable for path B
  AMPFEB1 = 1;  m_AMPFEB1 = 2;  // AMPlitude Failed Enable for path B
  SYTFEB1 = 2;  m_SYTFEB1 = 4;  // SYmbol Timing check Failed Enable for Path B
  MANFEB1 = 3;  m_MANFEB1 = 8;  // MANchester Coding Failed Enable for Path B
  TMOFEB1 = 4;  m_TMOFEB1 = 16;  // Time-Out Fail Enable on Path B
  TELREB1 = 5;  m_TELREB1 = 32;  // Telegram Length Reached Enable on Path B
  RRFEB1 = 6;  m_RRFEB1 = 64;  // RSSI Range Fail Enable on Path B
  EOTAFE1 = 7;  m_EOTAFE1 = 128;  // End Of Telegram on Path B Fail Enable

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
  EOTC2B: byte absolute $F9;  // End Of Telegram Conditions 2 for Path B
  EOTC2Bset: TEOTC2Bset absolute $F9;
  EOTC2Brec: TEOTC2Brec absolute $F9;
const
  CARFEB2 = 0;  m_CARFEB2 = 1;  // CARrier check Failed Enable for path B
  AMPFEB2 = 1;  m_AMPFEB2 = 2;  // AMPlitude Failed Enable for path B
  SYTFEB2 = 2;  m_SYTFEB2 = 4;  // SYmbol Timing check Failed Enable for Path B
  MANFEB2 = 3;  m_MANFEB2 = 8;  // MANchester Coding Failed Enable for Path B
  TMOFEB2 = 4;  m_TMOFEB2 = 16;  // Time-Out Fail Enable on Path B
  TELREB2 = 5;  m_TELREB2 = 32;  // Telegram Length Reached Enable on Path B
  RRFEB2 = 6;  m_RRFEB2 = 64;  // RSSI Range Fail Enable on Path B
  EOTAFE2 = 7;  m_EOTAFE2 = 128;  // End Of Telegram on Path B Fail Enable

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
  EOTC3B: byte absolute $FA;  // End Of Telegram Conditions 3 for Path B
  EOTC3Bset: TEOTC3Bset absolute $FA;
  EOTC3Brec: TEOTC3Brec absolute $FA;
const
  CARFEB3 = 0;  m_CARFEB3 = 1;  // CARrier check Failed Enable for path B
  AMPFEB3 = 1;  m_AMPFEB3 = 2;  // AMPlitude Failed Enable for path B
  SYTFEB3 = 2;  m_SYTFEB3 = 4;  // SYmbol Timing check Failed Enable for Path B
  MANFEB3 = 3;  m_MANFEB3 = 8;  // MANchester Coding Failed Enable for Path B
  TMOFEB3 = 4;  m_TMOFEB3 = 16;  // Time-Out Fail Enable on Path B
  TELREB3 = 5;  m_TELREB3 = 32;  // Telegram Length Reached Enable on Path B
  RRFEB3 = 6;  m_RRFEB3 = 64;  // RSSI Range Fail Enable on Path B
  EOTAFE3 = 7;  m_EOTAFE3 = 128;  // End Of Telegram on Path B Fail Enable

var
  WCOTOA: byte absolute $FB;  // Wait check ok time out for path A
  WCOTOB: byte absolute $FC;  // Wait check ok time out for path B
  SOTTOA: byte absolute $FD;  // Start Of Telegram Time Out for path A
  SOTTOB: byte absolute $FE;  // Start Of Telegram Time Out for path B

type
  TSSMFCRset = bitpacked set of (e_SSMIDSO, e_SSMIDSF);
  TSSMFCRrec = bitpacked record
    SSMIDSO,
    SSMIDSF,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSMFCR: byte absolute $FF;  // SSM Flow Control Register
  SSMFCRset: TSSMFCRset absolute $FF;
  SSMFCRrec: TSSMFCRrec absolute $FF;
const
  SSMIDSO = 0;  m_SSMIDSO = 1;  // Sequencer State Machine ID Scan OK
  SSMIDSF = 1;  m_SSMIDSF = 2;  // Sequencer State Machine ID Scan Fail

type
  TFESRset = bitpacked set of (e_LBSAT, e_HBSAT, e_XRDY, e_PLCK, e_ANTS);
  TFESRrec = bitpacked record
    LBSAT,
    HBSAT,
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
  LBSAT = 0;  m_LBSAT = 1;  // LNA Low band saturated
  HBSAT = 1;  m_HBSAT = 2;  // LNA High band saturated
  XRDY = 2;  m_XRDY = 4;  // XTO ready
  PLCK = 3;  m_PLCK = 8;  // PLL locked
  ANTS = 4;  m_ANTS = 16;  // Antenna saturated

type
  TFEEN1set = bitpacked set of (e_PLEN, e_PLCAL, e_XTOEN, e_LNAEN, e_ADEN, e_ADCLK, e_PLSP1, e_ATEN);
  TFEEN1rec = bitpacked record
    PLEN,
    PLCAL,
    XTOEN,
    LNAEN,
    ADEN,
    ADCLK,
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
  LNAEN = 3;  m_LNAEN = 8;  // Low Noise Amplifier enable
  ADEN = 4;  m_ADEN = 16;  // Analog Digital Converter enable
  ADCLK = 5;  m_ADCLK = 32;  // ADC Clock enable
  PLSP1 = 6;  m_PLSP1 = 64;  // PLL Speedup 1
  ATEN = 7;  m_ATEN = 128;  // Antenna Tuning Enable

type
  TFEEN2set = bitpacked set of (e_SDRX, e_SDTX, e_PAEN, e_TMPM, e_PLPEN, e_XTPEN, e_CPBIA);
  TFEEN2rec = bitpacked record
    SDRX,
    SDTX,
    PAEN,
    TMPM,
    PLPEN,
    XTPEN,
    CPBIA,
    ReservedBit7: TBitField;
  end;
var
  FEEN2: byte absolute $102;  // Front-End Enable Register 2
  FEEN2set: TFEEN2set absolute $102;
  FEEN2rec: TFEEN2rec absolute $102;
const
  SDRX = 0;  m_SDRX = 1;  // Single Pole Double Throw (SPDT) Switch RX
  SDTX = 1;  m_SDTX = 2;  // Single Pole Double Throw (SPDT) Switch TX
  PAEN = 2;  m_PAEN = 4;  // Power Amplifier enable
  TMPM = 3;  m_TMPM = 8;  // Temperature measurement
  PLPEN = 4;  m_PLPEN = 16;  // PLL Post En IQ divider
  XTPEN = 5;  m_XTPEN = 32;  // XTO VPump enable
  CPBIA = 6;  m_CPBIA = 64;  // Cap Array Bias

type
  TFELNAset = bitpacked set of (e_LBH0, e_LBH1, e_LBH2, e_LBH3, e_LBL0, e_LBL1, e_LBL2, e_LBL3);
  TFELNArec = bitpacked record
    LBH0,
    LBH1,
    LBH2,
    LBH3,
    LBL0,
    LBL1,
    LBL2,
    LBL3: TBitField;
  end;
var
  FELNA: byte absolute $103;  // Front-End LNA Bias Register
  FELNAset: TFELNAset absolute $103;
  FELNArec: TFELNArec absolute $103;
const
  LBH0 = 0;  m_LBH0 = 1;  // LNA Bias High band
  LBH1 = 1;  m_LBH1 = 2;  // LNA Bias High band
  LBH2 = 2;  m_LBH2 = 4;  // LNA Bias High band
  LBH3 = 3;  m_LBH3 = 8;  // LNA Bias High band
  LBL0 = 4;  m_LBL0 = 16;  // LNA Bias Low band
  LBL1 = 5;  m_LBL1 = 32;  // LNA Bias Low band
  LBL2 = 6;  m_LBL2 = 64;  // LNA Bias Low band
  LBL3 = 7;  m_LBL3 = 128;  // LNA Bias Low band

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

var
  FEPAC: byte absolute $105;  // Front-End Power Amplifier Control Register Pout/dBm LowBand HighBand

type
  TFEVCTset = bitpacked set of (e_FEVCT0, e_FEVCT1, e_FEVCT2, e_FEVCT3);
  TFEVCTrec = bitpacked record
    FEVCT0,
    FEVCT1,
    FEVCT2,
    FEVCT3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  FEVCT: byte absolute $106;  // Front-End VCO Tuning Register
  FEVCTset: TFEVCTset absolute $106;
  FEVCTrec: TFEVCTrec absolute $106;
const
  FEVCT0 = 0;  m_FEVCT0 = 1;  // Front-End VCO Tuning Register
  FEVCT1 = 1;  m_FEVCT1 = 2;  // Front-End VCO Tuning Register
  FEVCT2 = 2;  m_FEVCT2 = 4;  // Front-End VCO Tuning Register
  FEVCT3 = 3;  m_FEVCT3 = 8;  // Front-End VCO Tuning Register

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
  FECR: byte absolute $10A;  // Front-End Control Register
  FECRset: TFECRset absolute $10A;
  FECRrec: TFECRrec absolute $10A;
const
  LBNHB = 0;  m_LBNHB = 1;  // Select Low-Band Not High-Band
  S4N3 = 1;  m_S4N3 = 2;  // Select 433 Not 315MHz Band
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
  FEANT: byte absolute $10D;  // Front-End ANTenna
  FEANTset: TFEANTset absolute $10D;
  FEANTrec: TFEANTrec absolute $10D;
const
  LVLC0 = 0;  m_LVLC0 = 1;  // antenna signal LeVeL
  LVLC1 = 1;  m_LVLC1 = 2;  // antenna signal LeVeL
  LVLC2 = 2;  m_LVLC2 = 4;  // antenna signal LeVeL
  LVLC3 = 3;  m_LVLC3 = 8;  // antenna signal LeVeL

type
  TFEBIAset = bitpacked set of (e_IFAEN=7);
  TFEBIArec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    IFAEN: TBitField;
  end;
var
  FEBIA: byte absolute $10E;  // Front-End IF Amplifier BIAS
  FEBIAset: TFEBIAset absolute $10E;
  FEBIArec: TFEBIArec absolute $10E;
const
  IFAEN = 7;  m_IFAEN = 128;  // IF Amplifier Enable

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
  TMCR: word absolute $121;  // Tx Modulator CRC Result
  TMCRL: byte absolute $121;
  TMCRH: byte absolute $122;
  TMCSB: byte absolute $123;  // Tx Modulator CRC Skip Bit Number
  TMCI: word absolute $124;  // Tx Modulator CRC Init Value
  TMCIL: byte absolute $124;
  TMCIH: byte absolute $125;
  TMCP: word absolute $126;  // Tx Modulator CRC Polynomial
  TMCPL: byte absolute $126;
  TMCPH: byte absolute $127;
  TMSHR: byte absolute $128;  // Tx Modulator Shift Register
  TMTL: word absolute $129;  // Tx Modulator Telegram Length Register
  TMTLL: byte absolute $129;
  TMTLH: byte absolute $12A;

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
  TTMCR2set = bitpacked set of (e_TMCRCE, e_TMCRCL0, e_TMCRCL1, e_TMNRZE, e_TMPOL, e_TMSSE, e_TMMSB);
  TTMCR2rec = bitpacked record
    TMCRCE,
    TMCRCL0,
    TMCRCL1,
    TMNRZE,
    TMPOL,
    TMSSE,
    TMMSB,
    ReservedBit7: TBitField;
  end;
var
  TMCR2: byte absolute $12D;  // Tx Modulator Control Register 2
  TMCR2set: TTMCR2set absolute $12D;
  TMCR2rec: TTMCR2rec absolute $12D;
const
  TMCRCE = 0;  m_TMCRCE = 1;  // Tx Modulator CRC Enable
  TMCRCL0 = 1;  m_TMCRCL0 = 2;  // Tx Modulator CRC Length
  TMCRCL1 = 2;  m_TMCRCL1 = 4;  // Tx Modulator CRC Length
  TMNRZE = 3;  m_TMNRZE = 8;  // Tx Modulator NRZ Mode Enable
  TMPOL = 4;  m_TMPOL = 16;  // Tx Modulator Polarity
  TMSSE = 5;  m_TMSSE = 32;  // Tx Modulator Stop Sequence Enable
  TMMSB = 6;  m_TMMSB = 64;  // Tx Modulator Most Significant Bit First

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
  TRXBC1set = bitpacked set of (e_RXCEA, e_RXCBLA0, e_RXCBLA1, e_RXMSBA, e_RXCEB, e_RXCBLB0, e_RXCBLB1, e_RXMSBB);
  TRXBC1rec = bitpacked record
    RXCEA,
    RXCBLA0,
    RXCBLA1,
    RXMSBA,
    RXCEB,
    RXCBLB0,
    RXCBLB1,
    RXMSBB: TBitField;
  end;
var
  RXBC1: byte absolute $12F;  // Rx Buffer configuration register 1
  RXBC1set: TRXBC1set absolute $12F;
  RXBC1rec: TRXBC1rec absolute $12F;
const
  RXCEA = 0;  m_RXCEA = 1;  // RX CRC Enable data path A
  RXCBLA0 = 1;  m_RXCBLA0 = 2;  // Receive CRC Bit Lengths setting for data path A
  RXCBLA1 = 2;  m_RXCBLA1 = 4;  // Receive CRC Bit Lengths setting for data path A
  RXMSBA = 3;  m_RXMSBA = 8;  // Receive Data MSB-first for data path A
  RXCEB = 4;  m_RXCEB = 16;  // RX CRC Enable data path B
  RXCBLB0 = 5;  m_RXCBLB0 = 32;  // Receive CRC Bit Lengths setting for data path B
  RXCBLB1 = 6;  m_RXCBLB1 = 64;  // Receive CRC Bit Lengths setting for data path B
  RXMSBB = 7;  m_RXMSBB = 128;  // Receive Data MSB-first for data path B

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
  RXBC2: byte absolute $130;  // Rx Buffer configuration register 2
  RXBC2set: TRXBC2set absolute $130;
  RXBC2rec: TRXBC2rec absolute $130;
const
  RXBPB = 0;  m_RXBPB = 1;  // RX Buffer Path B select signal
  RXBF = 1;  m_RXBF = 2;  // RX Buffer Finish
  RXBCLR = 2;  m_RXBCLR = 4;  // RX Buffer Clear

var
  RXTLLB: byte absolute $131;  // Rx data telegram length register low byte for data path B

type
  TRXTLHBset = bitpacked set of (e_RXTLHB0, e_RXTLHB1, e_RXTLHB2, e_RXTLHB3);
  TRXTLHBrec = bitpacked record
    RXTLHB0,
    RXTLHB1,
    RXTLHB2,
    RXTLHB3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RXTLHB: byte absolute $132;  // Rx data telegram length register high byte for data path B
  RXTLHBset: TRXTLHBset absolute $132;
  RXTLHBrec: TRXTLHBrec absolute $132;
const
  RXTLHB0 = 0;  m_RXTLHB0 = 1;  // RXTL (Receive Telegram Length) register High byte for data path B bit 0
  RXTLHB1 = 1;  m_RXTLHB1 = 2;  // RXTL (Receive Telegram Length) register High byte for data path B bit 1
  RXTLHB2 = 2;  m_RXTLHB2 = 4;  // RXTL (Receive Telegram Length) register High byte for data path B bit 2
  RXTLHB3 = 3;  m_RXTLHB3 = 8;  // RXTL (Receive Telegram Length) register High byte for data path B bit 3

var
  RXCRLB: byte absolute $133;  // Rx CRC result register low byte for data path B
  RXCRHB: byte absolute $134;  // Rx CRC result register high byte for data path B
  RXCSBB: byte absolute $135;  // Rx CRC skip bit number for data path B
  RXCILB: byte absolute $136;  // Rx CRC Init value (16-bit RXCI) low byte for data path B
  RXCIHB: byte absolute $137;  // Rx CRC Init value (16-bit RXCI) high byte for data path B
  RXCPLB: byte absolute $138;  // Rx CRC polynomial low byte for data path B
  RXCPHB: byte absolute $139;  // Rx CRC polynomial (15 bit RXCPB) high byte for data path B
  RXDSB: byte absolute $13A;  // Rx data shift register for data path B
  RXTLLA: byte absolute $13B;  // Rx data telegram length register low byte for data path A

type
  TRXTLHAset = bitpacked set of (e_RXTLHA0, e_RXTLHA1, e_RXTLHA2, e_RXTLHA3);
  TRXTLHArec = bitpacked record
    RXTLHA0,
    RXTLHA1,
    RXTLHA2,
    RXTLHA3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RXTLHA: byte absolute $13C;  // Rx data telegram length register high byte for data path A
  RXTLHAset: TRXTLHAset absolute $13C;
  RXTLHArec: TRXTLHArec absolute $13C;
const
  RXTLHA0 = 0;  m_RXTLHA0 = 1;  // RXTL (Receive Telegram Length) register High byte for data path A bit 0
  RXTLHA1 = 1;  m_RXTLHA1 = 2;  // RXTL (Receive Telegram Length) register High byte for data path A bit 1
  RXTLHA2 = 2;  m_RXTLHA2 = 4;  // RXTL (Receive Telegram Length) register High byte for data path A bit 2
  RXTLHA3 = 3;  m_RXTLHA3 = 8;  // RXTL (Receive Telegram Length) register High byte for data path A bit 3

var
  RXCRLA: byte absolute $13D;  // Rx CRC result register low byte for data path A
  RXCRHA: byte absolute $13E;  // Rx CRC result register high byte for data path A
  RXCSBA: byte absolute $13F;  // Rx CRC skip bit number for data path A
  RXCILA: byte absolute $140;  // Rx CRC Init value (16-bit RXCI) low byte for data path A
  RXCIHA: byte absolute $141;  // Rx CRC Init value (16-bit RXCI) high byte for data path A
  RXCPLA: byte absolute $142;  // Rx CRC polynomial low byte for data path A
  RXCPHA: byte absolute $143;  // Rx CRC polynomial (15 bit RXCPA) high byte for data path A
  RXDSA: byte absolute $144;  // Rx data shift register for data path A

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
  IDB0: byte absolute $147;  // ID Byte 0
  IDB1: byte absolute $148;  // ID Byte 1
  IDB2: byte absolute $149;  // ID Byte 2
  IDB3: byte absolute $14A;  // ID Byte 3

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
  IDC: byte absolute $14B;  // ID Configuration
  IDCset: TIDCset absolute $14B;
  IDCrec: TIDCrec absolute $14B;
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
  IDS: byte absolute $14C;  // ID Status
  IDSset: TIDSset absolute $14C;
  IDSrec: TIDSrec absolute $14C;
const
  IDOK = 0;  m_IDOK = 1;  // ID Scan Ok Flag
  IDFULL = 1;  m_IDFULL = 2;  // ID Full Flag

var
  RSSAV: byte absolute $14D;  // RSSI Average Value
  RSSPK: byte absolute $14E;  // RSSI Peak Value
  RSSL: byte absolute $14F;  // RSSI Low Threshold for Signal Check
  RSSH: byte absolute $150;  // RSSI High Threshold for Signal Check

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
  RSSC: byte absolute $151;  // RSSI Configuration Register
  RSSCset: TRSSCset absolute $151;
  RSSCrec: TRSSCrec absolute $151;
const
  RSUP0 = 0;  m_RSUP0 = 1;  // RSSI Update Period
  RSUP1 = 1;  m_RSUP1 = 2;  // RSSI Update Period
  RSUP2 = 2;  m_RSUP2 = 4;  // RSSI Update Period
  RSUP3 = 3;  m_RSUP3 = 8;  // RSSI Update Period
  RSWLH = 4;  m_RSWLH = 16;  // RSSI within Low and High Limits
  RSHRX = 5;  m_RSHRX = 32;  // RSSI High Band Reception
  RSPKF = 6;  m_RSPKF = 64;  // RSSI Peak Values to SFIFO

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
  DBGSE = 7;  m_DBGSE = 128;  // Debugging Support Switch Enable

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
  RFL0 = 0;  m_RFL0 = 1;  // SPI Receive Buffer Fill Level
  RFL1 = 1;  m_RFL1 = 2;  // SPI Receive Buffer Fill Level
  RFL2 = 2;  m_RFL2 = 4;  // SPI Receive Buffer Fill Level
  RFC = 3;  m_RFC = 8;  // SPI Rx Buffer Clear
  TFL0 = 4;  m_TFL0 = 16;  // SPI Transmit Buffer Fill Level
  TFL1 = 5;  m_TFL1 = 32;  // SPI Transmit Buffer Fill Level
  TFL2 = 6;  m_TFL2 = 64;  // SPI Transmit Buffer Fill Level
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
  RIL0 = 0;  m_RIL0 = 1;  // SPI Receive Buffer Interrupt Level
  RIL1 = 1;  m_RIL1 = 2;  // SPI Receive Buffer Interrupt Level
  RIL2 = 2;  m_RIL2 = 4;  // SPI Receive Buffer Interrupt Level
  SRIE = 3;  m_SRIE = 8;  // SPI Rx Buffer Interrupt Enable
  TIL0 = 4;  m_TIL0 = 16;  // SPI Transmit Buffer Interrupt Level
  TIL1 = 5;  m_TIL1 = 32;  // SPI Transmit Buffer Interrupt Level
  TIL2 = 6;  m_TIL2 = 64;  // SPI Transmit Buffer Interrupt Level
  STIE = 7;  m_STIE = 128;  // SPI Tx Buffer Interrupt Enable

type
  TEECR2set = bitpacked set of (e_EEBRE);
  TEECR2rec = bitpacked record
    EEBRE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EECR2: byte absolute $159;  // EEPROM Control Register 2
  EECR2set: TEECR2set absolute $159;
  EECR2rec: TEECR2rec absolute $159;
const
  EEBRE = 0;  m_EEBRE = 1;  // EEPROM Burst Read Enable

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

var
  RSIFG: byte absolute $15C;  // RSSI High IF Amplifier Gain
  RSLDV: byte absolute $15D;  // RSSI Low Band Damping Value
  RSHDV: byte absolute $15E;  // RSSI High Band Damping Value

type
  TRSCOMset = bitpacked set of (e_RSDC, e_RSIFC);
  TRSCOMrec = bitpacked record
    RSDC,
    RSIFC,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RSCOM: byte absolute $15F;  // RSSI Compensation Register
  RSCOMset: TRSCOMset absolute $15F;
  RSCOMrec: TRSCOMrec absolute $15F;
const
  RSDC = 0;  m_RSDC = 1;  // RSSI Damping Compensation
  RSIFC = 1;  m_RSIFC = 2;  // RSSI IF Amplifier Compensation
  // typedefs = 173

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
procedure SSM_ISR; external name 'SSM_ISR'; // Interrupt 24 Sequencer State Machine Interrupt
procedure DFFLR_ISR; external name 'DFFLR_ISR'; // Interrupt 25 Data FIFO fill level reached Interrupt
procedure DFOUE_ISR; external name 'DFOUE_ISR'; // Interrupt 26 Data FIFO overflow or underflow error Interrupt
procedure SFFLR_ISR; external name 'SFFLR_ISR'; // Interrupt 27 RSSI/Preamble FIFO fill level reached Interrupt
procedure SFOUE_ISR; external name 'SFOUE_ISR'; // Interrupt 28 RSSI/Preamble FIFO overflow or underflow error Interrupt
procedure TMTCF_ISR; external name 'TMTCF_ISR'; // Interrupt 29 Tx Modulator Telegram Finish Interrupt
procedure UHF_WCOB_ISR; external name 'UHF_WCOB_ISR'; // Interrupt 30 UHF receiver wake up ok on Rx path B
procedure UHF_WCOA_ISR; external name 'UHF_WCOA_ISR'; // Interrupt 31 UHF receiver wake up ok on Rx path A
procedure UHF_SOTB_ISR; external name 'UHF_SOTB_ISR'; // Interrupt 32 UHF receiver start of telegram ok on Rx path B
procedure UHF_SOTA_ISR; external name 'UHF_SOTA_ISR'; // Interrupt 33 UHF receiver start of telegram ok on Rx path A
procedure UHF_EOTB_ISR; external name 'UHF_EOTB_ISR'; // Interrupt 34 UHF receiver end of telegram on Rx path B
procedure UHF_EOTA_ISR; external name 'UHF_EOTA_ISR'; // Interrupt 35 UHF receiver end of telegram on Rx path A
procedure UHF_NBITB_ISR; external name 'UHF_NBITB_ISR'; // Interrupt 36 UHF receiver new bit on Rx path B
procedure UHF_NBITA_ISR; external name 'UHF_NBITA_ISR'; // Interrupt 37 UHF receiver new bit on Rx path A
procedure EXCM_ISR; external name 'EXCM_ISR'; // Interrupt 38 External input Clock monitoring Interrupt
procedure ERDY_ISR; external name 'ERDY_ISR'; // Interrupt 39 EEPROM Ready Interrupt
procedure SPMR_ISR; external name 'SPMR_ISR'; // Interrupt 40 Store Program Memory Ready
procedure IDFULL_ISR; external name 'IDFULL_ISR'; // Interrupt 41 IDSCAN Full Interrupt

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
  jmp UHF_WCOB_ISR
  jmp UHF_WCOA_ISR
  jmp UHF_SOTB_ISR
  jmp UHF_SOTA_ISR
  jmp UHF_EOTB_ISR
  jmp UHF_EOTA_ISR
  jmp UHF_NBITB_ISR
  jmp UHF_NBITA_ISR
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
  .weak SSM_ISR
  .weak DFFLR_ISR
  .weak DFOUE_ISR
  .weak SFFLR_ISR
  .weak SFOUE_ISR
  .weak TMTCF_ISR
  .weak UHF_WCOB_ISR
  .weak UHF_WCOA_ISR
  .weak UHF_SOTB_ISR
  .weak UHF_SOTA_ISR
  .weak UHF_EOTB_ISR
  .weak UHF_EOTA_ISR
  .weak UHF_NBITB_ISR
  .weak UHF_NBITA_ISR
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
  .set SSM_ISR, Default_IRQ_handler
  .set DFFLR_ISR, Default_IRQ_handler
  .set DFOUE_ISR, Default_IRQ_handler
  .set SFFLR_ISR, Default_IRQ_handler
  .set SFOUE_ISR, Default_IRQ_handler
  .set TMTCF_ISR, Default_IRQ_handler
  .set UHF_WCOB_ISR, Default_IRQ_handler
  .set UHF_WCOA_ISR, Default_IRQ_handler
  .set UHF_SOTB_ISR, Default_IRQ_handler
  .set UHF_SOTA_ISR, Default_IRQ_handler
  .set UHF_EOTB_ISR, Default_IRQ_handler
  .set UHF_EOTA_ISR, Default_IRQ_handler
  .set UHF_NBITB_ISR, Default_IRQ_handler
  .set UHF_NBITA_ISR, Default_IRQ_handler
  .set EXCM_ISR, Default_IRQ_handler
  .set ERDY_ISR, Default_IRQ_handler
  .set SPMR_ISR, Default_IRQ_handler
  .set IDFULL_ISR, Default_IRQ_handler
end;

end.
