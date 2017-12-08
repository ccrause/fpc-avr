unit AT90PWM81;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TACSRset = bitpacked set of (e_AC1O=1, e_AC2O, e_AC3O, e_AC1IF=5, e_AC2IF, e_AC3IF);
  TACSRrec = bitpacked record
    ReservedBit0,
    AC1O,
    AC2O,
    AC3O,
    ReservedBit4,
    AC1IF,
    AC2IF,
    AC3IF: TBitField;
  end;
var
  ACSR: byte absolute $20;  // Analog Comparator Status Register
  ACSRset: TACSRset absolute $20;
  ACSRrec: TACSRrec absolute $20;
const
  AC1O = 1;  m_AC1O = 2;  // Analog Comparator 1 Output Bit
  AC2O = 2;  m_AC2O = 4;  // Analog Comparator 2 Output Bit
  AC3O = 3;  m_AC3O = 8;  // Analog Comparator 3 Output Bit
  AC1IF = 5;  m_AC1IF = 32;  // Analog Comparator 1  Interrupt Flag Bit
  AC2IF = 6;  m_AC2IF = 64;  // Analog Comparator 2 Interrupt Flag Bit
  AC3IF = 7;  m_AC3IF = 128;  // Analog Comparator 3 Interrupt Flag Bit

type
  TTIMSK1set = bitpacked set of (e_TOIE1, e_ICIE1=5);
  TTIMSK1rec = bitpacked record
    TOIE1,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ICIE1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK1: byte absolute $21;  // Timer/Counter Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $21;
  TIMSK1rec: TTIMSK1rec absolute $21;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  ICIE1 = 5;  m_ICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TTIFR1set = bitpacked set of (e_TOV1, e_ICF1=5);
  TTIFR1rec = bitpacked record
    TOV1,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ICF1,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR1: byte absolute $22;  // Timer/Counter Interrupt Flag register
  TIFR1set: TTIFR1set absolute $22;
  TIFR1rec: TTIFR1rec absolute $22;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  ICF1 = 5;  m_ICF1 = 32;  // Input Capture Flag 1

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
  ADCSRA: byte absolute $26;  // The ADC Control and Status register
  ADCSRAset: TADCSRAset absolute $26;
  ADCSRArec: TADCSRArec absolute $26;
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
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADTS3, e_ADSSEN, e_ADNCDIS=6, e_ADHSM);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADTS3,
    ADSSEN,
    ReservedBit5,
    ADNCDIS,
    ADHSM: TBitField;
  end;
var
  ADCSRB: byte absolute $27;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $27;
  ADCSRBrec: TADCSRBrec absolute $27;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  ADTS3 = 3;  m_ADTS3 = 8;  // ADC Auto Trigger Sources
  ADSSEN = 4;  m_ADSSEN = 16;  // ADC Single Shot Enable on PSC's Synchronisation Signals
  ADNCDIS = 6;  m_ADNCDIS = 64;  // ADC Noise Canceller Disable
  ADHSM = 7;  m_ADHSM = 128;  // ADC High Speed Mode

type
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_ADLAR=5, e_REFS0, e_REFS1);
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
  ADMUX: byte absolute $28;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $28;
  ADMUXrec: TADMUXrec absolute $28;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bits

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

var
  PINE: byte absolute $2C;  // Port E Input Pins
  DDRE: byte absolute $2D;  // Port E Data Direction Register

type
  TPORTEset = bitpacked set of (e_PE0, e_PE1, e_PE2);
  TPORTErec = bitpacked record
    PE0,
    PE1,
    PE2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTE: byte absolute $2E;  // Port E Data Register
  PORTEset: TPORTEset absolute $2E;
  PORTErec: TPORTErec absolute $2E;
const
  PE0 = 0;  m_PE0 = 1;
  PE1 = 1;  m_PE1 = 2;
  PE2 = 2;  m_PE2 = 4;

type
  TPIM0set = bitpacked set of (e_PEOPE0, e_PEOEPE0, e_PEVE0A=3, e_PEVE0B);
  TPIM0rec = bitpacked record
    PEOPE0,
    PEOEPE0,
    ReservedBit2,
    PEVE0A,
    PEVE0B,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIM0: byte absolute $2F;  // PSC0 Interrupt Mask Register
  PIM0set: TPIM0set absolute $2F;
  PIM0rec: TPIM0rec absolute $2F;
const
  PEOPE0 = 0;  m_PEOPE0 = 1;  // End of Cycle Interrupt Enable
  PEOEPE0 = 1;  m_PEOEPE0 = 2;  // End of Enhanced Cycle Enable
  PEVE0A = 3;  m_PEVE0A = 8;  // External Event A Interrupt Enable
  PEVE0B = 4;  m_PEVE0B = 16;  // External Event B Interrupt Enable

type
  TPIFR0set = bitpacked set of (e_PEOP0, e_PRN00, e_PRN01, e_PEV0A, e_PEV0B, e_POAC0A=6, e_POAC0B);
  TPIFR0rec = bitpacked record
    PEOP0,
    PRN00,
    PRN01,
    PEV0A,
    PEV0B,
    ReservedBit5,
    POAC0A,
    POAC0B: TBitField;
  end;
var
  PIFR0: byte absolute $30;  // PSC0 Interrupt Flag Register
  PIFR0set: TPIFR0set absolute $30;
  PIFR0rec: TPIFR0rec absolute $30;
const
  PEOP0 = 0;  m_PEOP0 = 1;  // End of PSC0 Interrupt
  PRN00 = 1;  m_PRN00 = 2;  // Ramp Number
  PRN01 = 2;  m_PRN01 = 4;  // Ramp Number
  PEV0A = 3;  m_PEV0A = 8;  // External Event A Interrupt
  PEV0B = 4;  m_PEV0B = 16;  // External Event B Interrupt
  POAC0A = 6;  m_POAC0A = 64;  // PSC 0 Output A Activity
  POAC0B = 7;  m_POAC0B = 128;  // PSC 0 Output A Activity

type
  TPCNF0set = bitpacked set of (e_PCLKSEL0=1, e_POP0, e_PMODE00, e_PMODE01, e_PLOCK0, e_PALOCK0, e_PFIFTY0);
  TPCNF0rec = bitpacked record
    ReservedBit0,
    PCLKSEL0,
    POP0,
    PMODE00,
    PMODE01,
    PLOCK0,
    PALOCK0,
    PFIFTY0: TBitField;
  end;
var
  PCNF0: byte absolute $31;  // PSC 0 Configuration Register
  PCNF0set: TPCNF0set absolute $31;
  PCNF0rec: TPCNF0rec absolute $31;
const
  PCLKSEL0 = 1;  m_PCLKSEL0 = 2;  // PSC 0 Input Clock Select
  POP0 = 2;  m_POP0 = 4;  // PSC 0 Output Polarity
  PMODE00 = 3;  m_PMODE00 = 8;  // PSC 0 Mode
  PMODE01 = 4;  m_PMODE01 = 16;  // PSC 0 Mode
  PLOCK0 = 5;  m_PLOCK0 = 32;  // PSC 0 Lock
  PALOCK0 = 6;  m_PALOCK0 = 64;  // PSC 0 Autolock
  PFIFTY0 = 7;  m_PFIFTY0 = 128;  // PSC 0 Fifty

type
  TPCTL0set = bitpacked set of (e_PRUN0, e_PCCYC0, e_PBFM00, e_PAOC0A, e_PAOC0B, e_PBFM01, e_PPRE00, e_PPRE01);
  TPCTL0rec = bitpacked record
    PRUN0,
    PCCYC0,
    PBFM00,
    PAOC0A,
    PAOC0B,
    PBFM01,
    PPRE00,
    PPRE01: TBitField;
  end;
var
  PCTL0: byte absolute $32;  // PSC 0 Control Register
  PCTL0set: TPCTL0set absolute $32;
  PCTL0rec: TPCTL0rec absolute $32;
const
  PRUN0 = 0;  m_PRUN0 = 1;  // PSC 0 Run
  PCCYC0 = 1;  m_PCCYC0 = 2;  // PSC0 Complete Cycle
  PAOC0A = 3;  m_PAOC0A = 8;  // PSC 0 Asynchronous Output Control A
  PAOC0B = 4;  m_PAOC0B = 16;  // PSC 0 Asynchronous Output Control B
  PBFM00 = 2;  m_PBFM00 = 4;  // PSC 0 Balance Flank Width Modulation
  PBFM01 = 5;  m_PBFM01 = 32;  // PSC 0 Balance Flank Width Modulation
  PPRE00 = 6;  m_PPRE00 = 64;  // PSC 0 Prescaler Selects
  PPRE01 = 7;  m_PPRE01 = 128;  // PSC 0 Prescaler Selects

type
  TPIM2set = bitpacked set of (e_PEOPE2, e_PEOEPE2, e_PEVE2A=3, e_PEVE2B, e_PSEIE2);
  TPIM2rec = bitpacked record
    PEOPE2,
    PEOEPE2,
    ReservedBit2,
    PEVE2A,
    PEVE2B,
    PSEIE2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PIM2: byte absolute $33;  // PSC2 Interrupt Mask Register
  PIM2set: TPIM2set absolute $33;
  PIM2rec: TPIM2rec absolute $33;
const
  PEOPE2 = 0;  m_PEOPE2 = 1;  // End of Cycle Interrupt Enable
  PEOEPE2 = 1;  m_PEOEPE2 = 2;  // End of Enhanced Cycle Interrupt Enable
  PEVE2A = 3;  m_PEVE2A = 8;  // External Event A Interrupt Enable
  PEVE2B = 4;  m_PEVE2B = 16;  // External Event B Interrupt Enable
  PSEIE2 = 5;  m_PSEIE2 = 32;  // PSC 2 Synchro Error Interrupt Enable

type
  TPIFR2set = bitpacked set of (e_PEOP2, e_PRN20, e_PRN21, e_PEV2A, e_PEV2B, e_PSEI2, e_POAC2A, e_POAC2B);
  TPIFR2rec = bitpacked record
    PEOP2,
    PRN20,
    PRN21,
    PEV2A,
    PEV2B,
    PSEI2,
    POAC2A,
    POAC2B: TBitField;
  end;
var
  PIFR2: byte absolute $34;  // PSC2 Interrupt Flag Register
  PIFR2set: TPIFR2set absolute $34;
  PIFR2rec: TPIFR2rec absolute $34;
const
  PEOP2 = 0;  m_PEOP2 = 1;  // End of PSC2 Interrupt
  PRN20 = 1;  m_PRN20 = 2;  // Ramp Number
  PRN21 = 2;  m_PRN21 = 4;  // Ramp Number
  PEV2A = 3;  m_PEV2A = 8;  // External Event A Interrupt
  PEV2B = 4;  m_PEV2B = 16;  // External Event B Interrupt
  PSEI2 = 5;  m_PSEI2 = 32;  // PSC 2 Synchro Error Interrupt
  POAC2A = 6;  m_POAC2A = 64;  // PSC 2 Output A Activity
  POAC2B = 7;  m_POAC2B = 128;  // PSC 2 Output A Activity

type
  TPCNF2set = bitpacked set of (e_POME2, e_PCLKSEL2, e_POP2, e_PMODE20, e_PMODE21, e_PLOCK2, e_PALOCK2, e_PFIFTY2);
  TPCNF2rec = bitpacked record
    POME2,
    PCLKSEL2,
    POP2,
    PMODE20,
    PMODE21,
    PLOCK2,
    PALOCK2,
    PFIFTY2: TBitField;
  end;
var
  PCNF2: byte absolute $35;  // PSC 2 Configuration Register
  PCNF2set: TPCNF2set absolute $35;
  PCNF2rec: TPCNF2rec absolute $35;
const
  POME2 = 0;  m_POME2 = 1;  // PSC 2 Output Matrix Enable
  PCLKSEL2 = 1;  m_PCLKSEL2 = 2;  // PSC 2 Input Clock Select
  POP2 = 2;  m_POP2 = 4;  // PSC 2 Output Polarity
  PMODE20 = 3;  m_PMODE20 = 8;  // PSC 2 Mode
  PMODE21 = 4;  m_PMODE21 = 16;  // PSC 2 Mode
  PLOCK2 = 5;  m_PLOCK2 = 32;  // PSC 2 Lock
  PALOCK2 = 6;  m_PALOCK2 = 64;  // PSC 2 Autolock
  PFIFTY2 = 7;  m_PFIFTY2 = 128;  // PSC 2 Fifty

type
  TPCTL2set = bitpacked set of (e_PRUN2, e_PCCYC2, e_PARUN2, e_PAOC2A, e_PAOC2B, e_PBFM2, e_PPRE20, e_PPRE21);
  TPCTL2rec = bitpacked record
    PRUN2,
    PCCYC2,
    PARUN2,
    PAOC2A,
    PAOC2B,
    PBFM2,
    PPRE20,
    PPRE21: TBitField;
  end;
var
  PCTL2: byte absolute $36;  // PSC 2 Control Register
  PCTL2set: TPCTL2set absolute $36;
  PCTL2rec: TPCTL2rec absolute $36;
const
  PRUN2 = 0;  m_PRUN2 = 1;  // PSC 2 Run
  PCCYC2 = 1;  m_PCCYC2 = 2;  // PSC2 Complete Cycle
  PARUN2 = 2;  m_PARUN2 = 4;  // PSC2 Auto Run
  PAOC2A = 3;  m_PAOC2A = 8;  // PSC 2 Asynchronous Output Control A
  PAOC2B = 4;  m_PAOC2B = 16;  // PSC 2 Asynchronous Output Control B
  PBFM2 = 5;  m_PBFM2 = 32;  // Balance Flank Width Modulation
  PPRE20 = 6;  m_PPRE20 = 64;  // PSC 2 Prescaler Selects
  PPRE21 = 7;  m_PPRE21 = 128;  // PSC 2 Prescaler Selects

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
  SPCR: byte absolute $37;  // SPI Control Register
  SPCRset: TSPCRset absolute $37;
  SPCRrec: TSPCRrec absolute $37;
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
  SPSR: byte absolute $38;  // SPI Status Register
  SPSRset: TSPSRset absolute $38;
  SPSRrec: TSPSRrec absolute $38;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  m_WCOL = 64;  // Write Collision Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

type
  TGPIOR0set = bitpacked set of (e_GPIOR00, e_GPIOR01, e_GPIOR02, e_GPIOR03, e_GPIOR04, e_GPIOR05, e_GPIOR06, e_GPIOR07);
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
  GPIOR0: byte absolute $39;  // General Purpose IO Register 0
  GPIOR0set: TGPIOR0set absolute $39;
  GPIOR0rec: TGPIOR0rec absolute $39;
const
  GPIOR00 = 0;  m_GPIOR00 = 1;  // General Purpose IO Register 0 bit 0
  GPIOR01 = 1;  m_GPIOR01 = 2;  // General Purpose IO Register 0 bit 1
  GPIOR02 = 2;  m_GPIOR02 = 4;  // General Purpose IO Register 0 bit 2
  GPIOR03 = 3;  m_GPIOR03 = 8;  // General Purpose IO Register 0 bit 3
  GPIOR04 = 4;  m_GPIOR04 = 16;  // General Purpose IO Register 0 bit 4
  GPIOR05 = 5;  m_GPIOR05 = 32;  // General Purpose IO Register 0 bit 5
  GPIOR06 = 6;  m_GPIOR06 = 64;  // General Purpose IO Register 0 bit 6
  GPIOR07 = 7;  m_GPIOR07 = 128;  // General Purpose IO Register 0 bit 7

var
  GPIOR1: byte absolute $3A;  // General Purpose IO Register 1

type
  TGPIOR2set = bitpacked set of (e_GPIOR20, e_GPIOR21, e_GPIOR22, e_GPIOR23, e_GPIOR24, e_GPIOR25, e_GPIOR26, e_GPIOR27);
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
  GPIOR2: byte absolute $3B;  // General Purpose IO Register 2
  GPIOR2set: TGPIOR2set absolute $3B;
  GPIOR2rec: TGPIOR2rec absolute $3B;
const
  GPIOR20 = 0;  m_GPIOR20 = 1;  // General Purpose IO Register 2 bis
  GPIOR21 = 1;  m_GPIOR21 = 2;  // General Purpose IO Register 2 bis
  GPIOR22 = 2;  m_GPIOR22 = 4;  // General Purpose IO Register 2 bis
  GPIOR23 = 3;  m_GPIOR23 = 8;  // General Purpose IO Register 2 bis
  GPIOR24 = 4;  m_GPIOR24 = 16;  // General Purpose IO Register 2 bis
  GPIOR25 = 5;  m_GPIOR25 = 32;  // General Purpose IO Register 2 bis
  GPIOR26 = 6;  m_GPIOR26 = 64;  // General Purpose IO Register 2 bis
  GPIOR27 = 7;  m_GPIOR27 = 128;  // General Purpose IO Register 2 bis

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
  EECR: byte absolute $3C;  // EEPROM Control Register
  EECRset: TEECRset absolute $3C;
  EECRrec: TEECRrec absolute $3C;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEWE = 1;  m_EEWE = 2;  // EEPROM Write Enable
  EEMWE = 2;  m_EEMWE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode
  EEPAGE = 6;  m_EEPAGE = 64;  // EEPROM Page Access
  NVMBSY = 7;  m_NVMBSY = 128;  // None Volatile Busy Memory Busy

type
  TEEDRset = bitpacked set of (e_EEDR0, e_EEDR1, e_EEDR2, e_EEDR3, e_EEDR4, e_EEDR5, e_EEDR6, e_EEDR7);
  TEEDRrec = bitpacked record
    EEDR0,
    EEDR1,
    EEDR2,
    EEDR3,
    EEDR4,
    EEDR5,
    EEDR6,
    EEDR7: TBitField;
  end;
var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEDRset: TEEDRset absolute $3D;
  EEDRrec: TEEDRrec absolute $3D;
const
  EEDR0 = 0;  m_EEDR0 = 1;  // EEPROM Data bits
  EEDR1 = 1;  m_EEDR1 = 2;  // EEPROM Data bits
  EEDR2 = 2;  m_EEDR2 = 4;  // EEPROM Data bits
  EEDR3 = 3;  m_EEDR3 = 8;  // EEPROM Data bits
  EEDR4 = 4;  m_EEDR4 = 16;  // EEPROM Data bits
  EEDR5 = 5;  m_EEDR5 = 32;  // EEPROM Data bits
  EEDR6 = 6;  m_EEDR6 = 64;  // EEPROM Data bits
  EEDR7 = 7;  m_EEDR7 = 128;  // EEPROM Data bits

var
  EEAR: word absolute $3E;  // EEPROM Read/Write Access Bytes
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;
const
  EEAR0 = 0;  m_EEAR0 = 1;  // EEPROM Address bytes
  EEAR1 = 1;  m_EEAR1 = 2;  // EEPROM Address bytes
  EEAR2 = 2;  m_EEAR2 = 4;  // EEPROM Address bytes
  EEAR3 = 3;  m_EEAR3 = 8;  // EEPROM Address bytes
  EEAR4 = 4;  m_EEAR4 = 16;  // EEPROM Address bytes
  EEAR5 = 5;  m_EEAR5 = 32;  // EEPROM Address bytes
  EEAR6 = 6;  m_EEAR6 = 64;  // EEPROM Address bytes
  EEAR7 = 7;  m_EEAR7 = 128;  // EEPROM Address bytes

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
  EIFR: byte absolute $40;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $40;
  EIFRrec: TEIFRrec absolute $40;
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
  EIMSK: byte absolute $41;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $41;
  EIMSKrec: TEIMSKrec absolute $41;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 2 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 2 Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request 2 Enable

var
  OCR0SB: word absolute $42;  // Output Compare SB Register 
  OCR0SBL: byte absolute $42;
  OCR0SBH: byte absolute $43;
const
  OCR0SB0 = 0;  m_OCR0SB0 = 1;  // Output Compare 0 SB
  OCR0SB1 = 1;  m_OCR0SB1 = 2;  // Output Compare 0 SB
  OCR0SB2 = 2;  m_OCR0SB2 = 4;  // Output Compare 0 SB
  OCR0SB3 = 3;  m_OCR0SB3 = 8;  // Output Compare 0 SB
  OCR0SB4 = 4;  m_OCR0SB4 = 16;  // Output Compare 0 SB
  OCR0SB5 = 5;  m_OCR0SB5 = 32;  // Output Compare 0 SB
  OCR0SB6 = 6;  m_OCR0SB6 = 64;  // Output Compare 0 SB
  OCR0SB7 = 7;  m_OCR0SB7 = 128;  // Output Compare 0 SB

var
  OCR0RB: word absolute $44;  // Output Compare RB Register 
  OCR0RBL: byte absolute $44;
  OCR0RBH: byte absolute $45;
const
  OCR0RB0 = 0;  m_OCR0RB0 = 1;  // Output Compare 0 RB
  OCR0RB1 = 1;  m_OCR0RB1 = 2;  // Output Compare 0 RB
  OCR0RB2 = 2;  m_OCR0RB2 = 4;  // Output Compare 0 RB
  OCR0RB3 = 3;  m_OCR0RB3 = 8;  // Output Compare 0 RB
  OCR0RB4 = 4;  m_OCR0RB4 = 16;  // Output Compare 0 RB
  OCR0RB5 = 5;  m_OCR0RB5 = 32;  // Output Compare 0 RB
  OCR0RB6 = 6;  m_OCR0RB6 = 64;  // Output Compare 0 RB
  OCR0RB7 = 7;  m_OCR0RB7 = 128;  // Output Compare 0 RB

var
  OCR2SB: word absolute $46;  // Output Compare SB Register 
  OCR2SBL: byte absolute $46;
  OCR2SBH: byte absolute $47;
const
  OCR2SB0 = 0;  m_OCR2SB0 = 1;  // Output Compare 2 SB
  OCR2SB1 = 1;  m_OCR2SB1 = 2;  // Output Compare 2 SB
  OCR2SB2 = 2;  m_OCR2SB2 = 4;  // Output Compare 2 SB
  OCR2SB3 = 3;  m_OCR2SB3 = 8;  // Output Compare 2 SB
  OCR2SB4 = 4;  m_OCR2SB4 = 16;  // Output Compare 2 SB
  OCR2SB5 = 5;  m_OCR2SB5 = 32;  // Output Compare 2 SB
  OCR2SB6 = 6;  m_OCR2SB6 = 64;  // Output Compare 2 SB
  OCR2SB7 = 7;  m_OCR2SB7 = 128;  // Output Compare 2 SB

var
  OCR2RB: word absolute $48;  // Output Compare RB Register 
  OCR2RBL: byte absolute $48;
  OCR2RBH: byte absolute $49;
const
  OCR2RB0 = 0;  m_OCR2RB0 = 1;  // Output Compare 2 RB
  OCR2RB1 = 1;  m_OCR2RB1 = 2;  // Output Compare 2 RB
  OCR2RB2 = 2;  m_OCR2RB2 = 4;  // Output Compare 2 RB
  OCR2RB3 = 3;  m_OCR2RB3 = 8;  // Output Compare 2 RB
  OCR2RB4 = 4;  m_OCR2RB4 = 16;  // Output Compare 2 RB
  OCR2RB5 = 5;  m_OCR2RB5 = 32;  // Output Compare 2 RB
  OCR2RB6 = 6;  m_OCR2RB6 = 64;  // Output Compare 2 RB
  OCR2RB7 = 7;  m_OCR2RB7 = 128;  // Output Compare 2 RB

var
  OCR0RA: word absolute $4A;  // Output Compare RA Register 
  OCR0RAL: byte absolute $4A;
  OCR0RAH: byte absolute $4B;
const
  OCR0RA0 = 0;  m_OCR0RA0 = 1;  // Output Compare 0 RA
  OCR0RA1 = 1;  m_OCR0RA1 = 2;  // Output Compare 0 RA
  OCR0RA2 = 2;  m_OCR0RA2 = 4;  // Output Compare 0 RA
  OCR0RA3 = 3;  m_OCR0RA3 = 8;  // Output Compare 0 RA
  OCR0RA4 = 4;  m_OCR0RA4 = 16;  // Output Compare 0 RA
  OCR0RA5 = 5;  m_OCR0RA5 = 32;  // Output Compare 0 RA
  OCR0RA6 = 6;  m_OCR0RA6 = 64;  // Output Compare 0 RA
  OCR0RA7 = 7;  m_OCR0RA7 = 128;  // Output Compare 0 RA

var
  ADC: word absolute $4C;  // ADC Data Register Bytes
  ADCL: byte absolute $4C;
  ADCH: byte absolute $4D;
const
  ADC0 = 0;  m_ADC0 = 1;  // ADC Data Register
  ADC1 = 1;  m_ADC1 = 2;  // ADC Data Register
  ADC2 = 2;  m_ADC2 = 4;  // ADC Data Register
  ADC3 = 3;  m_ADC3 = 8;  // ADC Data Register
  ADC4 = 4;  m_ADC4 = 16;  // ADC Data Register
  ADC5 = 5;  m_ADC5 = 32;  // ADC Data Register
  ADC6 = 6;  m_ADC6 = 64;  // ADC Data Register
  ADC7 = 7;  m_ADC7 = 128;  // ADC Data Register

var
  OCR2RA: word absolute $4E;  // Output Compare RA Register 
  OCR2RAL: byte absolute $4E;
  OCR2RAH: byte absolute $4F;
const
  OCR2RA0 = 0;  m_OCR2RA0 = 1;  // Output Compare 2 RA
  OCR2RA1 = 1;  m_OCR2RA1 = 2;  // Output Compare 2 RA
  OCR2RA2 = 2;  m_OCR2RA2 = 4;  // Output Compare 2 RA
  OCR2RA3 = 3;  m_OCR2RA3 = 8;  // Output Compare 2 RA
  OCR2RA4 = 4;  m_OCR2RA4 = 16;  // Output Compare 2 RA
  OCR2RA5 = 5;  m_OCR2RA5 = 32;  // Output Compare 2 RA
  OCR2RA6 = 6;  m_OCR2RA6 = 64;  // Output Compare 2 RA
  OCR2RA7 = 7;  m_OCR2RA7 = 128;  // Output Compare 2 RA

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
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_CKRC81, e_RSTDIS, e_PUD);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    CKRC81,
    RSTDIS,
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
  CKRC81 = 2;  m_CKRC81 = 4;  // Frequency Selection of the Calibrated RC Oscillator
  RSTDIS = 3;  m_RSTDIS = 8;  // Reset Pin Disable
  PUD = 4;  m_PUD = 16;  // Pull-up disable

type
  TSPDRset = bitpacked set of (e_SPD0, e_SPD1, e_SPD2, e_SPD3, e_SPD4, e_SPD5, e_SPD6, e_SPD7);
  TSPDRrec = bitpacked record
    SPD0,
    SPD1,
    SPD2,
    SPD3,
    SPD4,
    SPD5,
    SPD6,
    SPD7: TBitField;
  end;
var
  SPDR: byte absolute $56;  // SPI Data Register
  SPDRset: TSPDRset absolute $56;
  SPDRrec: TSPDRrec absolute $56;
const
  SPD0 = 0;  m_SPD0 = 1;  // SPI Data bits
  SPD1 = 1;  m_SPD1 = 2;  // SPI Data bits
  SPD2 = 2;  m_SPD2 = 4;  // SPI Data bits
  SPD3 = 3;  m_SPD3 = 8;  // SPI Data bits
  SPD4 = 4;  m_SPD4 = 16;  // SPI Data bits
  SPD5 = 5;  m_SPD5 = 32;  // SPI Data bits
  SPD6 = 6;  m_SPD6 = 64;  // SPI Data bits
  SPD7 = 7;  m_SPD7 = 128;  // SPI Data bits

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
  DAC: word absolute $58;  // DAC Data Register
  DACL: byte absolute $58;
  DACH: byte absolute $59;
const
  DACH0 = 0;  m_DACH0 = 1;  // DAC Data Register Bits
  DACH1 = 1;  m_DACH1 = 2;  // DAC Data Register Bits
  DACH2 = 2;  m_DACH2 = 4;  // DAC Data Register Bits
  DACH3 = 3;  m_DACH3 = 8;  // DAC Data Register Bits
  DACH4 = 4;  m_DACH4 = 16;  // DAC Data Register Bits
  DACH5 = 5;  m_DACH5 = 32;  // DAC Data Register Bits
  DACH6 = 6;  m_DACH6 = 64;  // DAC Data Register Bits
  DACH7 = 7;  m_DACH7 = 128;  // DAC Data Register Bits

var
  TCNT1: word absolute $5A;  // Timer/Counter1 Bytes
  TCNT1L: byte absolute $5A;
  TCNT1H: byte absolute $5B;
const
  TCNT10 = 0;  m_TCNT10 = 1;  // Timer/Counter 1 bits
  TCNT11 = 1;  m_TCNT11 = 2;  // Timer/Counter 1 bits
  TCNT12 = 2;  m_TCNT12 = 4;  // Timer/Counter 1 bits
  TCNT13 = 3;  m_TCNT13 = 8;  // Timer/Counter 1 bits
  TCNT14 = 4;  m_TCNT14 = 16;  // Timer/Counter 1 bits
  TCNT15 = 5;  m_TCNT15 = 32;  // Timer/Counter 1 bits
  TCNT16 = 6;  m_TCNT16 = 64;  // Timer/Counter 1 bits
  TCNT17 = 7;  m_TCNT17 = 128;  // Timer/Counter 1 bits

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

var
  OCR0SA: word absolute $60;  // Output Compare SA Register 
  OCR0SAL: byte absolute $60;
  OCR0SAH: byte absolute $61;
const
  OCR0SA0 = 0;  m_OCR0SA0 = 1;  // Output Compare 0 SA
  OCR0SA1 = 1;  m_OCR0SA1 = 2;  // Output Compare 0 SA
  OCR0SA2 = 2;  m_OCR0SA2 = 4;  // Output Compare 0 SA
  OCR0SA3 = 3;  m_OCR0SA3 = 8;  // Output Compare 0 SA
  OCR0SA4 = 4;  m_OCR0SA4 = 16;  // Output Compare 0 SA
  OCR0SA5 = 5;  m_OCR0SA5 = 32;  // Output Compare 0 SA
  OCR0SA6 = 6;  m_OCR0SA6 = 64;  // Output Compare 0 SA
  OCR0SA7 = 7;  m_OCR0SA7 = 128;  // Output Compare 0 SA

type
  TPFRC0Aset = bitpacked set of (e_PRFM0A0, e_PRFM0A1, e_PRFM0A2, e_PRFM0A3, e_PFLTE0A, e_PELEV0A, e_PISEL0A, e_PCAE0A);
  TPFRC0Arec = bitpacked record
    PRFM0A0,
    PRFM0A1,
    PRFM0A2,
    PRFM0A3,
    PFLTE0A,
    PELEV0A,
    PISEL0A,
    PCAE0A: TBitField;
  end;
var
  PFRC0A: byte absolute $62;  // PSC 0 Input A Control
  PFRC0Aset: TPFRC0Aset absolute $62;
  PFRC0Arec: TPFRC0Arec absolute $62;
const
  PRFM0A0 = 0;  m_PRFM0A0 = 1;  // PSC 0 Retrigger and Fault Mode for Part A
  PRFM0A1 = 1;  m_PRFM0A1 = 2;  // PSC 0 Retrigger and Fault Mode for Part A
  PRFM0A2 = 2;  m_PRFM0A2 = 4;  // PSC 0 Retrigger and Fault Mode for Part A
  PRFM0A3 = 3;  m_PRFM0A3 = 8;  // PSC 0 Retrigger and Fault Mode for Part A
  PFLTE0A = 4;  m_PFLTE0A = 16;  // PSC 0 Filter Enable on Input Part A
  PELEV0A = 5;  m_PELEV0A = 32;  // PSC 0 Edge Level Selector on Input Part A
  PISEL0A = 6;  m_PISEL0A = 64;  // PSC 0 Input Select for Part A
  PCAE0A = 7;  m_PCAE0A = 128;  // PSC 0 Capture Enable Input Part A

type
  TPFRC0Bset = bitpacked set of (e_PRFM0B0, e_PRFM0B1, e_PRFM0B2, e_PRFM0B3, e_PFLTE0B, e_PELEV0B, e_PISEL0B, e_PCAE0B);
  TPFRC0Brec = bitpacked record
    PRFM0B0,
    PRFM0B1,
    PRFM0B2,
    PRFM0B3,
    PFLTE0B,
    PELEV0B,
    PISEL0B,
    PCAE0B: TBitField;
  end;
var
  PFRC0B: byte absolute $63;  // PSC 0 Input B Control
  PFRC0Bset: TPFRC0Bset absolute $63;
  PFRC0Brec: TPFRC0Brec absolute $63;
const
  PRFM0B0 = 0;  m_PRFM0B0 = 1;  // PSC 0 Retrigger and Fault Mode for Part B
  PRFM0B1 = 1;  m_PRFM0B1 = 2;  // PSC 0 Retrigger and Fault Mode for Part B
  PRFM0B2 = 2;  m_PRFM0B2 = 4;  // PSC 0 Retrigger and Fault Mode for Part B
  PRFM0B3 = 3;  m_PRFM0B3 = 8;  // PSC 0 Retrigger and Fault Mode for Part B
  PFLTE0B = 4;  m_PFLTE0B = 16;  // PSC 0 Filter Enable on Input Part B
  PELEV0B = 5;  m_PELEV0B = 32;  // PSC 0 Edge Level Selector on Input Part B
  PISEL0B = 6;  m_PISEL0B = 64;  // PSC 0 Input Select for Part B
  PCAE0B = 7;  m_PCAE0B = 128;  // PSC 0 Capture Enable Input Part B

var
  OCR2SA: word absolute $64;  // Output Compare SA Register 
  OCR2SAL: byte absolute $64;
  OCR2SAH: byte absolute $65;
const
  OCR2SA0 = 0;  m_OCR2SA0 = 1;  // Output Compare 2 SA
  OCR2SA1 = 1;  m_OCR2SA1 = 2;  // Output Compare 2 SA
  OCR2SA2 = 2;  m_OCR2SA2 = 4;  // Output Compare 2 SA
  OCR2SA3 = 3;  m_OCR2SA3 = 8;  // Output Compare 2 SA
  OCR2SA4 = 4;  m_OCR2SA4 = 16;  // Output Compare 2 SA
  OCR2SA5 = 5;  m_OCR2SA5 = 32;  // Output Compare 2 SA
  OCR2SA6 = 6;  m_OCR2SA6 = 64;  // Output Compare 2 SA
  OCR2SA7 = 7;  m_OCR2SA7 = 128;  // Output Compare 2 SA

type
  TPFRC2Aset = bitpacked set of (e_PRFM2A0, e_PRFM2A1, e_PRFM2A2, e_PRFM2A3, e_PFLTE2A, e_PELEV2A, e_PISEL2A, e_PCAE2A);
  TPFRC2Arec = bitpacked record
    PRFM2A0,
    PRFM2A1,
    PRFM2A2,
    PRFM2A3,
    PFLTE2A,
    PELEV2A,
    PISEL2A,
    PCAE2A: TBitField;
  end;
var
  PFRC2A: byte absolute $66;  // PSC 2 Input B Control
  PFRC2Aset: TPFRC2Aset absolute $66;
  PFRC2Arec: TPFRC2Arec absolute $66;
const
  PRFM2A0 = 0;  m_PRFM2A0 = 1;  // PSC 2 Retrigger and Fault Mode for Part A
  PRFM2A1 = 1;  m_PRFM2A1 = 2;  // PSC 2 Retrigger and Fault Mode for Part A
  PRFM2A2 = 2;  m_PRFM2A2 = 4;  // PSC 2 Retrigger and Fault Mode for Part A
  PRFM2A3 = 3;  m_PRFM2A3 = 8;  // PSC 2 Retrigger and Fault Mode for Part A
  PFLTE2A = 4;  m_PFLTE2A = 16;  // PSC 2 Filter Enable on Input Part A
  PELEV2A = 5;  m_PELEV2A = 32;  // PSC 2 Edge Level Selector on Input Part A
  PISEL2A = 6;  m_PISEL2A = 64;  // PSC 2 Input Select for Part A
  PCAE2A = 7;  m_PCAE2A = 128;  // PSC 2 Capture Enable Input Part A

type
  TPFRC2Bset = bitpacked set of (e_PRFM2B0, e_PRFM2B1, e_PRFM2B2, e_PRFM2B3, e_PFLTE2B, e_PELEV2B, e_PISEL2B, e_PCAE2B);
  TPFRC2Brec = bitpacked record
    PRFM2B0,
    PRFM2B1,
    PRFM2B2,
    PRFM2B3,
    PFLTE2B,
    PELEV2B,
    PISEL2B,
    PCAE2B: TBitField;
  end;
var
  PFRC2B: byte absolute $67;  // PSC 2 Input B Control
  PFRC2Bset: TPFRC2Bset absolute $67;
  PFRC2Brec: TPFRC2Brec absolute $67;
const
  PRFM2B0 = 0;  m_PRFM2B0 = 1;  // PSC 2 Retrigger and Fault Mode for Part B
  PRFM2B1 = 1;  m_PRFM2B1 = 2;  // PSC 2 Retrigger and Fault Mode for Part B
  PRFM2B2 = 2;  m_PRFM2B2 = 4;  // PSC 2 Retrigger and Fault Mode for Part B
  PRFM2B3 = 3;  m_PRFM2B3 = 8;  // PSC 2 Retrigger and Fault Mode for Part B
  PFLTE2B = 4;  m_PFLTE2B = 16;  // PSC 2 Filter Enable on Input Part B
  PELEV2B = 5;  m_PELEV2B = 32;  // PSC 2 Edge Level Selector on Input Part B
  PISEL2B = 6;  m_PISEL2B = 64;  // PSC 2 Input Select for Part B
  PCAE2B = 7;  m_PCAE2B = 128;  // PSC 2 Capture Enable Input Part B

var
  PICR0: word absolute $68;  // PSC 0 Input Capture Register 
  PICR0L: byte absolute $68;
  PICR0H: byte absolute $69;
const
  PICR00 = 0;  m_PICR00 = 1;  // PSC 0 Input Capture Bytes
  PICR01 = 1;  m_PICR01 = 2;  // PSC 0 Input Capture Bytes
  PICR02 = 2;  m_PICR02 = 4;  // PSC 0 Input Capture Bytes
  PICR03 = 3;  m_PICR03 = 8;  // PSC 0 Input Capture Bytes
  PICR04 = 4;  m_PICR04 = 16;  // PSC 0 Input Capture Bytes
  PICR05 = 5;  m_PICR05 = 32;  // PSC 0 Input Capture Bytes
  PICR06 = 6;  m_PICR06 = 64;  // PSC 0 Input Capture Bytes
  PICR07 = 7;  m_PICR07 = 128;  // PSC 0 Input Capture Bytes

type
  TPSOC0set = bitpacked set of (e_POEN0A, e_POEN0B=2, e_PSYNC00=4, e_PSYNC01, e_PISEL0B1, e_PISEL0A1);
  TPSOC0rec = bitpacked record
    POEN0A,
    ReservedBit1,
    POEN0B,
    ReservedBit3,
    PSYNC00,
    PSYNC01,
    PISEL0B1,
    PISEL0A1: TBitField;
  end;
var
  PSOC0: byte absolute $6A;  // PSC0 Synchro and Output Configuration
  PSOC0set: TPSOC0set absolute $6A;
  PSOC0rec: TPSOC0rec absolute $6A;
const
  POEN0A = 0;  m_POEN0A = 1;  // PSCOUT00 Output Enable
  POEN0B = 2;  m_POEN0B = 4;  // PSCOUT01 Output Enable
  PSYNC00 = 4;  m_PSYNC00 = 16;  // Synchronisation out for ADC selection
  PSYNC01 = 5;  m_PSYNC01 = 32;  // Synchronisation out for ADC selection
  PISEL0B1 = 6;  m_PISEL0B1 = 64;  // PSC Input Select
  PISEL0A1 = 7;  m_PISEL0A1 = 128;  // PSC Input Select

var
  PICR2: word absolute $6C;  // PSC 2 Input Capture Register
  PICR2L: byte absolute $6C;
  PICR2H: byte absolute $6D;
const
  PICR20 = 0;  m_PICR20 = 1;  // PSC 2 Input Capture Bytes
  PICR21 = 1;  m_PICR21 = 2;  // PSC 2 Input Capture Bytes
  PICR22 = 2;  m_PICR22 = 4;  // PSC 2 Input Capture Bytes
  PICR23 = 3;  m_PICR23 = 8;  // PSC 2 Input Capture Bytes
  PICR24 = 4;  m_PICR24 = 16;  // PSC 2 Input Capture Bytes
  PICR25 = 5;  m_PICR25 = 32;  // PSC 2 Input Capture Bytes
  PICR26 = 6;  m_PICR26 = 64;  // PSC 2 Input Capture Bytes
  PICR27 = 7;  m_PICR27 = 128;  // PSC 2 Input Capture Bytes

type
  TPSOC2set = bitpacked set of (e_POEN2A, e_POEN2C, e_POEN2B, e_POEN2D, e_PSYNC20, e_PSYNC21, e_POS22, e_POS23);
  TPSOC2rec = bitpacked record
    POEN2A,
    POEN2C,
    POEN2B,
    POEN2D,
    PSYNC20,
    PSYNC21,
    POS22,
    POS23: TBitField;
  end;
var
  PSOC2: byte absolute $6E;  // PSC2 Synchro and Output Configuration
  PSOC2set: TPSOC2set absolute $6E;
  PSOC2rec: TPSOC2rec absolute $6E;
const
  POEN2A = 0;  m_POEN2A = 1;  // PSCOUT20 Output Enable
  POEN2C = 1;  m_POEN2C = 2;  // PSCOUT22 Output Enable
  POEN2B = 2;  m_POEN2B = 4;  // PSCOUT21 Output Enable
  POEN2D = 3;  m_POEN2D = 8;  // PSCOUT23 Output Enable
  PSYNC20 = 4;  m_PSYNC20 = 16;  // Synchronization Out for ADC Selection
  PSYNC21 = 5;  m_PSYNC21 = 32;  // Synchronization Out for ADC Selection
  POS22 = 6;  m_POS22 = 64;  // PSC 2 Output 23 Select
  POS23 = 7;  m_POS23 = 128;  // PSC 2 Output 23 Select

type
  TPOM2set = bitpacked set of (e_POMV2A0, e_POMV2A1, e_POMV2A2, e_POMV2A3, e_POMV2B0, e_POMV2B1, e_POMV2B2, e_POMV2B3);
  TPOM2rec = bitpacked record
    POMV2A0,
    POMV2A1,
    POMV2A2,
    POMV2A3,
    POMV2B0,
    POMV2B1,
    POMV2B2,
    POMV2B3: TBitField;
  end;
var
  POM2: byte absolute $6F;  // PSC 2 Output Matrix
  POM2set: TPOM2set absolute $6F;
  POM2rec: TPOM2rec absolute $6F;
const
  POMV2A0 = 0;  m_POMV2A0 = 1;  // Output Matrix Output A Ramps
  POMV2A1 = 1;  m_POMV2A1 = 2;  // Output Matrix Output A Ramps
  POMV2A2 = 2;  m_POMV2A2 = 4;  // Output Matrix Output A Ramps
  POMV2A3 = 3;  m_POMV2A3 = 8;  // Output Matrix Output A Ramps
  POMV2B0 = 4;  m_POMV2B0 = 16;  // Output Matrix Output B Ramps
  POMV2B1 = 5;  m_POMV2B1 = 32;  // Output Matrix Output B Ramps
  POMV2B2 = 6;  m_POMV2B2 = 64;  // Output Matrix Output B Ramps
  POMV2B3 = 7;  m_POMV2B3 = 128;  // Output Matrix Output B Ramps

type
  TPCNFE2set = bitpacked set of (e_PISEL2B1, e_PISEL2A1, e_PELEV2B1, e_PELEV2A1, e_PBFM21, e_PASDLK20, e_PASDLK21, e_PASDLK22);
  TPCNFE2rec = bitpacked record
    PISEL2B1,
    PISEL2A1,
    PELEV2B1,
    PELEV2A1,
    PBFM21,
    PASDLK20,
    PASDLK21,
    PASDLK22: TBitField;
  end;
var
  PCNFE2: byte absolute $70;  // PSC 2 Enhanced Configuration Register
  PCNFE2set: TPCNFE2set absolute $70;
  PCNFE2rec: TPCNFE2rec absolute $70;
const
  PISEL2B1 = 0;  m_PISEL2B1 = 1;
  PISEL2A1 = 1;  m_PISEL2A1 = 2;
  PELEV2B1 = 2;  m_PELEV2B1 = 4;
  PELEV2A1 = 3;  m_PELEV2A1 = 8;
  PBFM21 = 4;  m_PBFM21 = 16;
  PASDLK20 = 5;  m_PASDLK20 = 32;
  PASDLK21 = 6;  m_PASDLK21 = 64;
  PASDLK22 = 7;  m_PASDLK22 = 128;

type
  TPASDLY2set = bitpacked set of (e_PASDLY20, e_PASDLY21, e_PASDLY22, e_PASDLY23, e_PASDLY24, e_PASDLY25, e_PASDLY26, e_PASDLY27);
  TPASDLY2rec = bitpacked record
    PASDLY20,
    PASDLY21,
    PASDLY22,
    PASDLY23,
    PASDLY24,
    PASDLY25,
    PASDLY26,
    PASDLY27: TBitField;
  end;
var
  PASDLY2: byte absolute $71;  // Analog Synchronization Delay Register
  PASDLY2set: TPASDLY2set absolute $71;
  PASDLY2rec: TPASDLY2rec absolute $71;
const
  PASDLY20 = 0;  m_PASDLY20 = 1;  // Analog Synchronization Delay bits
  PASDLY21 = 1;  m_PASDLY21 = 2;  // Analog Synchronization Delay bits
  PASDLY22 = 2;  m_PASDLY22 = 4;  // Analog Synchronization Delay bits
  PASDLY23 = 3;  m_PASDLY23 = 8;  // Analog Synchronization Delay bits
  PASDLY24 = 4;  m_PASDLY24 = 16;  // Analog Synchronization Delay bits
  PASDLY25 = 5;  m_PASDLY25 = 32;  // Analog Synchronization Delay bits
  PASDLY26 = 6;  m_PASDLY26 = 64;  // Analog Synchronization Delay bits
  PASDLY27 = 7;  m_PASDLY27 = 128;  // Analog Synchronization Delay bits

type
  TDACONset = bitpacked set of (e_DAEN, e_DALA=2, e_DATS0=4, e_DATS1, e_DATS2, e_DAATE);
  TDACONrec = bitpacked record
    DAEN,
    ReservedBit1,
    DALA,
    ReservedBit3,
    DATS0,
    DATS1,
    DATS2,
    DAATE: TBitField;
  end;
var
  DACON: byte absolute $76;  // DAC Control Register
  DACONset: TDACONset absolute $76;
  DACONrec: TDACONrec absolute $76;
const
  DAEN = 0;  m_DAEN = 1;  // DAC Enable Bit
  DALA = 2;  m_DALA = 4;  // DAC Left Adjust
  DATS0 = 4;  m_DATS0 = 16;  // DAC Trigger Selection Bits
  DATS1 = 5;  m_DATS1 = 32;  // DAC Trigger Selection Bits
  DATS2 = 6;  m_DATS2 = 64;  // DAC Trigger Selection Bits
  DAATE = 7;  m_DAATE = 128;  // DAC Auto Trigger Enable Bit

type
  TDIDR0set = bitpacked set of (e_ADC0D, e_ADC1D, e_ADC2D, e_ADC3D, e_ADC4D, e_ADC5D, e_ADC7D, e_ADC8D);
  TDIDR0rec = bitpacked record
    ADC0D,
    ADC1D,
    ADC2D,
    ADC3D,
    ADC4D,
    ADC5D,
    ADC7D,
    ADC8D: TBitField;
  end;
var
  DIDR0: byte absolute $77;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $77;
  DIDR0rec: TDIDR0rec absolute $77;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC0 Digital input Disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC1 Digital input Disable
  ADC2D = 2;  m_ADC2D = 4;  // ADC2 Digital input Disable
  ADC3D = 3;  m_ADC3D = 8;  // ADC3 Digital input Disable
  ADC4D = 4;  m_ADC4D = 16;  // ADC4 Digital input Disable
  ADC5D = 5;  m_ADC5D = 32;  // ADC5 Digital input Disable
  ADC7D = 6;  m_ADC7D = 64;  // ADC7 Digital input Disable
  ADC8D = 7;  m_ADC8D = 128;  // ADC8 Digital input Disable

type
  TDIDR1set = bitpacked set of (e_ADC9D, e_ADC10D, e_AMP0PD, e_ACMP1MD);
  TDIDR1rec = bitpacked record
    ADC9D,
    ADC10D,
    AMP0PD,
    ACMP1MD,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR1: byte absolute $78;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $78;
  DIDR1rec: TDIDR1rec absolute $78;
const
  ADC9D = 0;  m_ADC9D = 1;  // ADC9 Digital input Disable
  ADC10D = 1;  m_ADC10D = 2;  // ADC10 Digital input Disable
  AMP0PD = 2;  m_AMP0PD = 4;
  ACMP1MD = 3;  m_ACMP1MD = 8;

type
  TAMP0CSRset = bitpacked set of (e_AMP0TS0, e_AMP0TS1, e_AMP0GS=3, e_AMP0G0, e_AMP0G1, e_AMP0IS, e_AMP0EN);
  TAMP0CSRrec = bitpacked record
    AMP0TS0,
    AMP0TS1,
    ReservedBit2,
    AMP0GS,
    AMP0G0,
    AMP0G1,
    AMP0IS,
    AMP0EN: TBitField;
  end;
var
  AMP0CSR: byte absolute $79;
  AMP0CSRset: TAMP0CSRset absolute $79;
  AMP0CSRrec: TAMP0CSRrec absolute $79;
const
  AMP0TS0 = 0;  m_AMP0TS0 = 1;
  AMP0TS1 = 1;  m_AMP0TS1 = 2;
  AMP0GS = 3;  m_AMP0GS = 8;
  AMP0G0 = 4;  m_AMP0G0 = 16;
  AMP0G1 = 5;  m_AMP0G1 = 32;
  AMP0IS = 6;  m_AMP0IS = 64;
  AMP0EN = 7;  m_AMP0EN = 128;

type
  TAC1ECONset = bitpacked set of (e_AC1H0, e_AC1H1, e_AC1H2, e_AC1ICE, e_AC1OE, e_AC1OI);
  TAC1ECONrec = bitpacked record
    AC1H0,
    AC1H1,
    AC1H2,
    AC1ICE,
    AC1OE,
    AC1OI,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  AC1ECON: byte absolute $7A;
  AC1ECONset: TAC1ECONset absolute $7A;
  AC1ECONrec: TAC1ECONrec absolute $7A;
const
  AC1H0 = 0;  m_AC1H0 = 1;  // Analog Comparator Hysteresis Select
  AC1H1 = 1;  m_AC1H1 = 2;  // Analog Comparator Hysteresis Select
  AC1H2 = 2;  m_AC1H2 = 4;  // Analog Comparator Hysteresis Select
  AC1ICE = 3;  m_AC1ICE = 8;  // Analog Comparator Interrupt Capture Enable
  AC1OE = 4;  m_AC1OE = 16;  // Analog Comparator Ouput Enable
  AC1OI = 5;  m_AC1OI = 32;  // Analog Comparator Ouput Invert

type
  TAC2ECONset = bitpacked set of (e_AC2H0, e_AC2H1, e_AC2H2, e_AC2OE=4, e_AC2OI);
  TAC2ECONrec = bitpacked record
    AC2H0,
    AC2H1,
    AC2H2,
    ReservedBit3,
    AC2OE,
    AC2OI,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  AC2ECON: byte absolute $7B;
  AC2ECONset: TAC2ECONset absolute $7B;
  AC2ECONrec: TAC2ECONrec absolute $7B;
const
  AC2H0 = 0;  m_AC2H0 = 1;  // Analog Comparator Hysteresis Select
  AC2H1 = 1;  m_AC2H1 = 2;  // Analog Comparator Hysteresis Select
  AC2H2 = 2;  m_AC2H2 = 4;  // Analog Comparator Hysteresis Select
  AC2OE = 4;  m_AC2OE = 16;  // Analog Comparator Ouput Enable
  AC2OI = 5;  m_AC2OI = 32;  // Analog Comparator Ouput Invert

type
  TAC3ECONset = bitpacked set of (e_AC3H0, e_AC3H1, e_AC3H2, e_AC3OE=4, e_AC3OI);
  TAC3ECONrec = bitpacked record
    AC3H0,
    AC3H1,
    AC3H2,
    ReservedBit3,
    AC3OE,
    AC3OI,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  AC3ECON: byte absolute $7C;
  AC3ECONset: TAC3ECONset absolute $7C;
  AC3ECONrec: TAC3ECONrec absolute $7C;
const
  AC3H0 = 0;  m_AC3H0 = 1;  // Analog Comparator Hysteresis Select
  AC3H1 = 1;  m_AC3H1 = 2;  // Analog Comparator Hysteresis Select
  AC3H2 = 2;  m_AC3H2 = 4;  // Analog Comparator Hysteresis Select
  AC3OE = 4;  m_AC3OE = 16;  // Analog Comparator Ouput Enable
  AC3OI = 5;  m_AC3OI = 32;  // Analog Comparator Ouput Invert

type
  TAC1CONset = bitpacked set of (e_AC1M0, e_AC1M1, e_AC1M2, e_AC1IS0=4, e_AC1IS1, e_AC1IE, e_AC1EN);
  TAC1CONrec = bitpacked record
    AC1M0,
    AC1M1,
    AC1M2,
    ReservedBit3,
    AC1IS0,
    AC1IS1,
    AC1IE,
    AC1EN: TBitField;
  end;
var
  AC1CON: byte absolute $7D;  // Analog Comparator 1 Control Register
  AC1CONset: TAC1CONset absolute $7D;
  AC1CONrec: TAC1CONrec absolute $7D;
const
  AC1M0 = 0;  m_AC1M0 = 1;  // Analog Comparator 1 Multiplexer Register
  AC1M1 = 1;  m_AC1M1 = 2;  // Analog Comparator 1 Multiplexer Register
  AC1M2 = 2;  m_AC1M2 = 4;  // Analog Comparator 1 Multiplexer Register
  AC1IS0 = 4;  m_AC1IS0 = 16;  // Analog Comparator 1  Interrupt Select Bit
  AC1IS1 = 5;  m_AC1IS1 = 32;  // Analog Comparator 1  Interrupt Select Bit
  AC1IE = 6;  m_AC1IE = 64;  // Analog Comparator 1 Interrupt Enable Bit
  AC1EN = 7;  m_AC1EN = 128;  // Analog Comparator 1 Enable Bit

type
  TAC2CONset = bitpacked set of (e_AC2M0, e_AC2M1, e_AC2M2, e_AC2IS0=4, e_AC2IS1, e_AC2IE, e_AC2EN);
  TAC2CONrec = bitpacked record
    AC2M0,
    AC2M1,
    AC2M2,
    ReservedBit3,
    AC2IS0,
    AC2IS1,
    AC2IE,
    AC2EN: TBitField;
  end;
var
  AC2CON: byte absolute $7E;  // Analog Comparator 2 Control Register
  AC2CONset: TAC2CONset absolute $7E;
  AC2CONrec: TAC2CONrec absolute $7E;
const
  AC2M0 = 0;  m_AC2M0 = 1;  // Analog Comparator 2 Multiplexer Register
  AC2M1 = 1;  m_AC2M1 = 2;  // Analog Comparator 2 Multiplexer Register
  AC2M2 = 2;  m_AC2M2 = 4;  // Analog Comparator 2 Multiplexer Register
  AC2IS0 = 4;  m_AC2IS0 = 16;  // Analog Comparator 2  Interrupt Select Bit
  AC2IS1 = 5;  m_AC2IS1 = 32;  // Analog Comparator 2  Interrupt Select Bit
  AC2IE = 6;  m_AC2IE = 64;  // Analog Comparator 2 Interrupt Enable Bit
  AC2EN = 7;  m_AC2EN = 128;  // Analog Comparator 2 Enable Bit

type
  TAC3CONset = bitpacked set of (e_AC3M0, e_AC3M1, e_AC3M2, e_AC3OEA, e_AC3IS0, e_AC3IS1, e_AC3IE, e_AC3EN);
  TAC3CONrec = bitpacked record
    AC3M0,
    AC3M1,
    AC3M2,
    AC3OEA,
    AC3IS0,
    AC3IS1,
    AC3IE,
    AC3EN: TBitField;
  end;
var
  AC3CON: byte absolute $7F;  // Analog Comparator3 Control Register
  AC3CONset: TAC3CONset absolute $7F;
  AC3CONrec: TAC3CONrec absolute $7F;
const
  AC3M0 = 0;  m_AC3M0 = 1;  // Analog Comparator 3 Multiplexer Register
  AC3M1 = 1;  m_AC3M1 = 2;  // Analog Comparator 3 Multiplexer Register
  AC3M2 = 2;  m_AC3M2 = 4;  // Analog Comparator 3 Multiplexer Register
  AC3OEA = 3;  m_AC3OEA = 8;  // Analog Comparator 3 Alternate Output Enable
  AC3IS0 = 4;  m_AC3IS0 = 16;  // Analog Comparator 3  Interrupt Select Bit
  AC3IS1 = 5;  m_AC3IS1 = 32;  // Analog Comparator 3  Interrupt Select Bit
  AC3IE = 6;  m_AC3IE = 64;  // Analog Comparator 3 Interrupt Enable Bit
  AC3EN = 7;  m_AC3EN = 128;  // Analog Comparator3 Enable Bit

type
  TBGCRRset = bitpacked set of (e_BGCR0, e_BGCR1, e_BGCR2, e_BGCR3);
  TBGCRRrec = bitpacked record
    BGCR0,
    BGCR1,
    BGCR2,
    BGCR3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BGCRR: byte absolute $80;  // BandGap Resistor Calibration Register
  BGCRRset: TBGCRRset absolute $80;
  BGCRRrec: TBGCRRrec absolute $80;
const
  BGCR0 = 0;  m_BGCR0 = 1;
  BGCR1 = 1;  m_BGCR1 = 2;
  BGCR2 = 2;  m_BGCR2 = 4;
  BGCR3 = 3;  m_BGCR3 = 8;

type
  TBGCCRset = bitpacked set of (e_BGCC0, e_BGCC1, e_BGCC2, e_BGCC3);
  TBGCCRrec = bitpacked record
    BGCC0,
    BGCC1,
    BGCC2,
    BGCC3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BGCCR: byte absolute $81;  // BandGap Current Calibration Register
  BGCCRset: TBGCCRset absolute $81;
  BGCCRrec: TBGCCRrec absolute $81;
const
  BGCC0 = 0;  m_BGCC0 = 1;
  BGCC1 = 1;  m_BGCC1 = 2;
  BGCC2 = 2;  m_BGCC2 = 4;
  BGCC3 = 3;  m_BGCC3 = 8;

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
  WDTCSR: byte absolute $82;  // Watchdog Timer Control Register
  WDTCSRset: TWDTCSRset absolute $82;
  WDTCSRrec: TWDTCSRrec absolute $82;
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
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLKPS3, e_CLKPCE=7);
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
  CLKPR: byte absolute $83;
  CLKPRset: TCLKPRset absolute $83;
  CLKPRrec: TCLKPRrec absolute $83;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;
  CLKPS1 = 1;  m_CLKPS1 = 2;
  CLKPS2 = 2;  m_CLKPS2 = 4;
  CLKPS3 = 3;  m_CLKPS3 = 8;
  CLKPCE = 7;  m_CLKPCE = 128;

type
  TCLKCSRset = bitpacked set of (e_CLKC0, e_CLKC1, e_CLKC2, e_CLKC3, e_CLKRDY, e_CLKCCE=7);
  TCLKCSRrec = bitpacked record
    CLKC0,
    CLKC1,
    CLKC2,
    CLKC3,
    CLKRDY,
    ReservedBit5,
    ReservedBit6,
    CLKCCE: TBitField;
  end;
var
  CLKCSR: byte absolute $84;
  CLKCSRset: TCLKCSRset absolute $84;
  CLKCSRrec: TCLKCSRrec absolute $84;
const
  CLKC0 = 0;  m_CLKC0 = 1;  // Clock Control
  CLKC1 = 1;  m_CLKC1 = 2;  // Clock Control
  CLKC2 = 2;  m_CLKC2 = 4;  // Clock Control
  CLKC3 = 3;  m_CLKC3 = 8;  // Clock Control
  CLKRDY = 4;  m_CLKRDY = 16;  // Clock Ready Flag
  CLKCCE = 7;  m_CLKCCE = 128;  // Clock Control Change Enable

type
  TCLKSELRset = bitpacked set of (e_CKSEL0, e_CKSEL1, e_CKSEL2, e_CKSEL3, e_CSUT0, e_CSUT1, e_COUT);
  TCLKSELRrec = bitpacked record
    CKSEL0,
    CKSEL1,
    CKSEL2,
    CKSEL3,
    CSUT0,
    CSUT1,
    COUT,
    ReservedBit7: TBitField;
  end;
var
  CLKSELR: byte absolute $85;
  CLKSELRset: TCLKSELRset absolute $85;
  CLKSELRrec: TCLKSELRrec absolute $85;
const
  CKSEL0 = 0;  m_CKSEL0 = 1;  // Clock Source Select
  CKSEL1 = 1;  m_CKSEL1 = 2;  // Clock Source Select
  CKSEL2 = 2;  m_CKSEL2 = 4;  // Clock Source Select
  CKSEL3 = 3;  m_CKSEL3 = 8;  // Clock Source Select
  CSUT0 = 4;  m_CSUT0 = 16;  // Clock Start up Time
  CSUT1 = 5;  m_CSUT1 = 32;  // Clock Start up Time
  COUT = 6;  m_COUT = 64;  // Clock OUT

type
  TPRRset = bitpacked set of (e_PRADC, e_PRSPI=2, e_PRTIM1=4, e_PRPSCR, e_PRPSC2=7);
  TPRRrec = bitpacked record
    PRADC,
    ReservedBit1,
    PRSPI,
    ReservedBit3,
    PRTIM1,
    PRPSCR,
    ReservedBit6,
    PRPSC2: TBitField;
  end;
var
  PRR: byte absolute $86;  // Power Reduction Register
  PRRset: TPRRset absolute $86;
  PRRrec: TPRRrec absolute $86;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRSPI = 2;  m_PRSPI = 4;  // Power Reduction Serial Peripheral Interface
  PRTIM1 = 4;  m_PRTIM1 = 16;  // Power Reduction Timer/Counter1
  PRPSCR = 5;  m_PRPSCR = 32;  // Power Reduction PSC0
  PRPSC2 = 7;  m_PRPSC2 = 128;  // Power Reduction PSC2

type
  TPLLCSRset = bitpacked set of (e_PLOCK, e_PLLE, e_PLLF0, e_PLLF1, e_PLLF2, e_PLLF3);
  TPLLCSRrec = bitpacked record
    PLOCK,
    PLLE,
    PLLF0,
    PLLF1,
    PLLF2,
    PLLF3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PLLCSR: byte absolute $87;  // PLL Control And Status Register
  PLLCSRset: TPLLCSRset absolute $87;
  PLLCSRrec: TPLLCSRrec absolute $87;
const
  PLOCK = 0;  m_PLOCK = 1;  // PLL Lock Detector
  PLLE = 1;  m_PLLE = 2;  // PLL Enable
  PLLF0 = 2;  m_PLLF0 = 4;
  PLLF1 = 3;  m_PLLF1 = 8;
  PLLF2 = 4;  m_PLLF2 = 16;
  PLLF3 = 5;  m_PLLF3 = 32;

type
  TOSCCALset = bitpacked set of (e_OSCCAL0, e_OSCCAL1, e_OSCCAL2, e_OSCCAL3, e_OSCCAL4, e_OSCCAL5, e_OSCCAL6, e_OSCCAL7);
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
  OSCCAL: byte absolute $88;  // Oscillator Calibration Value
  OSCCALset: TOSCCALset absolute $88;
  OSCCALrec: TOSCCALrec absolute $88;
const
  OSCCAL0 = 0;  m_OSCCAL0 = 1;  // Oscillator Calibration 
  OSCCAL1 = 1;  m_OSCCAL1 = 2;  // Oscillator Calibration 
  OSCCAL2 = 2;  m_OSCCAL2 = 4;  // Oscillator Calibration 
  OSCCAL3 = 3;  m_OSCCAL3 = 8;  // Oscillator Calibration 
  OSCCAL4 = 4;  m_OSCCAL4 = 16;  // Oscillator Calibration 
  OSCCAL5 = 5;  m_OSCCAL5 = 32;  // Oscillator Calibration 
  OSCCAL6 = 6;  m_OSCCAL6 = 64;  // Oscillator Calibration 
  OSCCAL7 = 7;  m_OSCCAL7 = 128;  // Oscillator Calibration

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
  EICRA: byte absolute $89;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $89;
  EICRArec: TEICRArec absolute $89;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control Bit
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control Bit
  ISC10 = 2;  m_ISC10 = 4;  // External Interrupt Sense Control Bit
  ISC11 = 3;  m_ISC11 = 8;  // External Interrupt Sense Control Bit
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt Sense Control Bit
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt Sense Control Bit

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_WGM13=4, e_ICES1=6, e_ICNC1);
  TTCCR1Brec = bitpacked record
    CS10,
    CS11,
    CS12,
    ReservedBit3,
    WGM13,
    ReservedBit5,
    ICES1,
    ICNC1: TBitField;
  end;
var
  TCCR1B: byte absolute $8A;  // Timer/Counter1 Control Register B
  TCCR1Bset: TTCCR1Bset absolute $8A;
  TCCR1Brec: TTCCR1Brec absolute $8A;
const
  CS10 = 0;  m_CS10 = 1;  // Prescaler source of Timer/Counter 1
  CS11 = 1;  m_CS11 = 2;  // Prescaler source of Timer/Counter 1
  CS12 = 2;  m_CS12 = 4;  // Prescaler source of Timer/Counter 1
  WGM13 = 4;  m_WGM13 = 16;  // Waveform Generation Mode
  ICES1 = 6;  m_ICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  m_ICNC1 = 128;  // Input Capture 1 Noise Canceler

var
  ICR1: word absolute $8C;  // Timer/Counter1 Input Capture Register Bytes
  ICR1L: byte absolute $8C;
  ICR1H: byte absolute $8D;
const
  ICR10 = 0;  m_ICR10 = 1;  // Timer/Counter1 Input Capture bits
  ICR11 = 1;  m_ICR11 = 2;  // Timer/Counter1 Input Capture bits
  ICR12 = 2;  m_ICR12 = 4;  // Timer/Counter1 Input Capture bits
  ICR13 = 3;  m_ICR13 = 8;  // Timer/Counter1 Input Capture bits
  ICR14 = 4;  m_ICR14 = 16;  // Timer/Counter1 Input Capture bits
  ICR15 = 5;  m_ICR15 = 32;  // Timer/Counter1 Input Capture bits
  ICR16 = 6;  m_ICR16 = 64;  // Timer/Counter1 Input Capture bits
  ICR17 = 7;  m_ICR17 = 128;  // Timer/Counter1 Input Capture bits
  // typedefs = 61

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure PSC2_CAPT_ISR; external name 'PSC2_CAPT_ISR'; // Interrupt 1 PSC2 Capture Event
procedure PSC2_EC_ISR; external name 'PSC2_EC_ISR'; // Interrupt 2 PSC2 End Cycle
procedure PSC2_EEC_ISR; external name 'PSC2_EEC_ISR'; // Interrupt 3 PSC2 End Of Enhanced Cycle
procedure PSC0_CAPT_ISR; external name 'PSC0_CAPT_ISR'; // Interrupt 4 PSC0 Capture Event
procedure PSC0_EC_ISR; external name 'PSC0_EC_ISR'; // Interrupt 5 PSC0 End Cycle
procedure PSC0_EEC_ISR; external name 'PSC0_EEC_ISR'; // Interrupt 6 PSC0 End Of Enhanced Cycle
procedure ANALOG_COMP_1_ISR; external name 'ANALOG_COMP_1_ISR'; // Interrupt 7 Analog Comparator 1
procedure ANALOG_COMP_2_ISR; external name 'ANALOG_COMP_2_ISR'; // Interrupt 8 Analog Comparator 2
procedure ANALOG_COMP_3_ISR; external name 'ANALOG_COMP_3_ISR'; // Interrupt 9 Analog Comparator 3
procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 10 External Interrupt Request 0
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 11 Timer/Counter1 Capture Event
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 12 Timer/Counter1 Overflow
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 13 ADC Conversion Complete
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 14 External Interrupt Request 1
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 15 SPI Serial Transfer Complet
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 16 External Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 17 Watchdog Timeout Interrupt
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 18 EEPROM Ready
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 19 Store Program Memory Read

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp PSC2_CAPT_ISR
  rjmp PSC2_EC_ISR
  rjmp PSC2_EEC_ISR
  rjmp PSC0_CAPT_ISR
  rjmp PSC0_EC_ISR
  rjmp PSC0_EEC_ISR
  rjmp ANALOG_COMP_1_ISR
  rjmp ANALOG_COMP_2_ISR
  rjmp ANALOG_COMP_3_ISR
  rjmp INT0_ISR
  rjmp TIMER1_CAPT_ISR
  rjmp TIMER1_OVF_ISR
  rjmp ADC_ISR
  rjmp INT1_ISR
  rjmp SPI_STC_ISR
  rjmp INT2_ISR
  rjmp WDT_ISR
  rjmp EE_READY_ISR
  rjmp SPM_READY_ISR

  {$i start.inc}

  .weak PSC2_CAPT_ISR
  .weak PSC2_EC_ISR
  .weak PSC2_EEC_ISR
  .weak PSC0_CAPT_ISR
  .weak PSC0_EC_ISR
  .weak PSC0_EEC_ISR
  .weak ANALOG_COMP_1_ISR
  .weak ANALOG_COMP_2_ISR
  .weak ANALOG_COMP_3_ISR
  .weak INT0_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_OVF_ISR
  .weak ADC_ISR
  .weak INT1_ISR
  .weak SPI_STC_ISR
  .weak INT2_ISR
  .weak WDT_ISR
  .weak EE_READY_ISR
  .weak SPM_READY_ISR

  .set PSC2_CAPT_ISR, Default_IRQ_handler
  .set PSC2_EC_ISR, Default_IRQ_handler
  .set PSC2_EEC_ISR, Default_IRQ_handler
  .set PSC0_CAPT_ISR, Default_IRQ_handler
  .set PSC0_EC_ISR, Default_IRQ_handler
  .set PSC0_EEC_ISR, Default_IRQ_handler
  .set ANALOG_COMP_1_ISR, Default_IRQ_handler
  .set ANALOG_COMP_2_ISR, Default_IRQ_handler
  .set ANALOG_COMP_3_ISR, Default_IRQ_handler
  .set INT0_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
