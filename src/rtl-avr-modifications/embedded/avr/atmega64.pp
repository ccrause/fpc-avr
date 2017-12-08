unit ATmega64;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  PINF: byte absolute $20;  // Input Pins, Port F
  PINE: byte absolute $21;  // Input Pins, Port E
  DDRE: byte absolute $22;  // Data Direction Register, Port E

type
  TPORTEset = bitpacked set of (e_PE0, e_PE1, e_PE2, e_PE3, e_PE4, e_PE5, e_PE6, e_PE7);
  TPORTErec = bitpacked record
    PE0,
    PE1,
    PE2,
    PE3,
    PE4,
    PE5,
    PE6,
    PE7: TBitField;
  end;
var
  PORTE: byte absolute $23;  // Data Register, Port E
  PORTEset: TPORTEset absolute $23;
  PORTErec: TPORTErec absolute $23;
const
  PE0 = 0;  m_PE0 = 1;
  PE1 = 1;  m_PE1 = 2;
  PE2 = 2;  m_PE2 = 4;
  PE3 = 3;  m_PE3 = 8;
  PE4 = 4;  m_PE4 = 16;
  PE5 = 5;  m_PE5 = 32;
  PE6 = 6;  m_PE6 = 64;
  PE7 = 7;  m_PE7 = 128;

var
  ADC: word absolute $24;  // ADC Data Register  Bytes
  ADCL: byte absolute $24;
  ADCH: byte absolute $25;

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
  ADCSRA: byte absolute $26;  // The ADC Control and Status register A
  ADCSRAset: TADCSRAset absolute $26;
  ADCSRArec: TADCSRArec absolute $26;
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
  TADMUXset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_MUX4, e_ADLAR, e_REFS0, e_REFS1);
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
  ADMUX: byte absolute $27;  // The ADC multiplexer Selection Register
  ADMUXset: TADMUXset absolute $27;
  ADMUXrec: TADMUXrec absolute $27;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  MUX4 = 4;  m_MUX4 = 16;  // Analog Channel and Gain Selection Bits
  ADLAR = 5;  m_ADLAR = 32;  // Left Adjust Result
  REFS0 = 6;  m_REFS0 = 64;  // Reference Selection Bits
  REFS1 = 7;  m_REFS1 = 128;  // Reference Selection Bits

type
  TACSRset = bitpacked set of (e_ACIS0, e_ACIS1, e_ACIC, e_ACIE, e_ACI, e_ACO, e_ACBG, e_ACD);
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
  ACSR: byte absolute $28;  // Analog Comparator Control And Status Register
  ACSRset: TACSRset absolute $28;
  ACSRrec: TACSRrec absolute $28;
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
  UBRR0L: byte absolute $29;  // USART Baud Rate Register Low Byte

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
  UCSR0B: byte absolute $2A;  // USART Control and Status Register B
  UCSR0Bset: TUCSR0Bset absolute $2A;
  UCSR0Brec: TUCSR0Brec absolute $2A;
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
  UCSR0A: byte absolute $2B;  // USART Control and Status Register A
  UCSR0Aset: TUCSR0Aset absolute $2B;
  UCSR0Arec: TUCSR0Arec absolute $2B;
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
  UDR0: byte absolute $2C;  // USART I/O Data Register

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
  SPCR: byte absolute $2D;  // SPI Control Register
  SPCRset: TSPCRset absolute $2D;
  SPCRrec: TSPCRrec absolute $2D;
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
  SPSR: byte absolute $2E;  // SPI Status Register
  SPSRset: TSPSRset absolute $2E;
  SPSRrec: TSPSRrec absolute $2E;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  m_WCOL = 64;  // Write Collision Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

var
  SPDR: byte absolute $2F;  // SPI Data Register
  PIND: byte absolute $30;  // Port D Input Pins
  DDRD: byte absolute $31;  // Port D Data Direction Register

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
  PORTD: byte absolute $32;  // Port D Data Register
  PORTDset: TPORTDset absolute $32;
  PORTDrec: TPORTDrec absolute $32;
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
  PINC: byte absolute $33;  // Port C Input Pins
  DDRC: byte absolute $34;  // Port C Data Direction Register

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
  PORTC: byte absolute $35;  // Port C Data Register
  PORTCset: TPORTCset absolute $35;
  PORTCrec: TPORTCrec absolute $35;
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
  PINB: byte absolute $36;  // Port B Input Pins
  DDRB: byte absolute $37;  // Port B Data Direction Register

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
  PORTB: byte absolute $38;  // Port B Data Register
  PORTBset: TPORTBset absolute $38;
  PORTBrec: TPORTBrec absolute $38;
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
  PINA: byte absolute $39;  // Port A Input Pins
  DDRA: byte absolute $3A;  // Port A Data Direction Register

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
  PORTA: byte absolute $3B;  // Port A Data Register
  PORTAset: TPORTAset absolute $3B;
  PORTArec: TPORTArec absolute $3B;
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
  TEECRset = bitpacked set of (e_EERE, e_EEWE, e_EEMWE, e_EERIE);
  TEECRrec = bitpacked record
    EERE,
    EEWE,
    EEMWE,
    EERIE,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
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

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: word absolute $3E;  // EEPROM Read/Write Access  Bytes
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;

type
  TSFIORset = bitpacked set of (e_PSR321, e_PSR0, e_PUD, e_ACME, e_TSM=7);
  TSFIORrec = bitpacked record
    PSR321,
    PSR0,
    PUD,
    ACME,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    TSM: TBitField;
  end;
var
  SFIOR: byte absolute $40;  // Special Function IO Register
  SFIORset: TSFIORset absolute $40;
  SFIORrec: TSFIORrec absolute $40;
const
  PSR321 = 0;  m_PSR321 = 1;  // Prescaler Reset Timer/Counter3, Timer/Counter2, and Timer/Counter1
  PSR0 = 1;  m_PSR0 = 2;  // Prescaler Reset Timer/Counter0
  PUD = 2;  m_PUD = 4;  // Pull Up Disable
  ACME = 3;  m_ACME = 8;  // Analog Comparator Multiplexer Enable
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDCE);
  TWDTCRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    WDCE,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  WDTCR: byte absolute $41;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $41;
  WDTCRrec: TWDTCRrec absolute $41;
const
  WDP0 = 0;  m_WDP0 = 1;  // Watch Dog Timer Prescaler bits
  WDP1 = 1;  m_WDP1 = 2;  // Watch Dog Timer Prescaler bits
  WDP2 = 2;  m_WDP2 = 4;  // Watch Dog Timer Prescaler bits
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDCE = 4;  m_WDCE = 16;  // Watchdog Change Enable

type
  TOCDRset = bitpacked set of (e_OCDR0, e_OCDR1, e_OCDR2, e_OCDR3, e_OCDR4, e_OCDR5, e_OCDR6, e_OCDR7);
  TOCDRrec = bitpacked record
    OCDR0,
    OCDR1,
    OCDR2,
    OCDR3,
    OCDR4,
    OCDR5,
    OCDR6,
    OCDR7: TBitField;
  end;
var
  OCDR: byte absolute $42;  // On-Chip Debug Related Register in I/O Memory
  OCDRset: TOCDRset absolute $42;
  OCDRrec: TOCDRrec absolute $42;
const
  OCDR0 = 0;  m_OCDR0 = 1;  // On-Chip Debug Register Bits
  OCDR1 = 1;  m_OCDR1 = 2;  // On-Chip Debug Register Bits
  OCDR2 = 2;  m_OCDR2 = 4;  // On-Chip Debug Register Bits
  OCDR3 = 3;  m_OCDR3 = 8;  // On-Chip Debug Register Bits
  OCDR4 = 4;  m_OCDR4 = 16;  // On-Chip Debug Register Bits
  OCDR5 = 5;  m_OCDR5 = 32;  // On-Chip Debug Register Bits
  OCDR6 = 6;  m_OCDR6 = 64;  // On-Chip Debug Register Bits
  OCDR7 = 7;  m_OCDR7 = 128;  // On-Chip Debug Register Bits

var
  OCR2: byte absolute $43;  // Output Compare Register
  TCNT2: byte absolute $44;  // Timer/Counter Register

type
  TTCCR2set = bitpacked set of (e_CS20, e_CS21, e_CS22, e_WGM21, e_COM20, e_COM21, e_WGM20, e_FOC2);
  TTCCR2rec = bitpacked record
    CS20,
    CS21,
    CS22,
    WGM21,
    COM20,
    COM21,
    WGM20,
    FOC2: TBitField;
  end;
var
  TCCR2: byte absolute $45;  // Timer/Counter Control Register
  TCCR2set: TTCCR2set absolute $45;
  TCCR2rec: TTCCR2rec absolute $45;
const
  CS20 = 0;  m_CS20 = 1;  // Clock Select
  CS21 = 1;  m_CS21 = 2;  // Clock Select
  CS22 = 2;  m_CS22 = 4;  // Clock Select
  WGM21 = 3;  m_WGM21 = 8;  // Waveform Generation Mode
  COM20 = 4;  m_COM20 = 16;  // Compare Match Output Mode
  COM21 = 5;  m_COM21 = 32;  // Compare Match Output Mode
  WGM20 = 6;  m_WGM20 = 64;  // Wafeform Generation Mode
  FOC2 = 7;  m_FOC2 = 128;  // Force Output Compare

var
  ICR1: word absolute $46;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $46;
  ICR1H: byte absolute $47;
  OCR1B: word absolute $48;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1BL: byte absolute $48;
  OCR1BH: byte absolute $49;
  OCR1A: word absolute $4A;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1AL: byte absolute $4A;
  OCR1AH: byte absolute $4B;
  TCNT1: word absolute $4C;  // Timer/Counter1  Bytes
  TCNT1L: byte absolute $4C;
  TCNT1H: byte absolute $4D;

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
  TCCR1B: byte absolute $4E;  // Timer/Counter1 Control Register B
  TCCR1Bset: TTCCR1Bset absolute $4E;
  TCCR1Brec: TTCCR1Brec absolute $4E;
const
  CS10 = 0;  m_CS10 = 1;  // Clock Select1 bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select1 bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select1 bits
  ICES1 = 6;  m_ICES1 = 64;  // Input Capture 1 Edge Select
  ICNC1 = 7;  m_ICNC1 = 128;  // Input Capture 1 Noise Canceler

type
  TTCCR1Aset = bitpacked set of (e_WGM10, e_WGM11, e_COM1C0, e_COM1C1, e_COM1B0, e_COM1B1, e_COM1A0, e_COM1A1);
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
  TCCR1A: byte absolute $4F;  // Timer/Counter1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $4F;
  TCCR1Arec: TTCCR1Arec absolute $4F;
const
  WGM10 = 0;  m_WGM10 = 1;  // Waveform Generation Mode Bits
  WGM11 = 1;  m_WGM11 = 2;  // Waveform Generation Mode Bits
  COM1C0 = 2;  m_COM1C0 = 4;  // Compare Output Mode 1C, bits
  COM1C1 = 3;  m_COM1C1 = 8;  // Compare Output Mode 1C, bits
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

type
  TASSRset = bitpacked set of (e_TCR0UB, e_OCR0UB, e_TCN0UB, e_AS0);
  TASSRrec = bitpacked record
    TCR0UB,
    OCR0UB,
    TCN0UB,
    AS0,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ASSR: byte absolute $50;  // Asynchronus Status Register
  ASSRset: TASSRset absolute $50;
  ASSRrec: TASSRrec absolute $50;
const
  TCR0UB = 0;  m_TCR0UB = 1;  // Timer/Counter Control Register 0 Update Busy
  OCR0UB = 1;  m_OCR0UB = 2;  // Output Compare register 0 Busy
  TCN0UB = 2;  m_TCN0UB = 4;  // Timer/Counter0 Update Busy
  AS0 = 3;  m_AS0 = 8;  // Asynchronus Timer/Counter 0

var
  OCR0: byte absolute $51;  // Output Compare Register
  TCNT0: byte absolute $52;  // Timer/Counter Register

type
  TTCCR0set = bitpacked set of (e_CS00, e_CS01, e_CS02, e_WGM01, e_COM00, e_COM01, e_WGM00, e_FOC0);
  TTCCR0rec = bitpacked record
    CS00,
    CS01,
    CS02,
    WGM01,
    COM00,
    COM01,
    WGM00,
    FOC0: TBitField;
  end;
var
  TCCR0: byte absolute $53;  // Timer/Counter Control Register
  TCCR0set: TTCCR0set absolute $53;
  TCCR0rec: TTCCR0rec absolute $53;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Selects
  CS01 = 1;  m_CS01 = 2;  // Clock Selects
  CS02 = 2;  m_CS02 = 4;  // Clock Selects
  WGM01 = 3;  m_WGM01 = 8;  // Waveform Generation Mode 1
  COM00 = 4;  m_COM00 = 16;  // Compare Match Output Modes
  COM01 = 5;  m_COM01 = 32;  // Compare Match Output Modes
  WGM00 = 6;  m_WGM00 = 64;  // Waveform Generation Mode 0
  FOC0 = 7;  m_FOC0 = 128;  // Force Output Compare

type
  TMCUCSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_JTRF, e_JTD=7);
  TMCUCSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    JTRF,
    ReservedBit5,
    ReservedBit6,
    JTD: TBitField;
  end;
var
  MCUCSR: byte absolute $54;  // MCU Control And Status Register
  MCUCSRset: TMCUCSRset absolute $54;
  MCUCSRrec: TMCUCSRrec absolute $54;
const
  PORF = 0;  m_PORF = 1;  // Power-on reset flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  BORF = 2;  m_BORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag
  JTRF = 4;  m_JTRF = 16;  // JTAG Reset Flag
  JTD = 7;  m_JTD = 128;  // JTAG Interface Disable

type
  TMCUCRset = bitpacked set of (e_IVCE, e_IVSEL, e_SM2, e_SM0, e_SM1, e_SE, e_SRW10, e_SRE);
  TMCUCRrec = bitpacked record
    IVCE,
    IVSEL,
    SM2,
    SM0,
    SM1,
    SE,
    SRW10,
    SRE: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  IVCE = 0;  m_IVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select
  SM2 = 2;  m_SM2 = 4;  // Sleep Mode Select
  SM0 = 3;  m_SM0 = 8;  // Sleep Mode Select
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select
  SE = 5;  m_SE = 32;  // Sleep Enable
  SRW10 = 6;  m_SRW10 = 64;  // External SRAM Wait State Select
  SRE = 7;  m_SRE = 128;  // External SRAM Enable

type
  TTIFRset = bitpacked set of (e_TOV0, e_OCF0, e_TOV1, e_OCF1B, e_OCF1A, e_ICF1, e_TOV2, e_OCF2);
  TTIFRrec = bitpacked record
    TOV0,
    OCF0,
    TOV1,
    OCF1B,
    OCF1A,
    ICF1,
    TOV2,
    OCF2: TBitField;
  end;
var
  TIFR: byte absolute $56;  // Timer/Counter Interrupt Flag Register
  TIFRset: TTIFRset absolute $56;
  TIFRrec: TTIFRrec absolute $56;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0 = 1;  m_OCF0 = 2;  // Output Compare Flag 0
  TOV1 = 2;  m_TOV1 = 4;  // Timer/Counter1 Overflow Flag
  OCF1B = 3;  m_OCF1B = 8;  // Output Compare Flag 1B
  OCF1A = 4;  m_OCF1A = 16;  // Output Compare Flag 1A
  ICF1 = 5;  m_ICF1 = 32;  // Input Capture Flag 1
  TOV2 = 6;  m_TOV2 = 64;  // Timer/Counter2 Overflow Flag
  OCF2 = 7;  m_OCF2 = 128;  // Output Compare Flag 2

type
  TTIMSKset = bitpacked set of (e_TOIE0, e_OCIE0, e_TOIE1, e_OCIE1B, e_OCIE1A, e_TICIE1, e_TOIE2, e_OCIE2);
  TTIMSKrec = bitpacked record
    TOIE0,
    OCIE0,
    TOIE1,
    OCIE1B,
    OCIE1A,
    TICIE1,
    TOIE2,
    OCIE2: TBitField;
  end;
var
  TIMSK: byte absolute $57;
  TIMSKset: TTIMSKset absolute $57;
  TIMSKrec: TTIMSKrec absolute $57;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0 = 1;  m_OCIE0 = 2;  // Timer/Counter0 Output Compare Match Interrupt register
  TOIE1 = 2;  m_TOIE1 = 4;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1B = 3;  m_OCIE1B = 8;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  OCIE1A = 4;  m_OCIE1A = 16;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  TICIE1 = 5;  m_TICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable
  TOIE2 = 6;  m_TOIE2 = 64;
  OCIE2 = 7;  m_OCIE2 = 128;

type
  TEIFRset = bitpacked set of (e_INTF0, e_INTF1, e_INTF2, e_INTF3, e_INTF4, e_INTF5, e_INTF6, e_INTF7);
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
  EIFR: byte absolute $58;  // External Interrupt Flag Register
  EIFRset: TEIFRset absolute $58;
  EIFRrec: TEIFRrec absolute $58;
const
  INTF0 = 0;  m_INTF0 = 1;  // External Interrupt Flags
  INTF1 = 1;  m_INTF1 = 2;  // External Interrupt Flags
  INTF2 = 2;  m_INTF2 = 4;  // External Interrupt Flags
  INTF3 = 3;  m_INTF3 = 8;  // External Interrupt Flags
  INTF4 = 4;  m_INTF4 = 16;  // External Interrupt Flags
  INTF5 = 5;  m_INTF5 = 32;  // External Interrupt Flags
  INTF6 = 6;  m_INTF6 = 64;  // External Interrupt Flags
  INTF7 = 7;  m_INTF7 = 128;  // External Interrupt Flags

type
  TEIMSKset = bitpacked set of (e_INT0, e_INT1, e_INT2, e_INT3, e_INT4, e_INT5, e_INT6, e_INT7);
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
  EIMSK: byte absolute $59;  // External Interrupt Mask Register
  EIMSKset: TEIMSKset absolute $59;
  EIMSKrec: TEIMSKrec absolute $59;
const
  INT0 = 0;  m_INT0 = 1;  // External Interrupt Request 7 Enable
  INT1 = 1;  m_INT1 = 2;  // External Interrupt Request 7 Enable
  INT2 = 2;  m_INT2 = 4;  // External Interrupt Request 7 Enable
  INT3 = 3;  m_INT3 = 8;  // External Interrupt Request 7 Enable
  INT4 = 4;  m_INT4 = 16;  // External Interrupt Request 7 Enable
  INT5 = 5;  m_INT5 = 32;  // External Interrupt Request 7 Enable
  INT6 = 6;  m_INT6 = 64;  // External Interrupt Request 7 Enable
  INT7 = 7;  m_INT7 = 128;  // External Interrupt Request 7 Enable

type
  TEICRBset = bitpacked set of (e_ISC40, e_ISC41, e_ISC50, e_ISC51, e_ISC60, e_ISC61, e_ISC70, e_ISC71);
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
  EICRB: byte absolute $5A;  // External Interrupt Control Register B
  EICRBset: TEICRBset absolute $5A;
  EICRBrec: TEICRBrec absolute $5A;
const
  ISC40 = 0;  m_ISC40 = 1;  // External Interrupt 7-4 Sense Control Bit
  ISC41 = 1;  m_ISC41 = 2;  // External Interrupt 7-4 Sense Control Bit
  ISC50 = 2;  m_ISC50 = 4;  // External Interrupt 7-4 Sense Control Bit
  ISC51 = 3;  m_ISC51 = 8;  // External Interrupt 7-4 Sense Control Bit
  ISC60 = 4;  m_ISC60 = 16;  // External Interrupt 7-4 Sense Control Bit
  ISC61 = 5;  m_ISC61 = 32;  // External Interrupt 7-4 Sense Control Bit
  ISC70 = 6;  m_ISC70 = 64;  // External Interrupt 7-4 Sense Control Bit
  ISC71 = 7;  m_ISC71 = 128;  // External Interrupt 7-4 Sense Control Bit

type
  TXDIVset = bitpacked set of (e_XDIV0, e_XDIV1, e_XDIV2, e_XDIV3, e_XDIV4, e_XDIV5, e_XDIV6, e_XDIVEN);
  TXDIVrec = bitpacked record
    XDIV0,
    XDIV1,
    XDIV2,
    XDIV3,
    XDIV4,
    XDIV5,
    XDIV6,
    XDIVEN: TBitField;
  end;
var
  XDIV: byte absolute $5C;  // XTAL Divide Control Register
  XDIVset: TXDIVset absolute $5C;
  XDIVrec: TXDIVrec absolute $5C;
const
  XDIV0 = 0;  m_XDIV0 = 1;  // XTAl Divide Select Bits
  XDIV1 = 1;  m_XDIV1 = 2;  // XTAl Divide Select Bits
  XDIV2 = 2;  m_XDIV2 = 4;  // XTAl Divide Select Bits
  XDIV3 = 3;  m_XDIV3 = 8;  // XTAl Divide Select Bits
  XDIV4 = 4;  m_XDIV4 = 16;  // XTAl Divide Select Bits
  XDIV5 = 5;  m_XDIV5 = 32;  // XTAl Divide Select Bits
  XDIV6 = 6;  m_XDIV6 = 64;  // XTAl Divide Select Bits
  XDIVEN = 7;  m_XDIVEN = 128;  // XTAL Divide Enable

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
  DDRF: byte absolute $61;  // Data Direction Register, Port F

type
  TPORTFset = bitpacked set of (e_PF0, e_PF1, e_PF2, e_PF3, e_PF4, e_PF5, e_PF6, e_PF7);
  TPORTFrec = bitpacked record
    PF0,
    PF1,
    PF2,
    PF3,
    PF4,
    PF5,
    PF6,
    PF7: TBitField;
  end;
var
  PORTF: byte absolute $62;  // Data Register, Port F
  PORTFset: TPORTFset absolute $62;
  PORTFrec: TPORTFrec absolute $62;
const
  PF0 = 0;  m_PF0 = 1;
  PF1 = 1;  m_PF1 = 2;
  PF2 = 2;  m_PF2 = 4;
  PF3 = 3;  m_PF3 = 8;
  PF4 = 4;  m_PF4 = 16;
  PF5 = 5;  m_PF5 = 32;
  PF6 = 6;  m_PF6 = 64;
  PF7 = 7;  m_PF7 = 128;

var
  PING: byte absolute $63;  // Input Pins, Port G
  DDRG: byte absolute $64;  // Data Direction Register, Port G

type
  TPORTGset = bitpacked set of (e_PG0, e_PG1, e_PG2, e_PG3, e_PG4);
  TPORTGrec = bitpacked record
    PG0,
    PG1,
    PG2,
    PG3,
    PG4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTG: byte absolute $65;  // Data Register, Port G
  PORTGset: TPORTGset absolute $65;
  PORTGrec: TPORTGrec absolute $65;
const
  PG0 = 0;  m_PG0 = 1;
  PG1 = 1;  m_PG1 = 2;
  PG2 = 2;  m_PG2 = 4;
  PG3 = 3;  m_PG3 = 8;
  PG4 = 4;  m_PG4 = 16;

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_BLBSET, e_RWWSRE, e_RWWSB=6, e_SPMIE);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    BLBSET,
    RWWSRE,
    ReservedBit5,
    RWWSB,
    SPMIE: TBitField;
  end;
var
  SPMCSR: byte absolute $68;  // Store Program Memory Control Register
  SPMCSRset: TSPMCSRset absolute $68;
  SPMCSRrec: TSPMCSRrec absolute $68;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read While Write section read enable
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

type
  TEICRAset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11, e_ISC20, e_ISC21, e_ISC30, e_ISC31);
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
  EICRA: byte absolute $6A;  // External Interrupt Control Register A
  EICRAset: TEICRAset absolute $6A;
  EICRArec: TEICRArec absolute $6A;
const
  ISC00 = 0;  m_ISC00 = 1;  // External Interrupt Sense Control Bit
  ISC01 = 1;  m_ISC01 = 2;  // External Interrupt Sense Control Bit
  ISC10 = 2;  m_ISC10 = 4;  // External Interrupt Sense Control Bit
  ISC11 = 3;  m_ISC11 = 8;  // External Interrupt Sense Control Bit
  ISC20 = 4;  m_ISC20 = 16;  // External Interrupt Sense Control Bit
  ISC21 = 5;  m_ISC21 = 32;  // External Interrupt Sense Control Bit
  ISC30 = 6;  m_ISC30 = 64;  // External Interrupt Sense Control Bit
  ISC31 = 7;  m_ISC31 = 128;  // External Interrupt Sense Control Bit

type
  TXMCRBset = bitpacked set of (e_XMM0, e_XMM1, e_XMM2, e_XMBK=7);
  TXMCRBrec = bitpacked record
    XMM0,
    XMM1,
    XMM2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    XMBK: TBitField;
  end;
var
  XMCRB: byte absolute $6C;  // External Memory Control Register B
  XMCRBset: TXMCRBset absolute $6C;
  XMCRBrec: TXMCRBrec absolute $6C;
const
  XMM0 = 0;  m_XMM0 = 1;  // External Memory High Mask
  XMM1 = 1;  m_XMM1 = 2;  // External Memory High Mask
  XMM2 = 2;  m_XMM2 = 4;  // External Memory High Mask
  XMBK = 7;  m_XMBK = 128;  // External Memory Bus Keeper Enable

type
  TXMCRAset = bitpacked set of (e_SRW11=1, e_SRW00, e_SRW01, e_SRL0, e_SRL1, e_SRL2);
  TXMCRArec = bitpacked record
    ReservedBit0,
    SRW11,
    SRW00,
    SRW01,
    SRL0,
    SRL1,
    SRL2,
    ReservedBit7: TBitField;
  end;
var
  XMCRA: byte absolute $6D;  // External Memory Control Register A
  XMCRAset: TXMCRAset absolute $6D;
  XMCRArec: TXMCRArec absolute $6D;
const
  SRW11 = 1;  m_SRW11 = 2;  // Wait state select bit upper page
  SRW00 = 2;  m_SRW00 = 4;  // Wait state select bit lower page
  SRW01 = 3;  m_SRW01 = 8;  // Wait state select bit lower page
  SRL0 = 4;  m_SRL0 = 16;  // Wait state page limit
  SRL1 = 5;  m_SRL1 = 32;  // Wait state page limit
  SRL2 = 6;  m_SRL2 = 64;  // Wait state page limit

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
  OSCCAL: byte absolute $6F;  // Oscillator Calibration Value
  OSCCALset: TOSCCALset absolute $6F;
  OSCCALrec: TOSCCALrec absolute $6F;
const
  OSCCAL0 = 0;  m_OSCCAL0 = 1;  // Oscillator Calibration 
  OSCCAL1 = 1;  m_OSCCAL1 = 2;  // Oscillator Calibration 
  OSCCAL2 = 2;  m_OSCCAL2 = 4;  // Oscillator Calibration 
  OSCCAL3 = 3;  m_OSCCAL3 = 8;  // Oscillator Calibration 
  OSCCAL4 = 4;  m_OSCCAL4 = 16;  // Oscillator Calibration 
  OSCCAL5 = 5;  m_OSCCAL5 = 32;  // Oscillator Calibration 
  OSCCAL6 = 6;  m_OSCCAL6 = 64;  // Oscillator Calibration 
  OSCCAL7 = 7;  m_OSCCAL7 = 128;  // Oscillator Calibration

var
  TWBR: byte absolute $70;  // TWI Bit Rate register

type
  TTWSRset = bitpacked set of (e_TWPS0, e_TWPS1, e_TWS3=3, e_TWS4, e_TWS5, e_TWS6, e_TWS7);
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
  TWSR: byte absolute $71;  // TWI Status Register
  TWSRset: TTWSRset absolute $71;
  TWSRrec: TTWSRrec absolute $71;
const
  TWPS0 = 0;  m_TWPS0 = 1;  // TWI Prescaler
  TWPS1 = 1;  m_TWPS1 = 2;  // TWI Prescaler
  TWS3 = 3;  m_TWS3 = 8;  // TWI Status
  TWS4 = 4;  m_TWS4 = 16;  // TWI Status
  TWS5 = 5;  m_TWS5 = 32;  // TWI Status
  TWS6 = 6;  m_TWS6 = 64;  // TWI Status
  TWS7 = 7;  m_TWS7 = 128;  // TWI Status

type
  TTWARset = bitpacked set of (e_TWGCE, e_TWA0, e_TWA1, e_TWA2, e_TWA3, e_TWA4, e_TWA5, e_TWA6);
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
  TWAR: byte absolute $72;  // TWI (Slave) Address register
  TWARset: TTWARset absolute $72;
  TWARrec: TTWARrec absolute $72;
const
  TWGCE = 0;  m_TWGCE = 1;  // TWI General Call Recognition Enable Bit
  TWA0 = 1;  m_TWA0 = 2;  // TWI (Slave) Address register Bits
  TWA1 = 2;  m_TWA1 = 4;  // TWI (Slave) Address register Bits
  TWA2 = 3;  m_TWA2 = 8;  // TWI (Slave) Address register Bits
  TWA3 = 4;  m_TWA3 = 16;  // TWI (Slave) Address register Bits
  TWA4 = 5;  m_TWA4 = 32;  // TWI (Slave) Address register Bits
  TWA5 = 6;  m_TWA5 = 64;  // TWI (Slave) Address register Bits
  TWA6 = 7;  m_TWA6 = 128;  // TWI (Slave) Address register Bits

var
  TWDR: byte absolute $73;  // TWI Data register

type
  TTWCRset = bitpacked set of (e_TWIE, e_TWEN=2, e_TWWC, e_TWSTO, e_TWSTA, e_TWEA, e_TWINT);
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
  TWCR: byte absolute $74;  // TWI Control Register
  TWCRset: TTWCRset absolute $74;
  TWCRrec: TTWCRrec absolute $74;
const
  TWIE = 0;  m_TWIE = 1;  // TWI Interrupt Enable
  TWEN = 2;  m_TWEN = 4;  // TWI Enable Bit
  TWWC = 3;  m_TWWC = 8;  // TWI Write Collition Flag
  TWSTO = 4;  m_TWSTO = 16;  // TWI Stop Condition Bit
  TWSTA = 5;  m_TWSTA = 32;  // TWI Start Condition Bit
  TWEA = 6;  m_TWEA = 64;  // TWI Enable Acknowledge Bit
  TWINT = 7;  m_TWINT = 128;  // TWI Interrupt Flag

var
  OCR1C: word absolute $78;  // Timer/Counter1 Output Compare Register  Bytes
  OCR1CL: byte absolute $78;
  OCR1CH: byte absolute $79;

type
  TTCCR1Cset = bitpacked set of (e_FOC1C=5, e_FOC1B, e_FOC1A);
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
  TCCR1C: byte absolute $7A;  // Timer/Counter1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $7A;
  TCCR1Crec: TTCCR1Crec absolute $7A;
const
  FOC1C = 5;  m_FOC1C = 32;  // Force Output Compare for channel C
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare for channel B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare for channel A

type
  TETIFRset = bitpacked set of (e_OCF1C, e_OCF3C, e_TOV3, e_OCF3B, e_OCF3A, e_ICF3);
  TETIFRrec = bitpacked record
    OCF1C,
    OCF3C,
    TOV3,
    OCF3B,
    OCF3A,
    ICF3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ETIFR: byte absolute $7C;  // Extended Timer/Counter Interrupt Flag register
  ETIFRset: TETIFRset absolute $7C;
  ETIFRrec: TETIFRrec absolute $7C;
const
  OCF1C = 0;  m_OCF1C = 1;  // Timer/Counter 1, Output Compare C Match Flag
  OCF3C = 1;  m_OCF3C = 2;  // Timer/Counter3 Output Compare C Match Flag
  TOV3 = 2;  m_TOV3 = 4;  // Timer/Counter3 Overflow Flag
  OCF3B = 3;  m_OCF3B = 8;  // Output Compare Flag 1B
  OCF3A = 4;  m_OCF3A = 16;  // Output Compare Flag 1A
  ICF3 = 5;  m_ICF3 = 32;  // Input Capture Flag 1

type
  TETIMSKset = bitpacked set of (e_OCIE1C, e_OCIE3C, e_TOIE3, e_OCIE3B, e_OCIE3A, e_TICIE3);
  TETIMSKrec = bitpacked record
    OCIE1C,
    OCIE3C,
    TOIE3,
    OCIE3B,
    OCIE3A,
    TICIE3,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ETIMSK: byte absolute $7D;  // Extended Timer/Counter Interrupt Mask Register
  ETIMSKset: TETIMSKset absolute $7D;
  ETIMSKrec: TETIMSKrec absolute $7D;
const
  OCIE1C = 0;  m_OCIE1C = 1;  // Timer/Counter 1, Output Compare Match C Interrupt Enable
  OCIE3C = 1;  m_OCIE3C = 2;  // Timer/Counter3, Output Compare Match Interrupt Enable
  TOIE3 = 2;  m_TOIE3 = 4;  // Timer/Counter3 Overflow Interrupt Enable
  OCIE3B = 3;  m_OCIE3B = 8;  // Timer/Counter3 Output CompareB Match Interrupt Enable
  OCIE3A = 4;  m_OCIE3A = 16;  // Timer/Counter3 Output CompareA Match Interrupt Enable
  TICIE3 = 5;  m_TICIE3 = 32;  // Timer/Counter3 Input Capture Interrupt Enable

var
  ICR3: word absolute $80;  // Timer/Counter3 Input Capture Register  Bytes
  ICR3L: byte absolute $80;
  ICR3H: byte absolute $81;
  OCR3C: word absolute $82;  // Timer/Counter3 Output compare Register C  Bytes
  OCR3CL: byte absolute $82;
  OCR3CH: byte absolute $83;
  OCR3B: word absolute $84;  // Timer/Counter3 Output Compare Register B  Bytes
  OCR3BL: byte absolute $84;
  OCR3BH: byte absolute $85;
  OCR3A: word absolute $86;  // Timer/Counter3 Output Compare Register A  Bytes
  OCR3AL: byte absolute $86;
  OCR3AH: byte absolute $87;
  TCNT3: word absolute $88;  // Timer/Counter3  Bytes
  TCNT3L: byte absolute $88;
  TCNT3H: byte absolute $89;

type
  TTCCR3Bset = bitpacked set of (e_CS30, e_CS31, e_CS32, e_ICES3=6, e_ICNC3);
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
  TCCR3B: byte absolute $8A;  // Timer/Counter3 Control Register B
  TCCR3Bset: TTCCR3Bset absolute $8A;
  TCCR3Brec: TTCCR3Brec absolute $8A;
const
  CS30 = 0;  m_CS30 = 1;  // Clock Select3 bits
  CS31 = 1;  m_CS31 = 2;  // Clock Select3 bits
  CS32 = 2;  m_CS32 = 4;  // Clock Select3 bits
  ICES3 = 6;  m_ICES3 = 64;  // Input Capture 3 Edge Select
  ICNC3 = 7;  m_ICNC3 = 128;  // Input Capture 3  Noise Canceler

type
  TTCCR3Aset = bitpacked set of (e_WGM30, e_WGM31, e_COM3C0, e_COM3C1, e_COM3B0, e_COM3B1, e_COM3A0, e_COM3A1);
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
  TCCR3A: byte absolute $8B;  // Timer/Counter3 Control Register A
  TCCR3Aset: TTCCR3Aset absolute $8B;
  TCCR3Arec: TTCCR3Arec absolute $8B;
const
  WGM30 = 0;  m_WGM30 = 1;  // Waveform Generation Mode Bits
  WGM31 = 1;  m_WGM31 = 2;  // Waveform Generation Mode Bits
  COM3C0 = 2;  m_COM3C0 = 4;  // Compare Output Mode 3C, bits
  COM3C1 = 3;  m_COM3C1 = 8;  // Compare Output Mode 3C, bits
  COM3B0 = 4;  m_COM3B0 = 16;  // Compare Output Mode 3B, bits
  COM3B1 = 5;  m_COM3B1 = 32;  // Compare Output Mode 3B, bits
  COM3A0 = 6;  m_COM3A0 = 64;  // Compare Output Mode 3A, bits
  COM3A1 = 7;  m_COM3A1 = 128;  // Compare Output Mode 3A, bits

type
  TTCCR3Cset = bitpacked set of (e_FOC3C=5, e_FOC3B, e_FOC3A);
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
  TCCR3C: byte absolute $8C;  // Timer/Counter3 Control Register C
  TCCR3Cset: TTCCR3Cset absolute $8C;
  TCCR3Crec: TTCCR3Crec absolute $8C;
const
  FOC3C = 5;  m_FOC3C = 32;  // Force Output Compare for channel C
  FOC3B = 6;  m_FOC3B = 64;  // Force Output Compare for channel B
  FOC3A = 7;  m_FOC3A = 128;  // Force Output Compare for channel A

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADCSRB: byte absolute $8E;  // The ADC Control and Status register B
  ADCSRBset: TADCSRBset absolute $8E;
  ADCSRBrec: TADCSRBrec absolute $8E;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Source bits
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Source bits
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Source bits

var
  UBRR0H: byte absolute $90;  // USART Baud Rate Register Hight Byte

type
  TUCSR0Cset = bitpacked set of (e_UCPOL0, e_UCSZ00, e_UCSZ01, e_USBS0, e_UPM00, e_UPM01, e_UMSEL0);
  TUCSR0Crec = bitpacked record
    UCPOL0,
    UCSZ00,
    UCSZ01,
    USBS0,
    UPM00,
    UPM01,
    UMSEL0,
    ReservedBit7: TBitField;
  end;
var
  UCSR0C: byte absolute $95;  // USART Control and Status Register C
  UCSR0Cset: TUCSR0Cset absolute $95;
  UCSR0Crec: TUCSR0Crec absolute $95;
const
  UCPOL0 = 0;  m_UCPOL0 = 1;  // Clock Polarity
  UCSZ00 = 1;  m_UCSZ00 = 2;  // Character Size
  UCSZ01 = 2;  m_UCSZ01 = 4;  // Character Size
  USBS0 = 3;  m_USBS0 = 8;  // Stop Bit Select
  UPM00 = 4;  m_UPM00 = 16;  // Parity Mode Bits
  UPM01 = 5;  m_UPM01 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select

var
  UBRR1H: byte absolute $98;  // USART Baud Rate Register Hight Byte
  UBRR1L: byte absolute $99;  // USART Baud Rate Register Low Byte

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
  UCSR1B: byte absolute $9A;  // USART Control and Status Register B
  UCSR1Bset: TUCSR1Bset absolute $9A;
  UCSR1Brec: TUCSR1Brec absolute $9A;
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
  UCSR1A: byte absolute $9B;  // USART Control and Status Register A
  UCSR1Aset: TUCSR1Aset absolute $9B;
  UCSR1Arec: TUCSR1Arec absolute $9B;
const
  MPCM1 = 0;  m_MPCM1 = 1;  // Multi-processor Communication Mode
  U2X1 = 1;  m_U2X1 = 2;  // Double the USART transmission speed
  UPE1 = 2;  m_UPE1 = 4;  // Parity Error
  DOR1 = 3;  m_DOR1 = 8;  // Data overRun
  FE1 = 4;  m_FE1 = 16;  // Framing Error
  UDRE1 = 5;  m_UDRE1 = 32;  // USART Data Register Empty
  TXC1 = 6;  m_TXC1 = 64;  // USART Transmitt Complete
  RXC1 = 7;  m_RXC1 = 128;  // USART Receive Complete

var
  UDR1: byte absolute $9C;  // USART I/O Data Register

type
  TUCSR1Cset = bitpacked set of (e_UCPOL1, e_UCSZ10, e_UCSZ11, e_USBS1, e_UPM10, e_UPM11, e_UMSEL1);
  TUCSR1Crec = bitpacked record
    UCPOL1,
    UCSZ10,
    UCSZ11,
    USBS1,
    UPM10,
    UPM11,
    UMSEL1,
    ReservedBit7: TBitField;
  end;
var
  UCSR1C: byte absolute $9D;  // USART Control and Status Register C
  UCSR1Cset: TUCSR1Cset absolute $9D;
  UCSR1Crec: TUCSR1Crec absolute $9D;
const
  UCPOL1 = 0;  m_UCPOL1 = 1;  // Clock Polarity
  UCSZ10 = 1;  m_UCSZ10 = 2;  // Character Size
  UCSZ11 = 2;  m_UCSZ11 = 4;  // Character Size
  USBS1 = 3;  m_USBS1 = 8;  // Stop Bit Select
  UPM10 = 4;  m_UPM10 = 16;  // Parity Mode Bits
  UPM11 = 5;  m_UPM11 = 32;  // Parity Mode Bits
  UMSEL1 = 6;  m_UMSEL1 = 64;  // USART Mode Select
  // typedefs = 51

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 3 External Interrupt Request 2
procedure INT3_ISR; external name 'INT3_ISR'; // Interrupt 4 External Interrupt Request 3
procedure INT4_ISR; external name 'INT4_ISR'; // Interrupt 5 External Interrupt Request 4
procedure INT5_ISR; external name 'INT5_ISR'; // Interrupt 6 External Interrupt Request 5
procedure INT6_ISR; external name 'INT6_ISR'; // Interrupt 7 External Interrupt Request 6
procedure INT7_ISR; external name 'INT7_ISR'; // Interrupt 8 External Interrupt Request 7
procedure TIMER2_COMP_ISR; external name 'TIMER2_COMP_ISR'; // Interrupt 9 Timer/Counter2 Compare Match
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 10 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 11 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 12 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 13 Timer/Counter Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 14 Timer/Counter1 Overflow
procedure TIMER0_COMP_ISR; external name 'TIMER0_COMP_ISR'; // Interrupt 15 Timer/Counter0 Compare Match
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 16 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 17 SPI Serial Transfer Complete
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 18 USART0, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 19 USART0 Data Register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 20 USART0, Tx Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 21 ADC Conversion Complete
procedure EE_READY_ISR; external name 'EE_READY_ISR'; // Interrupt 22 EEPROM Ready
procedure ANALOG_COMP_ISR; external name 'ANALOG_COMP_ISR'; // Interrupt 23 Analog Comparator
procedure TIMER1_COMPC_ISR; external name 'TIMER1_COMPC_ISR'; // Interrupt 24 Timer/Counter1 Compare Match C
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 25 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 26 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 27 Timer/Counter3 Compare Match B
procedure TIMER3_COMPC_ISR; external name 'TIMER3_COMPC_ISR'; // Interrupt 28 Timer/Counter3 Compare Match C
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 29 Timer/Counter3 Overflow
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 30 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 31 USART1, Data Register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 32 USART1, Tx Complete
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 33 2-wire Serial Interface
procedure SPM_READY_ISR; external name 'SPM_READY_ISR'; // Interrupt 34 Store Program Memory Read

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
  jmp INT4_ISR
  jmp INT5_ISR
  jmp INT6_ISR
  jmp INT7_ISR
  jmp TIMER2_COMP_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMP_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI_STC_ISR
  jmp USART0_RX_ISR
  jmp USART0_UDRE_ISR
  jmp USART0_TX_ISR
  jmp ADC_ISR
  jmp EE_READY_ISR
  jmp ANALOG_COMP_ISR
  jmp TIMER1_COMPC_ISR
  jmp TIMER3_CAPT_ISR
  jmp TIMER3_COMPA_ISR
  jmp TIMER3_COMPB_ISR
  jmp TIMER3_COMPC_ISR
  jmp TIMER3_OVF_ISR
  jmp USART1_RX_ISR
  jmp USART1_UDRE_ISR
  jmp USART1_TX_ISR
  jmp TWI_ISR
  jmp SPM_READY_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak INT3_ISR
  .weak INT4_ISR
  .weak INT5_ISR
  .weak INT6_ISR
  .weak INT7_ISR
  .weak TIMER2_COMP_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMP_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART0_RX_ISR
  .weak USART0_UDRE_ISR
  .weak USART0_TX_ISR
  .weak ADC_ISR
  .weak EE_READY_ISR
  .weak ANALOG_COMP_ISR
  .weak TIMER1_COMPC_ISR
  .weak TIMER3_CAPT_ISR
  .weak TIMER3_COMPA_ISR
  .weak TIMER3_COMPB_ISR
  .weak TIMER3_COMPC_ISR
  .weak TIMER3_OVF_ISR
  .weak USART1_RX_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_TX_ISR
  .weak TWI_ISR
  .weak SPM_READY_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set INT3_ISR, Default_IRQ_handler
  .set INT4_ISR, Default_IRQ_handler
  .set INT5_ISR, Default_IRQ_handler
  .set INT6_ISR, Default_IRQ_handler
  .set INT7_ISR, Default_IRQ_handler
  .set TIMER2_COMP_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMP_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART0_RX_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_READY_ISR, Default_IRQ_handler
  .set ANALOG_COMP_ISR, Default_IRQ_handler
  .set TIMER1_COMPC_ISR, Default_IRQ_handler
  .set TIMER3_CAPT_ISR, Default_IRQ_handler
  .set TIMER3_COMPA_ISR, Default_IRQ_handler
  .set TIMER3_COMPB_ISR, Default_IRQ_handler
  .set TIMER3_COMPC_ISR, Default_IRQ_handler
  .set TIMER3_OVF_ISR, Default_IRQ_handler
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set SPM_READY_ISR, Default_IRQ_handler
end;

end.
