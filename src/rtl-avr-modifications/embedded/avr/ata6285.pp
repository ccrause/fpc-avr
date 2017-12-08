unit ATA6285;

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
  TCMCRset = bitpacked set of (e_CMM0, e_CMM1, e_SRCD, e_CMONEN, e_CCS, e_ECINS, e_CMCCE=7);
  TCMCRrec = bitpacked record
    CMM0,
    CMM1,
    SRCD,
    CMONEN,
    CCS,
    ECINS,
    ReservedBit6,
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
  CMONEN = 3;  m_CMONEN = 8;  // Clock Monitoring Enable
  CCS = 4;  m_CCS = 16;  // Core Clock Select Bit
  ECINS = 5;  m_ECINS = 32;  // External Clock Input Select Bit
  CMCCE = 7;  m_CMCCE = 128;  // Clock Management Control Change Enable Bit

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
  CMSR: byte absolute $30;  // Clock Management Status Register
  CMSRset: TCMSRset absolute $30;
  CMSRrec: TCMSRrec absolute $30;
const
  ECF = 0;  m_ECF = 1;  // External Clock input Flag Bit

type
  TT2CRAset = bitpacked set of (e_T2OTM, e_T2CTM, e_T2CR, e_T2CRM, e_T2ICS=5, e_T2TS, e_T2E);
  TT2CRArec = bitpacked record
    T2OTM,
    T2CTM,
    T2CR,
    T2CRM,
    ReservedBit4,
    T2ICS,
    T2TS,
    T2E: TBitField;
  end;
var
  T2CRA: byte absolute $31;  // Timer 2 Control Register A
  T2CRAset: TT2CRAset absolute $31;
  T2CRArec: TT2CRArec absolute $31;
const
  T2OTM = 0;  m_T2OTM = 1;  // Timer 2 Overflow Toggle Mask Bit
  T2CTM = 1;  m_T2CTM = 2;  // Timer 2 Compare Toggle Mask Bit
  T2CR = 2;  m_T2CR = 4;  // Timer2 Counter Reset
  T2CRM = 3;  m_T2CRM = 8;  // Timer 2 Compare Reset Mask Bit
  T2ICS = 5;  m_T2ICS = 32;  // Timer Input Capture Select Bit
  T2TS = 6;  m_T2TS = 64;  // Timer 2 Toggle with Start Bit
  T2E = 7;  m_T2E = 128;  // Timer 2 Enable Bit

type
  TT2CRBset = bitpacked set of (e_T2SCE);
  TT2CRBrec = bitpacked record
    T2SCE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T2CRB: byte absolute $32;  // Timer 2 Control Register B
  T2CRBset: TT2CRBset absolute $32;
  T2CRBrec: TT2CRBrec absolute $32;
const
  T2SCE = 0;  m_T2SCE = 1;  // Timer 2 Software Capture Enable Bit

type
  TT3CRAset = bitpacked set of (e_T3AC, e_T3SCE, e_T3CR, e_T3TS=6, e_T3E);
  TT3CRArec = bitpacked record
    T3AC,
    T3SCE,
    T3CR,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    T3TS,
    T3E: TBitField;
  end;
var
  T3CRA: byte absolute $34;  // Timer 3 Control Register A
  T3CRAset: TT3CRAset absolute $34;
  T3CRArec: TT3CRArec absolute $34;
const
  T3AC = 0;  m_T3AC = 1;  // Timer 3 Alternate Compare register sequence bit
  T3SCE = 1;  m_T3SCE = 2;  // Timer 3 Software Capture Enable Bit
  T3CR = 2;  m_T3CR = 4;  // Timer3 Counter Reset
  T3TS = 6;  m_T3TS = 64;  // Timer 3 Toggle with Start Bit
  T3E = 7;  m_T3E = 128;  // Timer 3 Enable Bit

type
  TVMCSRset = bitpacked set of (e_VMEN, e_VMLS0, e_VMLS1, e_VMLS2, e_VMIM, e_VMF, e_BODPD, e_BODLS);
  TVMCSRrec = bitpacked record
    VMEN,
    VMLS0,
    VMLS1,
    VMLS2,
    VMIM,
    VMF,
    BODPD,
    BODLS: TBitField;
  end;
var
  VMCSR: byte absolute $36;  // Voltage Monitor Control and Status Register
  VMCSRset: TVMCSRset absolute $36;
  VMCSRrec: TVMCSRrec absolute $36;
const
  VMEN = 0;  m_VMEN = 1;  // Voltage Monitor Enable Bit
  VMLS0 = 1;  m_VMLS0 = 2;  // Voltage Monitor Level Select Bits
  VMLS1 = 2;  m_VMLS1 = 4;  // Voltage Monitor Level Select Bits
  VMLS2 = 3;  m_VMLS2 = 8;  // Voltage Monitor Level Select Bits
  VMIM = 4;  m_VMIM = 16;  // Voltage Monitor Interrupt Mask Bit
  VMF = 5;  m_VMF = 32;  // Voltage Monitor Flag
  BODPD = 6;  m_BODPD = 64;  // Brown-Out Detection on Power-Down Bit
  BODLS = 7;  m_BODLS = 128;  // Brown-Out Detection Level Select Bit

type
  TPCIFRset = bitpacked set of (e_PCIF0, e_PCIF1, e_PCIF2);
  TPCIFRrec = bitpacked record
    PCIF0,
    PCIF1,
    PCIF2,
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
  PCIF2 = 2;  m_PCIF2 = 4;  // Pin Change Interrupt Flags

type
  TLFFRset = bitpacked set of (e_LFWPF, e_LFBF, e_LFEDF, e_LFRF);
  TLFFRrec = bitpacked record
    LFWPF,
    LFBF,
    LFEDF,
    LFRF,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFFR: byte absolute $38;  // Low Frequency Flag Register
  LFFRset: TLFFRset absolute $38;
  LFFRrec: TLFFRrec absolute $38;
const
  LFWPF = 0;  m_LFWPF = 1;  // LF receiver Wake-up Flag
  LFBF = 1;  m_LFBF = 2;  // LF receiver data Buffer full Flag
  LFEDF = 2;  m_LFEDF = 4;  // LF receiver End of data Flag
  LFRF = 3;  m_LFRF = 8;  // LF receiver Rssi data Flag

type
  TSSFRset = bitpacked set of (e_MSENF, e_MSENO);
  TSSFRrec = bitpacked record
    MSENF,
    MSENO,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SSFR: byte absolute $39;  // Sensor Status + Flag Register
  SSFRset: TSSFRset absolute $39;
  SSFRrec: TSSFRrec absolute $39;
const
  MSENF = 0;  m_MSENF = 1;  // Motion Sensor Flag
  MSENO = 1;  m_MSENO = 2;  // Motion Sensor Output

type
  TT10IFRset = bitpacked set of (e_T0F, e_T1F);
  TT10IFRrec = bitpacked record
    T0F,
    T1F,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T10IFR: byte absolute $3A;  // Timer1/0 Interrupt Flag Register
  T10IFRset: TT10IFRset absolute $3A;
  T10IFRrec: TT10IFRrec absolute $3A;
const
  T0F = 0;  m_T0F = 1;  // Timer 0 Flag Bit
  T1F = 1;  m_T1F = 2;  // Timer 1 Flag Bit

type
  TT2IFRset = bitpacked set of (e_T2OFF, e_T2COF, e_T2ICF, e_T2RXF, e_T2TXF, e_T2TCF);
  TT2IFRrec = bitpacked record
    T2OFF,
    T2COF,
    T2ICF,
    T2RXF,
    T2TXF,
    T2TCF,
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
  T2ICF = 2;  m_T2ICF = 4;  // Timer2 Input Capture Flag Bit
  T2RXF = 3;  m_T2RXF = 8;  // Timer2 SSI Receive Flag Bit
  T2TXF = 4;  m_T2TXF = 16;  // Timer2 SSI Transmit Flag Bit
  T2TCF = 5;  m_T2TCF = 32;  // Timer2 SSI Transmit Complete Flag Bit

type
  TT3IFRset = bitpacked set of (e_T3OFF, e_T3COAF, e_T3COBF, e_T3ICF);
  TT3IFRrec = bitpacked record
    T3OFF,
    T3COAF,
    T3COBF,
    T3ICF,
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
  T3COAF = 1;  m_T3COAF = 2;  // Timer3 Compare A Flag bit
  T3COBF = 2;  m_T3COBF = 4;  // Timer3 Compare B Flag bit
  T3ICF = 3;  m_T3ICF = 8;  // Timer3 Input Capture Flag bit

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
  EIFR: byte absolute $3D;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $3D;
  EIFRrec: TEIFRrec absolute $3D;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flags
  INTF1 = 1;  m_INTF1 = 2;  // External Interrupt Flags

var
  GPIOR0: byte absolute $3E;  // General Purpose I/O Register 0

type
  TEECRset = bitpacked set of (e_EERE, e_EEWE, e_EEMWE, e_EERIE, e_EEPM0, e_EEPM1);
  TEECRrec = bitpacked record
    EERE,
    EEWE,
    EEMWE,
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
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register  Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

type
  TPCICRset = bitpacked set of (e_PCIE0, e_PCIE1, e_PCIE2);
  TPCICRrec = bitpacked record
    PCIE0,
    PCIE1,
    PCIE2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCICR: byte absolute $43;  // Pin Change Interrupt Control Register
  PCICRset: TPCICRset absolute $43;
  PCICRrec: TPCICRrec absolute $43;
const
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enables
  PCIE1 = 1;  m_PCIE1 = 2;  // Pin Change Interrupt Enables
  PCIE2 = 2;  m_PCIE2 = 4;  // Pin Change Interrupt Enables

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
  EIMSK: byte absolute $44;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $44;
  EIMSKrec: TEIMSKrec absolute $44;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 1 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 1 Enable

var
  SVCR: byte absolute $47;  // Sensor Voltage Control Register

type
  TSCRset = bitpacked set of (e_SMS, e_SEN0, e_SEN1, e_SMEN);
  TSCRrec = bitpacked record
    SMS,
    SEN0,
    SEN1,
    SMEN,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCR: byte absolute $48;  // Sensor Control Register
  SCRset: TSCRset absolute $48;
  SCRrec: TSCRrec absolute $48;
const
  SMS = 0;  m_SMS = 1;  // Sensor Measurement Start Bit
  SEN0 = 1;  m_SEN0 = 2;  // Sensor enable Bits
  SEN1 = 2;  m_SEN1 = 4;  // Sensor enable Bits
  SMEN = 3;  m_SMEN = 8;  // Sensor Motion Enable Bit

type
  TSCCRset = bitpacked set of (e_SRCC0, e_SRCC1, e_SCCS0, e_SCCS1, e_SCCS2);
  TSCCRrec = bitpacked record
    SRCC0,
    SRCC1,
    SCCS0,
    SCCS1,
    SCCS2,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SCCR: byte absolute $49;  // Sensor Capacitor Control Register
  SCCRset: TSCCRset absolute $49;
  SCCRrec: TSCCRrec absolute $49;
const
  SRCC0 = 0;  m_SRCC0 = 1;  // Sensor Reference Charge Current Bit1
  SRCC1 = 1;  m_SRCC1 = 2;  // Sensor Reference Charge Current Bit1
  SCCS0 = 2;  m_SCCS0 = 4;  // Sensor Capacitor Channel Select Bit2
  SCCS1 = 3;  m_SCCS1 = 8;  // Sensor Capacitor Channel Select Bit2
  SCCS2 = 4;  m_SCCS2 = 16;  // Sensor Capacitor Channel Select Bit2

var
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
  T2MDR: byte absolute $4F;  // Timer 2 Modulator Data Register
  LFRR: byte absolute $50;  // LF RSSI Data Register

type
  TLFCDRset = bitpacked set of (e_LFDO, e_LFRST=6, e_LFSCE);
  TLFCDRrec = bitpacked record
    LFDO,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    LFRST,
    LFSCE: TBitField;
  end;
var
  LFCDR: byte absolute $52;  // LF receiver Control und Data Register
  LFCDRset: TLFCDRset absolute $52;
  LFCDRrec: TLFCDRrec absolute $52;
const
  LFDO = 0;  m_LFDO = 1;  // LF receiver Data Output Bit
  LFRST = 6;  m_LFRST = 64;  // LF receiver Reset Bit
  LFSCE = 7;  m_LFSCE = 128;  // LF receiver RSSI Software Capture Enable Bit

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
  SE = 0;  m_SE = 1;
  SM0 = 1;  m_SM0 = 2;
  SM1 = 2;  m_SM1 = 4;
  SM2 = 3;  m_SM2 = 8;

type
  TMCUSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_TSRF=5);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    ReservedBit4,
    TSRF,
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
  TSRF = 5;  m_TSRF = 32;  // Temperature Shutdown Reset Flag

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
  PUD = 4;  m_PUD = 16;

var
  LFRB: byte absolute $56;  // Low Frequency Receive data Buffer

type
  TSPMCSRset = bitpacked set of (e_SELFPRGEN, e_PGERS, e_PGWRT, e_BLBSET, e_RWWSRE, e_RWWSB=6, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SELFPRGEN,
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
  SELFPRGEN = 0;  m_SELFPRGEN = 1;  // Self Programming Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read-While-Write section read enable
  RWWSB = 6;  m_RWWSB = 64;  // Read-While-Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

type
  TT1CRset = bitpacked set of (e_T1PS0, e_T1PS1, e_T1PS2, e_T1CS0, e_T1CS1, e_T1CS2, e_T1IE=7);
  TT1CRrec = bitpacked record
    T1PS0,
    T1PS1,
    T1PS2,
    T1CS0,
    T1CS1,
    T1CS2,
    ReservedBit6,
    T1IE: TBitField;
  end;
var
  T1CR: byte absolute $58;  // Timer 1 Control Register
  T1CRset: TT1CRset absolute $58;
  T1CRrec: TT1CRrec absolute $58;
const
  T1PS0 = 0;  m_T1PS0 = 1;  // Timer 1 Prescaler Select Bits
  T1PS1 = 1;  m_T1PS1 = 2;  // Timer 1 Prescaler Select Bits
  T1PS2 = 2;  m_T1PS2 = 4;  // Timer 1 Prescaler Select Bits
  T1CS0 = 3;  m_T1CS0 = 8;  // Timer 1 Clock Select Bits
  T1CS1 = 4;  m_T1CS1 = 16;  // Timer 1 Clock Select Bits
  T1CS2 = 5;  m_T1CS2 = 32;  // Timer 1 Clock Select Bits
  T1IE = 7;  m_T1IE = 128;  // Timer 1 Interrupt Enable Bit

type
  TT0CRset = bitpacked set of (e_T0PAS0, e_T0PAS1, e_T0PAS2, e_T0IE, e_T0PR, e_T0PBS0, e_T0PBS1, e_T0PBS2);
  TT0CRrec = bitpacked record
    T0PAS0,
    T0PAS1,
    T0PAS2,
    T0IE,
    T0PR,
    T0PBS0,
    T0PBS1,
    T0PBS2: TBitField;
  end;
var
  T0CR: byte absolute $59;  // Timer 0 Control Register
  T0CRset: TT0CRset absolute $59;
  T0CRrec: TT0CRrec absolute $59;
const
  T0PAS0 = 0;  m_T0PAS0 = 1;  // Timer 0 Prescaler A Select Bits
  T0PAS1 = 1;  m_T0PAS1 = 2;  // Timer 0 Prescaler A Select Bits
  T0PAS2 = 2;  m_T0PAS2 = 4;  // Timer 0 Prescaler A Select Bits
  T0IE = 3;  m_T0IE = 8;  // Timer 0 Interrupt Enable Bit
  T0PR = 4;  m_T0PR = 16;  // Timer 0 Prescaler Reset Bit
  T0PBS0 = 5;  m_T0PBS0 = 32;  // Timer 0 Prescaler B Select Bits
  T0PBS1 = 6;  m_T0PBS1 = 64;  // Timer 0 Prescaler B Select Bits
  T0PBS2 = 7;  m_T0PBS2 = 128;  // Timer 0 Prescaler B Select Bits

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
  ECIE = 0;  m_ECIE = 1;  // External Clock input Interrupt Enable Bit

type
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLTPS0, e_CLTPS1, e_CLTPS2, e_CLPCE=7);
  TCLKPRrec = bitpacked record
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
  CLPCE = 7;  m_CLPCE = 128;  // Clock Prescaler Change Enable Bit

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
  TSIMSKset = bitpacked set of (e_MSIE);
  TSIMSKrec = bitpacked record
    MSIE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SIMSK: byte absolute $61;  // Sensor Interrupt Mask register
  SIMSKset: TSIMSKset absolute $61;
  SIMSKrec: TSIMSKrec absolute $61;
const
  MSIE = 0;  m_MSIE = 1;  // Motion Sensor Interrupt Enable Bit

type
  TTSCRset = bitpacked set of (e_TSSD);
  TTSCRrec = bitpacked record
    TSSD,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TSCR: byte absolute $64;  // Temperature Sensor Control Register
  TSCRset: TTSCRset absolute $64;
  TSCRrec: TTSCRrec absolute $64;
const
  TSSD = 0;  m_TSSD = 1;  // Temperature Sensor Shutdown mode Disable

var
  SRCCAL: byte absolute $65;  // SRC-Oscillator Calibration Register
  FRCCAL: byte absolute $66;  // FRC-Oscillator Calibration Register
  MSVCAL: byte absolute $67;  // Motion Sensor Voltage Calibration Register

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
  PCMSK2: byte absolute $6C;  // Pin Change Mask Register 2
  T2ICRL: byte absolute $6E;  // Timer 2 Input Capture Register Low Byte
  T2ICR: byte absolute $6F;  // Timer 2 Input Capture Register High Byte
  T2COR: word absolute $70;  // Timer2 Compare Register  Bytes
  T2CORL: byte absolute $70;
  T2CORH: byte absolute $71;

type
  TT2MRAset = bitpacked set of (e_T2CS0, e_T2CS1, e_T2CS2, e_T2CE0, e_T2CE1, e_T2CNC, e_T2TP0, e_T2TP1);
  TT2MRArec = bitpacked record
    T2CS0,
    T2CS1,
    T2CS2,
    T2CE0,
    T2CE1,
    T2CNC,
    T2TP0,
    T2TP1: TBitField;
  end;
var
  T2MRA: byte absolute $72;  // Timer 2 Mode Register A
  T2MRAset: TT2MRAset absolute $72;
  T2MRArec: TT2MRArec absolute $72;
const
  T2CS0 = 0;  m_T2CS0 = 1;  // Timer 2 Clock Select Bits
  T2CS1 = 1;  m_T2CS1 = 2;  // Timer 2 Clock Select Bits
  T2CS2 = 2;  m_T2CS2 = 4;  // Timer 2 Clock Select Bits
  T2CE0 = 3;  m_T2CE0 = 8;  // Timer 2 Capture Edge Select Bits
  T2CE1 = 4;  m_T2CE1 = 16;  // Timer 2 Capture Edge Select Bits
  T2CNC = 5;  m_T2CNC = 32;  // Timer 2 Input Capture Noise Canceler Bit
  T2TP0 = 6;  m_T2TP0 = 64;  // Timer 2 Top select Bits
  T2TP1 = 7;  m_T2TP1 = 128;  // Timer 2 Top select Bits

type
  TT2MRBset = bitpacked set of (e_T2M0, e_T2M1, e_T2M2, e_T2M3, e_T2TOP, e_T2CPOL=6, e_T2SSIE);
  TT2MRBrec = bitpacked record
    T2M0,
    T2M1,
    T2M2,
    T2M3,
    T2TOP,
    ReservedBit5,
    T2CPOL,
    T2SSIE: TBitField;
  end;
var
  T2MRB: byte absolute $73;  // Timer 2 Mode Register B
  T2MRBset: TT2MRBset absolute $73;
  T2MRBrec: TT2MRBrec absolute $73;
const
  T2M0 = 0;  m_T2M0 = 1;  // Timer 2 Mode Bits
  T2M1 = 1;  m_T2M1 = 2;  // Timer 2 Mode Bits
  T2M2 = 2;  m_T2M2 = 4;  // Timer 2 Mode Bits
  T2M3 = 3;  m_T2M3 = 8;  // Timer 2 Mode Bits
  T2TOP = 4;  m_T2TOP = 16;  // Timer 2 Toggle Output Preset Bit
  T2CPOL = 6;  m_T2CPOL = 64;  // Timer2 Clock Polarity for SSI shift clock
  T2SSIE = 7;  m_T2SSIE = 128;  // Timer 2 SSI Enable Bit

type
  TT2IMRset = bitpacked set of (e_T2OIM, e_T2CIM, e_T2CPIM, e_T2RXIM, e_T2TXIM, e_T2TCIM);
  TT2IMRrec = bitpacked record
    T2OIM,
    T2CIM,
    T2CPIM,
    T2RXIM,
    T2TXIM,
    T2TCIM,
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
  T2CPIM = 2;  m_T2CPIM = 4;  // Timer 2 Capture Interrupt Mask Bit
  T2RXIM = 3;  m_T2RXIM = 8;  // Timer2 SSI Receive Interrupt Mask Bit
  T2TXIM = 4;  m_T2TXIM = 16;  // Timer2 SSI Transmit Interrupt Mask Bit
  T2TCIM = 5;  m_T2TCIM = 32;  // Timer2 SSI Transmit Complete Interrupt Mask Bit

var
  T3ICR: word absolute $76;  // Timer3 Input Capture Register  Bytes
  T3ICRL: byte absolute $76;
  T3ICRH: byte absolute $77;
  T3CORA: word absolute $78;  // Timer3 COmpare Register A  Bytes
  T3CORAL: byte absolute $78;
  T3CORAH: byte absolute $79;
  T3CORB: word absolute $7A;  // Timer3 COmpare Register B  Bytes
  T3CORBL: byte absolute $7A;
  T3CORBH: byte absolute $7B;

type
  TT3MRAset = bitpacked set of (e_T3CS0, e_T3CS1, e_T3CS2, e_T3CE0, e_T3CE1, e_T3CNC, e_T3ICS0, e_T3ICS1);
  TT3MRArec = bitpacked record
    T3CS0,
    T3CS1,
    T3CS2,
    T3CE0,
    T3CE1,
    T3CNC,
    T3ICS0,
    T3ICS1: TBitField;
  end;
var
  T3MRA: byte absolute $7C;  // Timer 3 Mode Register A
  T3MRAset: TT3MRAset absolute $7C;
  T3MRArec: TT3MRArec absolute $7C;
const
  T3CS0 = 0;  m_T3CS0 = 1;  // Timer 3 Clock Select Bits
  T3CS1 = 1;  m_T3CS1 = 2;  // Timer 3 Clock Select Bits
  T3CS2 = 2;  m_T3CS2 = 4;  // Timer 3 Clock Select Bits
  T3CE0 = 3;  m_T3CE0 = 8;  // Timer 3 Capture Edge select Bits
  T3CE1 = 4;  m_T3CE1 = 16;  // Timer 3 Capture Edge select Bits
  T3CNC = 5;  m_T3CNC = 32;  // Timer 3 input Capture Noise Canceler Bit
  T3ICS0 = 6;  m_T3ICS0 = 64;  // Timer 3 Input Capture Select Bits
  T3ICS1 = 7;  m_T3ICS1 = 128;  // Timer 3 Input Capture Select Bits

type
  TT3MRBset = bitpacked set of (e_T3M0, e_T3M1, e_T3M2, e_T3TOP=4);
  TT3MRBrec = bitpacked record
    T3M0,
    T3M1,
    T3M2,
    ReservedBit3,
    T3TOP,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  T3MRB: byte absolute $7D;  // Timer 3 Mode Register B
  T3MRBset: TT3MRBset absolute $7D;
  T3MRBrec: TT3MRBrec absolute $7D;
const
  T3M0 = 0;  m_T3M0 = 1;  // Timer 3 Mode Bits
  T3M1 = 1;  m_T3M1 = 2;  // Timer 3 Mode Bits
  T3M2 = 2;  m_T3M2 = 4;  // Timer 3 Mode Bits
  T3TOP = 4;  m_T3TOP = 16;  // Timer 3 Toggle Output Preset Bit

type
  TT3CRBset = bitpacked set of (e_T3CTMA, e_T3SAMA, e_T3CRMA, e_T3CTMB, e_T3SAMB, e_T3CRMB, e_T3CPRM);
  TT3CRBrec = bitpacked record
    T3CTMA,
    T3SAMA,
    T3CRMA,
    T3CTMB,
    T3SAMB,
    T3CRMB,
    T3CPRM,
    ReservedBit7: TBitField;
  end;
var
  T3CRB: byte absolute $7E;  // Timer 3 Control Register B
  T3CRBset: TT3CRBset absolute $7E;
  T3CRBrec: TT3CRBrec absolute $7E;
const
  T3CTMA = 0;  m_T3CTMA = 1;  // Timer 3 Compare Toggle Mask bit A
  T3SAMA = 1;  m_T3SAMA = 2;  // Timer 3 Single Action Mask bit A
  T3CRMA = 2;  m_T3CRMA = 4;  // Timer 3 Compare Reset Mask bit A
  T3CTMB = 3;  m_T3CTMB = 8;  // Timer 3 Compare Toggle Mask bit B
  T3SAMB = 4;  m_T3SAMB = 16;  // Timer 3 Single Action Mask bit B
  T3CRMB = 5;  m_T3CRMB = 32;  // Timer 3 Compare Reset Mask bit B
  T3CPRM = 6;  m_T3CPRM = 64;  // Timer 3 CaPture Reset Mask bit

type
  TT3IMRset = bitpacked set of (e_T3OIM, e_T3CAIM, e_T3CBIM, e_T3CPIM);
  TT3IMRrec = bitpacked record
    T3OIM,
    T3CAIM,
    T3CBIM,
    T3CPIM,
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
  T3OIM = 0;  m_T3OIM = 1;  // Timer3 Overflow Interrupt Mask bit
  T3CAIM = 1;  m_T3CAIM = 2;  // Timer3 Compare A Interrupt Mask bit
  T3CBIM = 2;  m_T3CBIM = 4;  // Timer3 Compare B Interrupt Mask bit
  T3CPIM = 3;  m_T3CPIM = 8;  // Timer3 Capture Interrupt Mask bit

type
  TLFIMRset = bitpacked set of (e_LFWIM, e_LFBIM, e_LFEIM);
  TLFIMRrec = bitpacked record
    LFWIM,
    LFBIM,
    LFEIM,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  LFIMR: byte absolute $81;  // Low Frequency Interrupt Mask Register
  LFIMRset: TLFIMRset absolute $81;
  LFIMRrec: TLFIMRrec absolute $81;
const
  LFWIM = 0;  m_LFWIM = 1;  // LF receiver Wake-up Interrupt Mask bit
  LFBIM = 1;  m_LFBIM = 2;  // LF receiver data Buffer Interrupt Mask bit
  LFEIM = 2;  m_LFEIM = 4;  // LF receiver End of data Interrupt Mask bit

type
  TLFRCRset = bitpacked set of (e_LFEN, e_LFBM, e_LFWM0, e_LFWM1, e_LFRSS, e_LFCS0, e_LFCS1, e_LFCS2);
  TLFRCRrec = bitpacked record
    LFEN,
    LFBM,
    LFWM0,
    LFWM1,
    LFRSS,
    LFCS0,
    LFCS1,
    LFCS2: TBitField;
  end;
var
  LFRCR: byte absolute $82;  // Low Frequency Receiver Control Register
  LFRCRset: TLFRCRset absolute $82;
  LFRCRrec: TLFRCRrec absolute $82;
const
  LFEN = 0;  m_LFEN = 1;  // LF receiver Enable Bit
  LFBM = 1;  m_LFBM = 2;  // LF receiver Burst Mode enable Bit
  LFWM0 = 2;  m_LFWM0 = 4;  // LF receiver Wake-up Mode Bits
  LFWM1 = 3;  m_LFWM1 = 8;  // LF receiver Wake-up Mode Bits
  LFRSS = 4;  m_LFRSS = 16;  // LF Receiver Sensitivity Select Bit
  LFCS0 = 5;  m_LFCS0 = 32;  // LF receiver Capacitor Select Bits
  LFCS1 = 6;  m_LFCS1 = 64;  // LF receiver Capacitor Select Bits
  LFCS2 = 7;  m_LFCS2 = 128;  // LF receiver Capacitor Select Bits

var
  LFHCR: byte absolute $83;  // LF Header Compare Register
  LFIDC: word absolute $84;  // LF ID Compare Register 
  LFIDCL: byte absolute $84;
  LFIDCH: byte absolute $85;
  LFCAL: word absolute $86;  // LF Calibration Register  Bytes
  LFCALL: byte absolute $86;
  LFCALH: byte absolute $87;
  // typedefs = 47

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 5 Pin Change Interrupt Request 2
procedure INTVM_ISR; external name 'INTVM_ISR'; // Interrupt 6 Voltage Monitor Interrupt
procedure SENINT_ISR; external name 'SENINT_ISR'; // Interrupt 7 Sensor Interface Interrupt
procedure INTT0_ISR; external name 'INTT0_ISR'; // Interrupt 8 Timer0 Interval Interrupt
procedure LFWP_ISR; external name 'LFWP_ISR'; // Interrupt 9 LF-Receiver Wake-up Interrupt
procedure T3CAP_ISR; external name 'T3CAP_ISR'; // Interrupt 10 Timer/Counter3 Capture Event
procedure T3COMA_ISR; external name 'T3COMA_ISR'; // Interrupt 11 Timer/Counter3 Compare Match A
procedure T3COMB_ISR; external name 'T3COMB_ISR'; // Interrupt 12 Timer/Counter3 Compare Match B
procedure T3OVF_ISR; external name 'T3OVF_ISR'; // Interrupt 13 Timer/Counter3 Overflow
procedure T2CAP_ISR; external name 'T2CAP_ISR'; // Interrupt 14 Timer/Counter2 Capture Event
procedure T2COM_ISR; external name 'T2COM_ISR'; // Interrupt 15 Timer/Counter2 Compare Match
procedure T2OVF_ISR; external name 'T2OVF_ISR'; // Interrupt 16 Timer/Counter2 Overflow
procedure SPISTC_ISR; external name 'SPISTC_ISR'; // Interrupt 17 SPI Serial Transfer Complete
procedure LFRXB_ISR; external name 'LFRXB_ISR'; // Interrupt 18 LF Receive Buffer Interrupt
procedure INTT1_ISR; external name 'INTT1_ISR'; // Interrupt 19 Timer1 Interval Interrupt
procedure T2RXB_ISR; external name 'T2RXB_ISR'; // Interrupt 20 Timer2 SSI Receive Buffer Interrupt
procedure T2TXB_ISR; external name 'T2TXB_ISR'; // Interrupt 21 Timer2 SSI Transmit Buffer Interrupt
procedure T2TXC_ISR; external name 'T2TXC_ISR'; // Interrupt 22 Timer2 SSI Transmit Complete Interrupt
procedure LFREOB_ISR; external name 'LFREOB_ISR'; // Interrupt 23 LF-Receiver End of Burst Interrupt
procedure EXCM_ISR; external name 'EXCM_ISR'; // Interrupt 24 External Input Clock break down Interrupt
procedure EEREADY_ISR; external name 'EEREADY_ISR'; // Interrupt 25 EEPROM Ready Interrupt
procedure SPM_RDY_ISR; external name 'SPM_RDY_ISR'; // Interrupt 26 Store Program Memory Ready

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
  rjmp INTVM_ISR
  rjmp SENINT_ISR
  rjmp INTT0_ISR
  rjmp LFWP_ISR
  rjmp T3CAP_ISR
  rjmp T3COMA_ISR
  rjmp T3COMB_ISR
  rjmp T3OVF_ISR
  rjmp T2CAP_ISR
  rjmp T2COM_ISR
  rjmp T2OVF_ISR
  rjmp SPISTC_ISR
  rjmp LFRXB_ISR
  rjmp INTT1_ISR
  rjmp T2RXB_ISR
  rjmp T2TXB_ISR
  rjmp T2TXC_ISR
  rjmp LFREOB_ISR
  rjmp EXCM_ISR
  rjmp EEREADY_ISR
  rjmp SPM_RDY_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
  .weak INTVM_ISR
  .weak SENINT_ISR
  .weak INTT0_ISR
  .weak LFWP_ISR
  .weak T3CAP_ISR
  .weak T3COMA_ISR
  .weak T3COMB_ISR
  .weak T3OVF_ISR
  .weak T2CAP_ISR
  .weak T2COM_ISR
  .weak T2OVF_ISR
  .weak SPISTC_ISR
  .weak LFRXB_ISR
  .weak INTT1_ISR
  .weak T2RXB_ISR
  .weak T2TXB_ISR
  .weak T2TXC_ISR
  .weak LFREOB_ISR
  .weak EXCM_ISR
  .weak EEREADY_ISR
  .weak SPM_RDY_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set INTVM_ISR, Default_IRQ_handler
  .set SENINT_ISR, Default_IRQ_handler
  .set INTT0_ISR, Default_IRQ_handler
  .set LFWP_ISR, Default_IRQ_handler
  .set T3CAP_ISR, Default_IRQ_handler
  .set T3COMA_ISR, Default_IRQ_handler
  .set T3COMB_ISR, Default_IRQ_handler
  .set T3OVF_ISR, Default_IRQ_handler
  .set T2CAP_ISR, Default_IRQ_handler
  .set T2COM_ISR, Default_IRQ_handler
  .set T2OVF_ISR, Default_IRQ_handler
  .set SPISTC_ISR, Default_IRQ_handler
  .set LFRXB_ISR, Default_IRQ_handler
  .set INTT1_ISR, Default_IRQ_handler
  .set T2RXB_ISR, Default_IRQ_handler
  .set T2TXB_ISR, Default_IRQ_handler
  .set T2TXC_ISR, Default_IRQ_handler
  .set LFREOB_ISR, Default_IRQ_handler
  .set EXCM_ISR, Default_IRQ_handler
  .set EEREADY_ISR, Default_IRQ_handler
  .set SPM_RDY_ISR, Default_IRQ_handler
end;

end.
