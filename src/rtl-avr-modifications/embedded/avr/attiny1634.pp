unit ATtiny1634;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  ADC: word absolute $20;  // ADC Data Register  Bytes
  ADCL: byte absolute $20;
  ADCH: byte absolute $21;

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADLAR, e_VDPD=6, e_VDEN);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADLAR,
    ReservedBit4,
    ReservedBit5,
    VDPD,
    VDEN: TBitField;
  end;
var
  ADCSRB: byte absolute $22;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $22;
  ADCSRBrec: TADCSRBrec absolute $22;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  ADLAR = 3;  m_ADLAR = 8;
  VDPD = 6;  m_VDPD = 64;
  VDEN = 7;  m_VDEN = 128;

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
  ADCSRA: byte absolute $23;  // The ADC Control and Status register
  ADCSRAset: TADCSRAset absolute $23;
  ADCSRArec: TADCSRArec absolute $23;
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
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_ADC0EN, e_REFEN, e_REFS0, e_REFS1);
  TADMUXrec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    ADC0EN,
    REFEN,
    REFS0,
    REFS1: TBitField;
  end;
var
  ADMUX: byte absolute $24;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $24;
  ADMUXrec: TADMUXrec absolute $24;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  ADC0EN = 4;  m_ADC0EN = 16;
  REFEN = 5;  m_REFEN = 32;
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bit
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bit

type
  TACSRBset = bitpacked set of (e_ACIRS0, e_ACIRS1, e_ACME, e_ACCE, e_ACLP=5, e_HLEV, e_HSEL);
  TACSRBrec = bitpacked record
    ACIRS0,
    ACIRS1,
    ACME,
    ACCE,
    ReservedBit4,
    ACLP,
    HLEV,
    HSEL: TBitField;
  end;
var
  ACSRB: byte absolute $25;  // Analog Comparator Control And Status Register B
  ACSRBset: TACSRBset absolute $25;
  ACSRBrec: TACSRBrec absolute $25;
const
  ACIRS0 = 0;  m_ACIRS0 = 1;
  ACIRS1 = 1;  m_ACIRS1 = 2;
  ACME = 2;  m_ACME = 4;  // Analog Comparator Multiplexer Enable
  ACCE = 3;  m_ACCE = 8;
  ACLP = 5;  m_ACLP = 32;
  HLEV = 6;  m_HLEV = 64;  // Hysteresis Level
  HSEL = 7;  m_HSEL = 128;  // Hysteresis Select

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
  ACSRA: byte absolute $26;  // Analog Comparator Control And Status Register A
  ACSRAset: TACSRAset absolute $26;
  ACSRArec: TACSRArec absolute $26;
const
  ACIS0 = 0;  m_ACIS0 = 1;  // Analog Comparator Interrupt Mode Select bits
  ACIS1 = 1;  m_ACIS1 = 2;  // Analog Comparator Interrupt Mode Select bits
  ACIC = 2;  m_ACIC = 4;  // Analog Comparator Input Capture Enable
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

var
  PINC: byte absolute $27;  // Port C Input Pins
  DDRC: byte absolute $28;  // Data Direction Register, Port C

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
  PORTC: byte absolute $29;  // Port C Data Register
  PORTCset: TPORTCset absolute $29;
  PORTCrec: TPORTCrec absolute $29;
const
  PC0 = 0;  m_PC0 = 1;
  PC1 = 1;  m_PC1 = 2;
  PC2 = 2;  m_PC2 = 4;
  PC3 = 3;  m_PC3 = 8;
  PC4 = 4;  m_PC4 = 16;
  PC5 = 5;  m_PC5 = 32;

type
  TPUECset = bitpacked set of (e_PUEC0, e_PUEC1, e_PUEC2, e_PUEC3, e_PUEC4, e_PUEC5);
  TPUECrec = bitpacked record
    PUEC0,
    PUEC1,
    PUEC2,
    PUEC3,
    PUEC4,
    PUEC5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PUEC: byte absolute $2A;  // Pull-up Enable Control Register
  PUECset: TPUECset absolute $2A;
  PUECrec: TPUECrec absolute $2A;
const
  PUEC0 = 0;  m_PUEC0 = 1;  // Pull-up Enable Control bit
  PUEC1 = 1;  m_PUEC1 = 2;  // Pull-up Enable Control bit
  PUEC2 = 2;  m_PUEC2 = 4;  // Pull-up Enable Control bit
  PUEC3 = 3;  m_PUEC3 = 8;  // Pull-up Enable Control bit
  PUEC4 = 4;  m_PUEC4 = 16;  // Pull-up Enable Control bit
  PUEC5 = 5;  m_PUEC5 = 32;  // Pull-up Enable Control bit

var
  PINB: byte absolute $2B;  // Port B Data register
  DDRB: byte absolute $2C;  // Data Direction Register, Port B

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
  PORTB: byte absolute $2D;  // Input Pins, Port B
  PORTBset: TPORTBset absolute $2D;
  PORTBrec: TPORTBrec absolute $2D;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;

type
  TPUEBset = bitpacked set of (e_PUEB0, e_PUEB1, e_PUEB2, e_PUEB3);
  TPUEBrec = bitpacked record
    PUEB0,
    PUEB1,
    PUEB2,
    PUEB3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PUEB: byte absolute $2E;  // Pull-up Enable Control Register
  PUEBset: TPUEBset absolute $2E;
  PUEBrec: TPUEBrec absolute $2E;
const
  PUEB0 = 0;  m_PUEB0 = 1;  // Pull-up Enable Control bit
  PUEB1 = 1;  m_PUEB1 = 2;  // Pull-up Enable Control bit
  PUEB2 = 2;  m_PUEB2 = 4;  // Pull-up Enable Control bit
  PUEB3 = 3;  m_PUEB3 = 8;  // Pull-up Enable Control bit

var
  PINA: byte absolute $2F;  // Port A Input Pins
  DDRA: byte absolute $30;  // Data Direction Register, Port A

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
  PORTA: byte absolute $31;  // Port A Data Register
  PORTAset: TPORTAset absolute $31;
  PORTArec: TPORTArec absolute $31;
const
  PA0 = 0;  m_PA0 = 1;
  PA1 = 1;  m_PA1 = 2;
  PA2 = 2;  m_PA2 = 4;
  PA3 = 3;  m_PA3 = 8;
  PA4 = 4;  m_PA4 = 16;
  PA5 = 5;  m_PA5 = 32;
  PA6 = 6;  m_PA6 = 64;
  PA7 = 7;  m_PA7 = 128;

type
  TPUEAset = bitpacked set of (e_PUEA0, e_PUEA1, e_PUEA2, e_PUEA3, e_PUEA4, e_PUEA5, e_PUEA6, e_PUEA7);
  TPUEArec = bitpacked record
    PUEA0,
    PUEA1,
    PUEA2,
    PUEA3,
    PUEA4,
    PUEA5,
    PUEA6,
    PUEA7: TBitField;
  end;
var
  PUEA: byte absolute $32;  // Pull-up Enable Control Register
  PUEAset: TPUEAset absolute $32;
  PUEArec: TPUEArec absolute $32;
const
  PUEA0 = 0;  m_PUEA0 = 1;  // Pull-up Enable Control bit
  PUEA1 = 1;  m_PUEA1 = 2;  // Pull-up Enable Control bit
  PUEA2 = 2;  m_PUEA2 = 4;  // Pull-up Enable Control bit
  PUEA3 = 3;  m_PUEA3 = 8;  // Pull-up Enable Control bit
  PUEA4 = 4;  m_PUEA4 = 16;  // Pull-up Enable Control bit
  PUEA5 = 5;  m_PUEA5 = 32;  // Pull-up Enable Control bit
  PUEA6 = 6;  m_PUEA6 = 64;  // Pull-up Enable Control bit
  PUEA7 = 7;  m_PUEA7 = 128;  // Pull-up Enable Control bit

type
  TPORTCRset = bitpacked set of (e_BBMA, e_BBMB, e_BBMC);
  TPORTCRrec = bitpacked record
    BBMA,
    BBMB,
    BBMC,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTCR: byte absolute $33;  // Port Control Register
  PORTCRset: TPORTCRset absolute $33;
  PORTCRrec: TPORTCRrec absolute $33;
const
  BBMA = 0;  m_BBMA = 1;  // Break-Before-Make Mode Enable
  BBMB = 1;  m_BBMB = 2;  // Break-Before-Make Mode Enable
  BBMC = 2;  m_BBMC = 4;  // Break-Before-Make Mode Enable

var
  GPIOR0: byte absolute $34;  // General Purpose I/O Register 0
  GPIOR1: byte absolute $35;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $36;  // General Purpose I/O Register 2
  OCR0B: byte absolute $37;  // Timer/Counter0 Output Compare Register
  OCR0A: byte absolute $38;  // Timer/Counter0 Output Compare Register
  TCNT0: byte absolute $39;  // Timer/Counter0

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
  TCCR0B: byte absolute $3A;  // Timer/Counter Control Register B
  TCCR0Bset: TTCCR0Bset absolute $3A;
  TCCR0Brec: TTCCR0Brec absolute $3A;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  WGM02 = 3;  m_WGM02 = 8;
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare B

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
  TCCR0A: byte absolute $3B;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $3B;
  TCCR0Arec: TTCCR0Arec absolute $3B;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Match Output B Mode
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Match Output B Mode
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Match Output A Mode
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Match Output A Mode

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
  EECR: byte absolute $3C;  // EEPROM Control Register
  EECRset: TEECRset absolute $3C;
  EECRrec: TEECRrec absolute $3C;
const
  EERE = 0;  m_EERE = 1;  // EEPROM Read Enable
  EEPE = 1;  m_EEPE = 2;  // EEPROM Write Enable
  EEMPE = 2;  m_EEMPE = 4;  // EEPROM Master Write Enable
  EERIE = 3;  m_EERIE = 8;  // EEProm Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: word absolute $3E;  // EEPROM Read/Write Access
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;
  UDR0: byte absolute $40;  // USART I/O Data Register
  UBRR0: word absolute $41;  // USART Baud Rate Register  Bytes
  UBRR0L: byte absolute $41;
  UBRR0H: byte absolute $42;

type
  TUCSR0Dset = bitpacked set of (e_SFDE0=5, e_RXS0, e_RXSIE0);
  TUCSR0Drec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    SFDE0,
    RXS0,
    RXSIE0: TBitField;
  end;
var
  UCSR0D: byte absolute $43;  // USART Control and Status Register D
  UCSR0Dset: TUCSR0Dset absolute $43;
  UCSR0Drec: TUCSR0Drec absolute $43;
const
  SFDE0 = 5;  m_SFDE0 = 32;  // USART RX Start Frame Detection Enable
  RXS0 = 6;  m_RXS0 = 64;  // USART RX Start Flag
  RXSIE0 = 7;  m_RXSIE0 = 128;  // USART RX Start Interrupt Enable

type
  TUCSR0Cset = bitpacked set of (e_UCPOL0, e_UCSZ00, e_UCSZ01, e_USBS0, e_UPM00, e_UPM01, e_UMSEL00, e_UMSEL01);
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
  UCSR0C: byte absolute $44;  // USART Control and Status Register C
  UCSR0Cset: TUCSR0Cset absolute $44;
  UCSR0Crec: TUCSR0Crec absolute $44;
const
  UCPOL0 = 0;  m_UCPOL0 = 1;  // Clock Polarity
  UCSZ00 = 1;  m_UCSZ00 = 2;  // Character Size
  UCSZ01 = 2;  m_UCSZ01 = 4;  // Character Size
  USBS0 = 3;  m_USBS0 = 8;  // Stop Bit Select
  UPM00 = 4;  m_UPM00 = 16;  // Parity Mode Bits
  UPM01 = 5;  m_UPM01 = 32;  // Parity Mode Bits
  UMSEL00 = 6;  m_UMSEL00 = 64;  // USART Mode Select
  UMSEL01 = 7;  m_UMSEL01 = 128;  // USART Mode Select

type
  TUCSR0Bset = bitpacked set of (e_TXB80, e_RXB80, e_UCSZ02, e_TXEN0, e_RXEN0, e_UDRIE0, e_TXCIE0, e_RXCIE0);
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
  UCSR0B: byte absolute $45;  // USART Control and Status Register B
  UCSR0Bset: TUCSR0Bset absolute $45;
  UCSR0Brec: TUCSR0Brec absolute $45;
const
  TXB80 = 0;  m_TXB80 = 1;  // Transmit Data Bit 8
  RXB80 = 1;  m_RXB80 = 2;  // Receive Data Bit 8
  UCSZ02 = 2;  m_UCSZ02 = 4;  // Character Size
  TXEN0 = 3;  m_TXEN0 = 8;  // Transmitter Enable
  RXEN0 = 4;  m_RXEN0 = 16;  // Receiver Enable
  UDRIE0 = 5;  m_UDRIE0 = 32;  // USART Data register Empty Interrupt Enable
  TXCIE0 = 6;  m_TXCIE0 = 64;  // TX Complete Interrupt Enable
  RXCIE0 = 7;  m_RXCIE0 = 128;  // RX Complete Interrupt Enable

type
  TUCSR0Aset = bitpacked set of (e_MPCM0, e_U2X0, e_UPE0, e_DOR0, e_FE0, e_UDRE0, e_TXC0, e_RXC0);
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
  UCSR0A: byte absolute $46;  // USART Control and Status Register A
  UCSR0Aset: TUCSR0Aset absolute $46;
  UCSR0Arec: TUCSR0Arec absolute $46;
const
  MPCM0 = 0;  m_MPCM0 = 1;  // Multi-processor Communication Mode
  U2X0 = 1;  m_U2X0 = 2;  // Double the USART transmission speed
  UPE0 = 2;  m_UPE0 = 4;  // Parity Error
  DOR0 = 3;  m_DOR0 = 8;  // Data overRun
  FE0 = 4;  m_FE0 = 16;  // Framing Error
  UDRE0 = 5;  m_UDRE0 = 32;  // USART Data Register Empty
  TXC0 = 6;  m_TXC0 = 64;  // USART Transmitt Complete
  RXC0 = 7;  m_RXC0 = 128;  // USART Receive Complete

var
  PCMSK0: byte absolute $47;  // Pin Change Mask Register 0
  PCMSK1: byte absolute $48;  // Pin Change Mask Register 1

type
  TPCMSK2set = bitpacked set of (e_PCINT12, e_PCINT13, e_PCINT14, e_PCINT15, e_PCINT16, e_PCINT17);
  TPCMSK2rec = bitpacked record
    PCINT12,
    PCINT13,
    PCINT14,
    PCINT15,
    PCINT16,
    PCINT17,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PCMSK2: byte absolute $49;  // Pin Change Mask Register 2
  PCMSK2set: TPCMSK2set absolute $49;
  PCMSK2rec: TPCMSK2rec absolute $49;
const
  PCINT12 = 0;  m_PCINT12 = 1;  // Pin Change Enable Masks
  PCINT13 = 1;  m_PCINT13 = 2;  // Pin Change Enable Masks
  PCINT14 = 2;  m_PCINT14 = 4;  // Pin Change Enable Masks
  PCINT15 = 3;  m_PCINT15 = 8;  // Pin Change Enable Masks
  PCINT16 = 4;  m_PCINT16 = 16;  // Pin Change Enable Masks
  PCINT17 = 5;  m_PCINT17 = 32;  // Pin Change Enable Masks

type
  TUSICRset = bitpacked set of (e_USITC, e_USICLK, e_USICS0, e_USICS1, e_USIWM0, e_USIWM1, e_USIOIE, e_USISIE);
  TUSICRrec = bitpacked record
    USITC,
    USICLK,
    USICS0,
    USICS1,
    USIWM0,
    USIWM1,
    USIOIE,
    USISIE: TBitField;
  end;
var
  USICR: byte absolute $4A;  // USI Control Register
  USICRset: TUSICRset absolute $4A;
  USICRrec: TUSICRrec absolute $4A;
const
  USITC = 0;  m_USITC = 1;  // Toggle Clock Port Pin
  USICLK = 1;  m_USICLK = 2;  // Clock Strobe
  USICS0 = 2;  m_USICS0 = 4;  // USI Clock Source Select Bits
  USICS1 = 3;  m_USICS1 = 8;  // USI Clock Source Select Bits
  USIWM0 = 4;  m_USIWM0 = 16;  // USI Wire Mode Bits
  USIWM1 = 5;  m_USIWM1 = 32;  // USI Wire Mode Bits
  USIOIE = 6;  m_USIOIE = 64;  // Counter Overflow Interrupt Enable
  USISIE = 7;  m_USISIE = 128;  // Start Condition Interrupt Enable

type
  TUSISRset = bitpacked set of (e_USICNT0, e_USICNT1, e_USICNT2, e_USICNT3, e_USIDC, e_USIPF, e_USIOIF, e_USISIF);
  TUSISRrec = bitpacked record
    USICNT0,
    USICNT1,
    USICNT2,
    USICNT3,
    USIDC,
    USIPF,
    USIOIF,
    USISIF: TBitField;
  end;
var
  USISR: byte absolute $4B;  // USI Status Register
  USISRset: TUSISRset absolute $4B;
  USISRrec: TUSISRrec absolute $4B;
const
  USICNT0 = 0;  m_USICNT0 = 1;  // USI Counter Value Bits
  USICNT1 = 1;  m_USICNT1 = 2;  // USI Counter Value Bits
  USICNT2 = 2;  m_USICNT2 = 4;  // USI Counter Value Bits
  USICNT3 = 3;  m_USICNT3 = 8;  // USI Counter Value Bits
  USIDC = 4;  m_USIDC = 16;  // Data Output Collision
  USIPF = 5;  m_USIPF = 32;  // Stop Condition Flag
  USIOIF = 6;  m_USIOIF = 64;  // Counter Overflow Interrupt Flag
  USISIF = 7;  m_USISIF = 128;  // Start Condition Interrupt Flag

var
  USIDR: byte absolute $4C;  // USI Data Register
  USIBR: byte absolute $4D;  // USI Buffer Register
  CCP: byte absolute $4F;  // Configuration Change Protection

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
  WDTCSR: byte absolute $50;  // Watchdog Timer Control and Status Register
  WDTCSRset: TWDTCSRset absolute $50;
  WDTCSRrec: TWDTCSRrec absolute $50;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timer Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timer Interrupt Flag

type
  TCLKSRset = bitpacked set of (e_CKSEL0, e_CKSEL1, e_CKSEL2, e_CKSEL3, e_SUT, e_CKOUT_IO, e_CSTR, e_OSCRDY);
  TCLKSRrec = bitpacked record
    CKSEL0,
    CKSEL1,
    CKSEL2,
    CKSEL3,
    SUT,
    CKOUT_IO,
    CSTR,
    OSCRDY: TBitField;
  end;
var
  CLKSR: byte absolute $52;  // Clock Setting Register
  CLKSRset: TCLKSRset absolute $52;
  CLKSRrec: TCLKSRrec absolute $52;
const
  CKSEL0 = 0;  m_CKSEL0 = 1;  // Clock Select Bits
  CKSEL1 = 1;  m_CKSEL1 = 2;  // Clock Select Bits
  CKSEL2 = 2;  m_CKSEL2 = 4;  // Clock Select Bits
  CKSEL3 = 3;  m_CKSEL3 = 8;  // Clock Select Bits
  SUT = 4;  m_SUT = 16;  // Start-up Time
  CKOUT_IO = 5;  m_CKOUT_IO = 32;  // Clock Output (active low)
  CSTR = 6;  m_CSTR = 64;  // Clock Switch Trigger
  OSCRDY = 7;  m_OSCRDY = 128;  // Oscillator Ready

type
  TCLKPRset = bitpacked set of (e_CLKPS0, e_CLKPS1, e_CLKPS2, e_CLKPS3);
  TCLKPRrec = bitpacked record
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
  CLKPR: byte absolute $53;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $53;
  CLKPRrec: TCLKPRrec absolute $53;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits

type
  TPRRset = bitpacked set of (e_PRADC, e_PRUSART0, e_PRUSART1, e_PRUSI, e_PRTIM0, e_PRTIM1, e_PRTWI);
  TPRRrec = bitpacked record
    PRADC,
    PRUSART0,
    PRUSART1,
    PRUSI,
    PRTIM0,
    PRTIM1,
    PRTWI,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $54;  // Power Reduction Register
  PRRset: TPRRset absolute $54;
  PRRrec: TPRRrec absolute $54;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRUSART0 = 1;  m_PRUSART0 = 2;  // Power Reduction USART0
  PRUSART1 = 2;  m_PRUSART1 = 4;  // Power Reduction USART1
  PRUSI = 3;  m_PRUSI = 8;  // Power Reduction USI
  PRTIM0 = 4;  m_PRTIM0 = 16;  // Power Reduction Timer/Counter0
  PRTIM1 = 5;  m_PRTIM1 = 32;  // Power Reduction Timer/Counter1
  PRTWI = 6;  m_PRTWI = 64;  // Power Reduction TWI

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
  MCUSR: byte absolute $55;  // MCU Status Register
  MCUSRset: TMCUSRset absolute $55;
  MCUSRrec: TMCUSRrec absolute $55;
const
  PORF = 0;  m_PORF = 1;  // Power-on reset flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  BORF = 2;  m_BORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

type
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_SE=4, e_SM0, e_SM1);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    ReservedBit2,
    ReservedBit3,
    SE,
    SM0,
    SM1,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $56;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $56;
  MCUCRrec: TMCUCRrec absolute $56;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 bits
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 bits
  SE = 4;  m_SE = 16;  // Sleep Enable
  SM0 = 5;  m_SM0 = 32;  // Sleep Mode Select Bits
  SM1 = 6;  m_SM1 = 64;  // Sleep Mode Select Bits

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RFLB, e_CTPB, e_RSIG);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RFLB,
    CTPB,
    RSIG,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  RFLB = 3;  m_RFLB = 8;  // Read Fuse and Lock Bits
  CTPB = 4;  m_CTPB = 16;  // Clear Temporary Page Buffer
  RSIG = 5;  m_RSIG = 32;  // Read Device Signature Imprint Table

type
  TTIFRset = bitpacked set of (e_OCF0A, e_TOV0, e_OCF0B, e_ICF1, e_OCF1B=5, e_OCF1A, e_TOV1);
  TTIFRrec = bitpacked record
    OCF0A,
    TOV0,
    OCF0B,
    ICF1,
    ReservedBit4,
    OCF1B,
    OCF1A,
    TOV1: TBitField;
  end;
var
  TIFR: byte absolute $59;  // Timer/Counter Interrupt Flag register
  TIFRset: TTIFRset absolute $59;
  TIFRrec: TTIFRrec absolute $59;
const
  OCF0A = 0;  m_OCF0A = 1;  // Timer/Counter0 Output Compare Flag 0A
  TOV0 = 1;  m_TOV0 = 2;  // Timer/Counter0 Overflow Flag
  OCF0B = 2;  m_OCF0B = 4;  // Timer/Counter0 Output Compare Flag 0B
  ICF1 = 3;  m_ICF1 = 8;  // Input Capture Flag 1
  OCF1B = 5;  m_OCF1B = 32;  // Output Compare Flag 1B
  OCF1A = 6;  m_OCF1A = 64;  // Output Compare Flag 1A
  TOV1 = 7;  m_TOV1 = 128;  // Timer/Counter1 Overflow Flag

type
  TTIMSKset = bitpacked set of (e_OCIE0A, e_TOIE0, e_OCIE0B, e_ICIE1, e_OCIE1B=5, e_OCIE1A, e_TOIE1);
  TTIMSKrec = bitpacked record
    OCIE0A,
    TOIE0,
    OCIE0B,
    ICIE1,
    ReservedBit4,
    OCIE1B,
    OCIE1A,
    TOIE1: TBitField;
  end;
var
  TIMSK: byte absolute $5A;  // Timer/Counter Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $5A;
  TIMSKrec: TTIMSKrec absolute $5A;
const
  OCIE0A = 0;  m_OCIE0A = 1;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter0 Output Compare Match B Interrupt Enable
  ICIE1 = 3;  m_ICIE1 = 8;  // Timer/Counter1 Input Capture Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  OCIE1A = 6;  m_OCIE1A = 64;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  TOIE1 = 7;  m_TOIE1 = 128;  // Timer/Counter1 Overflow Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF0=3, e_PCIF1, e_PCIF2, e_INTF0);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    PCIF0,
    PCIF1,
    PCIF2,
    INTF0,
    ReservedBit7: TBitField;
  end;
var
  GIFR: byte absolute $5B;  // General Interrupt Flag Register
  GIFRset: TGIFRset absolute $5B;
  GIFRrec: TGIFRrec absolute $5B;
const
  PCIF0 = 3;  m_PCIF0 = 8;  // Pin Change Interrupt Flags
  PCIF1 = 4;  m_PCIF1 = 16;  // Pin Change Interrupt Flags
  PCIF2 = 5;  m_PCIF2 = 32;  // Pin Change Interrupt Flags
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flag 0

type
  TGIMSKset = bitpacked set of (e_PCIE0=3, e_PCIE1, e_PCIE2, e_INT0);
  TGIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    PCIE0,
    PCIE1,
    PCIE2,
    INT0,
    ReservedBit7: TBitField;
  end;
var
  GIMSK: byte absolute $5C;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $5C;
  GIMSKrec: TGIMSKrec absolute $5C;
const
  PCIE0 = 3;  m_PCIE0 = 8;  // Pin Change Interrupt Enables
  PCIE1 = 4;  m_PCIE1 = 16;  // Pin Change Interrupt Enables
  PCIE2 = 5;  m_PCIE2 = 32;  // Pin Change Interrupt Enables
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable

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
  TDIDR0set = bitpacked set of (e_AREFD, e_AIN0D, e_AIN1D, e_ADC0D, e_ADC1D, e_ADC2D, e_ADC3D, e_ADC4D);
  TDIDR0rec = bitpacked record
    AREFD,
    AIN0D,
    AIN1D,
    ADC0D,
    ADC1D,
    ADC2D,
    ADC3D,
    ADC4D: TBitField;
  end;
var
  DIDR0: byte absolute $60;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $60;
  DIDR0rec: TDIDR0rec absolute $60;
const
  AREFD = 0;  m_AREFD = 1;  // AREF Digital input Disable
  AIN0D = 1;  m_AIN0D = 2;  // AIN0 Digital input Disable
  AIN1D = 2;  m_AIN1D = 4;  // AIN1 Digital input Disable
  ADC0D = 3;  m_ADC0D = 8;  // ADC0 Digital Input Disable
  ADC1D = 4;  m_ADC1D = 16;  // ADC1 Digital input Disable
  ADC2D = 5;  m_ADC2D = 32;  // ADC2 Digital input Disable
  ADC3D = 6;  m_ADC3D = 64;  // ADC3 Digital input Disable
  ADC4D = 7;  m_ADC4D = 128;  // ADC4 Digital input Disable

type
  TDIDR1set = bitpacked set of (e_ADC5D, e_ADC6D, e_ADC7D, e_ADC8D);
  TDIDR1rec = bitpacked record
    ADC5D,
    ADC6D,
    ADC7D,
    ADC8D,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR1: byte absolute $61;  // Digital Input Disable Register 1
  DIDR1set: TDIDR1set absolute $61;
  DIDR1rec: TDIDR1rec absolute $61;
const
  ADC5D = 0;  m_ADC5D = 1;  // ADC5 Digital input Disable
  ADC6D = 1;  m_ADC6D = 2;  // ADC6 Digital input Disable
  ADC7D = 2;  m_ADC7D = 4;  // ADC7 Digital input Disable
  ADC8D = 3;  m_ADC8D = 8;  // ADC8 Digital Input Disable

type
  TDIDR2set = bitpacked set of (e_ADC9D, e_ADC10D, e_ADC11D);
  TDIDR2rec = bitpacked record
    ADC9D,
    ADC10D,
    ADC11D,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  DIDR2: byte absolute $62;  // Digital Input Disable Register 2
  DIDR2set: TDIDR2set absolute $62;
  DIDR2rec: TDIDR2rec absolute $62;
const
  ADC9D = 0;  m_ADC9D = 1;  // ADC9 Digital input Disable
  ADC10D = 1;  m_ADC10D = 2;  // ADC10 Digital input Disable
  ADC11D = 2;  m_ADC11D = 4;  // ADC11 Digital input Disable

var
  OSCCAL0: byte absolute $63;  // Oscillator Calibration Value
  OSCTCAL0A: byte absolute $64;
  OSCTCAL0B: byte absolute $65;
  OSCCAL1: byte absolute $66;

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
  GTCCR: byte absolute $67;  // General Timer/Counter Control Register
  GTCCRset: TGTCCRset absolute $67;
  GTCCRrec: TGTCCRrec absolute $67;
const
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

var
  ICR1: word absolute $68;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $68;
  ICR1H: byte absolute $69;
  OCR1B: word absolute $6A;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1BL: byte absolute $6A;
  OCR1BH: byte absolute $6B;
  OCR1A: word absolute $6C;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1AL: byte absolute $6C;
  OCR1AH: byte absolute $6D;
  TCNT1: word absolute $6E;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $6E;
  TCNT1H: byte absolute $6F;

type
  TTCCR1Cset = bitpacked set of (e_FOC1B=6, e_FOC1A);
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
  TCCR1C: byte absolute $70;  // Timer/Counter1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $70;
  TCCR1Crec: TTCCR1Crec absolute $70;
const
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare for Channel B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare for Channel A

type
  TTCCR1Bset = bitpacked set of (e_CS10, e_CS11, e_CS12, e_ICES1=6, e_ICNC1);
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
  TCCR1B: byte absolute $71;  // Timer/Counter1 Control Register B
  TCCR1Bset: TTCCR1Bset absolute $71;
  TCCR1Brec: TTCCR1Brec absolute $71;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select1 bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select1 bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select1 bits
  ICES1 = 6;  m_ICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  m_ICNC1 = 128;  // Input Capture 1 Noise Canceler

type
  TTCCR1Aset = bitpacked set of (e_WGM10, e_WGM11, e_COM1B0=4, e_COM1B1, e_COM1A0, e_COM1A1);
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
  TCCR1A: byte absolute $72;  // Timer/Counter1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $72;
  TCCR1Arec: TTCCR1Arec absolute $72;
const
  WGM10 = 0;  m_WGM10 = 1;  // Pulse Width Modulator Select Bits
  WGM11 = 1;  m_WGM11 = 2;  // Pulse Width Modulator Select Bits
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

var
  UDR1: byte absolute $73;  // USART I/O Data Register
  UBRR1: word absolute $74;  // USART Baud Rate Register  Bytes
  UBRR1L: byte absolute $74;
  UBRR1H: byte absolute $75;

type
  TUCSR1Dset = bitpacked set of (e_SFDE1=5, e_RXS1, e_RXSIE1);
  TUCSR1Drec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    SFDE1,
    RXS1,
    RXSIE1: TBitField;
  end;
var
  UCSR1D: byte absolute $76;  // USART Control and Status Register D
  UCSR1Dset: TUCSR1Dset absolute $76;
  UCSR1Drec: TUCSR1Drec absolute $76;
const
  SFDE1 = 5;  m_SFDE1 = 32;  // USART RX Start Frame Detection Enable
  RXS1 = 6;  m_RXS1 = 64;  // USART RX Start Flag
  RXSIE1 = 7;  m_RXSIE1 = 128;  // USART RX Start Interrupt Enable

type
  TUCSR1Cset = bitpacked set of (e_UCPOL1, e_UCSZ10, e_UCSZ11, e_USBS1, e_UPM10, e_UPM11, e_UMSEL10, e_UMSEL11);
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
  UCSR1C: byte absolute $77;  // USART Control and Status Register C
  UCSR1Cset: TUCSR1Cset absolute $77;
  UCSR1Crec: TUCSR1Crec absolute $77;
const
  UCPOL1 = 0;  m_UCPOL1 = 1;  // Clock Polarity
  UCSZ10 = 1;  m_UCSZ10 = 2;  // Character Size
  UCSZ11 = 2;  m_UCSZ11 = 4;  // Character Size
  USBS1 = 3;  m_USBS1 = 8;  // Stop Bit Select
  UPM10 = 4;  m_UPM10 = 16;  // Parity Mode Bits
  UPM11 = 5;  m_UPM11 = 32;  // Parity Mode Bits
  UMSEL10 = 6;  m_UMSEL10 = 64;  // USART Mode Select
  UMSEL11 = 7;  m_UMSEL11 = 128;  // USART Mode Select

type
  TUCSR1Bset = bitpacked set of (e_TXB81, e_RXB81, e_UCSZ12, e_TXEN1, e_RXEN1, e_UDRIE1, e_TXCIE1, e_RXCIE1);
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
  UCSR1B: byte absolute $78;  // USART Control and Status Register B
  UCSR1Bset: TUCSR1Bset absolute $78;
  UCSR1Brec: TUCSR1Brec absolute $78;
const
  TXB81 = 0;  m_TXB81 = 1;  // Transmit Data Bit 8
  RXB81 = 1;  m_RXB81 = 2;  // Receive Data Bit 8
  UCSZ12 = 2;  m_UCSZ12 = 4;  // Character Size
  TXEN1 = 3;  m_TXEN1 = 8;  // Transmitter Enable
  RXEN1 = 4;  m_RXEN1 = 16;  // Receiver Enable
  UDRIE1 = 5;  m_UDRIE1 = 32;  // USART Data register Empty Interrupt Enable
  TXCIE1 = 6;  m_TXCIE1 = 64;  // TX Complete Interrupt Enable
  RXCIE1 = 7;  m_RXCIE1 = 128;  // RX Complete Interrupt Enable

type
  TUCSR1Aset = bitpacked set of (e_MPCM1, e_U2X1, e_UPE1, e_DOR1, e_FE1, e_UDRE1, e_TXC1, e_RXC1);
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
  UCSR1A: byte absolute $79;  // USART Control and Status Register A
  UCSR1Aset: TUCSR1Aset absolute $79;
  UCSR1Arec: TUCSR1Arec absolute $79;
const
  MPCM1 = 0;  m_MPCM1 = 1;  // Multi-processor Communication Mode
  U2X1 = 1;  m_U2X1 = 2;  // Double the USART transmission speed
  UPE1 = 2;  m_UPE1 = 4;  // Parity Error
  DOR1 = 3;  m_DOR1 = 8;  // Data overRun
  FE1 = 4;  m_FE1 = 16;  // Framing Error
  UDRE1 = 5;  m_UDRE1 = 32;  // USART Data Register Empty
  TXC1 = 6;  m_TXC1 = 64;  // USART Transmitt Complete
  RXC1 = 7;  m_RXC1 = 128;  // USART Receive Complete

type
  TTWSDset = bitpacked set of (e_TWSD0, e_TWSD1, e_TWSD2, e_TWSD3, e_TWSD4, e_TWSD5, e_TWSD6, e_TWSD7);
  TTWSDrec = bitpacked record
    TWSD0,
    TWSD1,
    TWSD2,
    TWSD3,
    TWSD4,
    TWSD5,
    TWSD6,
    TWSD7: TBitField;
  end;
var
  TWSD: byte absolute $7A;  // TWI Slave Data Register
  TWSDset: TTWSDset absolute $7A;
  TWSDrec: TTWSDrec absolute $7A;
const
  TWSD0 = 0;  m_TWSD0 = 1;  // TWI slave data bit
  TWSD1 = 1;  m_TWSD1 = 2;  // TWI slave data bit
  TWSD2 = 2;  m_TWSD2 = 4;  // TWI slave data bit
  TWSD3 = 3;  m_TWSD3 = 8;  // TWI slave data bit
  TWSD4 = 4;  m_TWSD4 = 16;  // TWI slave data bit
  TWSD5 = 5;  m_TWSD5 = 32;  // TWI slave data bit
  TWSD6 = 6;  m_TWSD6 = 64;  // TWI slave data bit
  TWSD7 = 7;  m_TWSD7 = 128;  // TWI slave data bit

var
  TWSAM: byte absolute $7B;  // TWI Slave Address Mask Register

type
  TTWSAset = bitpacked set of (e_TWSA0, e_TWSA1, e_TWSA2, e_TWSA3, e_TWSA4, e_TWSA5, e_TWSA6, e_TWSA7);
  TTWSArec = bitpacked record
    TWSA0,
    TWSA1,
    TWSA2,
    TWSA3,
    TWSA4,
    TWSA5,
    TWSA6,
    TWSA7: TBitField;
  end;
var
  TWSA: byte absolute $7C;  // TWI Slave Address Register
  TWSAset: TTWSAset absolute $7C;
  TWSArec: TTWSArec absolute $7C;
const
  TWSA0 = 0;  m_TWSA0 = 1;  // TWI slave address bit
  TWSA1 = 1;  m_TWSA1 = 2;  // TWI slave address bit
  TWSA2 = 2;  m_TWSA2 = 4;  // TWI slave address bit
  TWSA3 = 3;  m_TWSA3 = 8;  // TWI slave address bit
  TWSA4 = 4;  m_TWSA4 = 16;  // TWI slave address bit
  TWSA5 = 5;  m_TWSA5 = 32;  // TWI slave address bit
  TWSA6 = 6;  m_TWSA6 = 64;  // TWI slave address bit
  TWSA7 = 7;  m_TWSA7 = 128;  // TWI slave address bit

type
  TTWSSRAset = bitpacked set of (e_TWAS, e_TWDIR, e_TWBE, e_TWC, e_TWRA, e_TWCH, e_TWASIF, e_TWDIF);
  TTWSSRArec = bitpacked record
    TWAS,
    TWDIR,
    TWBE,
    TWC,
    TWRA,
    TWCH,
    TWASIF,
    TWDIF: TBitField;
  end;
var
  TWSSRA: byte absolute $7D;  // TWI Slave Status Register A
  TWSSRAset: TTWSSRAset absolute $7D;
  TWSSRArec: TTWSSRArec absolute $7D;
const
  TWAS = 0;  m_TWAS = 1;  // TWI Address or Stop
  TWDIR = 1;  m_TWDIR = 2;  // TWI Read/Write Direction
  TWBE = 2;  m_TWBE = 4;  // TWI Bus Error
  TWC = 3;  m_TWC = 8;  // TWI Collision
  TWRA = 4;  m_TWRA = 16;  // TWI Receive Acknowledge
  TWCH = 5;  m_TWCH = 32;  // TWI Clock Hold
  TWASIF = 6;  m_TWASIF = 64;  // TWI Address/Stop Interrupt Flag
  TWDIF = 7;  m_TWDIF = 128;  // TWI Data Interrupt Flag

type
  TTWSCRBset = bitpacked set of (e_TWCMD0, e_TWCMD1, e_TWAA);
  TTWSCRBrec = bitpacked record
    TWCMD0,
    TWCMD1,
    TWAA,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TWSCRB: byte absolute $7E;  // TWI Slave Control Register B
  TWSCRBset: TTWSCRBset absolute $7E;
  TWSCRBrec: TTWSCRBrec absolute $7E;
const
  TWCMD0 = 0;  m_TWCMD0 = 1;
  TWCMD1 = 1;  m_TWCMD1 = 2;
  TWAA = 2;  m_TWAA = 4;  // TWI Acknowledge Action

type
  TTWSCRAset = bitpacked set of (e_TWSME, e_TWPME, e_TWSIE, e_TWEN, e_TWASIE, e_TWDIE, e_TWSHE=7);
  TTWSCRArec = bitpacked record
    TWSME,
    TWPME,
    TWSIE,
    TWEN,
    TWASIE,
    TWDIE,
    ReservedBit6,
    TWSHE: TBitField;
  end;
var
  TWSCRA: byte absolute $7F;  // TWI Slave Control Register A
  TWSCRAset: TTWSCRAset absolute $7F;
  TWSCRArec: TTWSCRArec absolute $7F;
const
  TWSME = 0;  m_TWSME = 1;  // TWI Smart Mode Enable
  TWPME = 1;  m_TWPME = 2;  // TWI Promiscuous Mode Enable
  TWSIE = 2;  m_TWSIE = 4;  // TWI Stop Interrupt Enable
  TWEN = 3;  m_TWEN = 8;  // Two-Wire Interface Enable
  TWASIE = 4;  m_TWASIE = 16;  // TWI Address/Stop Interrupt Enable
  TWDIE = 5;  m_TWDIE = 32;  // TWI Data Interrupt Enable
  TWSHE = 7;  m_TWSHE = 128;  // TWI SDA Hold Time Enable
  // typedefs = 50

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt Request 1
procedure PCINT2_ISR; external name 'PCINT2_ISR'; // Interrupt 4 Pin Change Interrupt Request 2
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 5 Watchdog Time-out Interrupt
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 6 Timer/Counter1 Capture Event
procedure TIM1_CAPT_ISR; external name 'TIM1_CAPT_ISR'; // Interrupt 6 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 7 Timer/Counter1 Compare Match A
procedure TIM1_COMPA_ISR; external name 'TIM1_COMPA_ISR'; // Interrupt 7 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 8 Timer/Counter1 Compare Match B
procedure TIM1_COMPB_ISR; external name 'TIM1_COMPB_ISR'; // Interrupt 8 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 9 Timer/Counter1 Overflow
procedure TIM1_OVF_ISR; external name 'TIM1_OVF_ISR'; // Interrupt 9 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 10 TimerCounter0 Compare Match A
procedure TIM0_COMPA_ISR; external name 'TIM0_COMPA_ISR'; // Interrupt 10 TimerCounter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 11 TimerCounter0 Compare Match B
procedure TIM0_COMPB_ISR; external name 'TIM0_COMPB_ISR'; // Interrupt 11 TimerCounter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 12 Timer/Couner0 Overflow
procedure TIM0_OVF_ISR; external name 'TIM0_OVF_ISR'; // Interrupt 12 Timer/Couner0 Overflow
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 13 Analog Comparator
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 14 ADC Conversion Complete
procedure ADC_READY_ISR; external name 'ADC_READY_ISR'; // Interrupt 14 ADC Conversion Complete
procedure USART0_START_ISR; external name 'USART0_START_ISR'; // Interrupt 15 USART0, Start
procedure USART0_RXS_ISR; external name 'USART0_RXS_ISR'; // Interrupt 15 USART0, Start
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 16 USART0, Rx Complete
procedure USART0_RXC_ISR; external name 'USART0_RXC_ISR'; // Interrupt 16 USART0, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 17 USART0 Data Register Empty
procedure USART0_DRE_ISR; external name 'USART0_DRE_ISR'; // Interrupt 17 USART0 Data Register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 18 USART0, Tx Complete
procedure USART0_TXC_ISR; external name 'USART0_TXC_ISR'; // Interrupt 18 USART0, Tx Complete
procedure USART1_START_ISR; external name 'USART1_START_ISR'; // Interrupt 19 USART1, Start
procedure USART1_RXS_ISR; external name 'USART1_RXS_ISR'; // Interrupt 19 USART1, Start
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 20 USART1, Rx Complete
procedure USART1_RXC_ISR; external name 'USART1_RXC_ISR'; // Interrupt 20 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 21 USART1 Data Register Empty
procedure USART1_DRE_ISR; external name 'USART1_DRE_ISR'; // Interrupt 21 USART1 Data Register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 22 USART1, Tx Complete
procedure USART1_TXC_ISR; external name 'USART1_TXC_ISR'; // Interrupt 22 USART1, Tx Complete
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 23 USI Start Condition
procedure USI_STR_ISR; external name 'USI_STR_ISR'; // Interrupt 23 USI Start Condition
procedure USI_OVERFLOW_ISR; external name 'USI_OVERFLOW_ISR'; // Interrupt 24 USI Overflow
procedure USI_OVF_ISR; external name 'USI_OVF_ISR'; // Interrupt 24 USI Overflow
procedure TWI_SLAVE_ISR; external name 'TWI_SLAVE_ISR'; // Interrupt 25 Two-wire Serial Interface
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 25 Two-wire Serial Interface
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 26 EEPROM Ready
procedure QTRIP_ISR; external name 'QTRIP_ISR'; // Interrupt 27 Touch Sensing

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp PCINT2_ISR
  jmp WDT_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIM1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIM1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIM1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIM1_OVF_ISR
  jmp TIMER0_COMPA_ISR
  jmp TIM0_COMPA_ISR
  jmp TIMER0_COMPB_ISR
  jmp TIM0_COMPB_ISR
  jmp TIMER0_OVF_ISR
  jmp TIM0_OVF_ISR
  jmp ANA_COMP_ISR
  jmp ADC_ISR
  jmp ADC_READY_ISR
  jmp USART0_START_ISR
  jmp USART0_RXS_ISR
  jmp USART0_RX_ISR
  jmp USART0_RXC_ISR
  jmp USART0_UDRE_ISR
  jmp USART0_DRE_ISR
  jmp USART0_TX_ISR
  jmp USART0_TXC_ISR
  jmp USART1_START_ISR
  jmp USART1_RXS_ISR
  jmp USART1_RX_ISR
  jmp USART1_RXC_ISR
  jmp USART1_UDRE_ISR
  jmp USART1_DRE_ISR
  jmp USART1_TX_ISR
  jmp USART1_TXC_ISR
  jmp USI_START_ISR
  jmp USI_STR_ISR
  jmp USI_OVERFLOW_ISR
  jmp USI_OVF_ISR
  jmp TWI_SLAVE_ISR
  jmp TWI_ISR
  jmp EE_RDY_ISR
  jmp QTRIP_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak PCINT2_ISR
  .weak WDT_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIM1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIM1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIM1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIM1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIM0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIM0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak TIM0_OVF_ISR
  .weak ANA_COMP_ISR
  .weak ADC_ISR
  .weak ADC_READY_ISR
  .weak USART0_START_ISR
  .weak USART0_RXS_ISR
  .weak USART0_RX_ISR
  .weak USART0_RXC_ISR
  .weak USART0_UDRE_ISR
  .weak USART0_DRE_ISR
  .weak USART0_TX_ISR
  .weak USART0_TXC_ISR
  .weak USART1_START_ISR
  .weak USART1_RXS_ISR
  .weak USART1_RX_ISR
  .weak USART1_RXC_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_DRE_ISR
  .weak USART1_TX_ISR
  .weak USART1_TXC_ISR
  .weak USI_START_ISR
  .weak USI_STR_ISR
  .weak USI_OVERFLOW_ISR
  .weak USI_OVF_ISR
  .weak TWI_SLAVE_ISR
  .weak TWI_ISR
  .weak EE_RDY_ISR
  .weak QTRIP_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set PCINT2_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIM1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIM1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIM1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIM1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIM0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIM0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set TIM0_OVF_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set ADC_READY_ISR, Default_IRQ_handler
  .set USART0_START_ISR, Default_IRQ_handler
  .set USART0_RXS_ISR, Default_IRQ_handler
  .set USART0_RX_ISR, Default_IRQ_handler
  .set USART0_RXC_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART0_DRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set USART0_TXC_ISR, Default_IRQ_handler
  .set USART1_START_ISR, Default_IRQ_handler
  .set USART1_RXS_ISR, Default_IRQ_handler
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_RXC_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_DRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set USART1_TXC_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_STR_ISR, Default_IRQ_handler
  .set USI_OVERFLOW_ISR, Default_IRQ_handler
  .set USI_OVF_ISR, Default_IRQ_handler
  .set TWI_SLAVE_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set QTRIP_ISR, Default_IRQ_handler
end;

end.
