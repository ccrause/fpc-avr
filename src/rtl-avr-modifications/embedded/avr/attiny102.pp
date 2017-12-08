unit ATtiny102;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINA: byte absolute $00;  // Input Pins, Port A
  DDRA: byte absolute $01;  // Data Direction Register, Port A

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
  PORTA: byte absolute $02;  // Port A Data register
  PORTAset: TPORTAset absolute $02;
  PORTArec: TPORTArec absolute $02;
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
  PUEA: byte absolute $03;  // Pull-up Enable Control Register for PORTA
  PINB: byte absolute $04;  // Input Pins, Port B
  DDRB: byte absolute $05;  // Data Direction Register, Port B

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
  PORTB: byte absolute $06;  // Port B Data register
  PORTBset: TPORTBset absolute $06;
  PORTBrec: TPORTBrec absolute $06;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;

var
  PUEB: byte absolute $07;  // Pull-up Enable Control Register for PORTB
  UDR: byte absolute $08;  // USART I/O Data Register
  UBRR: word absolute $09;  // USART Baud Rate Register  Bytes
  UBRRL: byte absolute $09;
  UBRRH: byte absolute $0A;

type
  TUCSRDset = bitpacked set of (e_SFDE=5, e_RXS, e_RXSIE);
  TUCSRDrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    SFDE,
    RXS,
    RXSIE: TBitField;
  end;
var
  UCSRD: byte absolute $0B;  // USART Control and Status Register D
  UCSRDset: TUCSRDset absolute $0B;
  UCSRDrec: TUCSRDrec absolute $0B;
const
  SFDE = 5;  m_SFDE = 32;  // Start frame detection enable
  RXS = 6;  m_RXS = 64;  // USART RX Start Flag
  RXSIE = 7;  m_RXSIE = 128;  // USART RX Start Interrupt Enable

type
  TUCSRCset = bitpacked set of (e_UCPOL, e_UCSZ0, e_UCSZ1, e_USBS, e_UPM0, e_UPM1, e_UMSEL0, e_UMSEL1);
  TUCSRCrec = bitpacked record
    UCPOL,
    UCSZ0,
    UCSZ1,
    USBS,
    UPM0,
    UPM1,
    UMSEL0,
    UMSEL1: TBitField;
  end;
var
  UCSRC: byte absolute $0C;  // USART Control and Status Register C
  UCSRCset: TUCSRCset absolute $0C;
  UCSRCrec: TUCSRCrec absolute $0C;
const
  UCPOL = 0;  m_UCPOL = 1;  // Clock Polarity
  UCSZ0 = 1;  m_UCSZ0 = 2;  // Character Size
  UCSZ1 = 2;  m_UCSZ1 = 4;  // Character Size
  USBS = 3;  m_USBS = 8;  // Stop Bit Select
  UPM0 = 4;  m_UPM0 = 16;  // Parity Mode Bits
  UPM1 = 5;  m_UPM1 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select
  UMSEL1 = 7;  m_UMSEL1 = 128;  // USART Mode Select

type
  TUCSRBset = bitpacked set of (e_TXB8, e_RXB8, e_UCSZ2, e_TXEN, e_RXEN, e_UDRIE, e_TXCIE, e_RXCIE);
  TUCSRBrec = bitpacked record
    TXB8,
    RXB8,
    UCSZ2,
    TXEN,
    RXEN,
    UDRIE,
    TXCIE,
    RXCIE: TBitField;
  end;
var
  UCSRB: byte absolute $0D;  // USART Control and Status Register B
  UCSRBset: TUCSRBset absolute $0D;
  UCSRBrec: TUCSRBrec absolute $0D;
const
  TXB8 = 0;  m_TXB8 = 1;  // Transmit Data Bit 8
  RXB8 = 1;  m_RXB8 = 2;  // Receive Data Bit 8
  UCSZ2 = 2;  m_UCSZ2 = 4;  // Character Size
  TXEN = 3;  m_TXEN = 8;  // Transmitter Enable
  RXEN = 4;  m_RXEN = 16;  // Receiver Enable
  UDRIE = 5;  m_UDRIE = 32;  // USART Data register Empty Interrupt Enable
  TXCIE = 6;  m_TXCIE = 64;  // TX Complete Interrupt Enable
  RXCIE = 7;  m_RXCIE = 128;  // RX Complete Interrupt Enable

type
  TUCSRAset = bitpacked set of (e_MPCM, e_U2X, e_UPE, e_DOR, e_FE, e_UDRE, e_TXC, e_RXC);
  TUCSRArec = bitpacked record
    MPCM,
    U2X,
    UPE,
    DOR,
    FE,
    UDRE,
    TXC,
    RXC: TBitField;
  end;
var
  UCSRA: byte absolute $0E;  // USART Control and Status Register A
  UCSRAset: TUCSRAset absolute $0E;
  UCSRArec: TUCSRArec absolute $0E;
const
  MPCM = 0;  m_MPCM = 1;  // Multi-processor Communication Mode
  U2X = 1;  m_U2X = 2;  // Double the USART transmission speed
  UPE = 2;  m_UPE = 4;  // Parity Error
  DOR = 3;  m_DOR = 8;  // Data overRun
  FE = 4;  m_FE = 16;  // Framing Error
  UDRE = 5;  m_UDRE = 32;  // USART Data Register Empty
  TXC = 6;  m_TXC = 64;  // USART Transmitt Complete
  RXC = 7;  m_RXC = 128;  // USART Receive Complete

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
  PCMSK0: byte absolute $0F;  // Pin Change Mask Register 0
  PCMSK0set: TPCMSK0set absolute $0F;
  PCMSK0rec: TPCMSK0rec absolute $0F;
const
  PCINT0 = 0;  m_PCINT0 = 1;  // Pin Change Enable Mask 0 Bit 0
  PCINT1 = 1;  m_PCINT1 = 2;  // Pin Change Enable Mask 0 Bit 1
  PCINT2 = 2;  m_PCINT2 = 4;  // Pin Change Enable Mask 0 Bit 2
  PCINT3 = 3;  m_PCINT3 = 8;  // Pin Change Enable Mask 0 Bit 3
  PCINT4 = 4;  m_PCINT4 = 16;  // Pin Change Enable Mask 0 Bit 4
  PCINT5 = 5;  m_PCINT5 = 32;  // Pin Change Enable Mask 0 Bit 5
  PCINT6 = 6;  m_PCINT6 = 64;  // Pin Change Enable Mask 0 Bit 6
  PCINT7 = 7;  m_PCINT7 = 128;  // Pin Change Enable Mask 0 Bit 7

type
  TPCMSK1set = bitpacked set of (e_PCINT8, e_PCINT9, e_PCINT10, e_PCINT11);
  TPCMSK1rec = bitpacked record
    PCINT8,
    PCINT9,
    PCINT10,
    PCINT11,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCMSK1: byte absolute $10;  // Pin Change Mask Register 1
  PCMSK1set: TPCMSK1set absolute $10;
  PCMSK1rec: TPCMSK1rec absolute $10;
const
  PCINT8 = 0;  m_PCINT8 = 1;  // Pin Change Enable Mask 1 Bit 0
  PCINT9 = 1;  m_PCINT9 = 2;  // Pin Change Enable Mask 1 Bit 1
  PCINT10 = 2;  m_PCINT10 = 4;  // Pin Change Enable Mask 1 Bit 2
  PCINT11 = 3;  m_PCINT11 = 8;  // Pin Change Enable Mask 1 Bit 3

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
  PCIFR: byte absolute $11;  // Pin Change Interrupt Flag Register
  PCIFRset: TPCIFRset absolute $11;
  PCIFRrec: TPCIFRrec absolute $11;
const
  PCIF0 = 0;  m_PCIF0 = 1;  // Pin Change Interrupt Flag 0
  PCIF1 = 1;  m_PCIF1 = 2;  // Pin Change Interrupt Flag 1

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
  PCICR: byte absolute $12;  // Pin Change Interrupt Control Register
  PCICRset: TPCICRset absolute $12;
  PCICRrec: TPCICRrec absolute $12;
const
  PCIE0 = 0;  m_PCIE0 = 1;  // Pin Change Interrupt Enable 0
  PCIE1 = 1;  m_PCIE1 = 2;  // Pin Change Interrupt Enable 1

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
  EIMSK: byte absolute $13;  // External Interrupt Mask register
  EIMSKset: TEIMSKset absolute $13;
  EIMSKrec: TEIMSKrec absolute $13;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 0 Enable

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
  EIFR: byte absolute $14;  // External Interrupt Flag register
  EIFRset: TEIFRset absolute $14;
  EIFRrec: TEIFRrec absolute $14;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flag 0

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
  EICRA: byte absolute $15;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $15;
  EICRArec: TEICRArec absolute $15;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 Bit 1

type
  TPORTCRset = bitpacked set of (e_BBMA, e_BBMB);
  TPORTCRrec = bitpacked record
    BBMA,
    BBMB,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTCR: byte absolute $16;  // Port Control Register
  PORTCRset: TPORTCRset absolute $16;
  PORTCRrec: TPORTCRrec absolute $16;
const
  BBMA = 0;  m_BBMA = 1;  // Break-Before-Make Mode Enable for PORTA
  BBMB = 1;  m_BBMB = 2;  // Break-Before-Make Mode Enable for PORTB

type
  TDIDR0set = bitpacked set of (e_ADC0D, e_ADC1D, e_ADC2D, e_ADC3D, e_ADC4D, e_ADC5D, e_ADC6D, e_ADC7D);
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
  DIDR0: byte absolute $17;
  DIDR0set: TDIDR0set absolute $17;
  DIDR0rec: TDIDR0rec absolute $17;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC0 Digital Input Disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC1 Digital Input Disable
  ADC2D = 2;  m_ADC2D = 4;  // ADC2 Digital Input Disable
  ADC3D = 3;  m_ADC3D = 8;  // ADC3 Digital Input Disable
  ADC4D = 4;  m_ADC4D = 16;  // ADC4 Digital Input Disable
  ADC5D = 5;  m_ADC5D = 32;  // ADC5 Digital Input Disable
  ADC6D = 6;  m_ADC6D = 64;  // ADC6 Digital Input Disable
  ADC7D = 7;  m_ADC7D = 128;  // ADC7 Digital Input Disable

var
  ADCL: byte absolute $19;  // ADC Data Register Low
  ADCH: byte absolute $1A;  // ADC Data Register High

type
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_REFS0=6, e_REFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    REFS0,
    REFS1: TBitField;
  end;
var
  ADMUX: byte absolute $1B;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $1B;
  ADMUXrec: TADMUXrec absolute $1B;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel Selection Bits
  REFS0 = 6;  m_REFS0 = 64;  // Analog Reference voltage Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Analog Reference voltage Selection Bits

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADLAR=7);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ADLAR: TBitField;
  end;
var
  ADCSRB: byte absolute $1C;  // The ADC Control and Status register B
  ADCSRBset: TADCSRBset absolute $1C;
  ADCSRBrec: TADCSRBrec absolute $1C;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source bits
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source bits
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source bits
  ADLAR = 7;  m_ADLAR = 128;  // Left Adjustment for ADC Result Readout

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
  ADCSRA: byte absolute $1D;  // The ADC Control and Status register A
  ADCSRAset: TADCSRAset absolute $1D;
  ADCSRArec: TADCSRArec absolute $1D;
const
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC  Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC  Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC  Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC  Auto Trigger Enable
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

type
  TACSRBset = bitpacked set of (e_ACPMUX, e_ACOE);
  TACSRBrec = bitpacked record
    ACPMUX,
    ACOE,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ACSRB: byte absolute $1E;  // Analog Comparator Control And Status Register B
  ACSRBset: TACSRBset absolute $1E;
  ACSRBrec: TACSRBrec absolute $1E;
const
  ACPMUX = 0;  m_ACPMUX = 1;  // Analog Comparator positive input selection bit
  ACOE = 1;  m_ACOE = 2;  // Analog Comparator Output Enable

type
  TACSRAset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIC, e_ACIE, e_ACI, e_ACO, e_ACBG, e_ACD);
  TACSRArec = bitpacked record
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
  ACSRA: byte absolute $1F;  // Analog Comparator Control And Status Register A
  ACSRAset: TACSRAset absolute $1F;
  ACSRArec: TACSRArec absolute $1F;
const
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIC = 2;  m_ACIC = 4;  // Analog Comparator Input Capture  Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap enable
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

var
  ICR0: word absolute $22;  // Input Capture Register  Bytes
  ICR0L: byte absolute $22;
  ICR0H: byte absolute $23;
  OCR0B: word absolute $24;  // Timer/Counter0 Output Compare Register B 
  OCR0BL: byte absolute $24;
  OCR0BH: byte absolute $25;
  OCR0A: word absolute $26;  // Timer/Counter 0 Output Compare Register A 
  OCR0AL: byte absolute $26;
  OCR0AH: byte absolute $27;
  TCNT0: word absolute $28;  // Timer/Counter0 
  TCNT0L: byte absolute $28;
  TCNT0H: byte absolute $29;

type
  TTIFR0set = bitpacked set of (e_TOV0, e_OCF0A, e_OCF0B, e_ICF0=5);
  TTIFR0rec = bitpacked record
    TOV0,
    OCF0A,
    OCF0B,
    ReservedBit3,
    ReservedBit4,
    ICF0,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR0: byte absolute $2A;  // Overflow Interrupt Enable
  TIFR0set: TTIFR0set absolute $2A;
  TIFR0rec: TTIFR0rec absolute $2A;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer Output Compare Flag 0A
  OCF0B = 2;  m_OCF0B = 4;  // Timer Output Compare Flag 0B
  ICF0 = 5;  m_ICF0 = 32;  // Input Capture Flag

type
  TTIMSK0set = bitpacked set of (e_TOIE0, e_OCIE0A, e_OCIE0B, e_ICIE0=5);
  TTIMSK0rec = bitpacked record
    TOIE0,
    OCIE0A,
    OCIE0B,
    ReservedBit3,
    ReservedBit4,
    ICIE0,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK0: byte absolute $2B;  // Timer Interrupt Mask Register 0
  TIMSK0set: TTIMSK0set absolute $2B;
  TIMSK0rec: TTIMSK0rec absolute $2B;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Output Compare A Match Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Output Compare B Match Interrupt Enable
  ICIE0 = 5;  m_ICIE0 = 32;  // Input Capture Interrupt Enable

type
  TTCCR0Cset = bitpacked set of (e_FOC0B=6, e_FOC0A);
  TTCCR0Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    FOC0B,
    FOC0A: TBitField;
  end;
var
  TCCR0C: byte absolute $2C;  // Timer/Counter 0 Control Register C
  TCCR0Cset: TTCCR0Cset absolute $2C;
  TCCR0Crec: TTCCR0Crec absolute $2C;
const
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare for Channel B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare for Channel A

type
  TTCCR0Bset = bitpacked set of (e_CS00, e_CS01, e_CS02, e_ICES0=6, e_ICNC0);
  TTCCR0Brec = bitpacked record
    CS00,
    CS01,
    CS02,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES0,
    ICNC0: TBitField;
  end;
var
  TCCR0B: byte absolute $2D;  // Timer/Counter 0 Control Register B
  TCCR0Bset: TTCCR0Bset absolute $2D;
  TCCR0Brec: TTCCR0Brec absolute $2D;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  ICES0 = 6;  m_ICES0 = 64;  // Input Capture Edge Select
  ICNC0 = 7;  m_ICNC0 = 128;  // Input Capture Noise Canceler

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
  TCCR0A: byte absolute $2E;  // Timer/Counter 0 Control Register A
  TCCR0Aset: TTCCR0Aset absolute $2E;
  TCCR0Arec: TTCCR0Arec absolute $2E;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Output Mode for Channel B bits
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Output Mode for Channel B bits
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Output Mode for Channel A bits
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Output Mode for Channel A bits

type
  TGTCCRset = bitpacked set of (e_PSR, e_REMAP, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR,
    REMAP,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    TSM: TBitField;
  end;
var
  GTCCR: byte absolute $2F;  // General Timer/Counter Control Register
  GTCCRset: TGTCCRset absolute $2F;
  GTCCRrec: TGTCCRrec absolute $2F;
const
  PSR = 0;  m_PSR = 1;  // Prescaler Reset
  REMAP = 1;  m_REMAP = 2;  // Remap Bit for 14 pin part only
  TSM = 7;  m_TSM = 128;  // Timer Synchronization Mode

type
  TWDTCSRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDP3=5, e_WDIE, e_WDIF);
  TWDTCSRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    ReservedBit4,
    WDP3,
    WDIE,
    WDIF: TBitField;
  end;
var
  WDTCSR: byte absolute $31;  // Watchdog Timer Control and Status Register
  WDTCSRset: TWDTCSRset absolute $31;
  WDTCSRrec: TWDTCSRrec absolute $31;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timer Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timer Interrupt Flag

type
  TNVMCSRset = bitpacked set of (e_NVMBSY=7);
  TNVMCSRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    NVMBSY: TBitField;
  end;
var
  NVMCSR: byte absolute $32;  // Non-Volatile Memory Control and Status Register
  NVMCSRset: TNVMCSRset absolute $32;
  NVMCSRrec: TNVMCSRrec absolute $32;
const
  NVMBSY = 7;  m_NVMBSY = 128;  // Non-Volatile Memory Busy

var
  NVMCMD: byte absolute $33;  // Non-Volatile Memory Command

type
  TVLMCSRset = bitpacked set of (e_VLM0, e_VLM1, e_VLM2, e_VLMIE=6, e_VLMF);
  TVLMCSRrec = bitpacked record
    VLM0,
    VLM1,
    VLM2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    VLMIE,
    VLMF: TBitField;
  end;
var
  VLMCSR: byte absolute $34;  // Vcc Level Monitoring Control and Status Register
  VLMCSRset: TVLMCSRset absolute $34;
  VLMCSRrec: TVLMCSRrec absolute $34;
const
  VLM0 = 0;  m_VLM0 = 1;  // Trigger Level of Voltage Level Monitor bits
  VLM1 = 1;  m_VLM1 = 2;  // Trigger Level of Voltage Level Monitor bits
  VLM2 = 2;  m_VLM2 = 4;  // Trigger Level of Voltage Level Monitor bits
  VLMIE = 6;  m_VLMIE = 64;  // VLM Interrupt Enable
  VLMF = 7;  m_VLMF = 128;  // VLM Flag

type
  TPRRset = bitpacked set of (e_PRTIM0, e_PRADC, e_PRUSART);
  TPRRrec = bitpacked record
    PRTIM0,
    PRADC,
    PRUSART,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $35;  // Power Reduction Register
  PRRset: TPRRset absolute $35;
  PRRrec: TPRRrec absolute $35;
const
  PRTIM0 = 0;  m_PRTIM0 = 1;  // Power Reduction Timer/Counter0
  PRADC = 1;  m_PRADC = 2;  // Power Reduction ADC
  PRUSART = 2;  m_PRUSART = 4;  // Power Reduction USART

type
  TCLKPSRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLKPS3);
  TCLKPSRrec = bitpacked record
    CLKPS0,
    CLKPS1,
    CLKPS2,
    CLKPS3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKPSR: byte absolute $36;  // Clock Prescale Register
  CLKPSRset: TCLKPSRset absolute $36;
  CLKPSRrec: TCLKPSRrec absolute $36;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits

type
  TCLKMSRset = bitpacked set of (e_CLKMS0, e_CLKMS1);
  TCLKMSRrec = bitpacked record
    CLKMS0,
    CLKMS1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  CLKMSR: byte absolute $37;  // Clock Main Settings Register
  CLKMSRset: TCLKMSRset absolute $37;
  CLKMSRrec: TCLKMSRrec absolute $37;
const
  CLKMS0 = 0;  m_CLKMS0 = 1;  // Clock Main Select Bits
  CLKMS1 = 1;  m_CLKMS1 = 2;  // Clock Main Select Bits

var
  OSCCAL: byte absolute $39;  // Oscillator Calibration Value

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
  SMCR: byte absolute $3A;  // Sleep Mode Control Register
  SMCRset: TSMCRset absolute $3A;
  SMCRrec: TSMCRrec absolute $3A;
const
  SE = 0;  m_SE = 1;  // Sleep Enable
  SM0 = 1;  m_SM0 = 2;  // Sleep Mode Select Bits
  SM1 = 2;  m_SM1 = 4;  // Sleep Mode Select Bits
  SM2 = 3;  m_SM2 = 8;  // Sleep Mode Select Bits

type
  TRSTFLRset = bitpacked set of (e_PORF, e_EXTRF, e_WDRF=3);
  TRSTFLRrec = bitpacked record
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
  RSTFLR: byte absolute $3B;  // Reset Flag Register
  RSTFLRset: TRSTFLRset absolute $3B;
  RSTFLRrec: TRSTFLRrec absolute $3B;
const
  PORF = 0;  m_PORF = 1;  // Power-on Reset Flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

type
  TCCPset = bitpacked set of (e_CCP0, e_CCP1, e_CCP2, e_CCP3, e_CCP4, e_CCP5, e_CCP6, e_CCP7);
  TCCPrec = bitpacked record
    CCP0,
    CCP1,
    CCP2,
    CCP3,
    CCP4,
    CCP5,
    CCP6,
    CCP7: TBitField;
  end;
var
  CCP: byte absolute $3C;  // Configuration Change Protection
  CCPset: TCCPset absolute $3C;
  CCPrec: TCCPrec absolute $3C;
const
  CCP0 = 0;  m_CCP0 = 1;  // CCP signature
  CCP1 = 1;  m_CCP1 = 2;  // CCP signature
  CCP2 = 2;  m_CCP2 = 4;  // CCP signature
  CCP3 = 3;  m_CCP3 = 8;  // CCP signature
  CCP4 = 4;  m_CCP4 = 16;  // CCP signature
  CCP5 = 5;  m_CCP5 = 32;  // CCP signature
  CCP6 = 6;  m_CCP6 = 64;  // CCP signature
  CCP7 = 7;  m_CCP7 = 128;  // CCP signature

var
  SP: word absolute $3D;  // Stack Pointer 
  SPL: byte absolute $3D;
  SPH: byte absolute $3E;

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
  SREG: byte absolute $3F;  // Status Register
  SREGset: TSREGset absolute $3F;
  SREGrec: TSREGrec absolute $3F;
const
  C = 0;  m_C = 1;  // Carry Flag
  Z = 1;  m_Z = 2;  // Zero Flag
  N = 2;  m_N = 4;  // Negative Flag
  V = 3;  m_V = 8;  // Two's Complement Overflow Flag
  S = 4;  m_S = 16;  // Sign Bit
  H = 5;  m_H = 32;  // Half Carry Flag
  T = 6;  m_T = 64;  // Bit Copy Storage
  I = 7;  m_I = 128;  // Global Interrupt Enable
  // typedefs = 36

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt Request 1
procedure TIM0_CAPT_ISR; external name 'TIM0_CAPT_ISR'; // Interrupt 4 Timer/Counter0 Input Capture
procedure TIM0_OVF_ISR; external name 'TIM0_OVF_ISR'; // Interrupt 5 Timer/Counter0 Overflow
procedure TIM0_COMPA_ISR; external name 'TIM0_COMPA_ISR'; // Interrupt 6 Timer/Counter Compare Match A
procedure TIM0_COMPB_ISR; external name 'TIM0_COMPB_ISR'; // Interrupt 7 Timer/Counter Compare Match B
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 8 Analog Comparator
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 9 Watchdog Time-out
procedure VLM_ISR; external name 'VLM_ISR'; // Interrupt 10 Vcc Voltage Level Monitor
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 11 ADC Conversion complete
procedure USART_RXS_ISR; external name 'USART_RXS_ISR'; // Interrupt 12 USART RX Start
procedure USART_RXC_ISR; external name 'USART_RXC_ISR'; // Interrupt 13 USART RX Complete
procedure USART_DRE_ISR; external name 'USART_DRE_ISR'; // Interrupt 14 USART Data register empty
procedure USART_TXC_ISR; external name 'USART_TXC_ISR'; // Interrupt 15 USART Tx Complete

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp PCINT0_ISR
  rjmp PCINT1_ISR
  rjmp TIM0_CAPT_ISR
  rjmp TIM0_OVF_ISR
  rjmp TIM0_COMPA_ISR
  rjmp TIM0_COMPB_ISR
  rjmp ANA_COMP_ISR
  rjmp WDT_ISR
  rjmp VLM_ISR
  rjmp ADC_ISR
  rjmp USART_RXS_ISR
  rjmp USART_RXC_ISR
  rjmp USART_DRE_ISR
  rjmp USART_TXC_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak TIM0_CAPT_ISR
  .weak TIM0_OVF_ISR
  .weak TIM0_COMPA_ISR
  .weak TIM0_COMPB_ISR
  .weak ANA_COMP_ISR
  .weak WDT_ISR
  .weak VLM_ISR
  .weak ADC_ISR
  .weak USART_RXS_ISR
  .weak USART_RXC_ISR
  .weak USART_DRE_ISR
  .weak USART_TXC_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set TIM0_CAPT_ISR, Default_IRQ_handler
  .set TIM0_OVF_ISR, Default_IRQ_handler
  .set TIM0_COMPA_ISR, Default_IRQ_handler
  .set TIM0_COMPB_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set VLM_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set USART_RXS_ISR, Default_IRQ_handler
  .set USART_RXC_ISR, Default_IRQ_handler
  .set USART_DRE_ISR, Default_IRQ_handler
  .set USART_TXC_ISR, Default_IRQ_handler
end;

end.
