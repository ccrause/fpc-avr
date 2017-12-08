unit ATtiny2313A;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

var
  DIDR: byte absolute $21;  // Digital Input Disable Register 1
  UBRRH: byte absolute $22;  // USART Baud Rate Register High Byte

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
  UCSRC: byte absolute $23;  // USART Control and Status Register C
  UCSRCset: TUCSRCset absolute $23;
  UCSRCrec: TUCSRCrec absolute $23;
const
  UCPOL = 0;  m_UCPOL = 1;  // Clock Polarity
  UCSZ0 = 1;  m_UCSZ0 = 2;  // Character Size Bits
  UCSZ1 = 2;  m_UCSZ1 = 4;  // Character Size Bits
  USBS = 3;  m_USBS = 8;  // Stop Bit Select
  UPM0 = 4;  m_UPM0 = 16;  // Parity Mode Bits
  UPM1 = 5;  m_UPM1 = 32;  // Parity Mode Bits
  UMSEL0 = 6;  m_UMSEL0 = 64;  // USART Mode Select
  UMSEL1 = 7;  m_UMSEL1 = 128;  // USART Mode Select

var
  PCMSK1: byte absolute $24;  // Pin Change Interrupt Mask Register 1

type
  TPCMSK2set = bitpacked set of (e_PCINT11, e_PCINT12, e_PCINT13, e_PCINT14, e_PCINT15, e_PCINT16, e_PCINT17);
  TPCMSK2rec = bitpacked record
    PCINT11,
    PCINT12,
    PCINT13,
    PCINT14,
    PCINT15,
    PCINT16,
    PCINT17,
    ReservedBit7: TBitField;
  end;
var
  PCMSK2: byte absolute $25;  // Pin Change Interrupt Mask Register 2
  PCMSK2set: TPCMSK2set absolute $25;
  PCMSK2rec: TPCMSK2rec absolute $25;
const
  PCINT11 = 0;  m_PCINT11 = 1;  // Pin Change Interrupt Masks
  PCINT12 = 1;  m_PCINT12 = 2;  // Pin Change Interrupt Masks
  PCINT13 = 2;  m_PCINT13 = 4;  // Pin Change Interrupt Masks
  PCINT14 = 3;  m_PCINT14 = 8;  // Pin Change Interrupt Masks
  PCINT15 = 4;  m_PCINT15 = 16;  // Pin Change Interrupt Masks
  PCINT16 = 5;  m_PCINT16 = 32;  // Pin Change Interrupt Masks
  PCINT17 = 6;  m_PCINT17 = 64;  // Pin Change Interrupt Masks

type
  TPRRset = bitpacked set of (e_PRUSART, e_PRUSI, e_PRTIM0, e_PRTIM1);
  TPRRrec = bitpacked record
    PRUSART,
    PRUSI,
    PRTIM0,
    PRTIM1,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PRR: byte absolute $26;  // Power reduction register
  PRRset: TPRRset absolute $26;
  PRRrec: TPRRrec absolute $26;
const
  PRUSART = 0;  m_PRUSART = 1;
  PRUSI = 1;  m_PRUSI = 2;
  PRTIM0 = 2;  m_PRTIM0 = 4;
  PRTIM1 = 3;  m_PRTIM1 = 8;

type
  TBODCRset = bitpacked set of (e_BPDSE, e_BPDS);
  TBODCRrec = bitpacked record
    BPDSE,
    BPDS,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  BODCR: byte absolute $27;  // BOD control register
  BODCRset: TBODCRset absolute $27;
  BODCRrec: TBODCRrec absolute $27;
const
  BPDSE = 0;  m_BPDSE = 1;
  BPDS = 1;  m_BPDS = 2;

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
  ACIC = 2;  m_ACIC = 4;
  ACIE = 3;  m_ACIE = 8;  // Analog Comparator Interrupt Enable
  ACI = 4;  m_ACI = 16;  // Analog Comparator Interrupt Flag
  ACO = 5;  m_ACO = 32;  // Analog Compare Output
  ACBG = 6;  m_ACBG = 64;  // Analog Comparator Bandgap Select
  ACD = 7;  m_ACD = 128;  // Analog Comparator Disable

var
  UBRRL: byte absolute $29;  // USART Baud Rate Register Low Byte

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
  UCSRB: byte absolute $2A;  // USART Control and Status Register B
  UCSRBset: TUCSRBset absolute $2A;
  UCSRBrec: TUCSRBrec absolute $2A;
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
  UCSRA: byte absolute $2B;  // USART Control and Status Register A
  UCSRAset: TUCSRAset absolute $2B;
  UCSRArec: TUCSRArec absolute $2B;
const
  MPCM = 0;  m_MPCM = 1;  // Multi-processor Communication Mode
  U2X = 1;  m_U2X = 2;  // Double the USART Transmission Speed
  UPE = 2;  m_UPE = 4;  // USART Parity Error
  DOR = 3;  m_DOR = 8;  // Data overRun
  FE = 4;  m_FE = 16;  // Framing Error
  UDRE = 5;  m_UDRE = 32;  // USART Data Register Empty
  TXC = 6;  m_TXC = 64;  // USART Transmitt Complete
  RXC = 7;  m_RXC = 128;  // USART Receive Complete

var
  UDR: byte absolute $2C;  // USART I/O Data Register

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
  USICR: byte absolute $2D;  // USI Control Register
  USICRset: TUSICRset absolute $2D;
  USICRrec: TUSICRrec absolute $2D;
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
  USISR: byte absolute $2E;  // USI Status Register
  USISRset: TUSISRset absolute $2E;
  USISRrec: TUSISRrec absolute $2E;
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
  USIDR: byte absolute $2F;  // USI Data Register
  PIND: byte absolute $30;  // Input Pins, Port D
  DDRD: byte absolute $31;  // Data Direction Register, Port D

type
  TPORTDset = bitpacked set of (e_PD0, e_PD1, e_PD2, e_PD3, e_PD4, e_PD5, e_PD6);
  TPORTDrec = bitpacked record
    PD0,
    PD1,
    PD2,
    PD3,
    PD4,
    PD5,
    PD6,
    ReservedBit7: TBitField;
  end;
var
  PORTD: byte absolute $32;  // Data Register, Port D
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

var
  GPIOR0: byte absolute $33;  // General Purpose I/O Register 0
  GPIOR1: byte absolute $34;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $35;  // General Purpose I/O Register 2
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
  TPORTAset = bitpacked set of (e_PA0, e_PA1, e_PA2);
  TPORTArec = bitpacked record
    PA0,
    PA1,
    PA2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PORTA: byte absolute $3B;  // Port A Data Register
  PORTAset: TPORTAset absolute $3B;
  PORTArec: TPORTArec absolute $3B;
const
  PA0 = 0;  m_PA0 = 1;
  PA1 = 1;  m_PA1 = 2;
  PA2 = 2;  m_PA2 = 4;

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
  EEPM0 = 4;  m_EEPM0 = 16;
  EEPM1 = 5;  m_EEPM1 = 32;

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: byte absolute $3E;  // EEPROM Read/Write Access
  PCMSK0: byte absolute $40;  // Pin Change Interrupt Mask Register 0

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDCE, e_WDP3, e_WDIE, e_WDIF);
  TWDTCRrec = bitpacked record
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
  WDTCR: byte absolute $41;  // Watchdog Timer Control Register
  WDTCRset: TWDTCRset absolute $41;
  WDTCRrec: TWDTCRrec absolute $41;
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
  TCCR1C: byte absolute $42;  // Timer/Counter1 Control Register C
  TCCR1Cset: TTCCR1Cset absolute $42;
  TCCR1Crec: TTCCR1Crec absolute $42;
const
  FOC1B = 6;  m_FOC1B = 64;  // Force Output Compare for Channel B
  FOC1A = 7;  m_FOC1A = 128;  // Force Output Compare for Channel A

type
  TGTCCRset = bitpacked set of (e_PSR10);
  TGTCCRrec = bitpacked record
    PSR10,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  GTCCR: byte absolute $43;  // General Timer Counter Control Register
  GTCCRset: TGTCCRset absolute $43;
  GTCCRrec: TGTCCRrec absolute $43;
const
  PSR10 = 0;  m_PSR10 = 1;

var
  ICR1: word absolute $44;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $44;
  ICR1H: byte absolute $45;

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
  CLKPR: byte absolute $46;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $46;
  CLKPRrec: TCLKPRrec absolute $46;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits
  CLKPCE = 7;  m_CLKPCE = 128;  // Clock Prescaler Change Enable

var
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
  TCCR1A: byte absolute $4F;  // Timer/Counter1 Control Register A
  TCCR1Aset: TTCCR1Aset absolute $4F;
  TCCR1Arec: TTCCR1Arec absolute $4F;
const
  WGM10 = 0;  m_WGM10 = 1;  // Pulse Width Modulator Select Bits
  WGM11 = 1;  m_WGM11 = 2;  // Pulse Width Modulator Select Bits
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

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
  TCCR0A: byte absolute $50;  // Timer/Counter  Control Register A
  TCCR0Aset: TTCCR0Aset absolute $50;
  TCCR0Arec: TTCCR0Arec absolute $50;
const
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Match Output B Mode
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Match Output B Mode
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Match Output A Mode
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Match Output A Mode

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
  OSCCAL: byte absolute $51;  // Oscillator Calibration Register
  OSCCALset: TOSCCALset absolute $51;
  OSCCALrec: TOSCCALrec absolute $51;
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
  TCNT0: byte absolute $52;  // Timer/Counter0

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
  TCCR0B: byte absolute $53;  // Timer/Counter Control Register B
  TCCR0Bset: TTCCR0Bset absolute $53;
  TCCR0Brec: TTCCR0Brec absolute $53;
const
  CS00 = 0;  m_CS00 = 1;  // Clock Select
  CS01 = 1;  m_CS01 = 2;  // Clock Select
  CS02 = 2;  m_CS02 = 4;  // Clock Select
  WGM02 = 3;  m_WGM02 = 8;
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare B

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
  MCUSR: byte absolute $54;  // MCU Status register
  MCUSRset: TMCUSRset absolute $54;
  MCUSRrec: TMCUSRrec absolute $54;
const
  PORF = 0;  m_PORF = 1;  // Power-On Reset Flag
  EXTRF = 1;  m_EXTRF = 2;  // External Reset Flag
  BORF = 2;  m_BORF = 4;  // Brown-out Reset Flag
  WDRF = 3;  m_WDRF = 8;  // Watchdog Reset Flag

type
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11, e_SM0, e_SE, e_SM1, e_PUD);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    ISC10,
    ISC11,
    SM0,
    SE,
    SM1,
    PUD: TBitField;
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
  SE = 5;  m_SE = 32;  // Sleep Enable
  SM0 = 4;  m_SM0 = 16;  // Sleep Mode Select Bits
  SM1 = 6;  m_SM1 = 64;  // Sleep Mode Select Bits
  PUD = 7;  m_PUD = 128;  // Pull-up Disable

var
  OCR0A: byte absolute $56;  // Timer/Counter0 Output Compare Register

type
  TSPMCSRset = bitpacked set of (e_SPMEN, e_PGERS, e_PGWRT, e_RFLB, e_CTPB);
  TSPMCSRrec = bitpacked record
    SPMEN,
    PGERS,
    PGWRT,
    RFLB,
    CTPB,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  SPMCSR: byte absolute $57;  // Store Program Memory Control and Status register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  RFLB = 3;  m_RFLB = 8;  // Read Fuse and Lock Bits
  CTPB = 4;  m_CTPB = 16;  // Clear Temporary Page Buffer

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
  TIFR: byte absolute $58;  // Timer/Counter Interrupt Flag register
  TIFRset: TTIFRset absolute $58;
  TIFRrec: TTIFRrec absolute $58;
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
  TIMSK: byte absolute $59;  // Timer/Counter Interrupt Mask Register
  TIMSKset: TTIMSKset absolute $59;
  TIMSKrec: TTIMSKrec absolute $59;
const
  OCIE0A = 0;  m_OCIE0A = 1;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  TOIE0 = 1;  m_TOIE0 = 2;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter0 Output Compare Match B Interrupt Enable
  ICIE1 = 3;  m_ICIE1 = 8;  // Timer/Counter1 Input Capture Interrupt Enable
  OCIE1B = 5;  m_OCIE1B = 32;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  OCIE1A = 6;  m_OCIE1A = 64;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  TOIE1 = 7;  m_TOIE1 = 128;  // Timer/Counter1 Overflow Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF0=3, e_PCIF1, e_PCIF2, e_INTF0, e_INTF1);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    PCIF0,
    PCIF1,
    PCIF2,
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
  PCIF2 = 5;  m_PCIF2 = 32;  // Pin Change Interrupt Flags
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flags
  INTF1 = 7;  m_INTF1 = 128;  // External Interrupt Flags

type
  TGIMSKset = bitpacked set of (e_PCIE=5, e_INT0, e_INT1);
  TGIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    PCIE,
    INT0,
    INT1: TBitField;
  end;
var
  GIMSK: byte absolute $5B;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $5B;
  GIMSKrec: TGIMSKrec absolute $5B;
const
  PCIE = 5;  m_PCIE = 32;
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 1 Enable
  INT1 = 7;  m_INT1 = 128;  // External Interrupt Request 1 Enable

var
  OCR0B: byte absolute $5C;  // Timer/Counter0 Output Compare Register
  SPL: byte absolute $5D;  // Stack Pointer Low Byte

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
  // typedefs = 30

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 3 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 4 Timer/Counter1 Compare Match A
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 5 Timer/Counter1 Overflow
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 6 Timer/Counter0 Overflow
procedure USART_RX_ISR; external name 'USART_RX_ISR'; // Interrupt 7 USART, Rx Complete
procedure USART_UDRE_ISR; external name 'USART_UDRE_ISR'; // Interrupt 8 USART Data Register Empty
procedure USART_TX_ISR; external name 'USART_TX_ISR'; // Interrupt 9 USART, Tx Complete
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 10 Analog Comparator
procedure PCINT_B_ISR; external name 'PCINT_B_ISR'; // Interrupt 11 Pin Change Interrupt Request B
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 12 
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 13 
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 14 
procedure USI_START_ISR; external name 'USI_START_ISR'; // Interrupt 15 USI Start Condition
procedure USI_OVERFLOW_ISR; external name 'USI_OVERFLOW_ISR'; // Interrupt 16 USI Overflow
procedure EEPROM_Ready_ISR; external name 'EEPROM_Ready_ISR'; // Interrupt 17 
procedure WDT_OVERFLOW_ISR; external name 'WDT_OVERFLOW_ISR'; // Interrupt 18 Watchdog Timer Overflow
procedure PCINT_A_ISR; external name 'PCINT_A_ISR'; // Interrupt 19 Pin Change Interrupt Request A
procedure PCINT_D_ISR; external name 'PCINT_D_ISR'; // Interrupt 20 Pin Change Interrupt Request D

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  rjmp _start
  rjmp INT0_ISR
  rjmp INT1_ISR
  rjmp TIMER1_CAPT_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_OVF_ISR
  rjmp USART_RX_ISR
  rjmp USART_UDRE_ISR
  rjmp USART_TX_ISR
  rjmp ANA_COMP_ISR
  rjmp PCINT_B_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp USI_START_ISR
  rjmp USI_OVERFLOW_ISR
  rjmp EEPROM_Ready_ISR
  rjmp WDT_OVERFLOW_ISR
  rjmp PCINT_A_ISR
  rjmp PCINT_D_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_OVF_ISR
  .weak USART_RX_ISR
  .weak USART_UDRE_ISR
  .weak USART_TX_ISR
  .weak ANA_COMP_ISR
  .weak PCINT_B_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak USI_START_ISR
  .weak USI_OVERFLOW_ISR
  .weak EEPROM_Ready_ISR
  .weak WDT_OVERFLOW_ISR
  .weak PCINT_A_ISR
  .weak PCINT_D_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set USART_RX_ISR, Default_IRQ_handler
  .set USART_UDRE_ISR, Default_IRQ_handler
  .set USART_TX_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set PCINT_B_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set USI_START_ISR, Default_IRQ_handler
  .set USI_OVERFLOW_ISR, Default_IRQ_handler
  .set EEPROM_Ready_ISR, Default_IRQ_handler
  .set WDT_OVERFLOW_ISR, Default_IRQ_handler
  .set PCINT_A_ISR, Default_IRQ_handler
  .set PCINT_D_ISR, Default_IRQ_handler
end;

end.
