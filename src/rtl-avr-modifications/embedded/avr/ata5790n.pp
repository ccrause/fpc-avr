unit ATA5790N;

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

type
  TT3CR2set = bitpacked set of (e_T3GRES, e_T3C2TM, e_T3C2RM);
  TT3CR2rec = bitpacked record
    T3GRES,
    T3C2TM,
    T3C2RM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3CR2: byte absolute $2C;  // Timer3 Control Register 2
  T3CR2set: TT3CR2set absolute $2C;
  T3CR2rec: TT3CR2rec absolute $2C;
const
  T3GRES = 0;  m_T3GRES = 1;  // Timer 3 Global Reset Bit
  T3C2TM = 1;  m_T3C2TM = 2;  // Timer 3 Compare 2 Toggle Mask bit
  T3C2RM = 2;  m_T3C2RM = 4;  // Timer 3 Compare 2 Reset Mask bit

type
  TTPCRset = bitpacked set of (e_TPMA, e_TPMOD, e_TPMS0, e_TPMS1, e_TPMD0, e_TPMD1, e_TPPSD, e_TPD);
  TTPCRrec = bitpacked record
    TPMA,
    TPMOD,
    TPMS0,
    TPMS1,
    TPMD0,
    TPMD1,
    TPPSD,
    TPD: TBitField;
  end;
var
  TPCR: byte absolute $2D;  // Transponder Control Register
  TPCRset: TTPCRset absolute $2D;
  TPCRrec: TTPCRrec absolute $2D;
const
  TPMA = 0;  m_TPMA = 1;  // Transponder Mode Acknowledgment Bit
  TPMOD = 1;  m_TPMOD = 2;  // Transponder Modulator Bit
  TPMS0 = 2;  m_TPMS0 = 4;  // Transponder Modulation Select Bits
  TPMS1 = 3;  m_TPMS1 = 8;  // Transponder Modulation Select Bits
  TPMD0 = 4;  m_TPMD0 = 16;  // Transponder Modulation Damping level select Bit1
  TPMD1 = 5;  m_TPMD1 = 32;  // Transponder Modulation Damping level select Bit1
  TPPSD = 6;  m_TPPSD = 64;  // Transponder Power Switch Disable Bit
  TPD = 7;  m_TPD = 128;  // Transponder Disable Bit

type
  TTPFRset = bitpacked set of (e_TPF, e_TPA, e_TPGAP, e_TPPSW);
  TTPFRrec = bitpacked record
    TPF,
    TPA,
    TPGAP,
    TPPSW,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPFR: byte absolute $2E;  // Transponder Status & Flag Register
  TPFRset: TTPFRset absolute $2E;
  TPFRrec: TTPFRrec absolute $2E;
const
  TPF = 0;  m_TPF = 1;  // Transponder Flag
  TPA = 1;  m_TPA = 2;  // Transponder Active Bit
  TPGAP = 2;  m_TPGAP = 4;  // Transponder Gap Signal Bit
  TPPSW = 3;  m_TPPSW = 8;  // Transponder Power Switch Bit

type
  TCMCRset = bitpacked set of (e_CMM0, e_CMM1, e_SRCD, e_CO32D, e_CCS, e_ECINS, e_CMONEN, e_CMCCE);
  TCMCRrec = bitpacked record
    CMM0,
    CMM1,
    SRCD,
    CO32D,
    CCS,
    ECINS,
    CMONEN,
    CMCCE: TBitField;
  end;
var
  CMCR: byte absolute $2F;  // Clock Management Control Register
  CMCRset: TCMCRset absolute $2F;
  CMCRrec: TCMCRrec absolute $2F;
const
  CMM0 = 0;  m_CMM0 = 1;  // Clock Management Mode Bitss
  CMM1 = 1;  m_CMM1 = 2;  // Clock Management Mode Bitss
  SRCD = 2;  m_SRCD = 4;  // Slow RC-oscillator Disable Bit
  CO32D = 3;  m_CO32D = 8;  // Crystal Oscillator 32 kHz Disable Bit
  CCS = 4;  m_CCS = 16;  // Core Clock Select Bit
  ECINS = 5;  m_ECINS = 32;  // External Clock Input Select Bit
  CMONEN = 6;  m_CMONEN = 64;  // Clock Monitoring Enable Bit
  CMCCE = 7;  m_CMCCE = 128;  // Clock Management Control Change Enable Bit

type
  TCMSRset = bitpacked set of (e_ECF, e_SXF, e_RTCF);
  TCMSRrec = bitpacked record
    ECF,
    SXF,
    RTCF,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CMSR: byte absolute $30;  // Clock Management Status Register
  CMSRset: TCMSRset absolute $30;
  CMSRrec: TCMSRrec absolute $30;
const
  ECF = 0;  m_ECF = 1;  // External Clock input Flag Bit
  SXF = 1;  m_SXF = 2;  // Slow Crystal Oscillator Flag
  RTCF = 2;  m_RTCF = 4;  // Real-Time Clock Flag

type
  TT2CRset = bitpacked set of (e_T2OTM, e_T2CTM, e_T2CRM, e_T2GRM, e_T2TOP, e_T2RES, e_T2TS, e_T2E);
  TT2CRrec = bitpacked record
    T2OTM,
    T2CTM,
    T2CRM,
    T2GRM,
    T2TOP,
    T2RES,
    T2TS,
    T2E: TBitField;
  end;
var
  T2CR: byte absolute $31;  // Timer 2 Control Register
  T2CRset: TT2CRset absolute $31;
  T2CRrec: TT2CRrec absolute $31;
const
  T2OTM = 0;  m_T2OTM = 1;  // Timer 2 Overflow Toggle Mask Bit
  T2CTM = 1;  m_T2CTM = 2;  // Timer 2 Compare Toggle Mask Bit
  T2CRM = 2;  m_T2CRM = 4;  // Timer2 Compare Reset Mask Bit
  T2GRM = 3;  m_T2GRM = 8;  // Timer 2 Gap Reset Mask Bit
  T2TOP = 4;  m_T2TOP = 16;  // Toggle Output Preset Bit
  T2RES = 5;  m_T2RES = 32;  // Timer 2 Reset Bit
  T2TS = 6;  m_T2TS = 64;  // Timer 2 Toggle with Start Bit
  T2E = 7;  m_T2E = 128;  // Timer 2 Enable Bit

type
  TT3CRset = bitpacked set of (e_T3OTM, e_T3CTM, e_T3CRM, e_T3CPRM, e_T3TOP, e_T3RES, e_T3CPTM, e_T3E);
  TT3CRrec = bitpacked record
    T3OTM,
    T3CTM,
    T3CRM,
    T3CPRM,
    T3TOP,
    T3RES,
    T3CPTM,
    T3E: TBitField;
  end;
var
  T3CR: byte absolute $32;  // Timer 3 Control Register
  T3CRset: TT3CRset absolute $32;
  T3CRrec: TT3CRrec absolute $32;
const
  T3OTM = 0;  m_T3OTM = 1;  // Timer 3 Overflow Toggle Mask Bit
  T3CTM = 1;  m_T3CTM = 2;  // Timer 3 Compare Toggle Mask Bit
  T3CRM = 2;  m_T3CRM = 4;  // Timer3 Compare Reset Mask Bit
  T3CPRM = 3;  m_T3CPRM = 8;  // Timer 3 Capture Reset Mask Bit
  T3TOP = 4;  m_T3TOP = 16;  // Timer 3 Toggle Output Preset Bit
  T3RES = 5;  m_T3RES = 32;  // Timer 3 Reset Bit
  T3CPTM = 6;  m_T3CPTM = 64;  // Timer 3 Capture Toggle Mask Bit
  T3E = 7;  m_T3E = 128;  // Timer 3 Enable Bit

type
  TAESCRset = bitpacked set of (e_AESWK, e_AESWD, e_AESIM, e_AESD, e_AESXOR, e_AESRES, e_AESE=7);
  TAESCRrec = bitpacked record
    AESWK,
    AESWD,
    AESIM,
    AESD,
    AESXOR,
    AESRES,
    ReservedBit6,
    AESE: TBitField;
  end;
var
  AESCR: byte absolute $33;  // AES Control Register
  AESCRset: TAESCRset absolute $33;
  AESCRrec: TAESCRrec absolute $33;
const
  AESWK = 0;  m_AESWK = 1;  // AES Write Key Bit
  AESWD = 1;  m_AESWD = 2;  // AES Write Data Bit
  AESIM = 2;  m_AESIM = 4;  // AES Interrupt Mask Bit
  AESD = 3;  m_AESD = 8;  // AES Direction Bit
  AESXOR = 4;  m_AESXOR = 16;  // AES State XOR load bit
  AESRES = 5;  m_AESRES = 32;  // AES Reset Bit
  AESE = 7;  m_AESE = 128;  // AES Enable Bit

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
  AESSR: byte absolute $34;  // AES Status Register
  AESSRset: TAESSRset absolute $34;
  AESSRrec: TAESSRrec absolute $34;
const
  AESRF = 0;  m_AESRF = 1;  // AES Ready Flag Bit
  AESERF = 7;  m_AESERF = 128;  // AES Error Flag Bit

type
  TTMIFRset = bitpacked set of (e_TMRXF, e_TMTXF, e_TMTCF, e_TMRXS, e_TMTXS);
  TTMIFRrec = bitpacked record
    TMRXF,
    TMTXF,
    TMTCF,
    TMRXS,
    TMTXS,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TMIFR: byte absolute $35;  // Timer Modulator Interrupt Flag Register
  TMIFRset: TTMIFRset absolute $35;
  TMIFRrec: TTMIFRrec absolute $35;
const
  TMRXF = 0;  m_TMRXF = 1;  // Timer Modulator SSI Receive Flag Bit
  TMTXF = 1;  m_TMTXF = 2;  // Timer Modulator SSI Transmit Flag Bit
  TMTCF = 2;  m_TMTCF = 4;  // Timer Modulator SSI Transmit Complete Flag Bit
  TMRXS = 3;  m_TMRXS = 8;  // Timer Modulator SSI Receive Status Bit
  TMTXS = 4;  m_TMTXS = 16;  // Timer Modulator SSI Transmit Status Bit

type
  TVMSRset = bitpacked set of (e_VMF);
  TVMSRrec = bitpacked record
    VMF,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  VMSR: byte absolute $36;  // Voltage Monitor Status Register
  VMSRset: TVMSRset absolute $36;
  VMSRrec: TVMSRrec absolute $36;
const
  VMF = 0;  m_VMF = 1;  // Voltage Monitor Flag

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
  PCIFR: byte absolute $37;  // Pin Change Interrupt Flag Register
  PCIFRset: TPCIFRset absolute $37;
  PCIFRrec: TPCIFRrec absolute $37;
const
  PCIF0 = 0;  m_PCIF0 = 1;  // Pin Change Interrupt Flags
  PCIF1 = 1;  m_PCIF1 = 2;  // Pin Change Interrupt Flags

type
  TLFFRset = bitpacked set of (e_LFID0F, e_LFID1F, e_LFFEF, e_LFDBF, e_LFRSF, e_LFSDF, e_LFMDF, e_LFCAF);
  TLFFRrec = bitpacked record
    LFID0F,
    LFID1F,
    LFFEF,
    LFDBF,
    LFRSF,
    LFSDF,
    LFMDF,
    LFCAF: TBitField;
  end;
var
  LFFR: byte absolute $38;  // LF Flag Register
  LFFRset: TLFFRset absolute $38;
  LFFRrec: TLFFRrec absolute $38;
const
  LFID0F = 0;  m_LFID0F = 1;  // LF Identifier 0 Flag
  LFID1F = 1;  m_LFID1F = 2;  // LF Identifier 1 Flag
  LFFEF = 2;  m_LFFEF = 4;  // LF Frame End Flag
  LFDBF = 3;  m_LFDBF = 8;  // LF Data Buffer Full Flag
  LFRSF = 4;  m_LFRSF = 16;  // LF RSSI Data Flag
  LFSDF = 5;  m_LFSDF = 32;  // LF Signal Detect Flag
  LFMDF = 6;  m_LFMDF = 64;  // LF Manchester Decoder Error Flag
  LFCAF = 7;  m_LFCAF = 128;  // LF Clock Adjustment Flag

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
  T0IFR: byte absolute $39;  // Timer0 Interrupt Flag Register
  T0IFRset: TT0IFRset absolute $39;
  T0IFRrec: TT0IFRrec absolute $39;
const
  T0F = 0;  m_T0F = 1;  // Timer 0 Flag Bit

type
  TT1IFRset = bitpacked set of (e_T1F);
  TT1IFRrec = bitpacked record
    T1F,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T1IFR: byte absolute $3A;  // Timer1 Interrupt Flag Register
  T1IFRset: TT1IFRset absolute $3A;
  T1IFRrec: TT1IFRrec absolute $3A;
const
  T1F = 0;  m_T1F = 1;  // Timer 1 Flag Bit

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
  T2IFR: byte absolute $3B;  // Timer2 Interrupt Flag Register
  T2IFRset: TT2IFRset absolute $3B;
  T2IFRrec: TT2IFRrec absolute $3B;
const
  T2OFF = 0;  m_T2OFF = 1;  // Timer 2 Overflow Flag Bit
  T2COF = 1;  m_T2COF = 2;  // Timer 2 Compare Flag Bit

type
  TT3IFRset = bitpacked set of (e_T3OFF, e_T3COF, e_T3ICF, e_T3CO2F);
  TT3IFRrec = bitpacked record
    T3OFF,
    T3COF,
    T3ICF,
    T3CO2F,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3IFR: byte absolute $3C;  // Timer3 Interrupt Flag Register
  T3IFRset: TT3IFRset absolute $3C;
  T3IFRrec: TT3IFRrec absolute $3C;
const
  T3OFF = 0;  m_T3OFF = 1;  // Timer3 OverFlow Flag bit
  T3COF = 1;  m_T3COF = 2;  // Timer3 Compare Flag bit
  T3ICF = 2;  m_T3ICF = 4;  // Timer3 Input Capture Flag bit
  T3CO2F = 3;  m_T3CO2F = 8;  // Timer3 Compare 2 Flag bit

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
  EIFR: byte absolute $3D;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $3D;
  EIFRrec: TEIFRrec absolute $3D;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0

var
  GPIOR: byte absolute $3E;  // General Purpose I/O Register 0

type
  TEECRset = bitpacked set of (e_EERE, e_EEWE, e_EEMWE, e_EERIE, e_EEPM0, e_EEPM1, e_EELP, e_NVMBSY);
  TEECRrec = bitpacked record
    EERE,
    EEWE,
    EEMWE,
    EERIE,
    EEPM0,
    EEPM1,
    EELP,
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
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits
  EELP = 6;  m_EELP = 64;  // EEPROM Low Power Pump Enable Bit
  NVMBSY = 7;  m_NVMBSY = 128;  // Non-volatile memory busy

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register  Bytes
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
  EEAP0 = 0;  m_EEAP0 = 1;  // EEPROM Access Protect Bits
  EEAP1 = 1;  m_EEAP1 = 2;  // EEPROM Access Protect Bits
  EEAP2 = 2;  m_EEAP2 = 4;  // EEPROM Access Protect Bits
  EEAP3 = 3;  m_EEAP3 = 8;  // EEPROM Access Protect Bits

type
  TEECCRset = bitpacked set of (e_EEL0, e_EEL1, e_EEL2, e_EEL3);
  TEECCRrec = bitpacked record
    EEL0,
    EEL1,
    EEL2,
    EEL3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EECCR: byte absolute $44;  // EEPROM Error Correction Code Register
  EECCRset: TEECCRset absolute $44;
  EECCRrec: TEECCRrec absolute $44;
const
  EEL0 = 0;  m_EEL0 = 1;  // EEPROM Lookup Table Data Bits
  EEL1 = 1;  m_EEL1 = 2;  // EEPROM Lookup Table Data Bits
  EEL2 = 2;  m_EEL2 = 4;  // EEPROM Lookup Table Data Bits
  EEL3 = 3;  m_EEL3 = 8;  // EEPROM Lookup Table Data Bits

type
  TEECR2set = bitpacked set of (e_EEBRE, e_EEPAGE);
  TEECR2rec = bitpacked record
    EEBRE,
    EEPAGE,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  EECR2: byte absolute $45;  // EEPROM Control Register 2
  EECR2set: TEECR2set absolute $45;
  EECR2rec: TEECR2rec absolute $45;
const
  EEBRE = 0;  m_EEBRE = 1;  // EEPROM Burst Read Enable bit
  EEPAGE = 1;  m_EEPAGE = 2;  // EEPROM Page Access

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
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enables
  PCIE1 = 1;  m_PCIE1 = 2;  // Pin Change Interrupt Enables

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
  EIMSK: byte absolute $47;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $47;
  EIMSKrec: TEIMSKrec absolute $47;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable

var
  TMDR: byte absolute $48;  // Timer Modulator Data Register
  AESDR: byte absolute $49;  // AES Data Register

type
  TAESKRset = bitpacked set of (e_AESKR0, e_AESKR1, e_AESKR2, e_AESKR3, e_AESKR4, e_AESKR5, e_AESKR6, e_AESKR7);
  TAESKRrec = bitpacked record
    AESKR0,
    AESKR1,
    AESKR2,
    AESKR3,
    AESKR4,
    AESKR5,
    AESKR6,
    AESKR7: TBitField;
  end;
var
  AESKR: byte absolute $4A;  // AES Key Register
  AESKRset: TAESKRset absolute $4A;
  AESKRrec: TAESKRrec absolute $4A;
const
  AESKR0 = 0;  m_AESKR0 = 1;  // AES Key Register Bits
  AESKR1 = 1;  m_AESKR1 = 2;  // AES Key Register Bits
  AESKR2 = 2;  m_AESKR2 = 4;  // AES Key Register Bits
  AESKR3 = 3;  m_AESKR3 = 8;  // AES Key Register Bits
  AESKR4 = 4;  m_AESKR4 = 16;  // AES Key Register Bits
  AESKR5 = 5;  m_AESKR5 = 32;  // AES Key Register Bits
  AESKR6 = 6;  m_AESKR6 = 64;  // AES Key Register Bits
  AESKR7 = 7;  m_AESKR7 = 128;  // AES Key Register Bits

type
  TVMCRset = bitpacked set of (e_VMLS0, e_VMLS1, e_VMLS2, e_VMLS3, e_VMIM, e_VMPS, e_BODPD, e_BODLS);
  TVMCRrec = bitpacked record
    VMLS0,
    VMLS1,
    VMLS2,
    VMLS3,
    VMIM,
    VMPS,
    BODPD,
    BODLS: TBitField;
  end;
var
  VMCR: byte absolute $4B;  // Voltage Monitor Control Register
  VMCRset: TVMCRset absolute $4B;
  VMCRrec: TVMCRrec absolute $4B;
const
  VMLS0 = 0;  m_VMLS0 = 1;  // Voltage Monitor Level Select Bits
  VMLS1 = 1;  m_VMLS1 = 2;  // Voltage Monitor Level Select Bits
  VMLS2 = 2;  m_VMLS2 = 4;  // Voltage Monitor Level Select Bits
  VMLS3 = 3;  m_VMLS3 = 8;  // Voltage Monitor Level Select Bits
  VMIM = 4;  m_VMIM = 16;  // Voltage Monitor Interrupt Mask Bit
  VMPS = 5;  m_VMPS = 32;  // Voltage Monitor Power supply Select Bit
  BODPD = 6;  m_BODPD = 64;  // Brown-Out Detection on Power-Down Bit
  BODLS = 7;  m_BODLS = 128;  // Brown-Out Detection Level Select Bit

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
  TLFCR0set = bitpacked set of (e_LFCE1, e_LFCE2, e_LFCE3, e_LFBRS, e_LFRBS, e_LFMG, e_LFVC0, e_LFVC1);
  TLFCR0rec = bitpacked record
    LFCE1,
    LFCE2,
    LFCE3,
    LFBRS,
    LFRBS,
    LFMG,
    LFVC0,
    LFVC1: TBitField;
  end;
var
  LFCR0: byte absolute $4F;  // Low Frequency Receiver Control Register 0
  LFCR0set: TLFCR0set absolute $4F;
  LFCR0rec: TLFCR0rec absolute $4F;
const
  LFCE1 = 0;  m_LFCE1 = 1;  // LF receiver Channel Enable Bits
  LFCE2 = 1;  m_LFCE2 = 2;  // LF receiver Channel Enable Bits
  LFCE3 = 2;  m_LFCE3 = 4;  // LF receiver Channel Enable Bits
  LFBRS = 3;  m_LFBRS = 8;  // LF receiver Baud Rate Select Bit
  LFRBS = 4;  m_LFRBS = 16;  // LF Receiver Buffer Data Frame Select Bit
  LFMG = 5;  m_LFMG = 32;  // LF receiver Max Gain Bit
  LFVC0 = 6;  m_LFVC0 = 64;  // LF Receiver Velocity Control Bits
  LFVC1 = 7;  m_LFVC1 = 128;  // LF Receiver Velocity Control Bits

type
  TLFCR1set = bitpacked set of (e_LFM0, e_LFM1, e_LFFM0, e_LFFM1, e_LFRMS, e_LFRMSA, e_LFQCE, e_LFRE);
  TLFCR1rec = bitpacked record
    LFM0,
    LFM1,
    LFFM0,
    LFFM1,
    LFRMS,
    LFRMSA,
    LFQCE,
    LFRE: TBitField;
  end;
var
  LFCR1: byte absolute $50;  // LF receiver Control Register 1
  LFCR1set: TLFCR1set absolute $50;
  LFCR1rec: TLFCR1rec absolute $50;
const
  LFM0 = 0;  m_LFM0 = 1;  // LF Mode Bits
  LFM1 = 1;  m_LFM1 = 2;  // LF Mode Bits
  LFFM0 = 2;  m_LFFM0 = 4;  // LF Function Mode Bits
  LFFM1 = 3;  m_LFFM1 = 8;  // LF Function Mode Bits
  LFRMS = 4;  m_LFRMS = 16;  // LF receiver RSSI Measurement Start Bit
  LFRMSA = 5;  m_LFRMSA = 32;  // LF receiver Rssi Measurement Start Additional Bit
  LFQCE = 6;  m_LFQCE = 64;  // LF Receiver Quality Check Bit
  LFRE = 7;  m_LFRE = 128;  // LF Receiver Enable Bit

var
  LFRDB: byte absolute $52;  // LF Receiver Data Buffer

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
  SE = 0;  m_SE = 1;  // Sleep Enable Bit
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select Bit2
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select Bit2
  SM2 = 3;  m_SM2 = 8;  // Sleep Mode Select Bit2

type
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_TPRF=5);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    ReservedBit4,
    TPRF,
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
  TPRF = 5;  m_TPRF = 32;  // TransPonder Reset Flag

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
  PUD = 4;  m_PUD = 16;  // Pull-up Disable Flag

type
  TLFSRset = bitpacked set of (e_LFES, e_LFSD);
  TLFSRrec = bitpacked record
    LFES,
    LFSD,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFSR: byte absolute $56;  // LF Status Register
  LFSRset: TLFSRset absolute $56;
  LFSRrec: TLFSRrec absolute $56;
const
  LFES = 0;  m_LFES = 1;  // LF Envelope Signal Bit
  LFSD = 1;  m_LFSD = 2;  // LF Signal Data Bit

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
  SPMEN = 0;  m_SPMEN = 1;  // Self Programming Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read-While-Write section read enable
  SIGRD = 5;  m_SIGRD = 32;  // Signature Row Read Bit
  RWWSB = 6;  m_RWWSB = 64;  // Read-While-Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

type
  TT1CRset = bitpacked set of (e_T1PS0, e_T1PS1, e_T1IE, e_T1CS0, e_T1CS1, e_T1E=7);
  TT1CRrec = bitpacked record
    T1PS0,
    T1PS1,
    T1IE,
    T1CS0,
    T1CS1,
    ReservedBit5,
    ReservedBit6,
    T1E: TBitField;
  end;
var
  T1CR: byte absolute $58;  // Timer 1 Control Register
  T1CRset: TT1CRset absolute $58;
  T1CRrec: TT1CRrec absolute $58;
const
  T1PS0 = 0;  m_T1PS0 = 1;  // Timer 1 Prescaler Select Bits
  T1PS1 = 1;  m_T1PS1 = 2;  // Timer 1 Prescaler Select Bits
  T1IE = 2;  m_T1IE = 4;  // Timer 1 Interrupt Enable Bit
  T1CS0 = 3;  m_T1CS0 = 8;  // Timer 1 Clock Select Bits
  T1CS1 = 4;  m_T1CS1 = 16;  // Timer 1 Clock Select Bits
  T1E = 7;  m_T1E = 128;  // Timer 1 Enable Bit

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
  T0CR: byte absolute $59;  // Timer 0 Control Register
  T0CRset: TT0CRset absolute $59;
  T0CRrec: TT0CRrec absolute $59;
const
  T0PS0 = 0;  m_T0PS0 = 1;  // Timer 0 Prescaler Select Bits
  T0PS1 = 1;  m_T0PS1 = 2;  // Timer 0 Prescaler Select Bits
  T0PS2 = 2;  m_T0PS2 = 4;  // Timer 0 Prescaler Select Bits
  T0IE = 3;  m_T0IE = 8;  // Timer 0 Interrupt Enable Bit
  T0PR = 4;  m_T0PR = 16;  // Timer 0 Prescaler Reset Bit

type
  TCMIMRset = bitpacked set of (e_ECIE, e_SXIE, e_RTCIE);
  TCMIMRrec = bitpacked record
    ECIE,
    SXIE,
    RTCIE,
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
  ECIE = 0;  m_ECIE = 1;  // External Clock input Interrupt Enable Bit
  SXIE = 1;  m_SXIE = 2;  // Slow Crystal Oscillator Interrupt Enable Bit
  RTCIE = 2;  m_RTCIE = 4;  // Real-Time Clock Interrupt Enable Bit

type
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLTPS0, e_CLTPS1, e_CLTPS2, e_CLKPCE=7);
  TCLKPRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    CLKPS2,
    CLTPS0,
    CLTPS1,
    CLTPS2,
    ReservedBit6,
    CLKPCE: TBitField;
  end;
var
  CLKPR: byte absolute $5C;  // Clock Prescaler Register
  CLKPRset: TCLKPRset absolute $5C;
  CLKPRrec: TCLKPRrec absolute $5C;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock system Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock system Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock system Prescaler Select Bits
  CLTPS0 = 3;  m_CLTPS0 = 8;  // Clock Timer Prescaler Select Bits
  CLTPS1 = 4;  m_CLTPS1 = 16;  // Clock Timer Prescaler Select Bits
  CLTPS2 = 5;  m_CLTPS2 = 32;  // Clock Timer Prescaler Select Bits
  CLKPCE = 7;  m_CLKPCE = 128;  // Clock Prescaler Change Enable Bit

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
  WDTCR: byte absolute $60;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $60;
  WDTCRrec: TWDTCRrec absolute $60;
const
  WDPS0 = 0;  m_WDPS0 = 1;  // Watch Dog Timer Prescaler Select bits
  WDPS1 = 1;  m_WDPS1 = 2;  // Watch Dog Timer Prescaler Select bits
  WDPS2 = 2;  m_WDPS2 = 4;  // Watch Dog Timer Prescaler Select bits
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable

type
  TPRR0set = bitpacked set of (e_PRLFR, e_PRT1, e_PRT2, e_PRT3, e_PRTM, e_PRCU, e_PRDS, e_PRVM);
  TPRR0rec = bitpacked record
    PRLFR,
    PRT1,
    PRT2,
    PRT3,
    PRTM,
    PRCU,
    PRDS,
    PRVM: TBitField;
  end;
var
  PRR0: byte absolute $63;  // Power Reduction Register
  PRR0set: TPRR0set absolute $63;
  PRR0rec: TPRR0rec absolute $63;
const
  PRLFR = 0;  m_PRLFR = 1;  // Power Reduction LF-Receiver Interface
  PRT1 = 1;  m_PRT1 = 2;  // Power Reduction Timer1
  PRT2 = 2;  m_PRT2 = 4;  // Power Reduction Timer2
  PRT3 = 3;  m_PRT3 = 8;  // Power Reduction Timer3
  PRTM = 4;  m_PRTM = 16;  // Power Reduction Timer Modulator
  PRCU = 5;  m_PRCU = 32;  // Power Reduction Crypto Unit
  PRDS = 6;  m_PRDS = 64;  // Power Reduction IR Driver Stage
  PRVM = 7;  m_PRVM = 128;  // Power Reduction Voltage Monitor

type
  TPRR1set = bitpacked set of (e_PRCI, e_PRSPI);
  TPRR1rec = bitpacked record
    PRCI,
    PRSPI,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR1: byte absolute $64;  // Power Reduction Register
  PRR1set: TPRR1set absolute $64;
  PRR1rec: TPRR1rec absolute $64;
const
  PRCI = 0;  m_PRCI = 1;  // Power Reduction Contactless Interface
  PRSPI = 1;  m_PRSPI = 2;  // Power Reduction Serial Peripheral Interface

var
  SRCCAL: byte absolute $65;  // SRC-Oscillator Calibration Register
  FRCCAL: byte absolute $66;  // FRC-Oscillator Calibration Register

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
  PCMSK0: byte absolute $6A;  // Pin Change Mask Register 0
  PCMSK0set: TPCMSK0set absolute $6A;
  PCMSK0rec: TPCMSK0rec absolute $6A;
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
  PCMSK1: byte absolute $6B;  // Pin Change Mask Register 1

type
  TLDCRset = bitpacked set of (e_LDE, e_LDCS0, e_LDCS1);
  TLDCRrec = bitpacked record
    LDE,
    LDCS0,
    LDCS1,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LDCR: byte absolute $6D;  // LED Driver Control Register
  LDCRset: TLDCRset absolute $6D;
  LDCRrec: TLDCRrec absolute $6D;
const
  LDE = 0;  m_LDE = 1;  // LED Driver Enable Bit
  LDCS0 = 1;  m_LDCS0 = 2;  // LED Driver Current Select Bits
  LDCS1 = 2;  m_LDCS1 = 4;  // LED Driver Current Select Bits

var
  T2CNT: byte absolute $70;  // Timer 2 Counter Register
  T2COR: byte absolute $71;  // Timer2 Compare Register

type
  TT2MRset = bitpacked set of (e_T2CS0, e_T2CS1, e_T2CS2, e_T2PS0, e_T2PS1, e_T2PS2, e_T2D0, e_T2D1);
  TT2MRrec = bitpacked record
    T2CS0,
    T2CS1,
    T2CS2,
    T2PS0,
    T2PS1,
    T2PS2,
    T2D0,
    T2D1: TBitField;
  end;
var
  T2MR: byte absolute $73;  // Timer 2 Mode Register
  T2MRset: TT2MRset absolute $73;
  T2MRrec: TT2MRrec absolute $73;
const
  T2CS0 = 0;  m_T2CS0 = 1;  // Timer 2 Clock Select Bits
  T2CS1 = 1;  m_T2CS1 = 2;  // Timer 2 Clock Select Bits
  T2CS2 = 2;  m_T2CS2 = 4;  // Timer 2 Clock Select Bits
  T2PS0 = 3;  m_T2PS0 = 8;  // Timer 2 Prescaler Select Bits
  T2PS1 = 4;  m_T2PS1 = 16;  // Timer 2 Prescaler Select Bits
  T2PS2 = 5;  m_T2PS2 = 32;  // Timer 2 Prescaler Select Bits
  T2D0 = 6;  m_T2D0 = 64;  // Timer 2 Duty Cycle Bits
  T2D1 = 7;  m_T2D1 = 128;  // Timer 2 Duty Cycle Bits

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
  T2IMR: byte absolute $74;  // Timer 2 Interrupt Mask Register
  T2IMRset: TT2IMRset absolute $74;
  T2IMRrec: TT2IMRrec absolute $74;
const
  T2OIM = 0;  m_T2OIM = 1;  // Timer 2 Overflow Interrupt Mask Bit
  T2CIM = 1;  m_T2CIM = 2;  // Timer 2 Compare Interrupt Mask Bit

var
  T3CO2R: byte absolute $75;  // Timer3 COmpare2 Register
  T3CNT: byte absolute $76;  // Timer3 Counter Register
  T3COR: byte absolute $77;  // Timer3 COmpare Register
  T3ICR: byte absolute $78;  // Timer3 Input Capture Register

type
  TT3MRAset = bitpacked set of (e_T3CS0, e_T3CS1, e_T3SCE, e_T3CE0, e_T3CE1, e_T3CNC, e_T3ICS0, e_T3ICS1);
  TT3MRArec = bitpacked record
    T3CS0,
    T3CS1,
    T3SCE,
    T3CE0,
    T3CE1,
    T3CNC,
    T3ICS0,
    T3ICS1: TBitField;
  end;
var
  T3MRA: byte absolute $79;  // Timer 3 Mode Register A
  T3MRAset: TT3MRAset absolute $79;
  T3MRArec: TT3MRArec absolute $79;
const
  T3CS0 = 0;  m_T3CS0 = 1;  // Timer 3 Clock Select Bits
  T3CS1 = 1;  m_T3CS1 = 2;  // Timer 3 Clock Select Bits
  T3SCE = 2;  m_T3SCE = 4;  // Timer 3 Software Capture Enable Bit
  T3CE0 = 3;  m_T3CE0 = 8;  // Timer 3 Capture Edge select Bits
  T3CE1 = 4;  m_T3CE1 = 16;  // Timer 3 Capture Edge select Bits
  T3CNC = 5;  m_T3CNC = 32;  // Timer 3 Input Capture Noise Canceler Bit
  T3ICS0 = 6;  m_T3ICS0 = 64;  // Timer 3 Input Capture Select Bits
  T3ICS1 = 7;  m_T3ICS1 = 128;  // Timer 3 Input Capture Select Bits

type
  TT3MRBset = bitpacked set of (e_T3PS0, e_T3PS1, e_T3PS2);
  TT3MRBrec = bitpacked record
    T3PS0,
    T3PS1,
    T3PS2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3MRB: byte absolute $7A;  // Timer 3 Mode Register B
  T3MRBset: TT3MRBset absolute $7A;
  T3MRBrec: TT3MRBrec absolute $7A;
const
  T3PS0 = 0;  m_T3PS0 = 1;  // Timer 3 Prescaler Select Bits
  T3PS1 = 1;  m_T3PS1 = 2;  // Timer 3 Prescaler Select Bits
  T3PS2 = 2;  m_T3PS2 = 4;  // Timer 3 Prescaler Select Bits

type
  TT3IMRset = bitpacked set of (e_T3OIM, e_T3CIM, e_T3CPIM, e_T3C2IM);
  TT3IMRrec = bitpacked record
    T3OIM,
    T3CIM,
    T3CPIM,
    T3C2IM,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3IMR: byte absolute $7B;  // Timer3 Interrupt Mask Register
  T3IMRset: TT3IMRset absolute $7B;
  T3IMRrec: TT3IMRrec absolute $7B;
const
  T3OIM = 0;  m_T3OIM = 1;  // Timer3 Overflow Interrupt Mask bit
  T3CIM = 1;  m_T3CIM = 2;  // Timer3 Compare Interrupt Mask bit
  T3CPIM = 2;  m_T3CPIM = 4;  // Timer3 Capture Interrupt Mask bit
  T3C2IM = 3;  m_T3C2IM = 8;  // Timer3 Compare 2 Interrupt Mask bit

type
  TTMCRset = bitpacked set of (e_MI1S0, e_MI1S1, e_MI2S0, e_MI2S1, e_MI4S0, e_MI4S1, e_TMCPOL, e_TMSSIE);
  TTMCRrec = bitpacked record
    MI1S0,
    MI1S1,
    MI2S0,
    MI2S1,
    MI4S0,
    MI4S1,
    TMCPOL,
    TMSSIE: TBitField;
  end;
var
  TMCR: byte absolute $7D;  // Timer Modulator Control Register
  TMCRset: TTMCRset absolute $7D;
  TMCRrec: TTMCRrec absolute $7D;
const
  MI1S0 = 0;  m_MI1S0 = 1;  // Modulator Interface 1 Select Bits
  MI1S1 = 1;  m_MI1S1 = 2;  // Modulator Interface 1 Select Bits
  MI2S0 = 2;  m_MI2S0 = 4;  // Modulator Interface 2 Select Bits
  MI2S1 = 3;  m_MI2S1 = 8;  // Modulator Interface 2 Select Bits
  MI4S0 = 4;  m_MI4S0 = 16;  // Modulator Interface 4 Select Bits
  MI4S1 = 5;  m_MI4S1 = 32;  // Modulator Interface 4 Select Bits
  TMCPOL = 6;  m_TMCPOL = 64;  // Timer Modulator Clock Polarity for SSI shift clock
  TMSSIE = 7;  m_TMSSIE = 128;  // Timer Modulator SSI Enable Bit

type
  TTMMRset = bitpacked set of (e_MOS0, e_MOS1, e_MSCS0, e_MSCS1, e_MOUTC, e_TMMS0, e_TMMS1, e_TM12S);
  TTMMRrec = bitpacked record
    MOS0,
    MOS1,
    MSCS0,
    MSCS1,
    MOUTC,
    TMMS0,
    TMMS1,
    TM12S: TBitField;
  end;
var
  TMMR: byte absolute $7E;  // Timer Modulator Mode Register
  TMMRset: TTMMRset absolute $7E;
  TMMRrec: TTMMRrec absolute $7E;
const
  MOS0 = 0;  m_MOS0 = 1;  // Modulator Output Select Bits
  MOS1 = 1;  m_MOS1 = 2;  // Modulator Output Select Bits
  MSCS0 = 2;  m_MSCS0 = 4;  // Modulator Shift Clock Select Bits
  MSCS1 = 3;  m_MSCS1 = 8;  // Modulator Shift Clock Select Bits
  MOUTC = 4;  m_MOUTC = 16;  // Modulator OUT signal Complement Bit
  TMMS0 = 5;  m_TMMS0 = 32;  // Timer Modulator Mode Select Bits
  TMMS1 = 6;  m_TMMS1 = 64;  // Timer Modulator Mode Select Bits
  TM12S = 7;  m_TM12S = 128;  // Timer Modulator 1/2 output Select bit

type
  TTMIMRset = bitpacked set of (e_TMRXIM, e_TMTXIM, e_TMTCIM);
  TTMIMRrec = bitpacked record
    TMRXIM,
    TMTXIM,
    TMTCIM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TMIMR: byte absolute $7F;  // Timer Modulator Interrupt Mask Register
  TMIMRset: TTMIMRset absolute $7F;
  TMIMRrec: TTMIMRrec absolute $7F;
const
  TMRXIM = 0;  m_TMRXIM = 1;  // Timer Modulator SSI Receive Interrupt Mask Bit
  TMTXIM = 1;  m_TMTXIM = 2;  // Timer Modulator SSI Transmit Interrupt Mask Bit
  TMTCIM = 2;  m_TMTCIM = 4;  // Timer Modulator SSI Transmit Complete Interrupt Mask Bit

type
  TLFIMRset = bitpacked set of (e_LFID0IM, e_LFID1IM, e_LFFEIM, e_LFDBIM, e_LFRSIM, e_LFSDIM, e_LFMDIM);
  TLFIMRrec = bitpacked record
    LFID0IM,
    LFID1IM,
    LFFEIM,
    LFDBIM,
    LFRSIM,
    LFSDIM,
    LFMDIM,
    ReservedBit7: TBitField;
  end;
var
  LFIMR: byte absolute $82;  // LF Interrupt Mask Register
  LFIMRset: TLFIMRset absolute $82;
  LFIMRrec: TLFIMRrec absolute $82;
const
  LFID0IM = 0;  m_LFID0IM = 1;  // LF Identifier 0 Interrupt Mask Bit
  LFID1IM = 1;  m_LFID1IM = 2;  // LF Identifier 1 Interrupt Mask Bit
  LFFEIM = 2;  m_LFFEIM = 4;  // LF Receiver Frame End Interrupt Mask Bit
  LFDBIM = 3;  m_LFDBIM = 8;  // LF Receiver Data Buffer Interrupt Mask Bit
  LFRSIM = 4;  m_LFRSIM = 16;  // LF RSSI Data Interrupt Mask Bit
  LFSDIM = 5;  m_LFSDIM = 32;  // LF Signal Detected Interrupt Mask Bit
  LFMDIM = 6;  m_LFMDIM = 64;  // LF Manchester Decoder Error Interrupt Mask Bit

var
  LFCAD: byte absolute $83;  // LF Clock Adjustment Data Register
  LFID00: byte absolute $84;  // LF ID 0 Data Register Byte 0
  LFID01: byte absolute $85;  // LF ID 0 Data Register Byte 1
  LFID02: byte absolute $86;  // LF ID 0 Data Register Byte 2
  LFID03: byte absolute $87;  // LF ID 0 Data Register Byte 3
  LFID10: byte absolute $88;  // LF ID 1 Data Register Byte 0
  LFID11: byte absolute $89;  // LF ID 1 Data Register Byte 1
  LFID12: byte absolute $8A;  // LF ID 1 Data Register Byte 2
  LFID13: byte absolute $8B;  // LF ID 1 Data Register Byte 3
  LFRD0: byte absolute $8C;  // LF Receive Data Register Byte 0
  LFRD1: byte absolute $8D;  // LF Receive Data Register Byte 1
  LFRD2: byte absolute $8E;  // LF Receive Data Register Byte 2
  LFRD3: byte absolute $8F;  // LF Receive Data Register Byte 3

type
  TLFID0Mset = bitpacked set of (e_ID0FS0, e_ID0FS1, e_ID0FS2, e_ID0FS3, e_ID0FS4, e_ID0E=7);
  TLFID0Mrec = bitpacked record
    ID0FS0,
    ID0FS1,
    ID0FS2,
    ID0FS3,
    ID0FS4,
    ReservedBit5,
    ReservedBit6,
    ID0E: TBitField;
  end;
var
  LFID0M: byte absolute $90;  // LF Identifier 0 Mask Register
  LFID0Mset: TLFID0Mset absolute $90;
  LFID0Mrec: TLFID0Mrec absolute $90;
const
  ID0FS0 = 0;  m_ID0FS0 = 1;  // Identifier 0 Frame Select Bits
  ID0FS1 = 1;  m_ID0FS1 = 2;  // Identifier 0 Frame Select Bits
  ID0FS2 = 2;  m_ID0FS2 = 4;  // Identifier 0 Frame Select Bits
  ID0FS3 = 3;  m_ID0FS3 = 8;  // Identifier 0 Frame Select Bits
  ID0FS4 = 4;  m_ID0FS4 = 16;  // Identifier 0 Frame Select Bits
  ID0E = 7;  m_ID0E = 128;  // Identifier 0 Enable Bit

type
  TLFID1Mset = bitpacked set of (e_ID1FS0, e_ID1FS1, e_ID1FS2, e_ID1FS3, e_ID1FS4, e_ID1E=7);
  TLFID1Mrec = bitpacked record
    ID1FS0,
    ID1FS1,
    ID1FS2,
    ID1FS3,
    ID1FS4,
    ReservedBit5,
    ReservedBit6,
    ID1E: TBitField;
  end;
var
  LFID1M: byte absolute $91;  // LF Identifier 1 Mask Register
  LFID1Mset: TLFID1Mset absolute $91;
  LFID1Mrec: TLFID1Mrec absolute $91;
const
  ID1FS0 = 0;  m_ID1FS0 = 1;  // Identifier 1 Frame Select Bits
  ID1FS1 = 1;  m_ID1FS1 = 2;  // Identifier 1 Frame Select Bits
  ID1FS2 = 2;  m_ID1FS2 = 4;  // Identifier 1 Frame Select Bits
  ID1FS3 = 3;  m_ID1FS3 = 8;  // Identifier 1 Frame Select Bits
  ID1FS4 = 4;  m_ID1FS4 = 16;  // Identifier 1 Frame Select Bits
  ID1E = 7;  m_ID1E = 128;  // Identifier 1 Enable Bit

type
  TLFRDFset = bitpacked set of (e_RDFS0, e_RDFS1, e_RDFS2, e_RDFS3, e_RDFS4, e_RDFE=7);
  TLFRDFrec = bitpacked record
    RDFS0,
    RDFS1,
    RDFS2,
    RDFS3,
    RDFS4,
    ReservedBit5,
    ReservedBit6,
    RDFE: TBitField;
  end;
var
  LFRDF: byte absolute $92;  // LF Receive Data Frame Register
  LFRDFset: TLFRDFset absolute $92;
  LFRDFrec: TLFRDFrec absolute $92;
const
  RDFS0 = 0;  m_RDFS0 = 1;  // Receive Data Frame Select Bits
  RDFS1 = 1;  m_RDFS1 = 2;  // Receive Data Frame Select Bits
  RDFS2 = 2;  m_RDFS2 = 4;  // Receive Data Frame Select Bits
  RDFS3 = 3;  m_RDFS3 = 8;  // Receive Data Frame Select Bits
  RDFS4 = 4;  m_RDFS4 = 16;  // Receive Data Frame Select Bits
  RDFE = 7;  m_RDFE = 128;  // Receive Data Frame Enable Bit

var
  LFRSD1: byte absolute $93;  // LF RSSI Data Register 1
  LFRSD2: byte absolute $94;  // LF RSSI Data Register 2
  LFRSD3: byte absolute $95;  // LF RSSI Data Register 3
  LFCC1: byte absolute $96;  // Low Frequency Channel Capacity select register 1
  LFCC2: byte absolute $97;  // Low Frequency Channel Capacity select register 2
  LFCC3: byte absolute $98;  // Low Frequency Channel Capacity select register 3

type
  TLFQCRset = bitpacked set of (e_LFQCLL);
  TLFQCRrec = bitpacked record
    LFQCLL,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFQCR: byte absolute $99;  // Low Frequency Receiver Quality Controll Register
  LFQCRset: TLFQCRset absolute $99;
  LFQCRrec: TLFQCRrec absolute $99;
const
  LFQCLL = 0;  m_LFQCLL = 1;  // LF Receiver Quality ?????

type
  TTPIMRset = bitpacked set of (e_TPIM);
  TTPIMRrec = bitpacked record
    TPIM,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TPIMR: byte absolute $9C;  // Transponder Interrupt Mask Register
  TPIMRset: TTPIMRset absolute $9C;
  TPIMRrec: TTPIMRrec absolute $9C;
const
  TPIM = 0;  m_TPIM = 1;  // Transponder Interrupt Mask Bit

type
  TRTCCRset = bitpacked set of (e_RTCR);
  TRTCCRrec = bitpacked record
    RTCR,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RTCCR: byte absolute $9E;  // Real-Time Clock Control Register
  RTCCRset: TRTCCRset absolute $9E;
  RTCCRrec: TRTCCRrec absolute $9E;
const
  RTCR = 0;  m_RTCR = 1;  // Real-Time Counter Reset Bit

var
  RTCDR: byte absolute $9F;  // Real Time Clock Data Register
  TMMDR: byte absolute $A8;  // Timer Modulator Manchester Data Register
  TMBDR: byte absolute $A9;  // Timer Modulator Biphase Data Register
  TMTDR: byte absolute $AA;  // Timer Modulator Transmit Data Register
  TMSR: byte absolute $AB;  // Timer Modulator Shift Register
  CRCPOL: byte absolute $AC;  // CRC Polynomial Data Register
  CRCDR: byte absolute $AD;  // CRC Data Register

type
  TCRCCRset = bitpacked set of (e_CRCN0, e_CRCN1, e_CRCN2, e_CRCSEL, e_REFLI, e_REFLO, e_STVAL, e_CRCRS);
  TCRCCRrec = bitpacked record
    CRCN0,
    CRCN1,
    CRCN2,
    CRCSEL,
    REFLI,
    REFLO,
    STVAL,
    CRCRS: TBitField;
  end;
var
  CRCCR: byte absolute $AE;  // CRC Control Register
  CRCCRset: TCRCCRset absolute $AE;
  CRCCRrec: TCRCCRrec absolute $AE;
const
  CRCN0 = 0;  m_CRCN0 = 1;  // Partial CRC Computation Bits
  CRCN1 = 1;  m_CRCN1 = 2;  // Partial CRC Computation Bits
  CRCN2 = 2;  m_CRCN2 = 4;  // Partial CRC Computation Bits
  CRCSEL = 3;  m_CRCSEL = 8;  // CRC Mode Select Bit
  REFLI = 4;  m_REFLI = 16;  // Reflect Input Data Bit
  REFLO = 5;  m_REFLO = 32;  // Reflect Output Data Bit
  STVAL = 6;  m_STVAL = 64;  // Start VALue Bit
  CRCRS = 7;  m_CRCRS = 128;  // CRC Reset Bit

type
  TCRCSRset = bitpacked set of (e_CRCBF);
  TCRCSRrec = bitpacked record
    CRCBF,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CRCSR: byte absolute $AF;  // CRC Status Register
  CRCSRset: TCRCSRset absolute $AF;
  CRCSRrec: TCRCSRrec absolute $AF;
const
  CRCBF = 0;  m_CRCBF = 1;  // CRC Busy Flag
  // typedefs = 66

implementation

{$i avrcommon.inc}

procedure TPINT_ISR; external name 'TPINT_ISR'; // Interrupt 1 Transponder Mode Interrupt
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 2 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure VMINT_ISR; external name 'VMINT_ISR'; // Interrupt 5 Voltage Monitoring Interrupt
procedure T0INT_ISR; external name 'T0INT_ISR'; // Interrupt 6 Timer0 Interval Interrupt
procedure LFID0INT_ISR; external name 'LFID0INT_ISR'; // Interrupt 7 LF-Receiver Identifier 0 Interrupt
procedure LFID1INT_ISR; external name 'LFID1INT_ISR'; // Interrupt 8 LF-Receiver Identifier 1 Interrupt
procedure LFFEINT_ISR; external name 'LFFEINT_ISR'; // Interrupt 9 LF-Receiver Frame End Interrupt
procedure LFDBINT_ISR; external name 'LFDBINT_ISR'; // Interrupt 10 LF-Receiver Data Buffer full Interrupt
procedure T3CAPINT_ISR; external name 'T3CAPINT_ISR'; // Interrupt 11 Timer/Counter3 Capture Event Interrupt
procedure T3COMINT_ISR; external name 'T3COMINT_ISR'; // Interrupt 12 Timer/Counter3 Compare Match Interrupt
procedure T3OVFINT_ISR; external name 'T3OVFINT_ISR'; // Interrupt 13 Timer/Counter3 Overflow Interrupt
procedure T3COM2INT_ISR; external name 'T3COM2INT_ISR'; // Interrupt 14 Timer/Counter3 Compare Match 2 Interrupt
procedure T2COMINT_ISR; external name 'T2COMINT_ISR'; // Interrupt 15 Timer/Counter2 Compare Match Interrupt
procedure T2OVFINT_ISR; external name 'T2OVFINT_ISR'; // Interrupt 16 Timer/Counter2 Overflow Interrupt
procedure T1INT_ISR; external name 'T1INT_ISR'; // Interrupt 17 Timer 1 Interval Interrupt
procedure SPISTC_ISR; external name 'SPISTC_ISR'; // Interrupt 18 SPI Serial Transfer Complete Interrupt
procedure TMRXBINT_ISR; external name 'TMRXBINT_ISR'; // Interrupt 19 Timer Modulator SSI Receive Buffer Interrupt
procedure TMTXBINT_ISR; external name 'TMTXBINT_ISR'; // Interrupt 20 Timer Modulator SSI Transmit Buffer Interrupt
procedure TMTXCINT_ISR; external name 'TMTXCINT_ISR'; // Interrupt 21 Timer Modulator Transmit Complete Interrupt
procedure AESINT_ISR; external name 'AESINT_ISR'; // Interrupt 22 AES Interrupt
procedure LFRSSINT_ISR; external name 'LFRSSINT_ISR'; // Interrupt 23 LF-Receiver RSSi measurement Interrupt
procedure LFSDINT_ISR; external name 'LFSDINT_ISR'; // Interrupt 24 LF-Receiver Signal Detect Interrupt
procedure LFMDINT_ISR; external name 'LFMDINT_ISR'; // Interrupt 25 LF-Receiver Manchester Decoder error Interrupt 
procedure EXCMINT_ISR; external name 'EXCMINT_ISR'; // Interrupt 26 External Input Clock Monitoring Interrupt
procedure EXXMINT_ISR; external name 'EXXMINT_ISR'; // Interrupt 27 External XTAL Oscillator Break Down Interrupt
procedure RTCINT_ISR; external name 'RTCINT_ISR'; // Interrupt 28 Real Time Clock Interrupt
procedure EEREADY_ISR; external name 'EEREADY_ISR'; // Interrupt 29 EEPROM Ready Interrupt
procedure SPMREADY_ISR; external name 'SPMREADY_ISR'; // Interrupt 30 Store Program Memory Ready 

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp TPINT_ISR
  jmp INT0_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp VMINT_ISR
  jmp T0INT_ISR
  jmp LFID0INT_ISR
  jmp LFID1INT_ISR
  jmp LFFEINT_ISR
  jmp LFDBINT_ISR
  jmp T3CAPINT_ISR
  jmp T3COMINT_ISR
  jmp T3OVFINT_ISR
  jmp T3COM2INT_ISR
  jmp T2COMINT_ISR
  jmp T2OVFINT_ISR
  jmp T1INT_ISR
  jmp SPISTC_ISR
  jmp TMRXBINT_ISR
  jmp TMTXBINT_ISR
  jmp TMTXCINT_ISR
  jmp AESINT_ISR
  jmp LFRSSINT_ISR
  jmp LFSDINT_ISR
  jmp LFMDINT_ISR
  jmp EXCMINT_ISR
  jmp EXXMINT_ISR
  jmp RTCINT_ISR
  jmp EEREADY_ISR
  jmp SPMREADY_ISR

  {$i start.inc}

  .weak TPINT_ISR
  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak VMINT_ISR
  .weak T0INT_ISR
  .weak LFID0INT_ISR
  .weak LFID1INT_ISR
  .weak LFFEINT_ISR
  .weak LFDBINT_ISR
  .weak T3CAPINT_ISR
  .weak T3COMINT_ISR
  .weak T3OVFINT_ISR
  .weak T3COM2INT_ISR
  .weak T2COMINT_ISR
  .weak T2OVFINT_ISR
  .weak T1INT_ISR
  .weak SPISTC_ISR
  .weak TMRXBINT_ISR
  .weak TMTXBINT_ISR
  .weak TMTXCINT_ISR
  .weak AESINT_ISR
  .weak LFRSSINT_ISR
  .weak LFSDINT_ISR
  .weak LFMDINT_ISR
  .weak EXCMINT_ISR
  .weak EXXMINT_ISR
  .weak RTCINT_ISR
  .weak EEREADY_ISR
  .weak SPMREADY_ISR

  .set TPINT_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set VMINT_ISR, Default_IRQ_handler
  .set T0INT_ISR, Default_IRQ_handler
  .set LFID0INT_ISR, Default_IRQ_handler
  .set LFID1INT_ISR, Default_IRQ_handler
  .set LFFEINT_ISR, Default_IRQ_handler
  .set LFDBINT_ISR, Default_IRQ_handler
  .set T3CAPINT_ISR, Default_IRQ_handler
  .set T3COMINT_ISR, Default_IRQ_handler
  .set T3OVFINT_ISR, Default_IRQ_handler
  .set T3COM2INT_ISR, Default_IRQ_handler
  .set T2COMINT_ISR, Default_IRQ_handler
  .set T2OVFINT_ISR, Default_IRQ_handler
  .set T1INT_ISR, Default_IRQ_handler
  .set SPISTC_ISR, Default_IRQ_handler
  .set TMRXBINT_ISR, Default_IRQ_handler
  .set TMTXBINT_ISR, Default_IRQ_handler
  .set TMTXCINT_ISR, Default_IRQ_handler
  .set AESINT_ISR, Default_IRQ_handler
  .set LFRSSINT_ISR, Default_IRQ_handler
  .set LFSDINT_ISR, Default_IRQ_handler
  .set LFMDINT_ISR, Default_IRQ_handler
  .set EXCMINT_ISR, Default_IRQ_handler
  .set EXXMINT_ISR, Default_IRQ_handler
  .set RTCINT_ISR, Default_IRQ_handler
  .set EEREADY_ISR, Default_IRQ_handler
  .set SPMREADY_ISR, Default_IRQ_handler
end;

end.
