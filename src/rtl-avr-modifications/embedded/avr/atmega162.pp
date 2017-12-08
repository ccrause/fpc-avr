unit ATmega162;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  UBRR1L: byte absolute $20;  // USART Baud Rate Register Low Byte

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
  UCSR1B: byte absolute $21;  // USART Control and Status Register B
  UCSR1Bset: TUCSR1Bset absolute $21;
  UCSR1Brec: TUCSR1Brec absolute $21;
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
  UCSR1A: byte absolute $22;  // USART Control and Status Register A
  UCSR1Aset: TUCSR1Aset absolute $22;
  UCSR1Arec: TUCSR1Arec absolute $22;
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
  UDR1: byte absolute $23;  // USART I/O Data Register

type
  TOCDRset = bitpacked set of (e_OSCCAL0, e_OSCCAL1, e_OSCCAL2, e_OSCCAL3, e_OSCCAL4, e_OSCCAL5, e_OSCCAL6, e_OSCCAL7);
  TOCDRrec = bitpacked record
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
  OCDR: byte absolute $24;  // On-Chip Debug Related Register in I/O Memory
  OCDRset: TOCDRset absolute $24;
  OCDRrec: TOCDRrec absolute $24;
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
  PINE: byte absolute $25;  // Input Pins, Port E
  DDRE: byte absolute $26;  // Data Direction Register, Port E

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
  PORTE: byte absolute $27;  // Data Register, Port E
  PORTEset: TPORTEset absolute $27;
  PORTErec: TPORTErec absolute $27;
const
  PE0 = 0;  m_PE0 = 1;
  PE1 = 1;  m_PE1 = 2;
  PE2 = 2;  m_PE2 = 4;

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
  EEDR0 = 0;  m_EEDR0 = 1;  // EEPROM Data Register bits
  EEDR1 = 1;  m_EEDR1 = 2;  // EEPROM Data Register bits
  EEDR2 = 2;  m_EEDR2 = 4;  // EEPROM Data Register bits
  EEDR3 = 3;  m_EEDR3 = 8;  // EEPROM Data Register bits
  EEDR4 = 4;  m_EEDR4 = 16;  // EEPROM Data Register bits
  EEDR5 = 5;  m_EEDR5 = 32;  // EEPROM Data Register bits
  EEDR6 = 6;  m_EEDR6 = 64;  // EEPROM Data Register bits
  EEDR7 = 7;  m_EEDR7 = 128;  // EEPROM Data Register bits

var
  EEAR: word absolute $3E;  // EEPROM Address Register Bytes
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;
const
  EEAR0 = 0;  m_EEAR0 = 1;  // EEPROM Address Register bits
  EEAR1 = 1;  m_EEAR1 = 2;  // EEPROM Address Register bits
  EEAR2 = 2;  m_EEAR2 = 4;  // EEPROM Address Register bits
  EEAR3 = 3;  m_EEAR3 = 8;  // EEPROM Address Register bits
  EEAR4 = 4;  m_EEAR4 = 16;  // EEPROM Address Register bits
  EEAR5 = 5;  m_EEAR5 = 32;  // EEPROM Address Register bits
  EEAR6 = 6;  m_EEAR6 = 64;  // EEPROM Address Register bits
  EEAR7 = 7;  m_EEAR7 = 128;  // EEPROM Address Register bits

type
  TUBRR0Hset = bitpacked set of (e_UCPOL0, e_UCSZ00, e_UCSZ01, e_USBS0, e_UPM00, e_UPM01, e_UMSEL0, e_URSEL0);
  TUBRR0Hrec = bitpacked record
    UCPOL0,
    UCSZ00,
    UCSZ01,
    USBS0,
    UPM00,
    UPM01,
    UMSEL0,
    URSEL0: TBitField;
  end;
var
  UBRR0H: byte absolute $40;  // USART Baud Rate Register High Byte
  UBRR0Hset: TUBRR0Hset absolute $40;
  UBRR0Hrec: TUBRR0Hrec absolute $40;
const
  UCPOL0 = 0;  m_UCPOL0 = 1;  // Clock Polarity
  UCSZ00 = 1;  m_UCSZ00 = 2;  // Character Size
  UCSZ01 = 2;  m_UCSZ01 = 4;  // Character Size
  USBS0 = 3;  m_USBS0 = 8;  // Stop Bit Select
  UPM00 = 4;  m_UPM00 = 16;  // Parity Mode Bits
  UPM01 = 5;  m_UPM01 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select
  URSEL0 = 7;  m_URSEL0 = 128;  // Register Select

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

var
  OCR2: byte absolute $42;  // Output Compare Register
  TCNT2: byte absolute $43;  // Timer/Counter Register
  ICR1: word absolute $44;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $44;
  ICR1H: byte absolute $45;

type
  TASSRset = bitpacked set of (e_TCR2UB, e_OCR2UB, e_TCN2UB, e_AS2);
  TASSRrec = bitpacked record
    TCR2UB,
    OCR2UB,
    TCN2UB,
    AS2,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ASSR: byte absolute $46;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $46;
  ASSRrec: TASSRrec absolute $46;
const
  TCR2UB = 0;  m_TCR2UB = 1;  // Timer/Counter Control Register2 Update Busy
  OCR2UB = 1;  m_OCR2UB = 2;  // Output Compare Register2 Update Busy
  TCN2UB = 2;  m_TCN2UB = 4;  // Timer/Counter2 Update Busy
  AS2 = 3;  m_AS2 = 8;  // Asynchronous Timer 2

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
  TCCR2: byte absolute $47;  // Timer/Counter Control Register
  TCCR2set: TTCCR2set absolute $47;
  TCCR2rec: TTCCR2rec absolute $47;
const
  CS20 = 0;  m_CS20 = 1;  // Clock Select
  CS21 = 1;  m_CS21 = 2;  // Clock Select
  CS22 = 2;  m_CS22 = 4;  // Clock Select
  WGM21 = 3;  m_WGM21 = 8;  // Pulse Width Modulator Select Bit 1
  COM20 = 4;  m_COM20 = 16;  // Compare Match Output Mode
  COM21 = 5;  m_COM21 = 32;  // Compare Match Output Mode
  WGM20 = 6;  m_WGM20 = 64;  // Pulse Width Modulator Select Bit 0
  FOC2 = 7;  m_FOC2 = 128;  // Forde Output Compare

var
  OCR1B: word absolute $48;  // Timer/Counter1 Output Compare Register B  Bytes
  OCR1BL: byte absolute $48;
  OCR1BH: byte absolute $49;
  OCR1A: word absolute $4A;  // Timer/Counter1 Output Compare Register A  Bytes
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
  TTCCR1Aset = bitpacked set of (e_WGM10, e_WGM11, e_FOC1B, e_FOC1A, e_COM1B0, e_COM1B1, e_COM1A0, e_COM1A1);
  TTCCR1Arec = bitpacked record
    WGM10,
    WGM11,
    FOC1B,
    FOC1A,
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
  WGM10 = 0;  m_WGM10 = 1;  // Pulse Width Modulator Select Bits
  WGM11 = 1;  m_WGM11 = 2;  // Pulse Width Modulator Select Bits
  FOC1B = 2;  m_FOC1B = 4;  // Force Output Compare for Channel B
  FOC1A = 3;  m_FOC1A = 8;  // Force Output Compare for Channel A
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

type
  TSFIORset = bitpacked set of (e_PSR310, e_PSR2, e_PUD, e_XMM0, e_XMM1, e_XMM2, e_XMBK, e_TSM);
  TSFIORrec = bitpacked record
    PSR310,
    PSR2,
    PUD,
    XMM0,
    XMM1,
    XMM2,
    XMBK,
    TSM: TBitField;
  end;
var
  SFIOR: byte absolute $50;  // Special Function IO Register
  SFIORset: TSFIORset absolute $50;
  SFIORrec: TSFIORrec absolute $50;
const
  PSR310 = 0;  m_PSR310 = 1;  // Prescaler Reset Timer/Counter3, Timer/Counter1 and Timer/Counter0
  PSR2 = 1;  m_PSR2 = 2;  // Prescaler Reset Timer/Counter2
  PUD = 2;  m_PUD = 4;  // Pull-up Disable
  XMM0 = 3;  m_XMM0 = 8;  // External Memory High Mask Bits
  XMM1 = 4;  m_XMM1 = 16;  // External Memory High Mask Bits
  XMM2 = 5;  m_XMM2 = 32;  // External Memory High Mask Bits
  XMBK = 6;  m_XMBK = 64;  // External Memory Bus Keeper Enable
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

var
  OCR0: byte absolute $51;  // Timer/Counter 0 Output Compare Register
  TCNT0: byte absolute $52;  // Timer/Counter 0 Register

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
  TCCR0: byte absolute $53;  // Timer/Counter 0 Control Register
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
  TMCUCSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_JTRF, e_SM2, e_JTD=7);
  TMCUCSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    JTRF,
    SM2,
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
  SM2 = 5;  m_SM2 = 32;  // Sleep Mode Select Bit 2
  JTD = 7;  m_JTD = 128;  // JTAG Interface Disable

type
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11, e_SM1, e_SE, e_SRW10, e_SRE);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    ISC10,
    ISC11,
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
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 bits
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 bits
  ISC10 = 2;  m_ISC10 = 4;  // Interrupt Sense Control 1 bits
  ISC11 = 3;  m_ISC11 = 8;  // Interrupt Sense Control 1 bits
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select
  SE = 5;  m_SE = 32;  // Sleep Enable
  SRW10 = 6;  m_SRW10 = 64;  // External SRAM Wait State Select
  SRE = 7;  m_SRE = 128;  // External SRAM Enable

type
  TEMCUCRset = bitpacked set of (e_ISC2, e_SRW11, e_SRW00, e_SRW01, e_SRL0, e_SRL1, e_SRL2, e_SM0);
  TEMCUCRrec = bitpacked record
    ISC2,
    SRW11,
    SRW00,
    SRW01,
    SRL0,
    SRL1,
    SRL2,
    SM0: TBitField;
  end;
var
  EMCUCR: byte absolute $56;  // Extended MCU Control Register
  EMCUCRset: TEMCUCRset absolute $56;
  EMCUCRrec: TEMCUCRrec absolute $56;
const
  ISC2 = 0;  m_ISC2 = 1;  // Interrupt Sense Control 2
  SRW11 = 1;  m_SRW11 = 2;  // Wait State Select Bit 1 for Upper Sector
  SRW00 = 2;  m_SRW00 = 4;  // Wait State Select Bit 1 for Lower Sector
  SRW01 = 3;  m_SRW01 = 8;  // Wait State Select Bit 1 for Lower Sector
  SRL0 = 4;  m_SRL0 = 16;  // Wait State Sector Limit Bits
  SRL1 = 5;  m_SRL1 = 32;  // Wait State Sector Limit Bits
  SRL2 = 6;  m_SRL2 = 64;  // Wait State Sector Limit Bits
  SM0 = 7;  m_SM0 = 128;  // Sleep mode Select Bit 0

type
  TSPMCRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_BLBSET, e_RWWSRE, e_RWWSB=6, e_SPMIE);
  TSPMCRrec = bitpacked record
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
  SPMCR: byte absolute $57;  // Store Program Memory Control Register
  SPMCRset: TSPMCRset absolute $57;
  SPMCRrec: TSPMCRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read While Write secion read enable
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

type
  TTIFRset = bitpacked set of (e_OCF0, e_TOV0, e_TOV2, e_ICF1, e_OCF2, e_OCF1B, e_OCF1A, e_TOV1);
  TTIFRrec = bitpacked record
    OCF0,
    TOV0,
    TOV2,
    ICF1,
    OCF2,
    OCF1B,
    OCF1A,
    TOV1: TBitField;
  end;
var
  TIFR: byte absolute $58;  // Timer/Counter Interrupt Flag register
  TIFRset: TTIFRset absolute $58;
  TIFRrec: TTIFRrec absolute $58;
const
  OCF0 = 0;  m_OCF0 = 1;  // Output Compare Flag 0
  TOV0 = 1;  m_TOV0 = 2;  // Timer/Counter0 Overflow Flag
  TOV2 = 2;  m_TOV2 = 4;  // Timer/Counter2 Overflow Flag
  ICF1 = 3;  m_ICF1 = 8;  // Input Capture Flag 1
  OCF2 = 4;  m_OCF2 = 16;  // Output Compare Flag 2
  OCF1B = 5;  m_OCF1B = 32;  // Output Compare Flag 1B
  OCF1A = 6;  m_OCF1A = 64;  // Output Compare Flag 1A
  TOV1 = 7;  m_TOV1 = 128;  // Timer/Counter1 Overflow Flag

type
  TTIMSKset = bitpacked set of (e_OCIE0, e_TOIE0, e_TOIE2, e_TICIE1, e_OCIE2, e_OCIE1B, e_OCIE1A, e_TOIE1);
  TTIMSKrec = bitpacked record
    OCIE0,
    TOIE0,
    TOIE2,
    TICIE1,
    OCIE2,
    OCIE1B,
    OCIE1A,
    TOIE1: TBitField;
  end;
var
  TIMSK: byte absolute $59;  // Timer/Counter Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $59;
  TIMSKrec: TTIMSKrec absolute $59;
const
  OCIE0 = 0;  m_OCIE0 = 1;  // Timer/Counter0 Output Compare Match Interrupt register
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  TOIE2 = 2;  m_TOIE2 = 4;  // Timer/Counter2 Overflow Interrupt Enable
  TICIE1 = 3;  m_TICIE1 = 8;  // Timer/Counter1 Input Capture Interrupt Enable
  OCIE2 = 4;  m_OCIE2 = 16;  // Timer/Counter2 Output Compare Match Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  OCIE1A = 6;  m_OCIE1A = 64;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  TOIE1 = 7;  m_TOIE1 = 128;  // Timer/Counter1 Overflow Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF0=3, e_PCIF1, e_INTF2, e_INTF0, e_INTF1);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    PCIF0,
    PCIF1,
    INTF2,
    INTF0,
    INTF1: TBitField;
  end;
var
  GIFR: byte absolute $5A;  // General Interrupt Flag Register
  GIFRset: TGIFRset absolute $5A;
  GIFRrec: TGIFRrec absolute $5A;
const
  PCIF0 = 3;  m_PCIF0 = 8;  // Pin Change Interrupt Flags
  PCIF1 = 4;  m_PCIF1 = 16;  // Pin Change Interrupt Flags
  INTF2 = 5;  m_INTF2 = 32;  // External Interrupt Flag 2
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flags
  INTF1 = 7;  m_INTF1 = 128;  // External Interrupt Flags

type
  TGICRset = bitpacked set of (e_IVCE, e_IVSEL, e_PCIE0=3, e_PCIE1, e_INT2, e_INT0, e_INT1);
  TGICRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    PCIE0,
    PCIE1,
    INT2,
    INT0,
    INT1: TBitField;
  end;
var
  GICR: byte absolute $5B;  // General Interrupt Control Register
  GICRset: TGICRset absolute $5B;
  GICRrec: TGICRrec absolute $5B;
const
  IVCE = 0;  m_IVCE = 1;  // Interrupt Vector Change Enable
  IVSEL = 1;  m_IVSEL = 2;  // Interrupt Vector Select
  PCIE0 = 3;  m_PCIE0 = 8;  // Pin Change Interrupt Enables
  PCIE1 = 4;  m_PCIE1 = 16;  // Pin Change Interrupt Enables
  INT2 = 5;  m_INT2 = 32;  // External Interrupt Request 2 Enable
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable
  INT1 = 7;  m_INT1 = 128;  // External Interrupt Request 1 Enable

type
  TUBRR1Hset = bitpacked set of (e_UCPOL1, e_UCSZ10, e_UCSZ11, e_USBS1, e_UPM10, e_UPM11, e_UMSEL1, e_URSEL1);
  TUBRR1Hrec = bitpacked record
    UCPOL1,
    UCSZ10,
    UCSZ11,
    USBS1,
    UPM10,
    UPM11,
    UMSEL1,
    URSEL1: TBitField;
  end;
var
  UBRR1H: byte absolute $5C;  // USART Baud Rate Register Highg Byte
  UBRR1Hset: TUBRR1Hset absolute $5C;
  UBRR1Hrec: TUBRR1Hrec absolute $5C;
const
  UCPOL1 = 0;  m_UCPOL1 = 1;  // Clock Polarity
  UCSZ10 = 1;  m_UCSZ10 = 2;  // Character Size
  UCSZ11 = 2;  m_UCSZ11 = 4;  // Character Size
  USBS1 = 3;  m_USBS1 = 8;  // Stop Bit Select
  UPM10 = 4;  m_UPM10 = 16;  // Parity Mode Bits
  UPM11 = 5;  m_UPM11 = 32;  // Parity Mode Bits
  UMSEL1 = 6;  m_UMSEL1 = 64;  // USART Mode Select
  URSEL1 = 7;  m_URSEL1 = 128;  // Register Select

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
  CLKPR: byte absolute $61;  // Clock prescale register
  CLKPRset: TCLKPRset absolute $61;
  CLKPRrec: TCLKPRrec absolute $61;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits
  CLKPCE = 7;  m_CLKPCE = 128;  // Clock Prescaler Change Enable

var
  PCMSK0: byte absolute $6B;  // Pin Change Enable Mask

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
  PCMSK1: byte absolute $6C;  // Pin Change Mask Register 1
  PCMSK1set: TPCMSK1set absolute $6C;
  PCMSK1rec: TPCMSK1rec absolute $6C;
const
  PCINT8 = 0;  m_PCINT8 = 1;  // Pin Change Interrupt mask bits
  PCINT9 = 1;  m_PCINT9 = 2;  // Pin Change Interrupt mask bits
  PCINT10 = 2;  m_PCINT10 = 4;  // Pin Change Interrupt mask bits
  PCINT11 = 3;  m_PCINT11 = 8;  // Pin Change Interrupt mask bits
  PCINT12 = 4;  m_PCINT12 = 16;  // Pin Change Interrupt mask bits
  PCINT13 = 5;  m_PCINT13 = 32;  // Pin Change Interrupt mask bits
  PCINT14 = 6;  m_PCINT14 = 64;  // Pin Change Interrupt mask bits
  PCINT15 = 7;  m_PCINT15 = 128;  // Pin Change Interrupt mask bits

type
  TETIFRset = bitpacked set of (e_TOV3=2, e_OCF3B, e_OCF3A, e_ICF3);
  TETIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
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
  TOV3 = 2;  m_TOV3 = 4;  // Timer/Counter3 Overflow Flag
  OCF3B = 3;  m_OCF3B = 8;  // Output Compare Flag 3B
  OCF3A = 4;  m_OCF3A = 16;  // Output Compare Flag 3A
  ICF3 = 5;  m_ICF3 = 32;  // Input Capture Flag 3

type
  TETIMSKset = bitpacked set of (e_TOIE3=2, e_OCIE3B, e_OCIE3A, e_TICIE3);
  TETIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
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
  TOIE3 = 2;  m_TOIE3 = 4;  // Timer/Counter3 Overflow Interrupt Enable
  OCIE3B = 3;  m_OCIE3B = 8;  // Timer/Counter3 Output CompareB Match Interrupt Enable
  OCIE3A = 4;  m_OCIE3A = 16;  // Timer/Counter3 Output CompareA Match Interrupt Enable
  TICIE3 = 5;  m_TICIE3 = 32;  // Timer/Counter3 Input Capture Interrupt Enable

var
  ICR3: word absolute $80;  // Timer/Counter3 Input Capture Register  Bytes
  ICR3L: byte absolute $80;
  ICR3H: byte absolute $81;
  OCR3B: word absolute $84;  // Timer/Counte3 Output Compare Register B  Bytes
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
  ICNC3 = 7;  m_ICNC3 = 128;  // Input Capture 3 Noise Canceler

type
  TTCCR3Aset = bitpacked set of (e_WGM30, e_WGM31, e_FOC3B, e_FOC3A, e_COM3B0, e_COM3B1, e_COM3A0, e_COM3A1);
  TTCCR3Arec = bitpacked record
    WGM30,
    WGM31,
    FOC3B,
    FOC3A,
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
  WGM30 = 0;  m_WGM30 = 1;  // Pulse Width Modulator Select Bits
  WGM31 = 1;  m_WGM31 = 2;  // Pulse Width Modulator Select Bits
  FOC3B = 2;  m_FOC3B = 4;  // Force Output Compare for Channel B
  FOC3A = 3;  m_FOC3A = 8;  // Force Output Compare for Channel A
  COM3B0 = 4;  m_COM3B0 = 16;  // Compare Output Mode 3B, bits
  COM3B1 = 5;  m_COM3B1 = 32;  // Compare Output Mode 3B, bits
  COM3A0 = 6;  m_COM3A0 = 64;  // Compare Output Mode 3A, bits
  COM3A1 = 7;  m_COM3A1 = 128;  // Compare Output Mode 3A, bits
  // typedefs = 39

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 3 External Interrupt Request 2
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 4 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 5 Pin Change Interrupt Request 1
procedure TIMER3_CAPT_ISR; external name 'TIMER3_CAPT_ISR'; // Interrupt 6 Timer/Counter3 Capture Event
procedure TIMER3_COMPA_ISR; external name 'TIMER3_COMPA_ISR'; // Interrupt 7 Timer/Counter3 Compare Match A
procedure TIMER3_COMPB_ISR; external name 'TIMER3_COMPB_ISR'; // Interrupt 8 Timer/Counter3 Compare Match B
procedure TIMER3_OVF_ISR; external name 'TIMER3_OVF_ISR'; // Interrupt 9 Timer/Counter3 Overflow
procedure TIMER2_COMP_ISR; external name 'TIMER2_COMP_ISR'; // Interrupt 10 Timer/Counter2 Compare Match
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 11 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 12 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 13 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 14 Timer/Counter Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 15 Timer/Counter1 Overflow
procedure TIMER0_COMP_ISR; external name 'TIMER0_COMP_ISR'; // Interrupt 16 Timer/Counter0 Compare Match
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 17 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 18 SPI Serial Transfer Complete
procedure USART0_RXC_ISR; external name 'USART0_RXC_ISR'; // Interrupt 19 USART0, Rx Complete
procedure USART1_RXC_ISR; external name 'USART1_RXC_ISR'; // Interrupt 20 USART1, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 21 USART0 Data register Empty
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 22 USART1, Data register Empty
procedure USART0_TXC_ISR; external name 'USART0_TXC_ISR'; // Interrupt 23 USART0, Tx Complete
procedure USART1_TXC_ISR; external name 'USART1_TXC_ISR'; // Interrupt 24 USART1, Tx Complete
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 25 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 26 Analog Comparator
procedure SPM_RDY_ISR; external name 'SPM_RDY_ISR'; // Interrupt 27 Store Program Memory Read

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
  jmp PCINT0_ISR
  jmp PCINT1_ISR
  jmp TIMER3_CAPT_ISR
  jmp TIMER3_COMPA_ISR
  jmp TIMER3_COMPB_ISR
  jmp TIMER3_OVF_ISR
  jmp TIMER2_COMP_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_COMP_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI_STC_ISR
  jmp USART0_RXC_ISR
  jmp USART1_RXC_ISR
  jmp USART0_UDRE_ISR
  jmp USART1_UDRE_ISR
  jmp USART0_TXC_ISR
  jmp USART1_TXC_ISR
  jmp EE_RDY_ISR
  jmp ANA_COMP_ISR
  jmp SPM_RDY_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak INT2_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak TIMER3_CAPT_ISR
  .weak TIMER3_COMPA_ISR
  .weak TIMER3_COMPB_ISR
  .weak TIMER3_OVF_ISR
  .weak TIMER2_COMP_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMP_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART0_RXC_ISR
  .weak USART1_RXC_ISR
  .weak USART0_UDRE_ISR
  .weak USART1_UDRE_ISR
  .weak USART0_TXC_ISR
  .weak USART1_TXC_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak SPM_RDY_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set TIMER3_CAPT_ISR, Default_IRQ_handler
  .set TIMER3_COMPA_ISR, Default_IRQ_handler
  .set TIMER3_COMPB_ISR, Default_IRQ_handler
  .set TIMER3_OVF_ISR, Default_IRQ_handler
  .set TIMER2_COMP_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMP_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART0_RXC_ISR, Default_IRQ_handler
  .set USART1_RXC_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART0_TXC_ISR, Default_IRQ_handler
  .set USART1_TXC_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set SPM_RDY_ISR, Default_IRQ_handler
end;

end.
