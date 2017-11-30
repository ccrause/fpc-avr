unit ATmega328P;

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
  TPORTCset = bitpacked set of (ePC0, ePC1, ePC2, ePC3, ePC4, ePC5, ePC6);
  TPORTCrec = bitpacked record
    PC0,
    PC1,
    PC2,
    PC3,
    PC4,
    PC5,
    PC6,
    ReservedBit7: TBitField;
  end;
var
  PORTC: byte absolute $28;  // Port C Data Register
  PORTCset: TPORTCset absolute $28;
  PORTCrec: TPORTCrec absolute $28;
const
  PC0 = 0;  mPC0 = 1;
  PC1 = 1;  mPC1 = 2;
  PC2 = 2;  mPC2 = 4;
  PC3 = 3;  mPC3 = 8;
  PC4 = 4;  mPC4 = 16;
  PC5 = 5;  mPC5 = 32;
  PC6 = 6;  mPC6 = 64;

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
  TTIFR1set = bitpacked set of (eTOV1, eOCF1A, eOCF1B, eICF1=5);
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
  TOV1 = 0;  mTOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  mOCF1A = 2;  // Output Compare Flag 1A
  OCF1B = 2;  mOCF1B = 4;  // Output Compare Flag 1B
  ICF1 = 5;  mICF1 = 32;  // Input Capture Flag 1

type
  TTIFR2set = bitpacked set of (eTOV2, eOCF2A, eOCF2B);
  TTIFR2rec = bitpacked record
    TOV2,
    OCF2A,
    OCF2B,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR2: byte absolute $37;  // Timer/Counter Interrupt Flag Register
  TIFR2set: TTIFR2set absolute $37;
  TIFR2rec: TTIFR2rec absolute $37;
const
  TOV2 = 0;  mTOV2 = 1;  // Timer/Counter2 Overflow Flag
  OCF2A = 1;  mOCF2A = 2;  // Output Compare Flag 2A
  OCF2B = 2;  mOCF2B = 4;  // Output Compare Flag 2B

type
  TPCIFRset = bitpacked set of (ePCIF0, ePCIF1, ePCIF2);
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
  PCIFR: byte absolute $3B;  // Pin Change Interrupt Flag Register
  PCIFRset: TPCIFRset absolute $3B;
  PCIFRrec: TPCIFRrec absolute $3B;
const
  PCIF0 = 0;  mPCIF0 = 1;  // Pin Change Interrupt Flags
  PCIF1 = 1;  mPCIF1 = 2;  // Pin Change Interrupt Flags
  PCIF2 = 2;  mPCIF2 = 4;  // Pin Change Interrupt Flags

type
  TEIFRset = bitpacked set of (eINTF0, eINTF1);
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
  INTF0 = 0;  mINTF0 = 1;  // External Interrupt Flags
  INTF1 = 1;  mINTF1 = 2;  // External Interrupt Flags

type
  TEIMSKset = bitpacked set of (eINT0, eINT1);
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
  INT0 = 0;  mINT0 = 1;  // External Interrupt Request 1 Enable
  INT1 = 1;  mINT1 = 2;  // External Interrupt Request 1 Enable

var
  GPIOR0: byte absolute $3E;  // General Purpose I/O Register 0

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
  EEAR: word absolute $41;  // EEPROM Address Register  Bytes
  EEARL: byte absolute $41;
  EEARH: byte absolute $42;

type
  TGTCCRset = bitpacked set of (ePSRSYNC, ePSRASY, eTSM=7);
  TGTCCRrec = bitpacked record
    PSRSYNC,
    PSRASY,
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
  PSRASY = 1;  mPSRASY = 2;  // Prescaler Reset Timer/Counter2
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
  GPIOR1: byte absolute $4A;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $4B;  // General Purpose I/O Register 2

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
  SM0 = 1;  mSM0 = 2;  // Sleep Mode Select Bits
  SM1 = 2;  mSM1 = 4;  // Sleep Mode Select Bits
  SM2 = 3;  mSM2 = 8;  // Sleep Mode Select Bits

type
  TMCUSRset = bitpacked set of (ePORF, eEXTRF, eBORF, eWDRF);
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
  PORF = 0;  mPORF = 1;  // Power-on reset flag
  EXTRF = 1;  mEXTRF = 2;  // External Reset Flag
  BORF = 2;  mBORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  mWDRF = 8;  // Watchdog Reset Flag

type
  TMCUCRset = bitpacked set of (eIVCE, eIVSEL, ePUD=4, eBODSE, eBODS);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    PUD,
    BODSE,
    BODS,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  IVCE = 0;  mIVCE = 1;
  IVSEL = 1;  mIVSEL = 2;
  PUD = 4;  mPUD = 16;
  BODSE = 5;  mBODSE = 32;  // BOD Sleep Enable
  BODS = 6;  mBODS = 64;  // BOD Sleep

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
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  mSPMEN = 1;  // Store Program Memory
  PGERS = 1;  mPGERS = 2;  // Page Erase
  PGWRT = 2;  mPGWRT = 4;  // Page Write
  BLBSET = 3;  mBLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  mRWWSRE = 16;  // Read-While-Write section read enable
  SIGRD = 5;  mSIGRD = 32;  // Signature Row Read
  RWWSB = 6;  mRWWSB = 64;  // Read-While-Write Section Busy
  SPMIE = 7;  mSPMIE = 128;  // SPM Interrupt Enable

var
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
  CLKPR: byte absolute $61;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $61;
  CLKPRrec: TCLKPRrec absolute $61;
const
  CLKPS0 = 0;  mCLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  mCLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  mCLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  mCLKPS3 = 8;  // Clock Prescaler Select Bits
  CLKPCE = 7;  mCLKPCE = 128;  // Clock Prescaler Change Enable

type
  TPRRset = bitpacked set of (ePRADC, ePRUSART0, ePRSPI, ePRTIM1, ePRTIM0=5, ePRTIM2, ePRTWI);
  TPRRrec = bitpacked record
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
  PRR: byte absolute $64;  // Power Reduction Register
  PRRset: TPRRset absolute $64;
  PRRrec: TPRRrec absolute $64;
const
  PRADC = 0;  mPRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  mPRUSART0 = 2;  // Power Reduction USART
  PRSPI = 2;  mPRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 3;  mPRTIM1 = 8;  // Power Reduction Timer/Counter1
  PRTIM0 = 5;  mPRTIM0 = 32;  // Power Reduction Timer/Counter0
  PRTIM2 = 6;  mPRTIM2 = 64;  // Power Reduction Timer/Counter2
  PRTWI = 7;  mPRTWI = 128;  // Power Reduction TWI

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
  TPCICRset = bitpacked set of (ePCIE0, ePCIE1, ePCIE2);
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
  PCICR: byte absolute $68;  // Pin Change Interrupt Control Register
  PCICRset: TPCICRset absolute $68;
  PCICRrec: TPCICRrec absolute $68;
const
  PCIE0 = 0;  mPCIE0 = 1;  // Pin Change Interrupt Enables
  PCIE1 = 1;  mPCIE1 = 2;  // Pin Change Interrupt Enables
  PCIE2 = 2;  mPCIE2 = 4;  // Pin Change Interrupt Enables

type
  TEICRAset = bitpacked set of (eISC00, eISC01, eISC10, eISC11);
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
  ISC00 = 0;  mISC00 = 1;  // External Interrupt Sense Control 0 Bits
  ISC01 = 1;  mISC01 = 2;  // External Interrupt Sense Control 0 Bits
  ISC10 = 2;  mISC10 = 4;  // External Interrupt Sense Control 1 Bits
  ISC11 = 3;  mISC11 = 8;  // External Interrupt Sense Control 1 Bits

var
  PCMSK0: byte absolute $6B;  // Pin Change Mask Register 0
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1

type
  TPCMSK2set = bitpacked set of (ePCINT16, ePCINT17, ePCINT18, ePCINT19, ePCINT20, ePCINT21, ePCINT22, ePCINT23);
  TPCMSK2rec = bitpacked record
    PCINT16,
    PCINT17,
    PCINT18,
    PCINT19,
    PCINT20,
    PCINT21,
    PCINT22,
    PCINT23: TBitField;
  end;
var
  PCMSK2: byte absolute $6D;  // Pin Change Mask Register 2
  PCMSK2set: TPCMSK2set absolute $6D;
  PCMSK2rec: TPCMSK2rec absolute $6D;
const
  PCINT16 = 0;  mPCINT16 = 1;  // Pin Change Enable Masks
  PCINT17 = 1;  mPCINT17 = 2;  // Pin Change Enable Masks
  PCINT18 = 2;  mPCINT18 = 4;  // Pin Change Enable Masks
  PCINT19 = 3;  mPCINT19 = 8;  // Pin Change Enable Masks
  PCINT20 = 4;  mPCINT20 = 16;  // Pin Change Enable Masks
  PCINT21 = 5;  mPCINT21 = 32;  // Pin Change Enable Masks
  PCINT22 = 6;  mPCINT22 = 64;  // Pin Change Enable Masks
  PCINT23 = 7;  mPCINT23 = 128;  // Pin Change Enable Masks

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
  TTIMSK1set = bitpacked set of (eTOIE1, eOCIE1A, eOCIE1B, eICIE1=5);
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
  TOIE1 = 0;  mTOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  mOCIE1A = 2;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  OCIE1B = 2;  mOCIE1B = 4;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  ICIE1 = 5;  mICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TTIMSK2set = bitpacked set of (eTOIE2, eOCIE2A, eOCIE2B);
  TTIMSK2rec = bitpacked record
    TOIE2,
    OCIE2A,
    OCIE2B,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK2: byte absolute $70;  // Timer/Counter Interrupt Mask register
  TIMSK2set: TTIMSK2set absolute $70;
  TIMSK2rec: TTIMSK2rec absolute $70;
const
  TOIE2 = 0;  mTOIE2 = 1;  // Timer/Counter2 Overflow Interrupt Enable
  OCIE2A = 1;  mOCIE2A = 2;  // Timer/Counter2 Output Compare Match A Interrupt Enable
  OCIE2B = 2;  mOCIE2B = 4;  // Timer/Counter2 Output Compare Match B Interrupt Enable

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
  ADCSRA: byte absolute $7A;  // The ADC Control and Status register A
  ADCSRAset: TADCSRAset absolute $7A;
  ADCSRArec: TADCSRArec absolute $7A;
const
  ADPS0 = 0;  mADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  mADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  mADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  mADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  mADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  mADATE = 32;  // ADC  Auto Trigger Enable
  ADSC = 6;  mADSC = 64;  // ADC Start Conversion
  ADEN = 7;  mADEN = 128;  // ADC Enable

type
  TADCSRBset = bitpacked set of (eADTS0, eADTS1, eADTS2, eACME=6);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ACME,
    ReservedBit7: TBitField;
  end;
var
  ADCSRB: byte absolute $7B;  // The ADC Control and Status register B
  ADCSRBset: TADCSRBset absolute $7B;
  ADCSRBrec: TADCSRBrec absolute $7B;
const
  ADTS0 = 0;  mADTS0 = 1;  // ADC Auto Trigger Source bits
  ADTS1 = 1;  mADTS1 = 2;  // ADC Auto Trigger Source bits
  ADTS2 = 2;  mADTS2 = 4;  // ADC Auto Trigger Source bits
  ACME = 6;  mACME = 64;

type
  TADMUXset = bitpacked set of (eMUX0, eMUX1, eMUX2, eMUX3, eADLAR=5, eREFS0, eREFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    ReservedBit4,
    ADLAR,
    REFS0,
    REFS1: TBitField;
  end;
var
  ADMUX: byte absolute $7C;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $7C;
  ADMUXrec: TADMUXrec absolute $7C;
const
  MUX0 = 0;  mMUX0 = 1;  // Analog Channel Selection Bits
  MUX1 = 1;  mMUX1 = 2;  // Analog Channel Selection Bits
  MUX2 = 2;  mMUX2 = 4;  // Analog Channel Selection Bits
  MUX3 = 3;  mMUX3 = 8;  // Analog Channel Selection Bits
  ADLAR = 5;  mADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  mREFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  mREFS1 = 128;  // Reference Selection Bits

type
  TDIDR0set = bitpacked set of (eADC0D, eADC1D, eADC2D, eADC3D, eADC4D, eADC5D);
  TDIDR0rec = bitpacked record
    ADC0D,
    ADC1D,
    ADC2D,
    ADC3D,
    ADC4D,
    ADC5D,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR0: byte absolute $7E;  // Digital Input Disable Register
  DIDR0set: TDIDR0set absolute $7E;
  DIDR0rec: TDIDR0rec absolute $7E;
const
  ADC0D = 0;  mADC0D = 1;
  ADC1D = 1;  mADC1D = 2;
  ADC2D = 2;  mADC2D = 4;
  ADC3D = 3;  mADC3D = 8;
  ADC4D = 4;  mADC4D = 16;
  ADC5D = 5;  mADC5D = 32;

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
  DIDR1: byte absolute $7F;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $7F;
  DIDR1rec: TDIDR1rec absolute $7F;
const
  AIN0D = 0;  mAIN0D = 1;  // AIN0 Digital Input Disable
  AIN1D = 1;  mAIN1D = 2;  // AIN1 Digital Input Disable

type
  TTCCR1Aset = bitpacked set of (eWGM10, eWGM11, eCOM1B0=4, eCOM1B1, eCOM1A0, eCOM1A1);
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
  WGM10 = 0;  mWGM10 = 1;  // Waveform Generation Mode
  WGM11 = 1;  mWGM11 = 2;  // Waveform Generation Mode
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
  TTCCR1Cset = bitpacked set of (eFOC1B=6, eFOC1A);
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
  FOC1B = 6;  mFOC1B = 64;
  FOC1A = 7;  mFOC1A = 128;

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
  TTCCR2Aset = bitpacked set of (eWGM20, eWGM21, eCOM2B0=4, eCOM2B1, eCOM2A0, eCOM2A1);
  TTCCR2Arec = bitpacked record
    WGM20,
    WGM21,
    ReservedBit2,
    ReservedBit3,
    COM2B0,
    COM2B1,
    COM2A0,
    COM2A1: TBitField;
  end;
var
  TCCR2A: byte absolute $B0;  // Timer/Counter2 Control Register A
  TCCR2Aset: TTCCR2Aset absolute $B0;
  TCCR2Arec: TTCCR2Arec absolute $B0;
const
  WGM20 = 0;  mWGM20 = 1;  // Waveform Genration Mode
  WGM21 = 1;  mWGM21 = 2;  // Waveform Genration Mode
  COM2B0 = 4;  mCOM2B0 = 16;  // Compare Output Mode bits
  COM2B1 = 5;  mCOM2B1 = 32;  // Compare Output Mode bits
  COM2A0 = 6;  mCOM2A0 = 64;  // Compare Output Mode bits
  COM2A1 = 7;  mCOM2A1 = 128;  // Compare Output Mode bits

type
  TTCCR2Bset = bitpacked set of (eCS20, eCS21, eCS22, eWGM22, eFOC2B=6, eFOC2A);
  TTCCR2Brec = bitpacked record
    CS20,
    CS21,
    CS22,
    WGM22,
    ReservedBit4,
    ReservedBit5,
    FOC2B,
    FOC2A: TBitField;
  end;
var
  TCCR2B: byte absolute $B1;  // Timer/Counter2 Control Register B
  TCCR2Bset: TTCCR2Bset absolute $B1;
  TCCR2Brec: TTCCR2Brec absolute $B1;
const
  CS20 = 0;  mCS20 = 1;  // Clock Select bits
  CS21 = 1;  mCS21 = 2;  // Clock Select bits
  CS22 = 2;  mCS22 = 4;  // Clock Select bits
  WGM22 = 3;  mWGM22 = 8;  // Waveform Generation Mode
  FOC2B = 6;  mFOC2B = 64;  // Force Output Compare B
  FOC2A = 7;  mFOC2A = 128;  // Force Output Compare A

var
  TCNT2: byte absolute $B2;  // Timer/Counter2
  OCR2A: byte absolute $B3;  // Timer/Counter2 Output Compare Register A
  OCR2B: byte absolute $B4;  // Timer/Counter2 Output Compare Register B

type
  TASSRset = bitpacked set of (eTCR2BUB, eTCR2AUB, eOCR2BUB, eOCR2AUB, eTCN2UB, eAS2, eEXCLK);
  TASSRrec = bitpacked record
    TCR2BUB,
    TCR2AUB,
    OCR2BUB,
    OCR2AUB,
    TCN2UB,
    AS2,
    EXCLK,
    ReservedBit7: TBitField;
  end;
var
  ASSR: byte absolute $B6;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $B6;
  ASSRrec: TASSRrec absolute $B6;
const
  TCR2BUB = 0;  mTCR2BUB = 1;  // Timer/Counter Control Register2 Update Busy
  TCR2AUB = 1;  mTCR2AUB = 2;  // Timer/Counter Control Register2 Update Busy
  OCR2BUB = 2;  mOCR2BUB = 4;  // Output Compare Register 2 Update Busy
  OCR2AUB = 3;  mOCR2AUB = 8;  // Output Compare Register2 Update Busy
  TCN2UB = 4;  mTCN2UB = 16;  // Timer/Counter2 Update Busy
  AS2 = 5;  mAS2 = 32;  // Asynchronous Timer/Counter2
  EXCLK = 6;  mEXCLK = 64;  // Enable External Clock Input

var
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

type
  TUCSR0Aset = bitpacked set of (eMPCM0, eU2X0, eUPE0, eDOR0, eFE0, eUDRE0, eTXC0, eRXC0);
  TUCSR0Arec = bitpacked record
    MPCM0,
    U2X0,
    UPE0,
    DOR0,
    FE0,
    UDRE0,
    TXC0,
    RXC0: TBitField;
  end;
var
  UCSR0A: byte absolute $C0;  // USART Control and Status Register A
  UCSR0Aset: TUCSR0Aset absolute $C0;
  UCSR0Arec: TUCSR0Arec absolute $C0;
const
  MPCM0 = 0;  mMPCM0 = 1;  // Multi-processor Communication Mode
  U2X0 = 1;  mU2X0 = 2;  // Double the USART transmission speed
  UPE0 = 2;  mUPE0 = 4;  // Parity Error
  DOR0 = 3;  mDOR0 = 8;  // Data overRun
  FE0 = 4;  mFE0 = 16;  // Framing Error
  UDRE0 = 5;  mUDRE0 = 32;  // USART Data Register Empty
  TXC0 = 6;  mTXC0 = 64;  // USART Transmitt Complete
  RXC0 = 7;  mRXC0 = 128;  // USART Receive Complete

type
  TUCSR0Bset = bitpacked set of (eTXB80, eRXB80, eUCSZ02, eTXEN0, eRXEN0, eUDRIE0, eTXCIE0, eRXCIE0);
  TUCSR0Brec = bitpacked record
    TXB80,
    RXB80,
    UCSZ02,
    TXEN0,
    RXEN0,
    UDRIE0,
    TXCIE0,
    RXCIE0: TBitField;
  end;
var
  UCSR0B: byte absolute $C1;  // USART Control and Status Register B
  UCSR0Bset: TUCSR0Bset absolute $C1;
  UCSR0Brec: TUCSR0Brec absolute $C1;
const
  TXB80 = 0;  mTXB80 = 1;  // Transmit Data Bit 8
  RXB80 = 1;  mRXB80 = 2;  // Receive Data Bit 8
  UCSZ02 = 2;  mUCSZ02 = 4;  // Character Size
  TXEN0 = 3;  mTXEN0 = 8;  // Transmitter Enable
  RXEN0 = 4;  mRXEN0 = 16;  // Receiver Enable
  UDRIE0 = 5;  mUDRIE0 = 32;  // USART Data register Empty Interrupt Enable
  TXCIE0 = 6;  mTXCIE0 = 64;  // TX Complete Interrupt Enable
  RXCIE0 = 7;  mRXCIE0 = 128;  // RX Complete Interrupt Enable

type
  TUCSR0Cset = bitpacked set of (eUCPOL0, eUCSZ00, eUCSZ01, eUSBS0, eUPM00, eUPM01, eUMSEL00, eUMSEL01);
  TUCSR0Crec = bitpacked record
    UCPOL0,
    UCSZ00,
    UCSZ01,
    USBS0,
    UPM00,
    UPM01,
    UMSEL00,
    UMSEL01: TBitField;
  end;
var
  UCSR0C: byte absolute $C2;  // USART Control and Status Register C
  UCSR0Cset: TUCSR0Cset absolute $C2;
  UCSR0Crec: TUCSR0Crec absolute $C2;
const
  UCPOL0 = 0;  mUCPOL0 = 1;  // Clock Polarity
  UCSZ00 = 1;  mUCSZ00 = 2;  // Character Size
  UCSZ01 = 2;  mUCSZ01 = 4;  // Character Size
  USBS0 = 3;  mUSBS0 = 8;  // Stop Bit Select
  UPM00 = 4;  mUPM00 = 16;  // Parity Mode Bits
  UPM01 = 5;  mUPM01 = 32;  // Parity Mode Bits
  UMSEL00 = 6;  mUMSEL00 = 64;  // USART Mode Select
  UMSEL01 = 7;  mUMSEL01 = 128;  // USART Mode Select

var
  UBRR0: word absolute $C4;  // USART Baud Rate Register Bytes
  UBRR0L: byte absolute $C4;
  UBRR0H: byte absolute $C5;
  UDR0: byte absolute $C6;  // USART I/O Data Register
  // typedefs = 49

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 3 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 4 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 5 Pin Change Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 6 Watchdog Time-out Interrupt
procedure TIMER2_COMPA_ISR; external name 'TIMER2_COMPA_ISR'; // Interrupt 7 Timer/Counter2 Compare Match A
procedure TIMER2_COMPB_ISR; external name 'TIMER2_COMPB_ISR'; // Interrupt 8 Timer/Counter2 Compare Match B
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 9 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 10 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 11 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 12 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 13 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 14 TimerCounter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 15 TimerCounter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 16 Timer/Couner0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 17 SPI Serial Transfer Complete
procedure USART_RX_ISR; external name 'USART_RX_ISR'; // Interrupt 18 USART Rx Complete
procedure USART_UDRE_ISR; external name 'USART_UDRE_ISR'; // Interrupt 19 USART, Data Register Empty
procedure USART_TX_ISR; external name 'USART_TX_ISR'; // Interrupt 20 USART Tx Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 21 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 22 EEPROM Ready
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 23 Analog Comparator
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 24 Two-wire Serial Interface
procedure SPM_Ready_ISR; external name 'SPM_Ready_ISR'; // Interrupt 25 Store Program Memory Read

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp INT1_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp PCINT2_ISR
  jmp WDT_ISR
  jmp TIMER2_COMPA_ISR
  jmp TIMER2_COMPB_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI_STC_ISR
  jmp USART_RX_ISR
  jmp USART_UDRE_ISR
  jmp USART_TX_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp ANALOG_COMP_ISR
  jmp TWI_ISR
  jmp SPM_Ready_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
  .weak WDT_ISR
  .weak TIMER2_COMPA_ISR
  .weak TIMER2_COMPB_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART_RX_ISR
  .weak USART_UDRE_ISR
  .weak USART_TX_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak ANALOG_COMP_ISR
  .weak TWI_ISR
  .weak SPM_Ready_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER2_COMPA_ISR, Default_IRQ_handler
  .set TIMER2_COMPB_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART_RX_ISR, Default_IRQ_handler
  .set USART_UDRE_ISR, Default_IRQ_handler
  .set USART_TX_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set SPM_Ready_ISR, Default_IRQ_handler
end;

end.
