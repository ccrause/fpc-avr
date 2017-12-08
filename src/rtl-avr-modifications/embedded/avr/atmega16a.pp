unit ATmega16A;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TTWBRset = bitpacked set of (e_TWBR0, e_TWBR1, e_TWBR2, e_TWBR3, e_TWBR4, e_TWBR5, e_TWBR6, e_TWBR7);
  TTWBRrec = bitpacked record
    TWBR0,
    TWBR1,
    TWBR2,
    TWBR3,
    TWBR4,
    TWBR5,
    TWBR6,
    TWBR7: TBitField;
  end;
var
  TWBR: byte absolute $20;  // TWI Bit Rate register
  TWBRset: TTWBRset absolute $20;
  TWBRrec: TTWBRrec absolute $20;
const
  TWBR0 = 0;  m_TWBR0 = 1;  // TWI Bit Rate bits
  TWBR1 = 1;  m_TWBR1 = 2;  // TWI Bit Rate bits
  TWBR2 = 2;  m_TWBR2 = 4;  // TWI Bit Rate bits
  TWBR3 = 3;  m_TWBR3 = 8;  // TWI Bit Rate bits
  TWBR4 = 4;  m_TWBR4 = 16;  // TWI Bit Rate bits
  TWBR5 = 5;  m_TWBR5 = 32;  // TWI Bit Rate bits
  TWBR6 = 6;  m_TWBR6 = 64;  // TWI Bit Rate bits
  TWBR7 = 7;  m_TWBR7 = 128;  // TWI Bit Rate bits

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
  TWSR: byte absolute $21;  // TWI Status Register
  TWSRset: TTWSRset absolute $21;
  TWSRrec: TTWSRrec absolute $21;
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
  TWAR: byte absolute $22;  // TWI (Slave) Address register
  TWARset: TTWARset absolute $22;
  TWARrec: TTWARrec absolute $22;
const
  TWGCE = 0;  m_TWGCE = 1;  // TWI General Call Recognition Enable Bit
  TWA0 = 1;  m_TWA0 = 2;  // TWI (Slave) Address register Bits
  TWA1 = 2;  m_TWA1 = 4;  // TWI (Slave) Address register Bits
  TWA2 = 3;  m_TWA2 = 8;  // TWI (Slave) Address register Bits
  TWA3 = 4;  m_TWA3 = 16;  // TWI (Slave) Address register Bits
  TWA4 = 5;  m_TWA4 = 32;  // TWI (Slave) Address register Bits
  TWA5 = 6;  m_TWA5 = 64;  // TWI (Slave) Address register Bits
  TWA6 = 7;  m_TWA6 = 128;  // TWI (Slave) Address register Bits

type
  TTWDRset = bitpacked set of (e_TWD0, e_TWD1, e_TWD2, e_TWD3, e_TWD4, e_TWD5, e_TWD6, e_TWD7);
  TTWDRrec = bitpacked record
    TWD0,
    TWD1,
    TWD2,
    TWD3,
    TWD4,
    TWD5,
    TWD6,
    TWD7: TBitField;
  end;
var
  TWDR: byte absolute $23;  // TWI Data register
  TWDRset: TTWDRset absolute $23;
  TWDRrec: TTWDRrec absolute $23;
const
  TWD0 = 0;  m_TWD0 = 1;  // TWI Data bits
  TWD1 = 1;  m_TWD1 = 2;  // TWI Data bits
  TWD2 = 2;  m_TWD2 = 4;  // TWI Data bits
  TWD3 = 3;  m_TWD3 = 8;  // TWI Data bits
  TWD4 = 4;  m_TWD4 = 16;  // TWI Data bits
  TWD5 = 5;  m_TWD5 = 32;  // TWI Data bits
  TWD6 = 6;  m_TWD6 = 64;  // TWI Data bits
  TWD7 = 7;  m_TWD7 = 128;  // TWI Data bits

var
  ADC: word absolute $24;  // ADC Data Register Bytes
  ADCL: byte absolute $24;
  ADCH: byte absolute $25;
const
  ADC0 = 0;  m_ADC0 = 1;  // ADC Data Bits
  ADC1 = 1;  m_ADC1 = 2;  // ADC Data Bits
  ADC2 = 2;  m_ADC2 = 4;  // ADC Data Bits
  ADC3 = 3;  m_ADC3 = 8;  // ADC Data Bits
  ADC4 = 4;  m_ADC4 = 16;  // ADC Data Bits
  ADC5 = 5;  m_ADC5 = 32;  // ADC Data Bits
  ADC6 = 6;  m_ADC6 = 64;  // ADC Data Bits
  ADC7 = 7;  m_ADC7 = 128;  // ADC Data Bits

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
  ADATE = 5;  m_ADATE = 32;  // ADC Auto Trigger
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
  U2X = 1;  m_U2X = 2;  // Double the USART transmission speed
  UPE = 2;  m_UPE = 4;  // Parity Error
  DOR = 3;  m_DOR = 8;  // Data overRun
  FE = 4;  m_FE = 16;  // Framing Error
  UDRE = 5;  m_UDRE = 32;  // USART Data Register Empty
  TXC = 6;  m_TXC = 64;  // USART Transmitt Complete
  RXC = 7;  m_RXC = 128;  // USART Receive Complete

type
  TUDRset = bitpacked set of (e_UDR0, e_UDR1, e_UDR2, e_UDR3, e_UDR4, e_UDR5, e_UDR6, e_UDR7);
  TUDRrec = bitpacked record
    UDR0,
    UDR1,
    UDR2,
    UDR3,
    UDR4,
    UDR5,
    UDR6,
    UDR7: TBitField;
  end;
var
  UDR: byte absolute $2C;  // USART I/O Data Register
  UDRset: TUDRset absolute $2C;
  UDRrec: TUDRrec absolute $2C;
const
  UDR0 = 0;  m_UDR0 = 1;  // USART I/O Data bits
  UDR1 = 1;  m_UDR1 = 2;  // USART I/O Data bits
  UDR2 = 2;  m_UDR2 = 4;  // USART I/O Data bits
  UDR3 = 3;  m_UDR3 = 8;  // USART I/O Data bits
  UDR4 = 4;  m_UDR4 = 16;  // USART I/O Data bits
  UDR5 = 5;  m_UDR5 = 32;  // USART I/O Data bits
  UDR6 = 6;  m_UDR6 = 64;  // USART I/O Data bits
  UDR7 = 7;  m_UDR7 = 128;  // USART I/O Data bits

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

type
  TSPDRset = bitpacked set of (e_SPDR0, e_SPDR1, e_SPDR2, e_SPDR3, e_SPDR4, e_SPDR5, e_SPDR6, e_SPDR7);
  TSPDRrec = bitpacked record
    SPDR0,
    SPDR1,
    SPDR2,
    SPDR3,
    SPDR4,
    SPDR5,
    SPDR6,
    SPDR7: TBitField;
  end;
var
  SPDR: byte absolute $2F;  // SPI Data Register
  SPDRset: TSPDRset absolute $2F;
  SPDRrec: TSPDRrec absolute $2F;
const
  SPDR0 = 0;  m_SPDR0 = 1;  // SPI Data bits
  SPDR1 = 1;  m_SPDR1 = 2;  // SPI Data bits
  SPDR2 = 2;  m_SPDR2 = 4;  // SPI Data bits
  SPDR3 = 3;  m_SPDR3 = 8;  // SPI Data bits
  SPDR4 = 4;  m_SPDR4 = 16;  // SPI Data bits
  SPDR5 = 5;  m_SPDR5 = 32;  // SPI Data bits
  SPDR6 = 6;  m_SPDR6 = 64;  // SPI Data bits
  SPDR7 = 7;  m_SPDR7 = 128;  // SPI Data bits

var
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
  EEDR0 = 0;  m_EEDR0 = 1;  // EEPROM Data bits
  EEDR1 = 1;  m_EEDR1 = 2;  // EEPROM Data bits
  EEDR2 = 2;  m_EEDR2 = 4;  // EEPROM Data bits
  EEDR3 = 3;  m_EEDR3 = 8;  // EEPROM Data bits
  EEDR4 = 4;  m_EEDR4 = 16;  // EEPROM Data bits
  EEDR5 = 5;  m_EEDR5 = 32;  // EEPROM Data bits
  EEDR6 = 6;  m_EEDR6 = 64;  // EEPROM Data bits
  EEDR7 = 7;  m_EEDR7 = 128;  // EEPROM Data bits

var
  EEAR: word absolute $3E;  // EEPROM Address Register Bytes
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;
const
  EEAR0 = 0;  m_EEAR0 = 1;  // EEPROM Address bits
  EEAR1 = 1;  m_EEAR1 = 2;  // EEPROM Address bits
  EEAR2 = 2;  m_EEAR2 = 4;  // EEPROM Address bits
  EEAR3 = 3;  m_EEAR3 = 8;  // EEPROM Address bits
  EEAR4 = 4;  m_EEAR4 = 16;  // EEPROM Address bits
  EEAR5 = 5;  m_EEAR5 = 32;  // EEPROM Address bits
  EEAR6 = 6;  m_EEAR6 = 64;  // EEPROM Address bits
  EEAR7 = 7;  m_EEAR7 = 128;  // EEPROM Address bits

var
  UBRR: word absolute $3F;  // USART Baud Rate Register
  UBRRL: byte absolute $3F;
  UBRRH: byte absolute $40;
const
  UBRR0 = 0;  m_UBRR0 = 1;  // USART Baud Rate bits
  UBRR1 = 1;  m_UBRR1 = 2;  // USART Baud Rate bits
  UBRR2 = 2;  m_UBRR2 = 4;  // USART Baud Rate bits
  UBRR3 = 3;  m_UBRR3 = 8;  // USART Baud Rate bits
  UBRR4 = 4;  m_UBRR4 = 16;  // USART Baud Rate bits
  UBRR5 = 5;  m_UBRR5 = 32;  // USART Baud Rate bits
  UBRR6 = 6;  m_UBRR6 = 64;  // USART Baud Rate bits
  UBRR7 = 7;  m_UBRR7 = 128;  // USART Baud Rate bits

type
  TUCSRCset = bitpacked set of (e_UCPOL, e_UCSZ0, e_UCSZ1, e_USBS, e_UPM0, e_UPM1, e_UMSEL, e_URSEL);
  TUCSRCrec = bitpacked record
    UCPOL,
    UCSZ0,
    UCSZ1,
    USBS,
    UPM0,
    UPM1,
    UMSEL,
    URSEL: TBitField;
  end;
var
  UCSRC: byte absolute $40;  // USART Control and Status Register C
  UCSRCset: TUCSRCset absolute $40;
  UCSRCrec: TUCSRCrec absolute $40;
const
  UCPOL = 0;  m_UCPOL = 1;  // Clock Polarity
  UCSZ0 = 1;  m_UCSZ0 = 2;  // Character Size
  UCSZ1 = 2;  m_UCSZ1 = 4;  // Character Size
  USBS = 3;  m_USBS = 8;  // Stop Bit Select
  UPM0 = 4;  m_UPM0 = 16;  // Parity Mode Bits
  UPM1 = 5;  m_UPM1 = 32;  // Parity Mode Bits
  UMSEL = 6;  m_UMSEL = 64;  // USART Mode Select
  URSEL = 7;  m_URSEL = 128;  // Register Select

type
  TWDTCRset = bitpacked set of (e_WDP0, e_WDP1, e_WDP2, e_WDE, e_WDTOE);
  TWDTCRrec = bitpacked record
    WDP0,
    WDP1,
    WDP2,
    WDE,
    WDTOE,
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
  WDTOE = 4;  m_WDTOE = 16;  // RW

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
  ASSR: byte absolute $42;  // Asynchronous Status Register
  ASSRset: TASSRset absolute $42;
  ASSRrec: TASSRrec absolute $42;
const
  TCR2UB = 0;  m_TCR2UB = 1;  // Timer/counter Control Register2 Update Busy
  OCR2UB = 1;  m_OCR2UB = 2;  // Output Compare Register2 Update Busy
  TCN2UB = 2;  m_TCN2UB = 4;  // Timer/Counter2 Update Busy
  AS2 = 3;  m_AS2 = 8;  // Asynchronous Timer/counter2

type
  TOCR2set = bitpacked set of (e_OCR20, e_OCR21, e_OCR22, e_OCR23, e_OCR24, e_OCR25, e_OCR26, e_OCR27);
  TOCR2rec = bitpacked record
    OCR20,
    OCR21,
    OCR22,
    OCR23,
    OCR24,
    OCR25,
    OCR26,
    OCR27: TBitField;
  end;
var
  OCR2: byte absolute $43;  // Timer/Counter2 Output Compare Register
  OCR2set: TOCR2set absolute $43;
  OCR2rec: TOCR2rec absolute $43;
const
  OCR20 = 0;  m_OCR20 = 1;  // Timer/Counter2 Output Compare bits
  OCR21 = 1;  m_OCR21 = 2;  // Timer/Counter2 Output Compare bits
  OCR22 = 2;  m_OCR22 = 4;  // Timer/Counter2 Output Compare bits
  OCR23 = 3;  m_OCR23 = 8;  // Timer/Counter2 Output Compare bits
  OCR24 = 4;  m_OCR24 = 16;  // Timer/Counter2 Output Compare bits
  OCR25 = 5;  m_OCR25 = 32;  // Timer/Counter2 Output Compare bits
  OCR26 = 6;  m_OCR26 = 64;  // Timer/Counter2 Output Compare bits
  OCR27 = 7;  m_OCR27 = 128;  // Timer/Counter2 Output Compare bits

type
  TTCNT2set = bitpacked set of (e_TCNT20, e_TCNT21, e_TCNT22, e_TCNT23, e_TCNT24, e_TCNT25, e_TCNT26, e_TCNT27);
  TTCNT2rec = bitpacked record
    TCNT20,
    TCNT21,
    TCNT22,
    TCNT23,
    TCNT24,
    TCNT25,
    TCNT26,
    TCNT27: TBitField;
  end;
var
  TCNT2: byte absolute $44;  // Timer/Counter2
  TCNT2set: TTCNT2set absolute $44;
  TCNT2rec: TTCNT2rec absolute $44;
const
  TCNT20 = 0;  m_TCNT20 = 1;  // Timer/Counter2
  TCNT21 = 1;  m_TCNT21 = 2;  // Timer/Counter2
  TCNT22 = 2;  m_TCNT22 = 4;  // Timer/Counter2
  TCNT23 = 3;  m_TCNT23 = 8;  // Timer/Counter2
  TCNT24 = 4;  m_TCNT24 = 16;  // Timer/Counter2
  TCNT25 = 5;  m_TCNT25 = 32;  // Timer/Counter2
  TCNT26 = 6;  m_TCNT26 = 64;  // Timer/Counter2
  TCNT27 = 7;  m_TCNT27 = 128;  // Timer/Counter2

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
  TCCR2: byte absolute $45;  // Timer/Counter2 Control Register
  TCCR2set: TTCCR2set absolute $45;
  TCCR2rec: TTCCR2rec absolute $45;
const
  CS20 = 0;  m_CS20 = 1;  // Clock Select bits
  CS21 = 1;  m_CS21 = 2;  // Clock Select bits
  CS22 = 2;  m_CS22 = 4;  // Clock Select bits
  WGM21 = 3;  m_WGM21 = 8;  // Waveform Generation Mode
  COM20 = 4;  m_COM20 = 16;  // Compare Output Mode bits
  COM21 = 5;  m_COM21 = 32;  // Compare Output Mode bits
  WGM20 = 6;  m_WGM20 = 64;  // Waveform Genration Mode
  FOC2 = 7;  m_FOC2 = 128;  // Force Output Compare

var
  ICR1: word absolute $46;  // Timer/Counter1 Input Capture Register Bytes
  ICR1L: byte absolute $46;
  ICR1H: byte absolute $47;
const
  ICR10 = 0;  m_ICR10 = 1;  // Timer/Counter1 Input Capture bits
  ICR11 = 1;  m_ICR11 = 2;  // Timer/Counter1 Input Capture bits
  ICR12 = 2;  m_ICR12 = 4;  // Timer/Counter1 Input Capture bits
  ICR13 = 3;  m_ICR13 = 8;  // Timer/Counter1 Input Capture bits
  ICR14 = 4;  m_ICR14 = 16;  // Timer/Counter1 Input Capture bits
  ICR15 = 5;  m_ICR15 = 32;  // Timer/Counter1 Input Capture bits
  ICR16 = 6;  m_ICR16 = 64;  // Timer/Counter1 Input Capture bits
  ICR17 = 7;  m_ICR17 = 128;  // Timer/Counter1 Input Capture bits

var
  OCR1B: word absolute $48;  // Timer/Counter1 Output Compare Register Bytes
  OCR1BL: byte absolute $48;
  OCR1BH: byte absolute $49;
const
  OCR1B0 = 0;  m_OCR1B0 = 1;  // Timer/Counter1 Output Compare B bits
  OCR1B1 = 1;  m_OCR1B1 = 2;  // Timer/Counter1 Output Compare B bits
  OCR1B2 = 2;  m_OCR1B2 = 4;  // Timer/Counter1 Output Compare B bits
  OCR1B3 = 3;  m_OCR1B3 = 8;  // Timer/Counter1 Output Compare B bits
  OCR1B4 = 4;  m_OCR1B4 = 16;  // Timer/Counter1 Output Compare B bits
  OCR1B5 = 5;  m_OCR1B5 = 32;  // Timer/Counter1 Output Compare B bits
  OCR1B6 = 6;  m_OCR1B6 = 64;  // Timer/Counter1 Output Compare B bits
  OCR1B7 = 7;  m_OCR1B7 = 128;  // Timer/Counter1 Output Compare B bits

var
  OCR1A: word absolute $4A;  // Timer/Counter1 Output Compare Register Bytes
  OCR1AL: byte absolute $4A;
  OCR1AH: byte absolute $4B;
const
  OCR1A0 = 0;  m_OCR1A0 = 1;  // Timer/Counter1 Output Compare A bits
  OCR1A1 = 1;  m_OCR1A1 = 2;  // Timer/Counter1 Output Compare A bits
  OCR1A2 = 2;  m_OCR1A2 = 4;  // Timer/Counter1 Output Compare A bits
  OCR1A3 = 3;  m_OCR1A3 = 8;  // Timer/Counter1 Output Compare A bits
  OCR1A4 = 4;  m_OCR1A4 = 16;  // Timer/Counter1 Output Compare A bits
  OCR1A5 = 5;  m_OCR1A5 = 32;  // Timer/Counter1 Output Compare A bits
  OCR1A6 = 6;  m_OCR1A6 = 64;  // Timer/Counter1 Output Compare A bits
  OCR1A7 = 7;  m_OCR1A7 = 128;  // Timer/Counter1 Output Compare A bits

var
  TCNT1: word absolute $4C;  // Timer/Counter1 Bytes
  TCNT1L: byte absolute $4C;
  TCNT1H: byte absolute $4D;
const
  TCNT10 = 0;  m_TCNT10 = 1;  // Timer/Counter1 bits
  TCNT11 = 1;  m_TCNT11 = 2;  // Timer/Counter1 bits
  TCNT12 = 2;  m_TCNT12 = 4;  // Timer/Counter1 bits
  TCNT13 = 3;  m_TCNT13 = 8;  // Timer/Counter1 bits
  TCNT14 = 4;  m_TCNT14 = 16;  // Timer/Counter1 bits
  TCNT15 = 5;  m_TCNT15 = 32;  // Timer/Counter1 bits
  TCNT16 = 6;  m_TCNT16 = 64;  // Timer/Counter1 bits
  TCNT17 = 7;  m_TCNT17 = 128;  // Timer/Counter1 bits

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
  CS10 = 0;  m_CS10 = 1;  // Prescaler source of Timer/Counter 1
  CS11 = 1;  m_CS11 = 2;  // Prescaler source of Timer/Counter 1
  CS12 = 2;  m_CS12 = 4;  // Prescaler source of Timer/Counter 1
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
  WGM10 = 0;  m_WGM10 = 1;  // Waveform Generation Mode
  WGM11 = 1;  m_WGM11 = 2;  // Waveform Generation Mode
  FOC1B = 2;  m_FOC1B = 4;  // Force Output Compare 1B
  FOC1A = 3;  m_FOC1A = 8;  // Force Output Compare 1A
  COM1B0 = 4;  m_COM1B0 = 16;  // Compare Output Mode 1B, bits
  COM1B1 = 5;  m_COM1B1 = 32;  // Compare Output Mode 1B, bits
  COM1A0 = 6;  m_COM1A0 = 64;  // Compare Output Mode 1A, bits
  COM1A1 = 7;  m_COM1A1 = 128;  // Compare Output Mode 1A, bits

type
  TSFIORset = bitpacked set of (e_PSR10, e_PSR2, e_PUD, e_ACME, e_ADTS0=5, e_ADTS1, e_ADTS2);
  TSFIORrec = bitpacked record
    PSR10,
    PSR2,
    PUD,
    ACME,
    ReservedBit4,
    ADTS0,
    ADTS1,
    ADTS2: TBitField;
  end;
var
  SFIOR: byte absolute $50;  // Special Function IO Register
  SFIORset: TSFIORset absolute $50;
  SFIORrec: TSFIORrec absolute $50;
const
  PSR10 = 0;  m_PSR10 = 1;  // Prescaler Reset Timer/Counter1 and Timer/Counter0
  PSR2 = 1;  m_PSR2 = 2;  // Prescaler reset
  PUD = 2;  m_PUD = 4;  // Pull-up Disable
  ACME = 3;  m_ACME = 8;  // Analog Comparator Multiplexer Enable
  ADTS0 = 5;  m_ADTS0 = 32;  // ADC Auto Trigger Sources
  ADTS1 = 6;  m_ADTS1 = 64;  // ADC Auto Trigger Sources
  ADTS2 = 7;  m_ADTS2 = 128;  // ADC Auto Trigger Sources

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
  OCDR: byte absolute $51;  // On-Chip Debug Related Register in I/O Memory
  OCDRset: TOCDRset absolute $51;
  OCDRrec: TOCDRrec absolute $51;
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
  TTCNT0set = bitpacked set of (e_TCNT00, e_TCNT01, e_TCNT02, e_TCNT03, e_TCNT04, e_TCNT05, e_TCNT06, e_TCNT07);
  TTCNT0rec = bitpacked record
    TCNT00,
    TCNT01,
    TCNT02,
    TCNT03,
    TCNT04,
    TCNT05,
    TCNT06,
    TCNT07: TBitField;
  end;
var
  TCNT0: byte absolute $52;  // Timer/Counter 0 Register
  TCNT0set: TTCNT0set absolute $52;
  TCNT0rec: TTCNT0rec absolute $52;
const
  TCNT00 = 0;  m_TCNT00 = 1;  // Timer/Counter 0 bits
  TCNT01 = 1;  m_TCNT01 = 2;  // Timer/Counter 0 bits
  TCNT02 = 2;  m_TCNT02 = 4;  // Timer/Counter 0 bits
  TCNT03 = 3;  m_TCNT03 = 8;  // Timer/Counter 0 bits
  TCNT04 = 4;  m_TCNT04 = 16;  // Timer/Counter 0 bits
  TCNT05 = 5;  m_TCNT05 = 32;  // Timer/Counter 0 bits
  TCNT06 = 6;  m_TCNT06 = 64;  // Timer/Counter 0 bits
  TCNT07 = 7;  m_TCNT07 = 128;  // Timer/Counter 0 bits

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
  TMCUCSRset = bitpacked set of (e_PORF, e_EXTRF, e_BORF, e_WDRF, e_JTRF, e_ISC2=6, e_JTD);
  TMCUCSRrec = bitpacked record
    PORF,
    EXTRF,
    BORF,
    WDRF,
    JTRF,
    ReservedBit5,
    ISC2,
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
  ISC2 = 6;  m_ISC2 = 64;  // Interrupt Sense Control 2
  JTD = 7;  m_JTD = 128;  // JTAG Interface Disable

type
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_ISC10, e_ISC11, e_SM0, e_SM1, e_SE, e_SM2);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    ISC10,
    ISC11,
    SM0,
    SM1,
    SE,
    SM2: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 Bits
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 Bits
  ISC10 = 2;  m_ISC10 = 4;  // Interrupt Sense Control 1 Bits
  ISC11 = 3;  m_ISC11 = 8;  // Interrupt Sense Control 1 Bits
  SE = 6;  m_SE = 64;  // Sleep Enable
  SM0 = 4;  m_SM0 = 16;  // Sleep Mode Select
  SM1 = 5;  m_SM1 = 32;  // Sleep Mode Select
  SM2 = 7;  m_SM2 = 128;  // Sleep Mode Select

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
  TWCR: byte absolute $56;  // TWI Control Register
  TWCRset: TTWCRset absolute $56;
  TWCRrec: TTWCRrec absolute $56;
const
  TWIE = 0;  m_TWIE = 1;  // TWI Interrupt Enable
  TWEN = 2;  m_TWEN = 4;  // TWI Enable Bit
  TWWC = 3;  m_TWWC = 8;  // TWI Write Collition Flag
  TWSTO = 4;  m_TWSTO = 16;  // TWI Stop Condition Bit
  TWSTA = 5;  m_TWSTA = 32;  // TWI Start Condition Bit
  TWEA = 6;  m_TWEA = 64;  // TWI Enable Acknowledge Bit
  TWINT = 7;  m_TWINT = 128;  // TWI Interrupt Flag

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
  SPMCSR: byte absolute $57;  // Store Program Memory Control Register
  SPMCSRset: TSPMCSRset absolute $57;
  SPMCSRrec: TSPMCSRrec absolute $57;
const
  SPMEN = 0;  m_SPMEN = 1;  // Store Program Memory Enable
  PGERS = 1;  m_PGERS = 2;  // Page Erase
  PGWRT = 2;  m_PGWRT = 4;  // Page Write
  BLBSET = 3;  m_BLBSET = 8;  // Boot Lock Bit Set
  RWWSRE = 4;  m_RWWSRE = 16;  // Read While Write section read enable
  RWWSB = 6;  m_RWWSB = 64;  // Read While Write Section Busy
  SPMIE = 7;  m_SPMIE = 128;  // SPM Interrupt Enable

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
  TIFR: byte absolute $58;  // Timer/Counter Interrupt Flag Register
  TIFRset: TTIFRset absolute $58;
  TIFRrec: TTIFRrec absolute $58;
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
  TIMSK: byte absolute $59;  // Timer/Counter Interrupt Mask register
  TIMSKset: TTIMSKset absolute $59;
  TIMSKrec: TTIMSKrec absolute $59;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0 = 1;  m_OCIE0 = 2;  // Timer/Counter0 Output Compare Match Interrupt register
  TOIE1 = 2;  m_TOIE1 = 4;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1B = 3;  m_OCIE1B = 8;  // Timer/Counter1 Output CompareB Match Interrupt Enable
  OCIE1A = 4;  m_OCIE1A = 16;  // Timer/Counter1 Output CompareA Match Interrupt Enable
  TICIE1 = 5;  m_TICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable
  TOIE2 = 6;  m_TOIE2 = 64;  // Timer/Counter2 Overflow Interrupt Enable
  OCIE2 = 7;  m_OCIE2 = 128;  // Timer/Counter2 Output Compare Match Interrupt Enable

type
  TGIFRset = bitpacked set of (e_INTF2=5, e_INTF0, e_INTF1);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    INTF2,
    INTF0,
    INTF1: TBitField;
  end;
var
  GIFR: byte absolute $5A;  // General Interrupt Flag Register
  GIFRset: TGIFRset absolute $5A;
  GIFRrec: TGIFRrec absolute $5A;
const
  INTF2 = 5;  m_INTF2 = 32;  // External Interrupt Flag 2
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flags
  INTF1 = 7;  m_INTF1 = 128;  // External Interrupt Flags

type
  TGICRset = bitpacked set of (e_IVCE, e_IVSEL, e_INT2=5, e_INT0, e_INT1);
  TGICRrec = bitpacked record
    IVCE,
    IVSEL,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
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
  INT2 = 5;  m_INT2 = 32;  // External Interrupt Request 2 Enable
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable
  INT1 = 7;  m_INT1 = 128;  // External Interrupt Request 1 Enable

type
  TOCR0set = bitpacked set of (e_OCR00, e_OCR01, e_OCR02, e_OCR03, e_OCR04, e_OCR05, e_OCR06, e_OCR07);
  TOCR0rec = bitpacked record
    OCR00,
    OCR01,
    OCR02,
    OCR03,
    OCR04,
    OCR05,
    OCR06,
    OCR07: TBitField;
  end;
var
  OCR0: byte absolute $5C;  // Output Compare 0 Register
  OCR0set: TOCR0set absolute $5C;
  OCR0rec: TOCR0rec absolute $5C;
const
  OCR00 = 0;  m_OCR00 = 1;  // Output Compare bits
  OCR01 = 1;  m_OCR01 = 2;  // Output Compare bits
  OCR02 = 2;  m_OCR02 = 4;  // Output Compare bits
  OCR03 = 3;  m_OCR03 = 8;  // Output Compare bits
  OCR04 = 4;  m_OCR04 = 16;  // Output Compare bits
  OCR05 = 5;  m_OCR05 = 32;  // Output Compare bits
  OCR06 = 6;  m_OCR06 = 64;  // Output Compare bits
  OCR07 = 7;  m_OCR07 = 128;  // Output Compare bits

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
  // typedefs = 41

implementation

{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure INT1_ISR; external name 'INT1_ISR'; // Interrupt 2 External Interrupt Request 1
procedure TIMER2_COMP_ISR; external name 'TIMER2_COMP_ISR'; // Interrupt 3 Timer/Counter2 Compare Match
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 4 Timer/Counter2 Overflow
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 5 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 6 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 7 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 8 Timer/Counter1 Overflow
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 9 Timer/Counter0 Overflow
procedure SPI_STC_ISR; external name 'SPI_STC_ISR'; // Interrupt 10 Serial Transfer Complete
procedure USART_RXC_ISR; external name 'USART_RXC_ISR'; // Interrupt 11 USART, Rx Complete
procedure USART_UDRE_ISR; external name 'USART_UDRE_ISR'; // Interrupt 12 USART Data Register Empty
procedure USART_TXC_ISR; external name 'USART_TXC_ISR'; // Interrupt 13 USART, Tx Complete
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 14 ADC Conversion Complete
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 15 EEPROM Ready
procedure ANA_COMP_ISR; external name 'ANA_COMP_ISR'; // Interrupt 16 Analog Comparator
procedure TWI_ISR; external name 'TWI_ISR'; // Interrupt 17 2-wire Serial Interface
procedure INT2_ISR; external name 'INT2_ISR'; // Interrupt 18 External Interrupt Request 2
procedure TIMER0_COMP_ISR; external name 'TIMER0_COMP_ISR'; // Interrupt 19 Timer/Counter0 Compare Match
procedure SPM_RDY_ISR; external name 'SPM_RDY_ISR'; // Interrupt 20 Store Program Memory Ready

procedure _FPC_start; assembler; nostackframe;
label
  _start;
asm
  .init
  .globl _start

  jmp _start
  jmp INT0_ISR
  jmp INT1_ISR
  jmp TIMER2_COMP_ISR
  jmp TIMER2_OVF_ISR
  jmp TIMER1_CAPT_ISR
  jmp TIMER1_COMPA_ISR
  jmp TIMER1_COMPB_ISR
  jmp TIMER1_OVF_ISR
  jmp TIMER0_OVF_ISR
  jmp SPI_STC_ISR
  jmp USART_RXC_ISR
  jmp USART_UDRE_ISR
  jmp USART_TXC_ISR
  jmp ADC_ISR
  jmp EE_RDY_ISR
  jmp ANA_COMP_ISR
  jmp TWI_ISR
  jmp INT2_ISR
  jmp TIMER0_COMP_ISR
  jmp SPM_RDY_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak INT1_ISR
  .weak TIMER2_COMP_ISR
  .weak TIMER2_OVF_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_OVF_ISR
  .weak SPI_STC_ISR
  .weak USART_RXC_ISR
  .weak USART_UDRE_ISR
  .weak USART_TXC_ISR
  .weak ADC_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP_ISR
  .weak TWI_ISR
  .weak INT2_ISR
  .weak TIMER0_COMP_ISR
  .weak SPM_RDY_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set INT1_ISR, Default_IRQ_handler
  .set TIMER2_COMP_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set SPI_STC_ISR, Default_IRQ_handler
  .set USART_RXC_ISR, Default_IRQ_handler
  .set USART_UDRE_ISR, Default_IRQ_handler
  .set USART_TXC_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP_ISR, Default_IRQ_handler
  .set TWI_ISR, Default_IRQ_handler
  .set INT2_ISR, Default_IRQ_handler
  .set TIMER0_COMP_ISR, Default_IRQ_handler
  .set SPM_RDY_ISR, Default_IRQ_handler
end;

end.