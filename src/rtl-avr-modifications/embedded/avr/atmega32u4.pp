unit ATmega32U4;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINB: byte absolute $23;  // Port B Input Pins
  DDRB: byte absolute $24;  // Port B Data Direction Register

type
  TPORTBset = bitpacked set of (ePB0, ePB1, ePB2, ePB3, ePB4, ePB5, ePB6, ePB7);
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
  PB0 = 0;  mPB0 = 1;
  PB1 = 1;  mPB1 = 2;
  PB2 = 2;  mPB2 = 4;
  PB3 = 3;  mPB3 = 8;
  PB4 = 4;  mPB4 = 16;
  PB5 = 5;  mPB5 = 32;
  PB6 = 6;  mPB6 = 64;
  PB7 = 7;  mPB7 = 128;

var
  PINC: byte absolute $26;  // Port C Input Pins
  DDRC: byte absolute $27;  // Port C Data Direction Register

type
  TPORTCset = bitpacked set of (ePC6=6, ePC7);
  TPORTCrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    PC6,
    PC7: TBitField;
  end;
var
  PORTC: byte absolute $28;  // Port C Data Register
  PORTCset: TPORTCset absolute $28;
  PORTCrec: TPORTCrec absolute $28;
const
  PC6 = 6;  mPC6 = 64;
  PC7 = 7;  mPC7 = 128;

var
  PIND: byte absolute $29;  // Port D Input Pins
  DDRD: byte absolute $2A;  // Port D Data Direction Register

type
  TPORTDset = bitpacked set of (ePD0, ePD1, ePD2, ePD3, ePD4, ePD5, ePD6, ePD7);
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
  PD0 = 0;  mPD0 = 1;
  PD1 = 1;  mPD1 = 2;
  PD2 = 2;  mPD2 = 4;
  PD3 = 3;  mPD3 = 8;
  PD4 = 4;  mPD4 = 16;
  PD5 = 5;  mPD5 = 32;
  PD6 = 6;  mPD6 = 64;
  PD7 = 7;  mPD7 = 128;

var
  PINE: byte absolute $2C;  // Input Pins, Port E
  DDRE: byte absolute $2D;  // Data Direction Register, Port E

type
  TPORTEset = bitpacked set of (ePE2=2, ePE6=6);
  TPORTErec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    PE2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    PE6,
    ReservedBit7: TBitField;
  end;
var
  PORTE: byte absolute $2E;  // Data Register, Port E
  PORTEset: TPORTEset absolute $2E;
  PORTErec: TPORTErec absolute $2E;
const
  PE2 = 2;  mPE2 = 4;
  PE6 = 6;  mPE6 = 64;

var
  PINF: byte absolute $2F;  // Input Pins, Port F
  DDRF: byte absolute $30;  // Data Direction Register, Port F

type
  TPORTFset = bitpacked set of (ePF0, ePF1, ePF4=4, ePF5, ePF6, ePF7);
  TPORTFrec = bitpacked record
    PF0,
    PF1,
    ReservedBit2,
    ReservedBit3,
    PF4,
    PF5,
    PF6,
    PF7: TBitField;
  end;
var
  PORTF: byte absolute $31;  // Data Register, Port F
  PORTFset: TPORTFset absolute $31;
  PORTFrec: TPORTFrec absolute $31;
const
  PF0 = 0;  mPF0 = 1;
  PF1 = 1;  mPF1 = 2;
  PF4 = 4;  mPF4 = 16;
  PF5 = 5;  mPF5 = 32;
  PF6 = 6;  mPF6 = 64;
  PF7 = 7;  mPF7 = 128;

type
  TTIFR0set = bitpacked set of (eTOV0, eOCF0A, eOCF0B);
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
  TOV0 = 0;  mTOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  mOCF0A = 2;  // Timer/Counter0 Output Compare Flag 0A
  OCF0B = 2;  mOCF0B = 4;  // Timer/Counter0 Output Compare Flag 0B

type
  TTIFR1set = bitpacked set of (eTOV1, eOCF1A, eOCF1B, eOCF1C, eICF1=5);
  TTIFR1rec = bitpacked record
    TOV1,
    OCF1A,
    OCF1B,
    OCF1C,
    ReservedBit4,
    ICF1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR1: byte absolute $36;  // Timer/Counter1 Interrupt Flag register
  TIFR1set: TTIFR1set absolute $36;
  TIFR1rec: TTIFR1rec absolute $36;
const
  TOV1 = 0;  mTOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  mOCF1A = 2;  // Output Compare Flag 1A
  OCF1B = 2;  mOCF1B = 4;  // Output Compare Flag 1B
  OCF1C = 3;  mOCF1C = 8;  // Output Compare Flag 1C
  ICF1 = 5;  mICF1 = 32;  // Input Capture Flag 1

type
  TTIFR3set = bitpacked set of (eTOV3, eOCF3A, eOCF3B, eOCF3C, eICF3=5);
  TTIFR3rec = bitpacked record
    TOV3,
    OCF3A,
    OCF3B,
    OCF3C,
    ReservedBit4,
    ICF3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR3: byte absolute $38;  // Timer/Counter3 Interrupt Flag register
  TIFR3set: TTIFR3set absolute $38;
  TIFR3rec: TTIFR3rec absolute $38;
const
  TOV3 = 0;  mTOV3 = 1;  // Timer/Counter3 Overflow Flag
  OCF3A = 1;  mOCF3A = 2;  // Output Compare Flag 3A
  OCF3B = 2;  mOCF3B = 4;  // Output Compare Flag 3B
  OCF3C = 3;  mOCF3C = 8;  // Output Compare Flag 3C
  ICF3 = 5;  mICF3 = 32;  // Input Capture Flag 3

type
  TTIFR4set = bitpacked set of (eTOV4=2, eOCF4B=5, eOCF4A, eOCF4D);
  TTIFR4rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    TOV4,
    ReservedBit3,
    ReservedBit4,
    OCF4B,
    OCF4A,
    OCF4D: TBitField;
  end;
var
  TIFR4: byte absolute $39;  // Timer/Counter4 Interrupt Flag register
  TIFR4set: TTIFR4set absolute $39;
  TIFR4rec: TTIFR4rec absolute $39;
const
  TOV4 = 2;  mTOV4 = 4;  // Timer/Counter4 Overflow Flag
  OCF4B = 5;  mOCF4B = 32;  // Output Compare Flag 4B
  OCF4A = 6;  mOCF4A = 64;  // Output Compare Flag 4A
  OCF4D = 7;  mOCF4D = 128;  // Output Compare Flag 4D

type
  TPCIFRset = bitpacked set of (ePCIF0);
  TPCIFRrec = bitpacked record
    PCIF0,
    ReservedBit1,
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
  PCIF0 = 0;  mPCIF0 = 1;  // Pin Change Interrupt Flag 0

type
  TEIFRset = bitpacked set of (eINTF0, eINTF1, eINTF2, eINTF3, eINTF4, eINTF5, eINTF6, eINTF7);
  TEIFRrec = bitpacked record
    INTF0,
    INTF1,
    INTF2,
    INTF3,
    INTF4,
    INTF5,
    INTF6,
    INTF7: TBitField;
  end;
var
  EIFR: byte absolute $3C;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $3C;
  EIFRrec: TEIFRrec absolute $3C;
const
  INTF0 = 0;  mINTF0 = 1;  // External Interrupt Flags
  INTF1 = 1;  mINTF1 = 2;  // External Interrupt Flags
  INTF2 = 2;  mINTF2 = 4;  // External Interrupt Flags
  INTF3 = 3;  mINTF3 = 8;  // External Interrupt Flags
  INTF4 = 4;  mINTF4 = 16;  // External Interrupt Flags
  INTF5 = 5;  mINTF5 = 32;  // External Interrupt Flags
  INTF6 = 6;  mINTF6 = 64;  // External Interrupt Flags
  INTF7 = 7;  mINTF7 = 128;  // External Interrupt Flags

type
  TEIMSKset = bitpacked set of (eINT0, eINT1, eINT2, eINT3, eINT4, eINT5, eINT6, eINT7);
  TEIMSKrec = bitpacked record
    INT0,
    INT1,
    INT2,
    INT3,
    INT4,
    INT5,
    INT6,
    INT7: TBitField;
  end;
var
  EIMSK: byte absolute $3D;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $3D;
  EIMSKrec: TEIMSKrec absolute $3D;
const
  INT0 = 0;  mINT0 = 1;  // External Interrupt Request 7 Enable
  INT1 = 1;  mINT1 = 2;  // External Interrupt Request 7 Enable
  INT2 = 2;  mINT2 = 4;  // External Interrupt Request 7 Enable
  INT3 = 3;  mINT3 = 8;  // External Interrupt Request 7 Enable
  INT4 = 4;  mINT4 = 16;  // External Interrupt Request 7 Enable
  INT5 = 5;  mINT5 = 32;  // External Interrupt Request 7 Enable
  INT6 = 6;  mINT6 = 64;  // External Interrupt Request 7 Enable
  INT7 = 7;  mINT7 = 128;  // External Interrupt Request 7 Enable

type
  TGPIOR0set = bitpacked set of (eGPIOR00, eGPIOR01, eGPIOR02, eGPIOR03, eGPIOR04, eGPIOR05, eGPIOR06, eGPIOR07);
  TGPIOR0rec = bitpacked record
    GPIOR00,
    GPIOR01,
    GPIOR02,
    GPIOR03,
    GPIOR04,
    GPIOR05,
    GPIOR06,
    GPIOR07: TBitField;
  end;
var
  GPIOR0: byte absolute $3E;  // General Purpose IO Register 0
  GPIOR0set: TGPIOR0set absolute $3E;
  GPIOR0rec: TGPIOR0rec absolute $3E;
const
  GPIOR00 = 0;  mGPIOR00 = 1;  // General Purpose IO Register 0 bit 0
  GPIOR01 = 1;  mGPIOR01 = 2;  // General Purpose IO Register 0 bit 1
  GPIOR02 = 2;  mGPIOR02 = 4;  // General Purpose IO Register 0 bit 2
  GPIOR03 = 3;  mGPIOR03 = 8;  // General Purpose IO Register 0 bit 3
  GPIOR04 = 4;  mGPIOR04 = 16;  // General Purpose IO Register 0 bit 4
  GPIOR05 = 5;  mGPIOR05 = 32;  // General Purpose IO Register 0 bit 5
  GPIOR06 = 6;  mGPIOR06 = 64;  // General Purpose IO Register 0 bit 6
  GPIOR07 = 7;  mGPIOR07 = 128;  // General Purpose IO Register 0 bit 7

type
  TEECRset = bitpacked set of (eEERE, eEEPE, eEEMPE, eEERIE, eEEPM0, eEEPM1);
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
  EERE = 0;  mEERE = 1;  // EEPROM Read Enable
  EEPE = 1;  mEEPE = 2;  // EEPROM Write Enable
  EEMPE = 2;  mEEMPE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  mEERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  mEEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  mEEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $40;  // EEPROM Data Register
  EEAR: word absolute $41;  // EEPROM Address Register Low Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

type
  TGTCCRset = bitpacked set of (ePSRSYNC, eTSM=7);
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
  PSRSYNC = 0;  mPSRSYNC = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
  TSM = 7;  mTSM = 128;  // Timer/Counter Synchronization Mode

type
  TTCCR0Aset = bitpacked set of (eWGM00, eWGM01, eCOM0B0=4, eCOM0B1, eCOM0A0, eCOM0A1);
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
  WGM00 = 0;  mWGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  mWGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  mCOM0B0 = 16;  // Compare Output Mode, Fast PWm
  COM0B1 = 5;  mCOM0B1 = 32;  // Compare Output Mode, Fast PWm
  COM0A0 = 6;  mCOM0A0 = 64;  // Compare Output Mode, Phase Correct PWM Mode
  COM0A1 = 7;  mCOM0A1 = 128;  // Compare Output Mode, Phase Correct PWM Mode

type
  TTCCR0Bset = bitpacked set of (eCS00, eCS01, eCS02, eWGM02, eFOC0B=6, eFOC0A);
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
  CS00 = 0;  mCS00 = 1;  // Clock Select
  CS01 = 1;  mCS01 = 2;  // Clock Select
  CS02 = 2;  mCS02 = 4;  // Clock Select
  WGM02 = 3;  mWGM02 = 8;
  FOC0B = 6;  mFOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  mFOC0A = 128;  // Force Output Compare A

var
  TCNT0: byte absolute $46;  // Timer/Counter0
  OCR0A: byte absolute $47;  // Timer/Counter0 Output Compare Register
  OCR0B: byte absolute $48;  // Timer/Counter0 Output Compare Register

type
  TPLLCSRset = bitpacked set of (ePLOCK, ePLLE, ePINDIV=4);
  TPLLCSRrec = bitpacked record
    PLOCK,
    PLLE,
    ReservedBit2,
    ReservedBit3,
    PINDIV,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PLLCSR: byte absolute $49;  // PLL Status and Control register
  PLLCSRset: TPLLCSRset absolute $49;
  PLLCSRrec: TPLLCSRrec absolute $49;
const
  PLOCK = 0;  mPLOCK = 1;  // PLL Lock Status Bit
  PLLE = 1;  mPLLE = 2;  // PLL Enable Bit
  PINDIV = 4;  mPINDIV = 16;  // PLL prescaler Bit 2

var
  GPIOR1: byte absolute $4A;  // General Purpose IO Register 1

type
  TGPIOR2set = bitpacked set of (eGPIOR20, eGPIOR21, eGPIOR22, eGPIOR23, eGPIOR24, eGPIOR25, eGPIOR26, eGPIOR27);
  TGPIOR2rec = bitpacked record
    GPIOR20,
    GPIOR21,
    GPIOR22,
    GPIOR23,
    GPIOR24,
    GPIOR25,
    GPIOR26,
    GPIOR27: TBitField;
  end;
var
  GPIOR2: byte absolute $4B;  // General Purpose IO Register 2
  GPIOR2set: TGPIOR2set absolute $4B;
  GPIOR2rec: TGPIOR2rec absolute $4B;
const
  GPIOR20 = 0;  mGPIOR20 = 1;  // General Purpose IO Register 2 bis
  GPIOR21 = 1;  mGPIOR21 = 2;  // General Purpose IO Register 2 bis
  GPIOR22 = 2;  mGPIOR22 = 4;  // General Purpose IO Register 2 bis
  GPIOR23 = 3;  mGPIOR23 = 8;  // General Purpose IO Register 2 bis
  GPIOR24 = 4;  mGPIOR24 = 16;  // General Purpose IO Register 2 bis
  GPIOR25 = 5;  mGPIOR25 = 32;  // General Purpose IO Register 2 bis
  GPIOR26 = 6;  mGPIOR26 = 64;  // General Purpose IO Register 2 bis
  GPIOR27 = 7;  mGPIOR27 = 128;  // General Purpose IO Register 2 bis

type
  TSPCRset = bitpacked set of (eSPR0, eSPR1, eCPHA, eCPOL, eMSTR, eDORD, eSPE, eSPIE);
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
  SPR0 = 0;  mSPR0 = 1;  // SPI Clock Rate Selects
  SPR1 = 1;  mSPR1 = 2;  // SPI Clock Rate Selects
  CPHA = 2;  mCPHA = 4;  // Clock Phase
  CPOL = 3;  mCPOL = 8;  // Clock polarity
  MSTR = 4;  mMSTR = 16;  // Master/Slave Select
  DORD = 5;  mDORD = 32;  // Data Order
  SPE = 6;  mSPE = 64;  // SPI Enable
  SPIE = 7;  mSPIE = 128;  // SPI Interrupt Enable

type
  TSPSRset = bitpacked set of (eSPI2X, eWCOL=6, eSPIF);
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
  SPI2X = 0;  mSPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  mWCOL = 64;  // Write Collision Flag
  SPIF = 7;  mSPIF = 128;  // SPI Interrupt Flag

var
  SPDR: byte absolute $4E;  // SPI Data Register

type
  TACSRset = bitpacked set of (eACIS0, eACIS1, eACIC, eACIE, eACI, eACO, eACBG, eACD);
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
  ACIS0 = 0;  mACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  mACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIC = 2;  mACIC = 4;  // Analog Comparator Input Capture Enable
  ACIE = 3;  mACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  mACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  mACO = 32;  // Analog Compare Output
  ACBG = 6;  mACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  mACD = 128;  // Analog Comparator Disable

var
  OCDR: byte absolute $51;  // On-Chip Debug Related Register in I/O Memory

type
  TPLLFRQset = bitpacked set of (ePDIV0, ePDIV1, ePDIV2, ePDIV3, ePLLTM0, ePLLTM1, ePLLUSB, ePINMUX);
  TPLLFRQrec = bitpacked record
    PDIV0,
    PDIV1,
    PDIV2,
    PDIV3,
    PLLTM0,
    PLLTM1,
    PLLUSB,
    PINMUX: TBitField;
  end;
var
  PLLFRQ: byte absolute $52;  // PLL Frequency Control Register
  PLLFRQset: TPLLFRQset absolute $52;
  PLLFRQrec: TPLLFRQrec absolute $52;
const
  PDIV0 = 0;  mPDIV0 = 1;
  PDIV1 = 1;  mPDIV1 = 2;
  PDIV2 = 2;  mPDIV2 = 4;
  PDIV3 = 3;  mPDIV3 = 8;
  PLLTM0 = 4;  mPLLTM0 = 16;
  PLLTM1 = 5;  mPLLTM1 = 32;
  PLLUSB = 6;  mPLLUSB = 64;
  PINMUX = 7;  mPINMUX = 128;

type
  TSMCRset = bitpacked set of (eSE, eSM0, eSM1, eSM2);
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
  SE = 0;  mSE = 1;  // Sleep Enable
  SM0 = 1;  mSM0 = 2;  // Sleep Mode Select bits
  SM1 = 2;  mSM1 = 4;  // Sleep Mode Select bits
  SM2 = 3;  mSM2 = 8;  // Sleep Mode Select bits

type
  TMCUSRset = bitpacked set of (ePORF, eEXTRF, eBORF, eWDRF, eJTRF);
  TMCUSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
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
  PORF = 0;  mPORF = 1;  // Power-on reset flag
  EXTRF = 1;  mEXTRF = 2;  // External Reset Flag
  BORF = 2;  mBORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  mWDRF = 8;  // Watchdog Reset Flag
  JTRF = 4;  mJTRF = 16;  // JTAG Reset Flag

type
  TMCUCRset = bitpacked set of (eIVCE, eIVSEL, ePUD=4, eJTD=7);
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
  IVCE = 0;  mIVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  mIVSEL = 2;  // Interrupt Vector Select
  PUD = 4;  mPUD = 16;  // Pull-up disable
  JTD = 7;  mJTD = 128;  // JTAG Interface Disable

type
  TSPMCSRset = bitpacked set of (eSPMEN, ePGERS, ePGWRT, eBLBSET, eRWWSRE, eSIGRD, eRWWSB, eSPMIE);
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
  SPMEN = 0;  mSPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  mPGERS = 2;  // Page Erase
  PGWRT = 2;  mPGWRT = 4;  // Page Write
  BLBSET = 3;  mBLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  mRWWSRE = 16;  // Read While Write section read enable
  SIGRD = 5;  mSIGRD = 32;  // Signature Row Read
  RWWSB = 6;  mRWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  mSPMIE = 128;  // SPM Interrupt Enable

type
  TRAMPZset = bitpacked set of (eRAMPZ0, eRAMPZ1, eRes0, eRes1, eRes2, eRes3, eRes4, eRes5);
  TRAMPZrec = bitpacked record
    RAMPZ0,
    RAMPZ1,
    Res0,
    Res1,
    Res2,
    Res3,
    Res4,
    Res5: TBitField;
  end;
var
  RAMPZ: byte absolute $5B;  // Extended Z-pointer Register for ELPM/SPM
  RAMPZset: TRAMPZset absolute $5B;
  RAMPZrec: TRAMPZrec absolute $5B;
const
  RAMPZ0 = 0;  mRAMPZ0 = 1;  // Extended Z-Pointer Value
  RAMPZ1 = 1;  mRAMPZ1 = 2;  // Extended Z-Pointer Value
  Res0 = 2;  mRes0 = 4;  // Reserved
  Res1 = 3;  mRes1 = 8;  // Reserved
  Res2 = 4;  mRes2 = 16;  // Reserved
  Res3 = 5;  mRes3 = 32;  // Reserved
  Res4 = 6;  mRes4 = 64;  // Reserved
  Res5 = 7;  mRes5 = 128;  // Reserved

var
  EIND: byte absolute $5C;  // Extended Indirect Register
  SP: word absolute $5D;  // Stack Pointer 
  SPL: byte absolute $5D;
  SPH: byte absolute $5E;

type
  TSREGset = bitpacked set of (eC, eZ, eN, eV, eS, eH, eT, eI);
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
  C = 0;  mC = 1;  // Carry Flag
  Z = 1;  mZ = 2;  // Zero Flag
  N = 2;  mN = 4;  // Negative Flag
  V = 3;  mV = 8;  // Two's Complement Overflow Flag
  S = 4;  mS = 16;  // Sign Bit
  H = 5;  mH = 32;  // Half Carry Flag
  T = 6;  mT = 64;  // Bit Copy Storage
  I = 7;  mI = 128;  // Global Interrupt Enable

type
  TWDTCSRset = bitpacked set of (eWDP0, eWDP1, eWDP2, eWDE, eWDCE, eWDP3, eWDIE, eWDIF);
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
  WDE = 3;  mWDE = 8;  // Watch Dog Enable
  WDCE = 4;  mWDCE = 16;  // Watchdog Change Enable
  WDP0 = 0;  mWDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  mWDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  mWDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  mWDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  mWDIE = 64;  // Watchdog Timeout Interrupt Enable
  WDIF = 7;  mWDIF = 128;  // Watchdog Timeout Interrupt Flag

type
  TCLKPRset = bitpacked set of (eCLKPS0, eCLKPS1, eCLKPS2, eCLKPS3, eCLKPCE=7);
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
  CLKPR: byte absolute $61;
  CLKPRset: TCLKPRset absolute $61;
  CLKPRrec: TCLKPRrec absolute $61;
const
  CLKPS0 = 0;  mCLKPS0 = 1;
  CLKPS1 = 1;  mCLKPS1 = 2;
  CLKPS2 = 2;  mCLKPS2 = 4;
  CLKPS3 = 3;  mCLKPS3 = 8;
  CLKPCE = 7;  mCLKPCE = 128;

type
  TPRR0set = bitpacked set of (ePRADC, ePRUSART0, ePRSPI, ePRTIM1, ePRTIM0=5, ePRTIM2, ePRTWI);
  TPRR0rec = bitpacked record
    PRADC,
    PRUSART0,
    PRSPI,
    PRTIM1,
    ReservedBit4,
    PRTIM0,
    PRTIM2,
    PRTWI: TBitField;
  end;
var
  PRR0: byte absolute $64;  // Power Reduction Register0
  PRR0set: TPRR0set absolute $64;
  PRR0rec: TPRR0rec absolute $64;
const
  PRADC = 0;  mPRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  mPRUSART0 = 2;  // Power Reduction USART
  PRSPI = 2;  mPRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 3;  mPRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRTIM0 = 5;  mPRTIM0 = 32;  // Power Reduction Timer/Counter0
  PRTIM2 = 6;  mPRTIM2 = 64;  // Power Reduction Timer/Counter2
  PRTWI = 7;  mPRTWI = 128;  // Power Reduction TWI

type
  TPRR1set = bitpacked set of (ePRUSART1, ePRTIM3=3, ePRUSB=7);
  TPRR1rec = bitpacked record
    PRUSART1,
    ReservedBit1,
    ReservedBit2,
    PRTIM3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    PRUSB: TBitField;
  end;
var
  PRR1: byte absolute $65;  // Power Reduction Register1
  PRR1set: TPRR1set absolute $65;
  PRR1rec: TPRR1rec absolute $65;
const
  PRUSART1 = 0;  mPRUSART1 = 1;  // Power Reduction USART1
  PRTIM3 = 3;  mPRTIM3 = 8;  // Power Reduction Timer/Counter3
  PRUSB = 7;  mPRUSB = 128;  // Power Reduction USB

type
  TOSCCALset = bitpacked set of (eOSCCAL0, eOSCCAL1, eOSCCAL2, eOSCCAL3, eOSCCAL4, eOSCCAL5, eOSCCAL6, eOSCCAL7);
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
  OSCCAL0 = 0;  mOSCCAL0 = 1;  // Oscillator Calibration 
  OSCCAL1 = 1;  mOSCCAL1 = 2;  // Oscillator Calibration 
  OSCCAL2 = 2;  mOSCCAL2 = 4;  // Oscillator Calibration 
  OSCCAL3 = 3;  mOSCCAL3 = 8;  // Oscillator Calibration 
  OSCCAL4 = 4;  mOSCCAL4 = 16;  // Oscillator Calibration 
  OSCCAL5 = 5;  mOSCCAL5 = 32;  // Oscillator Calibration 
  OSCCAL6 = 6;  mOSCCAL6 = 64;  // Oscillator Calibration 
  OSCCAL7 = 7;  mOSCCAL7 = 128;  // Oscillator Calibration

type
  TRCCTRLset = bitpacked set of (eRCFREQ);
  TRCCTRLrec = bitpacked record
    RCFREQ,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  RCCTRL: byte absolute $67;  // Oscillator Control Register
  RCCTRLset: TRCCTRLset absolute $67;
  RCCTRLrec: TRCCTRLrec absolute $67;
const
  RCFREQ = 0;  mRCFREQ = 1;

type
  TPCICRset = bitpacked set of (ePCIE0);
  TPCICRrec = bitpacked record
    PCIE0,
    ReservedBit1,
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
  PCIE0 = 0;  mPCIE0 = 1;  // Pin Change Interrupt Enable 0

type
  TEICRAset = bitpacked set of (eISC00, eISC01, eISC10, eISC11, eISC20, eISC21, eISC30, eISC31);
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
  EICRA: byte absolute $69;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $69;
  EICRArec: TEICRArec absolute $69;
const
  ISC00 = 0;  mISC00 = 1;  // External Interrupt Sense Control Bit
  ISC01 = 1;  mISC01 = 2;  // External Interrupt Sense Control Bit
  ISC10 = 2;  mISC10 = 4;  // External Interrupt Sense Control Bit
  ISC11 = 3;  mISC11 = 8;  // External Interrupt Sense Control Bit
  ISC20 = 4;  mISC20 = 16;  // External Interrupt Sense Control Bit
  ISC21 = 5;  mISC21 = 32;  // External Interrupt Sense Control Bit
  ISC30 = 6;  mISC30 = 64;  // External Interrupt Sense Control Bit
  ISC31 = 7;  mISC31 = 128;  // External Interrupt Sense Control Bit

type
  TEICRBset = bitpacked set of (eISC40, eISC41, eISC50, eISC51, eISC60, eISC61, eISC70, eISC71);
  TEICRBrec = bitpacked record
    ISC40,
    ISC41,
    ISC50,
    ISC51,
    ISC60,
    ISC61,
    ISC70,
    ISC71: TBitField;
  end;
var
  EICRB: byte absolute $6A;  // External Interrupt Control Register B
  EICRBset: TEICRBset absolute $6A;
  EICRBrec: TEICRBrec absolute $6A;
const
  ISC40 = 0;  mISC40 = 1;  // External Interrupt 7-4 Sense Control Bit
  ISC41 = 1;  mISC41 = 2;  // External Interrupt 7-4 Sense Control Bit
  ISC50 = 2;  mISC50 = 4;  // External Interrupt 7-4 Sense Control Bit
  ISC51 = 3;  mISC51 = 8;  // External Interrupt 7-4 Sense Control Bit
  ISC60 = 4;  mISC60 = 16;  // External Interrupt 7-4 Sense Control Bit
  ISC61 = 5;  mISC61 = 32;  // External Interrupt 7-4 Sense Control Bit
  ISC70 = 6;  mISC70 = 64;  // External Interrupt 7-4 Sense Control Bit
  ISC71 = 7;  mISC71 = 128;  // External Interrupt 7-4 Sense Control Bit

var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0

type
  TTIMSK0set = bitpacked set of (eTOIE0, eOCIE0A, eOCIE0B);
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
  TOIE0 = 0;  mTOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  mOCIE0A = 2;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE0B = 2;  mOCIE0B = 4;  // Timer/Counter0 Output Compare Match B Interrupt Enable

type
  TTIMSK1set = bitpacked set of (eTOIE1, eOCIE1A, eOCIE1B, eOCIE1C, eICIE1=5);
  TTIMSK1rec = bitpacked record
    TOIE1,
    OCIE1A,
    OCIE1B,
    OCIE1C,
    ReservedBit4,
    ICIE1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK1: byte absolute $6F;  // Timer/Counter1 Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $6F;
  TIMSK1rec: TTIMSK1rec absolute $6F;
const
  TOIE1 = 0;  mTOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  mOCIE1A = 2;  // Timer/Counter1 Output Compare A Match Interrupt Enable
  OCIE1B = 2;  mOCIE1B = 4;  // Timer/Counter1 Output Compare B Match Interrupt Enable
  OCIE1C = 3;  mOCIE1C = 8;  // Timer/Counter1 Output Compare C Match Interrupt Enable
  ICIE1 = 5;  mICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TTIMSK3set = bitpacked set of (eTOIE3, eOCIE3A, eOCIE3B, eOCIE3C, eICIE3=5);
  TTIMSK3rec = bitpacked record
    TOIE3,
    OCIE3A,
    OCIE3B,
    OCIE3C,
    ReservedBit4,
    ICIE3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK3: byte absolute $71;  // Timer/Counter3 Interrupt Mask Register
  TIMSK3set: TTIMSK3set absolute $71;
  TIMSK3rec: TTIMSK3rec absolute $71;
const
  TOIE3 = 0;  mTOIE3 = 1;  // Timer/Counter3 Overflow Interrupt Enable
  OCIE3A = 1;  mOCIE3A = 2;  // Timer/Counter3 Output Compare A Match Interrupt Enable
  OCIE3B = 2;  mOCIE3B = 4;  // Timer/Counter3 Output Compare B Match Interrupt Enable
  OCIE3C = 3;  mOCIE3C = 8;  // Timer/Counter3 Output Compare C Match Interrupt Enable
  ICIE3 = 5;  mICIE3 = 32;  // Timer/Counter3 Input Capture Interrupt Enable

type
  TTIMSK4set = bitpacked set of (eTOIE4=2, eOCIE4B=5, eOCIE4A, eOCIE4D);
  TTIMSK4rec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    TOIE4,
    ReservedBit3,
    ReservedBit4,
    OCIE4B,
    OCIE4A,
    OCIE4D: TBitField;
  end;
var
  TIMSK4: byte absolute $72;  // Timer/Counter4 Interrupt Mask Register
  TIMSK4set: TTIMSK4set absolute $72;
  TIMSK4rec: TTIMSK4rec absolute $72;
const
  TOIE4 = 2;  mTOIE4 = 4;  // Timer/Counter4 Overflow Interrupt Enable
  OCIE4B = 5;  mOCIE4B = 32;  // Timer/Counter4 Output Compare B Match Interrupt Enable
  OCIE4A = 6;  mOCIE4A = 64;  // Timer/Counter4 Output Compare A Match Interrupt Enable
  OCIE4D = 7;  mOCIE4D = 128;  // Timer/Counter4 Output Compare D Match Interrupt Enable

var
  ADC: word absolute $78;  // ADC Data Register  Bytes
  ADCL: byte absolute $78;
  ADCH: byte absolute $79;

type
  TADCSRAset = bitpacked set of (eADPS0, eADPS1, eADPS2, eADIE, eADIF, eADATE, eADSC, eADEN);
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
  ADPS0 = 0;  mADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  mADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  mADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  mADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  mADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  mADATE = 32;  // ADC Auto Trigger Enable
  ADSC = 6;  mADSC = 64;  // ADC Start Conversion
  ADEN = 7;  mADEN = 128;  // ADC Enable

type
  TADCSRBset = bitpacked set of (eADTS0, eADTS1, eADTS2, eADTS3=4, eMUX5, eACME, eADHSM);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ADTS3,
    MUX5,
    ACME,
    ADHSM: TBitField;
  end;
var
  ADCSRB: byte absolute $7B;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  mADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  mADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  mADTS2 = 4;  // ADC Auto Trigger Sources
  ADTS3 = 4;  mADTS3 = 16;  // ADC Auto Trigger Sources
  MUX5 = 5;  mMUX5 = 32;  // Analog Channel and Gain Selection Bits
  ACME = 6;  mACME = 64;  // Analog Comparator Multiplexer Enable
  ADHSM = 7;  mADHSM = 128;  // ADC High Speed Mode

type
  TADMUXset = bitpacked set of (eMUX0, eMUX1, eMUX2, eMUX3, eMUX4, eADLAR, eREFS0, eREFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    MUX4,
    ADLAR,
    REFS0,
    REFS1: TBitField;
  end;
var
  ADMUX: byte absolute $7C;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $7C;
  ADMUXrec: TADMUXrec absolute $7C;
const
  MUX0 = 0;  mMUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  mMUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  mMUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  mMUX3 = 8;  // Analog Channel and Gain Selection Bits
  MUX4 = 4;  mMUX4 = 16;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  mADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  mREFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  mREFS1 = 128;  // Reference Selection Bits

type
  TDIDR2set = bitpacked set of (eADC8D, eADC9D, eADC10D, eADC11D, eADC12D, eADC13D);
  TDIDR2rec = bitpacked record
    ADC8D,
    ADC9D,
    ADC10D,
    ADC11D,
    ADC12D,
    ADC13D,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR2: byte absolute $7D;  // Digital Input Disable Register 2
  DIDR2set: TDIDR2set absolute $7D;
  DIDR2rec: TDIDR2rec absolute $7D;
const
  ADC8D = 0;  mADC8D = 1;  // ADC8 Digital input Disable
  ADC9D = 1;  mADC9D = 2;  // ADC9 Digital input Disable
  ADC10D = 2;  mADC10D = 4;  // ADC10 Digital input Disable
  ADC11D = 3;  mADC11D = 8;  // ADC11 Digital input Disable
  ADC12D = 4;  mADC12D = 16;  // ADC12 Digital input Disable
  ADC13D = 5;  mADC13D = 32;  // ADC13 Digital input Disable

type
  TDIDR0set = bitpacked set of (eADC0D, eADC1D, eADC2D, eADC3D, eADC4D, eADC5D, eADC6D, eADC7D);
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
  ADC0D = 0;  mADC0D = 1;  // ADC0 Digital input Disable
  ADC1D = 1;  mADC1D = 2;  // ADC1 Digital input Disable
  ADC2D = 2;  mADC2D = 4;  // ADC2 Digital input Disable
  ADC3D = 3;  mADC3D = 8;  // ADC3 Digital input Disable
  ADC4D = 4;  mADC4D = 16;  // ADC4 Digital input Disable
  ADC5D = 5;  mADC5D = 32;  // ADC5 Digital input Disable
  ADC6D = 6;  mADC6D = 64;  // ADC6 Digital input Disable
  ADC7D = 7;  mADC7D = 128;  // ADC7 Digital input Disable

type
  TDIDR1set = bitpacked set of (eAIN0D, eAIN1D);
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
  DIDR1: byte absolute $7F;
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  AIN0D = 0;  mAIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  mAIN1D = 2;  // AIN1 Digital Input Disable

type
  TTCCR1Aset = bitpacked set of (eWGM10, eWGM11, eCOM1C0, eCOM1C1, eCOM1B0, eCOM1B1, eCOM1A0, eCOM1A1);
  TTCCR1Arec = bitpacked record
    WGM10,
    WGM11,
    COM1C0,
    COM1C1,
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
  WGM10 = 0;  mWGM10 = 1;  // Waveform Generation Mode
  WGM11 = 1;  mWGM11 = 2;  // Waveform Generation Mode
  COM1C0 = 2;  mCOM1C0 = 4;  // Compare Output Mode 1C, bits
  COM1C1 = 3;  mCOM1C1 = 8;  // Compare Output Mode 1C, bits
  COM1B0 = 4;  mCOM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  mCOM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  mCOM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  mCOM1A1 = 128;  // Compare Output Mode 1A, bits

type
  TTCCR1Bset = bitpacked set of (eCS10, eCS11, eCS12, eICES1=6, eICNC1);
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
  CS10 = 0;  mCS10 = 1;  // Prescaler source of Timer/Counter 1
  CS11 = 1;  mCS11 = 2;  // Prescaler source of Timer/Counter 1
  CS12 = 2;  mCS12 = 4;  // Prescaler source of Timer/Counter 1
  ICES1 = 6;  mICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  mICNC1 = 128;  // Input Capture 1 Noise Canceler

type
  TTCCR1Cset = bitpacked set of (eFOC1C=5, eFOC1B, eFOC1A);
  TTCCR1Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FOC1C,
    FOC1B,
    FOC1A: TBitField;
  end;
var
  TCCR1C: byte absolute $82;  // Timer/Counter 1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $82;
  TCCR1Crec: TTCCR1Crec absolute $82;
const
  FOC1C = 5;  mFOC1C = 32;  // Force Output Compare 1C
  FOC1B = 6;  mFOC1B = 64;  // Force Output Compare 1B
  FOC1A = 7;  mFOC1A = 128;  // Force Output Compare 1A

var
  TCNT1: word absolute $84;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $84;
  TCNT1H: byte absolute $85;
  ICR1: word absolute $86;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $86;
  ICR1H: byte absolute $87;
  OCR1A: word absolute $88;  // Timer/Counter1 Output Compare Register A  Bytes
  OCR1AL: byte absolute $88;
  OCR1AH: byte absolute $89;
  OCR1B: word absolute $8A;  // Timer/Counter1 Output Compare Register B  Bytes
  OCR1BL: byte absolute $8A;
  OCR1BH: byte absolute $8B;
  OCR1C: word absolute $8C;  // Timer/Counter1 Output Compare Register C  Bytes
  OCR1CL: byte absolute $8C;
  OCR1CH: byte absolute $8D;

type
  TTCCR3Aset = bitpacked set of (eWGM30, eWGM31, eCOM3C0, eCOM3C1, eCOM3B0, eCOM3B1, eCOM3A0, eCOM3A1);
  TTCCR3Arec = bitpacked record
    WGM30,
    WGM31,
    COM3C0,
    COM3C1,
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
  WGM30 = 0;  mWGM30 = 1;  // Waveform Generation Mode
  WGM31 = 1;  mWGM31 = 2;  // Waveform Generation Mode
  COM3C0 = 2;  mCOM3C0 = 4;  // Compare Output Mode 3C, bits
  COM3C1 = 3;  mCOM3C1 = 8;  // Compare Output Mode 3C, bits
  COM3B0 = 4;  mCOM3B0 = 16;  // Compare Output Mode 3B, bits
  COM3B1 = 5;  mCOM3B1 = 32;  // Compare Output Mode 3B, bits
  COM3A0 = 6;  mCOM3A0 = 64;  // Compare Output Mode 1A, bits
  COM3A1 = 7;  mCOM3A1 = 128;  // Compare Output Mode 1A, bits

type
  TTCCR3Bset = bitpacked set of (eCS30, eCS31, eCS32, eICES3=6, eICNC3);
  TTCCR3Brec = bitpacked record
    CS30,
    CS31,
    CS32,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES3,
    ICNC3: TBitField;
  end;
var
  TCCR3B: byte absolute $91;  // Timer/Counter3 Control Register B
  TCCR3Bset: TTCCR3Bset absolute $91;
  TCCR3Brec: TTCCR3Brec absolute $91;
const
  CS30 = 0;  mCS30 = 1;  // Prescaler source of Timer/Counter 3
  CS31 = 1;  mCS31 = 2;  // Prescaler source of Timer/Counter 3
  CS32 = 2;  mCS32 = 4;  // Prescaler source of Timer/Counter 3
  ICES3 = 6;  mICES3 = 64;  // Input Capture 3 Edge Select
  ICNC3 = 7;  mICNC3 = 128;  // Input Capture 3 Noise Canceler

type
  TTCCR3Cset = bitpacked set of (eFOC3C=5, eFOC3B, eFOC3A);
  TTCCR3Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    FOC3C,
    FOC3B,
    FOC3A: TBitField;
  end;
var
  TCCR3C: byte absolute $92;  // Timer/Counter 3 Control Register C
  TCCR3Cset: TTCCR3Cset absolute $92;
  TCCR3Crec: TTCCR3Crec absolute $92;
const
  FOC3C = 5;  mFOC3C = 32;  // Force Output Compare 3C
  FOC3B = 6;  mFOC3B = 64;  // Force Output Compare 3B
  FOC3A = 7;  mFOC3A = 128;  // Force Output Compare 3A

var
  TCNT3: word absolute $94;  // Timer/Counter3  Bytes
  TCNT3L: byte absolute $94;
  TCNT3H: byte absolute $95;
  ICR3: word absolute $96;  // Timer/Counter3 Input Capture Register  Bytes
  ICR3L: byte absolute $96;
  ICR3H: byte absolute $97;
  OCR3A: word absolute $98;  // Timer/Counter3 Output Compare Register A  Bytes
  OCR3AL: byte absolute $98;
  OCR3AH: byte absolute $99;
  OCR3B: word absolute $9A;  // Timer/Counter3 Output Compare Register B  Bytes
  OCR3BL: byte absolute $9A;
  OCR3BH: byte absolute $9B;
  OCR3C: word absolute $9C;  // Timer/Counter3 Output Compare Register B  Bytes
  OCR3CL: byte absolute $9C;
  OCR3CH: byte absolute $9D;
  TWBR: byte absolute $B8;  // TWI Bit Rate register

type
  TTWSRset = bitpacked set of (eTWPS0, eTWPS1, eTWS3=3, eTWS4, eTWS5, eTWS6, eTWS7);
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
  TWPS0 = 0;  mTWPS0 = 1;  // TWI Prescaler
  TWPS1 = 1;  mTWPS1 = 2;  // TWI Prescaler
  TWS3 = 3;  mTWS3 = 8;  // TWI Status
  TWS4 = 4;  mTWS4 = 16;  // TWI Status
  TWS5 = 5;  mTWS5 = 32;  // TWI Status
  TWS6 = 6;  mTWS6 = 64;  // TWI Status
  TWS7 = 7;  mTWS7 = 128;  // TWI Status

type
  TTWARset = bitpacked set of (eTWGCE, eTWA0, eTWA1, eTWA2, eTWA3, eTWA4, eTWA5, eTWA6);
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
  TWGCE = 0;  mTWGCE = 1;  // TWI General Call Recognition Enable Bit
  TWA0 = 1;  mTWA0 = 2;  // TWI (Slave) Address register Bits
  TWA1 = 2;  mTWA1 = 4;  // TWI (Slave) Address register Bits
  TWA2 = 3;  mTWA2 = 8;  // TWI (Slave) Address register Bits
  TWA3 = 4;  mTWA3 = 16;  // TWI (Slave) Address register Bits
  TWA4 = 5;  mTWA4 = 32;  // TWI (Slave) Address register Bits
  TWA5 = 6;  mTWA5 = 64;  // TWI (Slave) Address register Bits
  TWA6 = 7;  mTWA6 = 128;  // TWI (Slave) Address register Bits

var
  TWDR: byte absolute $BB;  // TWI Data register

type
  TTWCRset = bitpacked set of (eTWIE, eTWEN=2, eTWWC, eTWSTO, eTWSTA, eTWEA, eTWINT);
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
  TWIE = 0;  mTWIE = 1;  // TWI Interrupt Enable
  TWEN = 2;  mTWEN = 4;  // TWI Enable Bit
  TWWC = 3;  mTWWC = 8;  // TWI Write Collition Flag
  TWSTO = 4;  mTWSTO = 16;  // TWI Stop Condition Bit
  TWSTA = 5;  mTWSTA = 32;  // TWI Start Condition Bit
  TWEA = 6;  mTWEA = 64;  // TWI Enable Acknowledge Bit
  TWINT = 7;  mTWINT = 128;  // TWI Interrupt Flag

type
  TTWAMRset = bitpacked set of (eTWAM0=1, eTWAM1, eTWAM2, eTWAM3, eTWAM4, eTWAM5, eTWAM6);
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
  TWAM0 = 1;  mTWAM0 = 2;
  TWAM1 = 2;  mTWAM1 = 4;
  TWAM2 = 3;  mTWAM2 = 8;
  TWAM3 = 4;  mTWAM3 = 16;
  TWAM4 = 5;  mTWAM4 = 32;
  TWAM5 = 6;  mTWAM5 = 64;
  TWAM6 = 7;  mTWAM6 = 128;

var
  TCNT4: byte absolute $BE;  // Timer/Counter4 Low Bytes
  TC4H: byte absolute $BF;  // Timer/Counter4

type
  TTCCR4Aset = bitpacked set of (ePWM4B, ePWM4A, eFOC4B, eFOC4A, eCOM4B0, eCOM4B1, eCOM4A0, eCOM4A1);
  TTCCR4Arec = bitpacked record
    PWM4B,
    PWM4A,
    FOC4B,
    FOC4A,
    COM4B0,
    COM4B1,
    COM4A0,
    COM4A1: TBitField;
  end;
var
  TCCR4A: byte absolute $C0;  // Timer/Counter4 Control Register A
  TCCR4Aset: TTCCR4Aset absolute $C0;
  TCCR4Arec: TTCCR4Arec absolute $C0;
const
  PWM4B = 0;  mPWM4B = 1;
  PWM4A = 1;  mPWM4A = 2;
  FOC4B = 2;  mFOC4B = 4;  // Force Output Compare Match 4B
  FOC4A = 3;  mFOC4A = 8;  // Force Output Compare Match 4A
  COM4B0 = 4;  mCOM4B0 = 16;  // Compare Output Mode 4B, bits
  COM4B1 = 5;  mCOM4B1 = 32;  // Compare Output Mode 4B, bits
  COM4A0 = 6;  mCOM4A0 = 64;  // Compare Output Mode 1A, bits
  COM4A1 = 7;  mCOM4A1 = 128;  // Compare Output Mode 1A, bits

type
  TTCCR4Bset = bitpacked set of (eCS40, eCS41, eCS42, eCS43, eDTPS40, eDTPS41, ePSR4, ePWM4X);
  TTCCR4Brec = bitpacked record
    CS40,
    CS41,
    CS42,
    CS43,
    DTPS40,
    DTPS41,
    PSR4,
    PWM4X: TBitField;
  end;
var
  TCCR4B: byte absolute $C1;  // Timer/Counter4 Control Register B
  TCCR4Bset: TTCCR4Bset absolute $C1;
  TCCR4Brec: TTCCR4Brec absolute $C1;
const
  CS40 = 0;  mCS40 = 1;  // Clock Select Bits
  CS41 = 1;  mCS41 = 2;  // Clock Select Bits
  CS42 = 2;  mCS42 = 4;  // Clock Select Bits
  CS43 = 3;  mCS43 = 8;  // Clock Select Bits
  DTPS40 = 4;  mDTPS40 = 16;  // Dead Time Prescaler Bits
  DTPS41 = 5;  mDTPS41 = 32;  // Dead Time Prescaler Bits
  PSR4 = 6;  mPSR4 = 64;  // Prescaler Reset Timer/Counter 4
  PWM4X = 7;  mPWM4X = 128;  // PWM Inversion Mode

type
  TTCCR4Cset = bitpacked set of (ePWM4D, eFOC4D, eCOM4D0, eCOM4D1, eCOM4B0S, eCOM4B1S, eCOM4A0S, eCOM4A1S);
  TTCCR4Crec = bitpacked record
    PWM4D,
    FOC4D,
    COM4D0,
    COM4D1,
    COM4B0S,
    COM4B1S,
    COM4A0S,
    COM4A1S: TBitField;
  end;
var
  TCCR4C: byte absolute $C2;  // Timer/Counter 4 Control Register C
  TCCR4Cset: TTCCR4Cset absolute $C2;
  TCCR4Crec: TTCCR4Crec absolute $C2;
const
  PWM4D = 0;  mPWM4D = 1;  // Pulse Width Modulator D Enable
  FOC4D = 1;  mFOC4D = 2;  // Force Output Compare Match 4D
  COM4D0 = 2;  mCOM4D0 = 4;  // Comparator D Output Mode
  COM4D1 = 3;  mCOM4D1 = 8;  // Comparator D Output Mode
  COM4B0S = 4;  mCOM4B0S = 16;  // Comparator B Output Mode
  COM4B1S = 5;  mCOM4B1S = 32;  // Comparator B Output Mode
  COM4A0S = 6;  mCOM4A0S = 64;  // Comparator A Output Mode
  COM4A1S = 7;  mCOM4A1S = 128;  // Comparator A Output Mode

type
  TTCCR4Dset = bitpacked set of (eWGM40, eWGM41, eFPF4, eFPAC4, eFPES4, eFPNC4, eFPEN4, eFPIE4);
  TTCCR4Drec = bitpacked record
    WGM40,
    WGM41,
    FPF4,
    FPAC4,
    FPES4,
    FPNC4,
    FPEN4,
    FPIE4: TBitField;
  end;
var
  TCCR4D: byte absolute $C3;  // Timer/Counter 4 Control Register D
  TCCR4Dset: TTCCR4Dset absolute $C3;
  TCCR4Drec: TTCCR4Drec absolute $C3;
const
  WGM40 = 0;  mWGM40 = 1;  // Waveform Generation Mode bits
  WGM41 = 1;  mWGM41 = 2;  // Waveform Generation Mode bits
  FPF4 = 2;  mFPF4 = 4;  // Fault Protection Interrupt Flag
  FPAC4 = 3;  mFPAC4 = 8;  // Fault Protection Analog Comparator Enable
  FPES4 = 4;  mFPES4 = 16;  // Fault Protection Edge Select
  FPNC4 = 5;  mFPNC4 = 32;  // Fault Protection Noise Canceler
  FPEN4 = 6;  mFPEN4 = 64;  // Fault Protection Mode Enable
  FPIE4 = 7;  mFPIE4 = 128;  // Fault Protection Interrupt Enable

type
  TTCCR4Eset = bitpacked set of (eOC4OE0, eOC4OE1, eOC4OE2, eOC4OE3, eOC4OE4, eOC4OE5, eENHC4, eTLOCK4);
  TTCCR4Erec = bitpacked record
    OC4OE0,
    OC4OE1,
    OC4OE2,
    OC4OE3,
    OC4OE4,
    OC4OE5,
    ENHC4,
    TLOCK4: TBitField;
  end;
var
  TCCR4E: byte absolute $C4;  // Timer/Counter 4 Control Register E
  TCCR4Eset: TTCCR4Eset absolute $C4;
  TCCR4Erec: TTCCR4Erec absolute $C4;
const
  OC4OE0 = 0;  mOC4OE0 = 1;  // Output Compare Override Enable bit
  OC4OE1 = 1;  mOC4OE1 = 2;  // Output Compare Override Enable bit
  OC4OE2 = 2;  mOC4OE2 = 4;  // Output Compare Override Enable bit
  OC4OE3 = 3;  mOC4OE3 = 8;  // Output Compare Override Enable bit
  OC4OE4 = 4;  mOC4OE4 = 16;  // Output Compare Override Enable bit
  OC4OE5 = 5;  mOC4OE5 = 32;  // Output Compare Override Enable bit
  ENHC4 = 6;  mENHC4 = 64;  // Enhanced Compare/PWM Mode
  TLOCK4 = 7;  mTLOCK4 = 128;  // Register Update Lock

type
  TCLKSEL0set = bitpacked set of (eCLKS, eEXTE=2, eRCE, eEXSUT0, eEXSUT1, eRCSUT0, eRCSUT1);
  TCLKSEL0rec = bitpacked record
    CLKS,
    ReservedBit1,
    EXTE,
    RCE,
    EXSUT0,
    EXSUT1,
    RCSUT0,
    RCSUT1: TBitField;
  end;
var
  CLKSEL0: byte absolute $C5;
  CLKSEL0set: TCLKSEL0set absolute $C5;
  CLKSEL0rec: TCLKSEL0rec absolute $C5;
const
  CLKS = 0;  mCLKS = 1;
  EXTE = 2;  mEXTE = 4;
  RCE = 3;  mRCE = 8;
  EXSUT0 = 4;  mEXSUT0 = 16;
  EXSUT1 = 5;  mEXSUT1 = 32;
  RCSUT0 = 6;  mRCSUT0 = 64;
  RCSUT1 = 7;  mRCSUT1 = 128;

type
  TCLKSEL1set = bitpacked set of (eEXCKSEL0, eEXCKSEL1, eEXCKSEL2, eEXCKSEL3, eRCCKSEL0, eRCCKSEL1, eRCCKSEL2, eRCCKSEL3);
  TCLKSEL1rec = bitpacked record
    EXCKSEL0,
    EXCKSEL1,
    EXCKSEL2,
    EXCKSEL3,
    RCCKSEL0,
    RCCKSEL1,
    RCCKSEL2,
    RCCKSEL3: TBitField;
  end;
var
  CLKSEL1: byte absolute $C6;
  CLKSEL1set: TCLKSEL1set absolute $C6;
  CLKSEL1rec: TCLKSEL1rec absolute $C6;
const
  EXCKSEL0 = 0;  mEXCKSEL0 = 1;
  EXCKSEL1 = 1;  mEXCKSEL1 = 2;
  EXCKSEL2 = 2;  mEXCKSEL2 = 4;
  EXCKSEL3 = 3;  mEXCKSEL3 = 8;
  RCCKSEL0 = 4;  mRCCKSEL0 = 16;
  RCCKSEL1 = 5;  mRCCKSEL1 = 32;
  RCCKSEL2 = 6;  mRCCKSEL2 = 64;
  RCCKSEL3 = 7;  mRCCKSEL3 = 128;

type
  TCLKSTAset = bitpacked set of (eEXTON, eRCON);
  TCLKSTArec = bitpacked record
    EXTON,
    RCON,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKSTA: byte absolute $C7;
  CLKSTAset: TCLKSTAset absolute $C7;
  CLKSTArec: TCLKSTArec absolute $C7;
const
  EXTON = 0;  mEXTON = 1;
  RCON = 1;  mRCON = 2;

type
  TUCSR1Aset = bitpacked set of (eMPCM1, eU2X1, eUPE1, eDOR1, eFE1, eUDRE1, eTXC1, eRXC1);
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
  MPCM1 = 0;  mMPCM1 = 1;  // Multi-processor Communication Mode
  U2X1 = 1;  mU2X1 = 2;  // Double the USART transmission speed
  UPE1 = 2;  mUPE1 = 4;  // Parity Error
  DOR1 = 3;  mDOR1 = 8;  // Data overRun
  FE1 = 4;  mFE1 = 16;  // Framing Error
  UDRE1 = 5;  mUDRE1 = 32;  // USART Data Register Empty
  TXC1 = 6;  mTXC1 = 64;  // USART Transmitt Complete
  RXC1 = 7;  mRXC1 = 128;  // USART Receive Complete

type
  TUCSR1Bset = bitpacked set of (eTXB81, eRXB81, eUCSZ12, eTXEN1, eRXEN1, eUDRIE1, eTXCIE1, eRXCIE1);
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
  TXB81 = 0;  mTXB81 = 1;  // Transmit Data Bit 8
  RXB81 = 1;  mRXB81 = 2;  // Receive Data Bit 8
  UCSZ12 = 2;  mUCSZ12 = 4;  // Character Size
  TXEN1 = 3;  mTXEN1 = 8;  // Transmitter Enable
  RXEN1 = 4;  mRXEN1 = 16;  // Receiver Enable
  UDRIE1 = 5;  mUDRIE1 = 32;  // USART Data register Empty Interrupt Enable
  TXCIE1 = 6;  mTXCIE1 = 64;  // TX Complete Interrupt Enable
  RXCIE1 = 7;  mRXCIE1 = 128;  // RX Complete Interrupt Enable

type
  TUCSR1Cset = bitpacked set of (eUCPOL1, eUCSZ10, eUCSZ11, eUSBS1, eUPM10, eUPM11, eUMSEL10, eUMSEL11);
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
  UCPOL1 = 0;  mUCPOL1 = 1;  // Clock Polarity
  UCSZ10 = 1;  mUCSZ10 = 2;  // Character Size
  UCSZ11 = 2;  mUCSZ11 = 4;  // Character Size
  USBS1 = 3;  mUSBS1 = 8;  // Stop Bit Select
  UPM10 = 4;  mUPM10 = 16;  // Parity Mode Bits
  UPM11 = 5;  mUPM11 = 32;  // Parity Mode Bits
  UMSEL10 = 6;  mUMSEL10 = 64;  // USART Mode Select
  UMSEL11 = 7;  mUMSEL11 = 128;  // USART Mode Select

type
  TUCSR1Dset = bitpacked set of (eRTSEN, eCTSEN);
  TUCSR1Drec = bitpacked record
    RTSEN,
    CTSEN,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UCSR1D: byte absolute $CB;  // USART Control and Status Register D
  UCSR1Dset: TUCSR1Dset absolute $CB;
  UCSR1Drec: TUCSR1Drec absolute $CB;
const
  RTSEN = 0;  mRTSEN = 1;  // RTS Enable
  CTSEN = 1;  mCTSEN = 2;  // CTS Enable

var
  UBRR1: word absolute $CC;  // USART Baud Rate Register  Bytes
  UBRR1L: byte absolute $CC;
  UBRR1H: byte absolute $CD;
  UDR1: byte absolute $CE;  // USART I/O Data Register
  OCR4A: byte absolute $CF;  // Timer/Counter4 Output Compare Register A
  OCR4B: byte absolute $D0;  // Timer/Counter4 Output Compare Register B
  OCR4C: byte absolute $D1;  // Timer/Counter4 Output Compare Register C
  OCR4D: byte absolute $D2;  // Timer/Counter4 Output Compare Register D

type
  TDT4set = bitpacked set of (eDT4L0, eDT4L1, eDT4L2, eDT4L3, eDT4L4, eDT4L5, eDT4L6, eDT4L7);
  TDT4rec = bitpacked record
    DT4L0,
    DT4L1,
    DT4L2,
    DT4L3,
    DT4L4,
    DT4L5,
    DT4L6,
    DT4L7: TBitField;
  end;
var
  DT4: byte absolute $D4;  // Timer/Counter 4 Dead Time Value
  DT4set: TDT4set absolute $D4;
  DT4rec: TDT4rec absolute $D4;
const
  DT4L0 = 0;  mDT4L0 = 1;  // Timer/Counter 4 Dead Time Value Bits
  DT4L1 = 1;  mDT4L1 = 2;  // Timer/Counter 4 Dead Time Value Bits
  DT4L2 = 2;  mDT4L2 = 4;  // Timer/Counter 4 Dead Time Value Bits
  DT4L3 = 3;  mDT4L3 = 8;  // Timer/Counter 4 Dead Time Value Bits
  DT4L4 = 4;  mDT4L4 = 16;  // Timer/Counter 4 Dead Time Value Bits
  DT4L5 = 5;  mDT4L5 = 32;  // Timer/Counter 4 Dead Time Value Bits
  DT4L6 = 6;  mDT4L6 = 64;  // Timer/Counter 4 Dead Time Value Bits
  DT4L7 = 7;  mDT4L7 = 128;  // Timer/Counter 4 Dead Time Value Bits

type
  TUHWCONset = bitpacked set of (eUVREGE);
  TUHWCONrec = bitpacked record
    UVREGE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UHWCON: byte absolute $D7;
  UHWCONset: TUHWCONset absolute $D7;
  UHWCONrec: TUHWCONrec absolute $D7;
const
  UVREGE = 0;  mUVREGE = 1;

type
  TUSBCONset = bitpacked set of (eVBUSTE, eOTGPADE=4, eFRZCLK, eUSBE=7);
  TUSBCONrec = bitpacked record
    VBUSTE,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    OTGPADE,
    FRZCLK,
    ReservedBit6,
    USBE: TBitField;
  end;
var
  USBCON: byte absolute $D8;  // USB General Control Register
  USBCONset: TUSBCONset absolute $D8;
  USBCONrec: TUSBCONrec absolute $D8;
const
  VBUSTE = 0;  mVBUSTE = 1;
  OTGPADE = 4;  mOTGPADE = 16;
  FRZCLK = 5;  mFRZCLK = 32;
  USBE = 7;  mUSBE = 128;

type
  TUSBSTAset = bitpacked set of (eVBUS, eSPEED=3);
  TUSBSTArec = bitpacked record
    VBUS,
    ReservedBit1,
    ReservedBit2,
    SPEED,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  USBSTA: byte absolute $D9;
  USBSTAset: TUSBSTAset absolute $D9;
  USBSTArec: TUSBSTArec absolute $D9;
const
  VBUS = 0;  mVBUS = 1;
  SPEED = 3;  mSPEED = 8;

type
  TUSBINTset = bitpacked set of (eVBUSTI);
  TUSBINTrec = bitpacked record
    VBUSTI,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  USBINT: byte absolute $DA;
  USBINTset: TUSBINTset absolute $DA;
  USBINTrec: TUSBINTrec absolute $DA;
const
  VBUSTI = 0;  mVBUSTI = 1;

type
  TUDCONset = bitpacked set of (eDETACH, eRMWKUP, eLSM, eRSTCPU);
  TUDCONrec = bitpacked record
    DETACH,
    RMWKUP,
    LSM,
    RSTCPU,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UDCON: byte absolute $E0;
  UDCONset: TUDCONset absolute $E0;
  UDCONrec: TUDCONrec absolute $E0;
const
  DETACH = 0;  mDETACH = 1;
  RMWKUP = 1;  mRMWKUP = 2;
  LSM = 2;  mLSM = 4;  // USB low speed mode
  RSTCPU = 3;  mRSTCPU = 8;

type
  TUDINTset = bitpacked set of (eSUSPI, eSOFI=2, eEORSTI, eWAKEUPI, eEORSMI, eUPRSMI);
  TUDINTrec = bitpacked record
    SUSPI,
    ReservedBit1,
    SOFI,
    EORSTI,
    WAKEUPI,
    EORSMI,
    UPRSMI,
    ReservedBit7: TBitField;
  end;
var
  UDINT: byte absolute $E1;
  UDINTset: TUDINTset absolute $E1;
  UDINTrec: TUDINTrec absolute $E1;
const
  SUSPI = 0;  mSUSPI = 1;
  SOFI = 2;  mSOFI = 4;
  EORSTI = 3;  mEORSTI = 8;
  WAKEUPI = 4;  mWAKEUPI = 16;
  EORSMI = 5;  mEORSMI = 32;
  UPRSMI = 6;  mUPRSMI = 64;

type
  TUDIENset = bitpacked set of (eSUSPE, eSOFE=2, eEORSTE, eWAKEUPE, eEORSME, eUPRSME);
  TUDIENrec = bitpacked record
    SUSPE,
    ReservedBit1,
    SOFE,
    EORSTE,
    WAKEUPE,
    EORSME,
    UPRSME,
    ReservedBit7: TBitField;
  end;
var
  UDIEN: byte absolute $E2;
  UDIENset: TUDIENset absolute $E2;
  UDIENrec: TUDIENrec absolute $E2;
const
  SUSPE = 0;  mSUSPE = 1;
  SOFE = 2;  mSOFE = 4;
  EORSTE = 3;  mEORSTE = 8;
  WAKEUPE = 4;  mWAKEUPE = 16;
  EORSME = 5;  mEORSME = 32;
  UPRSME = 6;  mUPRSME = 64;

type
  TUDADDRset = bitpacked set of (eUADD0, eUADD1, eUADD2, eUADD3, eUADD4, eUADD5, eUADD6, eADDEN);
  TUDADDRrec = bitpacked record
    UADD0,
    UADD1,
    UADD2,
    UADD3,
    UADD4,
    UADD5,
    UADD6,
    ADDEN: TBitField;
  end;
var
  UDADDR: byte absolute $E3;
  UDADDRset: TUDADDRset absolute $E3;
  UDADDRrec: TUDADDRrec absolute $E3;
const
  UADD0 = 0;  mUADD0 = 1;
  UADD1 = 1;  mUADD1 = 2;
  UADD2 = 2;  mUADD2 = 4;
  UADD3 = 3;  mUADD3 = 8;
  UADD4 = 4;  mUADD4 = 16;
  UADD5 = 5;  mUADD5 = 32;
  UADD6 = 6;  mUADD6 = 64;
  ADDEN = 7;  mADDEN = 128;

var
  UDFNUM: word absolute $E4;
  UDFNUML: byte absolute $E4;
  UDFNUMH: byte absolute $E5;

type
  TUDMFNset = bitpacked set of (eFNCERR=4);
  TUDMFNrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    FNCERR,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UDMFN: byte absolute $E6;
  UDMFNset: TUDMFNset absolute $E6;
  UDMFNrec: TUDMFNrec absolute $E6;
const
  FNCERR = 4;  mFNCERR = 16;

type
  TUEINTXset = bitpacked set of (eTXINI, eSTALLEDI, eRXOUTI, eRXSTPI, eNAKOUTI, eRWAL, eNAKINI, eFIFOCON);
  TUEINTXrec = bitpacked record
    TXINI,
    STALLEDI,
    RXOUTI,
    RXSTPI,
    NAKOUTI,
    RWAL,
    NAKINI,
    FIFOCON: TBitField;
  end;
var
  UEINTX: byte absolute $E8;
  UEINTXset: TUEINTXset absolute $E8;
  UEINTXrec: TUEINTXrec absolute $E8;
const
  TXINI = 0;  mTXINI = 1;
  STALLEDI = 1;  mSTALLEDI = 2;
  RXOUTI = 2;  mRXOUTI = 4;
  RXSTPI = 3;  mRXSTPI = 8;
  NAKOUTI = 4;  mNAKOUTI = 16;
  RWAL = 5;  mRWAL = 32;
  NAKINI = 6;  mNAKINI = 64;
  FIFOCON = 7;  mFIFOCON = 128;

var
  UENUM: byte absolute $E9;

type
  TUERSTset = bitpacked set of (eEPRST0, eEPRST1, eEPRST2, eEPRST3, eEPRST4, eEPRST5, eEPRST6);
  TUERSTrec = bitpacked record
    EPRST0,
    EPRST1,
    EPRST2,
    EPRST3,
    EPRST4,
    EPRST5,
    EPRST6,
    ReservedBit7: TBitField;
  end;
var
  UERST: byte absolute $EA;
  UERSTset: TUERSTset absolute $EA;
  UERSTrec: TUERSTrec absolute $EA;
const
  EPRST0 = 0;  mEPRST0 = 1;
  EPRST1 = 1;  mEPRST1 = 2;
  EPRST2 = 2;  mEPRST2 = 4;
  EPRST3 = 3;  mEPRST3 = 8;
  EPRST4 = 4;  mEPRST4 = 16;
  EPRST5 = 5;  mEPRST5 = 32;
  EPRST6 = 6;  mEPRST6 = 64;

type
  TUECONXset = bitpacked set of (eEPEN, eRSTDT=3, eSTALLRQC, eSTALLRQ);
  TUECONXrec = bitpacked record
    EPEN,
    ReservedBit1,
    ReservedBit2,
    RSTDT,
    STALLRQC,
    STALLRQ,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UECONX: byte absolute $EB;
  UECONXset: TUECONXset absolute $EB;
  UECONXrec: TUECONXrec absolute $EB;
const
  EPEN = 0;  mEPEN = 1;
  RSTDT = 3;  mRSTDT = 8;
  STALLRQC = 4;  mSTALLRQC = 16;
  STALLRQ = 5;  mSTALLRQ = 32;

type
  TUECFG0Xset = bitpacked set of (eEPDIR, eEPTYPE0=6, eEPTYPE1);
  TUECFG0Xrec = bitpacked record
    EPDIR,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    EPTYPE0,
    EPTYPE1: TBitField;
  end;
var
  UECFG0X: byte absolute $EC;
  UECFG0Xset: TUECFG0Xset absolute $EC;
  UECFG0Xrec: TUECFG0Xrec absolute $EC;
const
  EPDIR = 0;  mEPDIR = 1;
  EPTYPE0 = 6;  mEPTYPE0 = 64;
  EPTYPE1 = 7;  mEPTYPE1 = 128;

type
  TUECFG1Xset = bitpacked set of (eALLOC=1, eEPBK0, eEPBK1, eEPSIZE0, eEPSIZE1, eEPSIZE2);
  TUECFG1Xrec = bitpacked record
    ReservedBit0,
    ALLOC,
    EPBK0,
    EPBK1,
    EPSIZE0,
    EPSIZE1,
    EPSIZE2,
    ReservedBit7: TBitField;
  end;
var
  UECFG1X: byte absolute $ED;
  UECFG1Xset: TUECFG1Xset absolute $ED;
  UECFG1Xrec: TUECFG1Xrec absolute $ED;
const
  ALLOC = 1;  mALLOC = 2;
  EPBK0 = 2;  mEPBK0 = 4;
  EPBK1 = 3;  mEPBK1 = 8;
  EPSIZE0 = 4;  mEPSIZE0 = 16;
  EPSIZE1 = 5;  mEPSIZE1 = 32;
  EPSIZE2 = 6;  mEPSIZE2 = 64;

type
  TUESTA0Xset = bitpacked set of (eNBUSYBK0, eNBUSYBK1, eDTSEQ0, eDTSEQ1, eUNDERFI=5, eOVERFI, eCFGOK);
  TUESTA0Xrec = bitpacked record
    NBUSYBK0,
    NBUSYBK1,
    DTSEQ0,
    DTSEQ1,
    ReservedBit4,
    UNDERFI,
    OVERFI,
    CFGOK: TBitField;
  end;
var
  UESTA0X: byte absolute $EE;
  UESTA0Xset: TUESTA0Xset absolute $EE;
  UESTA0Xrec: TUESTA0Xrec absolute $EE;
const
  NBUSYBK0 = 0;  mNBUSYBK0 = 1;
  NBUSYBK1 = 1;  mNBUSYBK1 = 2;
  DTSEQ0 = 2;  mDTSEQ0 = 4;
  DTSEQ1 = 3;  mDTSEQ1 = 8;
  UNDERFI = 5;  mUNDERFI = 32;
  OVERFI = 6;  mOVERFI = 64;
  CFGOK = 7;  mCFGOK = 128;

type
  TUESTA1Xset = bitpacked set of (eCURRBK0, eCURRBK1, eCTRLDIR);
  TUESTA1Xrec = bitpacked record
    CURRBK0,
    CURRBK1,
    CTRLDIR,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  UESTA1X: byte absolute $EF;
  UESTA1Xset: TUESTA1Xset absolute $EF;
  UESTA1Xrec: TUESTA1Xrec absolute $EF;
const
  CURRBK0 = 0;  mCURRBK0 = 1;
  CURRBK1 = 1;  mCURRBK1 = 2;
  CTRLDIR = 2;  mCTRLDIR = 4;

type
  TUEIENXset = bitpacked set of (eTXINE, eSTALLEDE, eRXOUTE, eRXSTPE, eNAKOUTE, eNAKINE=6, eFLERRE);
  TUEIENXrec = bitpacked record
    TXINE,
    STALLEDE,
    RXOUTE,
    RXSTPE,
    NAKOUTE,
    ReservedBit5,
    NAKINE,
    FLERRE: TBitField;
  end;
var
  UEIENX: byte absolute $F0;
  UEIENXset: TUEIENXset absolute $F0;
  UEIENXrec: TUEIENXrec absolute $F0;
const
  TXINE = 0;  mTXINE = 1;
  STALLEDE = 1;  mSTALLEDE = 2;
  RXOUTE = 2;  mRXOUTE = 4;
  RXSTPE = 3;  mRXSTPE = 8;
  NAKOUTE = 4;  mNAKOUTE = 16;
  NAKINE = 6;  mNAKINE = 64;
  FLERRE = 7;  mFLERRE = 128;

type
  TUEDATXset = bitpacked set of (eDAT0, eDAT1, eDAT2, eDAT3, eDAT4, eDAT5, eDAT6, eDAT7);
  TUEDATXrec = bitpacked record
    DAT0,
    DAT1,
    DAT2,
    DAT3,
    DAT4,
    DAT5,
    DAT6,
    DAT7: TBitField;
  end;
var
  UEDATX: byte absolute $F1;
  UEDATXset: TUEDATXset absolute $F1;
  UEDATXrec: TUEDATXrec absolute $F1;
const
  DAT0 = 0;  mDAT0 = 1;
  DAT1 = 1;  mDAT1 = 2;
  DAT2 = 2;  mDAT2 = 4;
  DAT3 = 3;  mDAT3 = 8;
  DAT4 = 4;  mDAT4 = 16;
  DAT5 = 5;  mDAT5 = 32;
  DAT6 = 6;  mDAT6 = 64;
  DAT7 = 7;  mDAT7 = 128;

var
  UEBCLX: byte absolute $F2;
  UEBCHX: byte absolute $F3;
  UEINT: byte absolute $F4;
  // typedefs = 89

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 3 External Interrupt Request 2
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 4 External Interrupt Request 3
procedure Reserved1_ISR; external name 'Reserved1_ISR'; // Interrupt 5 Reserved1
procedure Reserved2_ISR; external name 'Reserved2_ISR'; // Interrupt 6 Reserved2
procedure INT6_ISR; external name 'INT6_ISR'; // Interrupt 7 External Interrupt Request 6
procedure Reserved3_ISR; external name 'Reserved3_ISR'; // Interrupt 8 Reserved3
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 9 Pin Change Interrupt Request 0
procedure USB_GEN_ISR; external name 'USB_GEN_ISR'; // Interrupt 10 USB General Interrupt Request
procedure USB_COM_ISR; external name 'USB_COM_ISR'; // Interrupt 11 USB Endpoint/Pipe Interrupt Communication Request
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 12 Watchdog Time-out Interrupt
procedure Reserved4_ISR; external name 'Reserved4_ISR'; // Interrupt 13 Reserved4
procedure Reserved5_ISR; external name 'Reserved5_ISR'; // Interrupt 14 Reserved5
procedure Reserved6_ISR; external name 'Reserved6_ISR'; // Interrupt 15 Reserved6
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 16 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 17 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 18 Timer/Counter1 Compare Match B
procedure TIMER1_COMPC_ISR; external name 'TIMER1_COMPC_ISR'; // Interrupt 19 Timer/Counter1 Compare Match C
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 20 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 21 Timer/Counter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 22 Timer/Counter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 23 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 24 SPI Serial Transfer Complete
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 25 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 26 USART1 Data register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 27 USART1, Tx Complete
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 28 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 29 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 30 EEPROM Ready
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 31 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 32 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 33 Timer/Counter3 Compare Match B
procedure TIMER3_COMPC_ISR; external name 'TIMER3_COMPC_ISR'; // Interrupt 34 Timer/Counter3 Compare Match C
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 35 Timer/Counter3 Overflow
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 36 2-wire Serial Interface        
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 37 Store Program Memory Read
procedure TIMER4_COMPA_ISR; external name 'TIMER4_COMPA_ISR'; // Interrupt 38 Timer/Counter4 Compare Match A
procedure TIMER4_COMPB_ISR; external name 'TIMER4_COMPB_ISR'; // Interrupt 39 Timer/Counter4 Compare Match B
procedure TIMER4_COMPD_ISR; external name 'TIMER4_COMPD_ISR'; // Interrupt 40 Timer/Counter4 Compare Match D
procedure TIMER4_OVF_ISR; external name 'TIMER4_OVF_ISR'; // Interrupt 41 Timer/Counter4 Overflow
procedure TIMER4_FPF_ISR; external name 'TIMER4_FPF_ISR'; // Interrupt 42 Timer/Counter4 Fault Protection Interrupt

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp INT1_ISR
  jmp INT2_ISR
  jmp INT3_ISR
  jmp Reserved1_ISR
  jmp Reserved2_ISR
  jmp INT6_ISR
  jmp Reserved3_ISR
  jmp PCINT0_ISR
  jmp USB_GEN_ISR
  jmp USB_COM_ISR
  jmp WDT_ISR
  jmp Reserved4_ISR
  jmp Reserved5_ISR
  jmp Reserved6_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_COMPC_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI_STC_ISR
  jmp USART1_RX_ISR
  jmp USART1_UDRE_ISR
  jmp USART1_TX_ISR
  jmp ANALOG_COMP_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp TIMER3_CAPT_ISR
  jmp TIMER3_COMPA_ISR
  jmp TIMER3_COMPB_ISR
  jmp TIMER3_COMPC_ISR
  jmp TIMER3_OVF_ISR
  jmp TWI_ISR
  jmp SPM_READY_ISR
  jmp TIMER4_COMPA_ISR
  jmp TIMER4_COMPB_ISR
  jmp TIMER4_COMPD_ISR
  jmp TIMER4_OVF_ISR
  jmp TIMER4_FPF_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak Reserved1_ISR
  .weak Reserved2_ISR
  .weak INT6_ISR
  .weak Reserved3_ISR
  .weak PCINT0_ISR
  .weak USB_GEN_ISR
  .weak USB_COM_ISR
  .weak WDT_ISR
  .weak Reserved4_ISR
  .weak Reserved5_ISR
  .weak Reserved6_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_COMPC_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART1_RX_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_TX_ISR
  .weak ANALOG_COMP_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak TIMER3_CAPT_ISR
  .weak TIMER3_COMPA_ISR
  .weak TIMER3_COMPB_ISR
  .weak TIMER3_COMPC_ISR
  .weak TIMER3_OVF_ISR
  .weak TWI_ISR
  .weak SPM_READY_ISR
  .weak TIMER4_COMPA_ISR
  .weak TIMER4_COMPB_ISR
  .weak TIMER4_COMPD_ISR
  .weak TIMER4_OVF_ISR
  .weak TIMER4_FPF_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set Reserved1_ISR, Default_IRQ_handler
  .set Reserved2_ISR, Default_IRQ_handler
  .set INT6_ISR, Default_IRQ_handler
  .set Reserved3_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set USB_GEN_ISR, Default_IRQ_handler
  .set USB_COM_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set Reserved4_ISR, Default_IRQ_handler
  .set Reserved5_ISR, Default_IRQ_handler
  .set Reserved6_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_COMPC_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set TIMER3_CAPT_ISR, Default_IRQ_handler
  .set TIMER3_COMPA_ISR, Default_IRQ_handler
  .set TIMER3_COMPB_ISR, Default_IRQ_handler
  .set TIMER3_COMPC_ISR, Default_IRQ_handler
  .set TIMER3_OVF_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
  .set TIMER4_COMPA_ISR, Default_IRQ_handler
  .set TIMER4_COMPB_ISR, Default_IRQ_handler
  .set TIMER4_COMPD_ISR, Default_IRQ_handler
  .set TIMER4_OVF_ISR, Default_IRQ_handler
  .set TIMER4_FPF_ISR, Default_IRQ_handler
end;

end.
