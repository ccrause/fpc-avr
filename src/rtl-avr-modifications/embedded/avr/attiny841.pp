unit ATtiny841;

{$goto on}
interface

{$bitpacking on}{$packset 1}{$packenum 1}
type
  TBitField = 0..1;

type
  TADCSRBset = bitpacked set of (e_ADTS0, e_ADTS1, e_ADTS2, e_ADLAR);
  TADCSRBrec = bitpacked record
    ADTS0,
    ADTS1,
    ADTS2,
    ADLAR,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADCSRB: byte absolute $24;  // ADC Control and Status Register B
  ADCSRBset: TADCSRBset absolute $24;
  ADCSRBrec: TADCSRBrec absolute $24;
const
  ADTS0 = 0;  m_ADTS0 = 1;  // ADC Auto Trigger Sources
  ADTS1 = 1;  m_ADTS1 = 2;  // ADC Auto Trigger Sources
  ADTS2 = 2;  m_ADTS2 = 4;  // ADC Auto Trigger Sources
  ADLAR = 3;  m_ADLAR = 8;

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
  ADCSRA: byte absolute $25;  // The ADC Control and Status register
  ADCSRAset: TADCSRAset absolute $25;
  ADCSRArec: TADCSRArec absolute $25;
const
  ADPS0 = 0;  m_ADPS0 = 1;  // ADC Prescaler Select Bits
  ADPS1 = 1;  m_ADPS1 = 2;  // ADC Prescaler Select Bits
  ADPS2 = 2;  m_ADPS2 = 4;  // ADC Prescaler Select Bits
  ADIE = 3;  m_ADIE = 8;  // ADC Interrupt Enable
  ADIF = 4;  m_ADIF = 16;  // ADC Interrupt Flag
  ADATE = 5;  m_ADATE = 32;  // ADC Auto Trigger Enable
  ADSC = 6;  m_ADSC = 64;  // ADC Start Conversion
  ADEN = 7;  m_ADEN = 128;  // ADC Enable

var
  ADC: word absolute $26;  // ADC Data Register  Bytes
  ADCL: byte absolute $26;
  ADCH: byte absolute $27;

type
  TADMUXBset = bitpacked set of (e_GSEL0, e_GSEL1, e_REFS0=5, e_REFS1, e_REFS2);
  TADMUXBrec = bitpacked record
    GSEL0,
    GSEL1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    REFS0,
    REFS1,
    REFS2: TBitField;
  end;
var
  ADMUXB: byte absolute $28;  // The ADC multiplexer Selection Register B
  ADMUXBset: TADMUXBset absolute $28;
  ADMUXBrec: TADMUXBrec absolute $28;
const
  GSEL0 = 0;  m_GSEL0 = 1;  // Gain Selection Bits
  GSEL1 = 1;  m_GSEL1 = 2;  // Gain Selection Bits
  REFS0 = 5;  m_REFS0 = 32;  // Reference Selection Bits
  REFS1 = 6;  m_REFS1 = 64;  // Reference Selection Bits
  REFS2 = 7;  m_REFS2 = 128;  // Reference Selection Bits

type
  TADMUXAset = bitpacked set of (e_MUX0, e_MUX1, e_MUX2, e_MUX3, e_MUX4, e_MUX5);
  TADMUXArec = bitpacked record
    MUX0,
    MUX1,
    MUX2,
    MUX3,
    MUX4,
    MUX5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  ADMUXA: byte absolute $29;  // The ADC multiplexer Selection Register A
  ADMUXAset: TADMUXAset absolute $29;
  ADMUXArec: TADMUXArec absolute $29;
const
  MUX0 = 0;  m_MUX0 = 1;  // Analog Channel and Gain Selection Bits
  MUX1 = 1;  m_MUX1 = 2;  // Analog Channel and Gain Selection Bits
  MUX2 = 2;  m_MUX2 = 4;  // Analog Channel and Gain Selection Bits
  MUX3 = 3;  m_MUX3 = 8;  // Analog Channel and Gain Selection Bits
  MUX4 = 4;  m_MUX4 = 16;  // Analog Channel and Gain Selection Bits
  MUX5 = 5;  m_MUX5 = 32;  // Analog Channel and Gain Selection Bits

type
  TACSR0Aset = bitpacked set of (e_ACIS00, e_ACIS01, e_ACIC0, e_ACIE0, e_ACI0, e_ACO0, e_ACPMUX2, e_ACD0);
  TACSR0Arec = bitpacked record
    ACIS00,
    ACIS01,
    ACIC0,
    ACIE0,
    ACI0,
    ACO0,
    ACPMUX2,
    ACD0: TBitField;
  end;
var
  ACSR0A: byte absolute $2A;  // Analog Comparator 0 Control And Status Register A
  ACSR0Aset: TACSR0Aset absolute $2A;
  ACSR0Arec: TACSR0Arec absolute $2A;
const
  ACIS00 = 0;  m_ACIS00 = 1;  // Analog Comparator 0 Interrupt Mode Select bits
  ACIS01 = 1;  m_ACIS01 = 2;  // Analog Comparator 0 Interrupt Mode Select bits
  ACIC0 = 2;  m_ACIC0 = 4;  // Analog Comparator 0 Input Capture Enable
  ACIE0 = 3;  m_ACIE0 = 8;  // Analog Comparator 0 Interrupt Enable
  ACI0 = 4;  m_ACI0 = 16;  // Analog Comparator 0 Interrupt Flag
  ACO0 = 5;  m_ACO0 = 32;  // Analog Comparator 0 Output
  ACPMUX2 = 6;  m_ACPMUX2 = 64;  // Analog Comparator 0 Positive Input Multiplexer Bit 2
  ACD0 = 7;  m_ACD0 = 128;  // Analog Comparator 0 Disable

type
  TACSR0Bset = bitpacked set of (e_ACPMUX0, e_ACPMUX1, e_ACNMUX0, e_ACNMUX1, e_ACOE0, e_HLEV0=6, e_HSEL0);
  TACSR0Brec = bitpacked record
    ACPMUX0,
    ACPMUX1,
    ACNMUX0,
    ACNMUX1,
    ACOE0,
    ReservedBit5,
    HLEV0,
    HSEL0: TBitField;
  end;
var
  ACSR0B: byte absolute $2B;  // Analog Comparator 0 Control And Status Register B
  ACSR0Bset: TACSR0Bset absolute $2B;
  ACSR0Brec: TACSR0Brec absolute $2B;
const
  ACPMUX0 = 0;  m_ACPMUX0 = 1;  // Analog Comparator 0 Positive Input Multiplexer Bits 1:0
  ACPMUX1 = 1;  m_ACPMUX1 = 2;  // Analog Comparator 0 Positive Input Multiplexer Bits 1:0
  ACNMUX0 = 2;  m_ACNMUX0 = 4;  // Analog Comparator 0 Negative Input Multiplexer
  ACNMUX1 = 3;  m_ACNMUX1 = 8;  // Analog Comparator 0 Negative Input Multiplexer
  ACOE0 = 4;  m_ACOE0 = 16;  // Analog Comparator 0 Output Pin Enable
  HLEV0 = 6;  m_HLEV0 = 64;  // Analog Comparator 0 Hysteresis Level
  HSEL0 = 7;  m_HSEL0 = 128;  // Analog Comparator 0 Hysteresis Select

type
  TACSR1Aset = bitpacked set of (e_ACIS10, e_ACIS11, e_ACIC1, e_ACIE1, e_ACI1, e_ACO1, e_ACBG1, e_ACD1);
  TACSR1Arec = bitpacked record
    ACIS10,
    ACIS11,
    ACIC1,
    ACIE1,
    ACI1,
    ACO1,
    ACBG1,
    ACD1: TBitField;
  end;
var
  ACSR1A: byte absolute $2C;  // Analog Comparator 1 Control And Status Register A
  ACSR1Aset: TACSR1Aset absolute $2C;
  ACSR1Arec: TACSR1Arec absolute $2C;
const
  ACIS10 = 0;  m_ACIS10 = 1;  // Analog Comparator 1 Interrupt Mode Select bits
  ACIS11 = 1;  m_ACIS11 = 2;  // Analog Comparator 1 Interrupt Mode Select bits
  ACIC1 = 2;  m_ACIC1 = 4;  // Analog Comparator 1 Input Capture Enable
  ACIE1 = 3;  m_ACIE1 = 8;  // Analog Comparator 1 Interrupt Enable
  ACI1 = 4;  m_ACI1 = 16;  // Analog Comparator 1 Interrupt Flag
  ACO1 = 5;  m_ACO1 = 32;  // Analog Comparator 1 Output
  ACBG1 = 6;  m_ACBG1 = 64;  // Analog Comparator 1 Bandgap Select
  ACD1 = 7;  m_ACD1 = 128;  // Analog Comparator 1 Disable

type
  TACSR1Bset = bitpacked set of (e_ACME1=2, e_ACOE1=4, e_HLEV1=6, e_HSEL1);
  TACSR1Brec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ACME1,
    ReservedBit3,
    ACOE1,
    ReservedBit5,
    HLEV1,
    HSEL1: TBitField;
  end;
var
  ACSR1B: byte absolute $2D;  // Analog Comparator 1 Control And Status Register B
  ACSR1Bset: TACSR1Bset absolute $2D;
  ACSR1Brec: TACSR1Brec absolute $2D;
const
  ACME1 = 2;  m_ACME1 = 4;  // Analog Comparator 1 Multiplexer Enable
  ACOE1 = 4;  m_ACOE1 = 16;  // Analog Comparator 1 Output Pin Enable
  HLEV1 = 6;  m_HLEV1 = 64;  // Analog Comparator 1 Hysteresis Level
  HSEL1 = 7;  m_HSEL1 = 128;  // Analog Comparator 1 Hysteresis Select

type
  TTIFR1set = bitpacked set of (e_TOV1, e_OCF1A, e_OCF1B, e_ICF1=5);
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
  TIFR1: byte absolute $2E;  // Timer/Counter Interrupt Flag register
  TIFR1set: TTIFR1set absolute $2E;
  TIFR1rec: TTIFR1rec absolute $2E;
const
  TOV1 = 0;  m_TOV1 = 1;  // Timer/Counter1 Overflow Flag
  OCF1A = 1;  m_OCF1A = 2;  // Timer/Counter1 Output Compare A Match Flag
  OCF1B = 2;  m_OCF1B = 4;  // Timer/Counter1 Output Compare B Match Flag
  ICF1 = 5;  m_ICF1 = 32;  // Timer/Counter1 Input Capture Flag

type
  TTIMSK1set = bitpacked set of (e_TOIE1, e_OCIE1A, e_OCIE1B, e_ICIE1=5);
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
  TIMSK1: byte absolute $2F;  // Timer/Counter1 Interrupt Mask Register
  TIMSK1set: TTIMSK1set absolute $2F;
  TIMSK1rec: TTIMSK1rec absolute $2F;
const
  TOIE1 = 0;  m_TOIE1 = 1;  // Timer/Counter1 Overflow Interrupt Enable
  OCIE1A = 1;  m_OCIE1A = 2;  // Timer/Counter1 Output Compare A Match Interrupt Enable
  OCIE1B = 2;  m_OCIE1B = 4;  // Timer/Counter1 Output Compare B Match Interrupt Enable
  ICIE1 = 5;  m_ICIE1 = 32;  // Timer/Counter1 Input Capture Interrupt Enable

type
  TTIFR2set = bitpacked set of (e_TOV2, e_OCF2A, e_OCF2B, e_ICF2=5);
  TTIFR2rec = bitpacked record
    TOV2,
    OCF2A,
    OCF2B,
    ReservedBit3,
    ReservedBit4,
    ICF2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIFR2: byte absolute $30;  // Timer/Counter Interrupt Flag register
  TIFR2set: TTIFR2set absolute $30;
  TIFR2rec: TTIFR2rec absolute $30;
const
  TOV2 = 0;  m_TOV2 = 1;  // Timer/Counter2 Overflow Flag
  OCF2A = 1;  m_OCF2A = 2;  // Timer/Counter2 Output Compare A Match Flag
  OCF2B = 2;  m_OCF2B = 4;  // Timer/Counter2 Output Compare B Match Flag
  ICF2 = 5;  m_ICF2 = 32;  // Timer/Counter2 Input Capture Flag

type
  TTIMSK2set = bitpacked set of (e_TOIE2, e_OCIE2A, e_OCIE2B, e_ICIE2=5);
  TTIMSK2rec = bitpacked record
    TOIE2,
    OCIE2A,
    OCIE2B,
    ReservedBit3,
    ReservedBit4,
    ICIE2,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TIMSK2: byte absolute $31;  // Timer/Counter2 Interrupt Mask Register
  TIMSK2set: TTIMSK2set absolute $31;
  TIMSK2rec: TTIMSK2rec absolute $31;
const
  TOIE2 = 0;  m_TOIE2 = 1;  // Timer/Counter2 Overflow Interrupt Enable
  OCIE2A = 1;  m_OCIE2A = 2;  // Timer/Counter2 Output Compare A Match Interrupt Enable
  OCIE2B = 2;  m_OCIE2B = 4;  // Timer/Counter2 Output Compare B Match Interrupt Enable
  ICIE2 = 5;  m_ICIE2 = 32;  // Timer/Counter2 Input Capture Interrupt Enable

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
  PCMSK0: byte absolute $32;  // Pin Change Enable Mask 0
  PCMSK0set: TPCMSK0set absolute $32;
  PCMSK0rec: TPCMSK0rec absolute $32;
const
  PCINT0 = 0;  m_PCINT0 = 1;  // Pin Change Enable Mask 0 Bit 0
  PCINT1 = 1;  m_PCINT1 = 2;  // Pin Change Enable Mask 0 Bit 1
  PCINT2 = 2;  m_PCINT2 = 4;  // Pin Change Enable Mask 0 Bit 2
  PCINT3 = 3;  m_PCINT3 = 8;  // Pin Change Enable Mask 0 Bit 3
  PCINT4 = 4;  m_PCINT4 = 16;  // Pin Change Enable Mask 0 Bit 4
  PCINT5 = 5;  m_PCINT5 = 32;  // Pin Change Enable Mask 0 Bit 5
  PCINT6 = 6;  m_PCINT6 = 64;  // Pin Change Enable Mask 0 Bit 6
  PCINT7 = 7;  m_PCINT7 = 128;  // Pin Change Enable Mask 0 Bit 7

var
  GPIOR0: byte absolute $33;  // General Purpose I/O Register 0
  GPIOR1: byte absolute $34;  // General Purpose I/O Register 1
  GPIOR2: byte absolute $35;  // General Purpose I/O Register 2
  PINB: byte absolute $36;  // Port B Data register
  DDRB: byte absolute $37;  // Data Direction Register, Port B

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
  PORTB: byte absolute $38;  // Input Pins, Port B
  PORTBset: TPORTBset absolute $38;
  PORTBrec: TPORTBrec absolute $38;
const
  PB0 = 0;  m_PB0 = 1;
  PB1 = 1;  m_PB1 = 2;
  PB2 = 2;  m_PB2 = 4;
  PB3 = 3;  m_PB3 = 8;

var
  PINA: byte absolute $39;  // Port A Input Pins
  DDRA: byte absolute $3A;  // Data Direction Register, Port A

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
  EERIE = 3;  m_EERIE = 8;  // EEPROM Ready Interrupt Enable
  EEPM0 = 4;  m_EEPM0 = 16;  // EEPROM Programming Mode Bits
  EEPM1 = 5;  m_EEPM1 = 32;  // EEPROM Programming Mode Bits

var
  EEDR: byte absolute $3D;  // EEPROM Data Register
  EEAR: word absolute $3E;  // EEPROM Address Register  Bytes
  EEARL: byte absolute $3E;
  EEARH: byte absolute $3F;

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
  PCMSK1: byte absolute $40;  // Pin Change Enable Mask 1
  PCMSK1set: TPCMSK1set absolute $40;
  PCMSK1rec: TPCMSK1rec absolute $40;
const
  PCINT8 = 0;  m_PCINT8 = 1;  // Pin Change Enable Mask 1 Bit 0
  PCINT9 = 1;  m_PCINT9 = 2;  // Pin Change Enable Mask 1 Bit 1
  PCINT10 = 2;  m_PCINT10 = 4;  // Pin Change Enable Mask 1 Bit 2
  PCINT11 = 3;  m_PCINT11 = 8;  // Pin Change Enable Mask 1 Bit 3

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
  WDTCSR: byte absolute $41;  // Watchdog Timer Control and Status Register
  WDTCSRset: TWDTCSRset absolute $41;
  WDTCSRrec: TWDTCSRrec absolute $41;
const
  WDE = 3;  m_WDE = 8;  // Watch Dog Enable
  WDP0 = 0;  m_WDP0 = 1;  // Watchdog Timer Prescaler Bits
  WDP1 = 1;  m_WDP1 = 2;  // Watchdog Timer Prescaler Bits
  WDP2 = 2;  m_WDP2 = 4;  // Watchdog Timer Prescaler Bits
  WDP3 = 5;  m_WDP3 = 32;  // Watchdog Timer Prescaler Bits
  WDIE = 6;  m_WDIE = 64;  // Watchdog Timer Interrupt Enable
  WDIF = 7;  m_WDIF = 128;  // Watchdog Timer Interrupt Flag

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
  TGTCCRset = bitpacked set of (e_PSR, e_TSM=7);
  TGTCCRrec = bitpacked record
    PSR,
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
  PSR = 0;  m_PSR = 1;  // Prescaler Reset Timer/CounterN
  TSM = 7;  m_TSM = 128;  // Timer/Counter Synchronization Mode

var
  ICR1: word absolute $44;  // Timer/Counter1 Input Capture Register  Bytes
  ICR1L: byte absolute $44;
  ICR1H: byte absolute $45;
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
  CS10 = 0;  m_CS10 = 1;  // Clock Select bits
  CS11 = 1;  m_CS11 = 2;  // Clock Select bits
  CS12 = 2;  m_CS12 = 4;  // Clock Select bits
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
  WGM00 = 0;  m_WGM00 = 1;  // Waveform Generation Mode bits
  WGM01 = 1;  m_WGM01 = 2;  // Waveform Generation Mode bits
  COM0B0 = 4;  m_COM0B0 = 16;  // Compare Match Output B Mode bits
  COM0B1 = 5;  m_COM0B1 = 32;  // Compare Match Output B Mode bits
  COM0A0 = 6;  m_COM0A0 = 64;  // Compare Match Output A Mode bits
  COM0A1 = 7;  m_COM0A1 = 128;  // Compare Match Output A Mode bits

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
  CS00 = 0;  m_CS00 = 1;  // Clock Select bits
  CS01 = 1;  m_CS01 = 2;  // Clock Select bits
  CS02 = 2;  m_CS02 = 4;  // Clock Select bits
  WGM02 = 3;  m_WGM02 = 8;  // Waveform Generation Mode bit 2
  FOC0B = 6;  m_FOC0B = 64;  // Force Output Compare B
  FOC0A = 7;  m_FOC0A = 128;  // Force Output Compare A

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
  TMCUCRset = bitpacked set of (e_ISC00, e_ISC01, e_SM0=3, e_SM1, e_SE);
  TMCUCRrec = bitpacked record
    ISC00,
    ISC01,
    ReservedBit2,
    SM0,
    SM1,
    SE,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  MCUCR: byte absolute $55;  // MCU Control Register
  MCUCRset: TMCUCRset absolute $55;
  MCUCRrec: TMCUCRrec absolute $55;
const
  ISC00 = 0;  m_ISC00 = 1;  // Interrupt Sense Control 0 Bit 0
  ISC01 = 1;  m_ISC01 = 2;  // Interrupt Sense Control 0 Bit 1
  SM0 = 3;  m_SM0 = 8;  // Sleep Mode Select Bits
  SM1 = 4;  m_SM1 = 16;  // Sleep Mode Select Bits
  SE = 5;  m_SE = 32;  // Sleep Enable

var
  OCR0A: byte absolute $56;  // Timer/Counter0 Output Compare Register A

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
  TTIFR0set = bitpacked set of (e_TOV0, e_OCF0A, e_OCF0B);
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
  TIFR0: byte absolute $58;  // Timer/Counter0 Interrupt Flag Register
  TIFR0set: TTIFR0set absolute $58;
  TIFR0rec: TTIFR0rec absolute $58;
const
  TOV0 = 0;  m_TOV0 = 1;  // Timer/Counter0 Overflow Flag
  OCF0A = 1;  m_OCF0A = 2;  // Timer/Counter0 Output Compare Flag A
  OCF0B = 2;  m_OCF0B = 4;  // Timer/Counter0 Output Compare Flag B

type
  TTIMSK0set = bitpacked set of (e_TOIE0, e_OCIE0A, e_OCIE0B);
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
  TIMSK0: byte absolute $59;  // Timer/Counter Interrupt Mask Register
  TIMSK0set: TTIMSK0set absolute $59;
  TIMSK0rec: TTIMSK0rec absolute $59;
const
  TOIE0 = 0;  m_TOIE0 = 1;  // Timer/Counter0 Overflow Interrupt Enable
  OCIE0A = 1;  m_OCIE0A = 2;  // Timer/Counter0 Output Compare Match A Interrupt Enable
  OCIE0B = 2;  m_OCIE0B = 4;  // Timer/Counter0 Output Compare Match B Interrupt Enable

type
  TGIFRset = bitpacked set of (e_PCIF0=4, e_PCIF1, e_INTF0);
  TGIFRrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIF0,
    PCIF1,
    INTF0,
    ReservedBit7: TBitField;
  end;
var
  GIFR: byte absolute $5A;  // General Interrupt Flag register
  GIFRset: TGIFRset absolute $5A;
  GIFRrec: TGIFRrec absolute $5A;
const
  PCIF0 = 4;  m_PCIF0 = 16;  // Pin Change Interrupt Flags
  PCIF1 = 5;  m_PCIF1 = 32;  // Pin Change Interrupt Flags
  INTF0 = 6;  m_INTF0 = 64;  // External Interrupt Flag 0

type
  TGIMSKset = bitpacked set of (e_PCIE0=4, e_PCIE1, e_INT0);
  TGIMSKrec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    PCIE0,
    PCIE1,
    INT0,
    ReservedBit7: TBitField;
  end;
var
  GIMSK: byte absolute $5B;  // General Interrupt Mask Register
  GIMSKset: TGIMSKset absolute $5B;
  GIMSKrec: TGIMSKrec absolute $5B;
const
  PCIE0 = 4;  m_PCIE0 = 16;  // Pin Change Interrupt Enables
  PCIE1 = 5;  m_PCIE1 = 32;  // Pin Change Interrupt Enables
  INT0 = 6;  m_INT0 = 64;  // External Interrupt Request 0 Enable

var
  OCR0B: byte absolute $5C;  // Timer/Counter0 Output Compare Register B
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
  DIDR0: byte absolute $60;  // Digital Input Disable Register 0
  DIDR0set: TDIDR0set absolute $60;
  DIDR0rec: TDIDR0rec absolute $60;
const
  ADC0D = 0;  m_ADC0D = 1;  // ADC0/AREF Digital input Disable
  ADC1D = 1;  m_ADC1D = 2;  // ADC1/AIN00 Digital input Disable
  ADC2D = 2;  m_ADC2D = 4;  // ADC2/AIN01 Digital input Disable
  ADC3D = 3;  m_ADC3D = 8;  // ADC3/AIN10 Digital Input Disable
  ADC4D = 4;  m_ADC4D = 16;  // ADC4/AIN11 Digital input Disable
  ADC5D = 5;  m_ADC5D = 32;  // ADC5 Digital input Disable
  ADC6D = 6;  m_ADC6D = 64;  // ADC6 Digital input Disable
  ADC7D = 7;  m_ADC7D = 128;  // ADC7 Digital input Disable

type
  TDIDR1set = bitpacked set of (e_ADC11D, e_ADC10D, e_ADC8D, e_ADC9D);
  TDIDR1rec = bitpacked record
    ADC11D,
    ADC10D,
    ADC8D,
    ADC9D,
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
  ADC11D = 0;  m_ADC11D = 1;  // ADC11 Digital input Disable
  ADC10D = 1;  m_ADC10D = 2;  // ADC10 Digital input Disable
  ADC8D = 2;  m_ADC8D = 4;  // ADC8 Digital input Disable
  ADC9D = 3;  m_ADC9D = 8;  // ADC9 Digital Input Disable

var
  PUEB: byte absolute $62;  // Pull-up Enable Control Register
  PUEA: byte absolute $63;  // Pull-up Enable Control Register

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
  PORTCR: byte absolute $64;  // Port Control Register
  PORTCRset: TPORTCRset absolute $64;
  PORTCRrec: TPORTCRrec absolute $64;
const
  BBMA = 0;  m_BBMA = 1;  // Break-Before-Make Mode Enable
  BBMB = 1;  m_BBMB = 2;  // Break-Before-Make Mode Enable

type
  TREMAPset = bitpacked set of (e_U0MAP, e_SPIMAP);
  TREMAPrec = bitpacked record
    U0MAP,
    SPIMAP,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  REMAP: byte absolute $65;  // Remap Port Pins
  REMAPset: TREMAPset absolute $65;
  REMAPrec: TREMAPrec absolute $65;
const
  U0MAP = 0;  m_U0MAP = 1;  // USART0 Pin Mapping
  SPIMAP = 1;  m_SPIMAP = 2;  // SPI Pin Mapping

type
  TTOCPMCOEset = bitpacked set of (e_TOCC0OE, e_TOCC1OE, e_TOCC2OE, e_TOCC3OE, e_TOCC4OE, e_TOCC5OE, e_TOCC6OE, e_TOCC7OE);
  TTOCPMCOErec = bitpacked record
    TOCC0OE,
    TOCC1OE,
    TOCC2OE,
    TOCC3OE,
    TOCC4OE,
    TOCC5OE,
    TOCC6OE,
    TOCC7OE: TBitField;
  end;
var
  TOCPMCOE: byte absolute $66;  // Timer Output Compare Pin Mux Channel Output Enable
  TOCPMCOEset: TTOCPMCOEset absolute $66;
  TOCPMCOErec: TTOCPMCOErec absolute $66;
const
  TOCC0OE = 0;  m_TOCC0OE = 1;  // Timer Output Compare Channel 0 Output Enable
  TOCC1OE = 1;  m_TOCC1OE = 2;  // Timer Output Compare Channel 1 Output Enable
  TOCC2OE = 2;  m_TOCC2OE = 4;  // Timer Output Compare Channel 2 Output Enable
  TOCC3OE = 3;  m_TOCC3OE = 8;  // Timer Output Compare Channel 3 Output Enable
  TOCC4OE = 4;  m_TOCC4OE = 16;  // Timer Output Compare Channel 4 Output Enable
  TOCC5OE = 5;  m_TOCC5OE = 32;  // Timer Output Compare Channel 5 Output Enable
  TOCC6OE = 6;  m_TOCC6OE = 64;  // Timer Output Compare Channel 6 Output Enable
  TOCC7OE = 7;  m_TOCC7OE = 128;  // Timer Output Compare Channel 7 Output Enable

type
  TTOCPMSA0set = bitpacked set of (e_TOCC0S0, e_TOCC0S1, e_TOCC1S0, e_TOCC1S1, e_TOCC2S0, e_TOCC2S1, e_TOCC3S0, e_TOCC3S1);
  TTOCPMSA0rec = bitpacked record
    TOCC0S0,
    TOCC0S1,
    TOCC1S0,
    TOCC1S1,
    TOCC2S0,
    TOCC2S1,
    TOCC3S0,
    TOCC3S1: TBitField;
  end;
var
  TOCPMSA0: byte absolute $67;  // Timer Output Compare Pin Mux Selection 0
  TOCPMSA0set: TTOCPMSA0set absolute $67;
  TOCPMSA0rec: TTOCPMSA0rec absolute $67;
const
  TOCC0S0 = 0;  m_TOCC0S0 = 1;  // Timer Output Compare Channel 0 Selection Bits
  TOCC0S1 = 1;  m_TOCC0S1 = 2;  // Timer Output Compare Channel 0 Selection Bits
  TOCC1S0 = 2;  m_TOCC1S0 = 4;  // Timer Output Compare Channel 1 Selection Bits
  TOCC1S1 = 3;  m_TOCC1S1 = 8;  // Timer Output Compare Channel 1 Selection Bits
  TOCC2S0 = 4;  m_TOCC2S0 = 16;  // Timer Output Compare Channel 2 Selection Bits
  TOCC2S1 = 5;  m_TOCC2S1 = 32;  // Timer Output Compare Channel 2 Selection Bits
  TOCC3S0 = 6;  m_TOCC3S0 = 64;  // Timer Output Compare Channel 3 Selection Bits
  TOCC3S1 = 7;  m_TOCC3S1 = 128;  // Timer Output Compare Channel 3 Selection Bits

type
  TTOCPMSA1set = bitpacked set of (e_TOCC4S0, e_TOCC4S1, e_TOCC5S0, e_TOCC5S1, e_TOCC6S0, e_TOCC6S1, e_TOCC7S0, e_TOCC7S1);
  TTOCPMSA1rec = bitpacked record
    TOCC4S0,
    TOCC4S1,
    TOCC5S0,
    TOCC5S1,
    TOCC6S0,
    TOCC6S1,
    TOCC7S0,
    TOCC7S1: TBitField;
  end;
var
  TOCPMSA1: byte absolute $68;  // Timer Output Compare Pin Mux Selection 1
  TOCPMSA1set: TTOCPMSA1set absolute $68;
  TOCPMSA1rec: TTOCPMSA1rec absolute $68;
const
  TOCC4S0 = 0;  m_TOCC4S0 = 1;  // Timer Output Compare Channel 4 Selection Bits
  TOCC4S1 = 1;  m_TOCC4S1 = 2;  // Timer Output Compare Channel 4 Selection Bits
  TOCC5S0 = 2;  m_TOCC5S0 = 4;  // Timer Output Compare Channel 5 Selection Bits
  TOCC5S1 = 3;  m_TOCC5S1 = 8;  // Timer Output Compare Channel 5 Selection Bits
  TOCC6S0 = 4;  m_TOCC6S0 = 16;  // Timer Output Compare Channel 6 Selection Bits
  TOCC6S1 = 5;  m_TOCC6S1 = 32;  // Timer Output Compare Channel 6 Selection Bits
  TOCC7S0 = 6;  m_TOCC7S0 = 64;  // Timer Output Compare Channel 7 Selection Bits
  TOCC7S1 = 7;  m_TOCC7S1 = 128;  // Timer Output Compare Channel 7 Selection Bits

type
  TPHDEset = bitpacked set of (e_PHDEA0, e_PHDEA1);
  TPHDErec = bitpacked record
    PHDEA0,
    PHDEA1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  PHDE: byte absolute $6A;  // Port High Drive Enable Register
  PHDEset: TPHDEset absolute $6A;
  PHDErec: TPHDErec absolute $6A;
const
  PHDEA0 = 0;  m_PHDEA0 = 1;  // PortA High Drive Enable
  PHDEA1 = 1;  m_PHDEA1 = 2;  // PortA High Drive Enable

type
  TPRRset = bitpacked set of (e_PRADC, e_PRTIM0, e_PRTIM1, e_PRTIM2, e_PRSPI, e_PRUSART0, e_PRUSART1, e_PRTWI);
  TPRRrec = bitpacked record
    PRADC,
    PRTIM0,
    PRTIM1,
    PRTIM2,
    PRSPI,
    PRUSART0,
    PRUSART1,
    PRTWI: TBitField;
  end;
var
  PRR: byte absolute $70;  // Power Reduction Register
  PRRset: TPRRset absolute $70;
  PRRrec: TPRRrec absolute $70;
const
  PRADC = 0;  m_PRADC = 1;  // Power Reduction ADC
  PRTIM0 = 1;  m_PRTIM0 = 2;  // Power Reduction Timer/Counter0
  PRTIM1 = 2;  m_PRTIM1 = 4;  // Power Reduction Timer/Counter1
  PRTIM2 = 3;  m_PRTIM2 = 8;  // Power Reduction Timer/Counter2
  PRSPI = 4;  m_PRSPI = 16;  // Power Reduction SPI
  PRUSART0 = 5;  m_PRUSART0 = 32;  // Power Reduction USART0
  PRUSART1 = 6;  m_PRUSART1 = 64;  // Power Reduction USART1
  PRTWI = 7;  m_PRTWI = 128;  // Power Reduction TWI

var
  CCP: byte absolute $71;  // Configuration Change Protection

type
  TCLKCRset = bitpacked set of (e_CKSEL0, e_CKSEL1, e_CKSEL2, e_CKSEL3, e_SUT, e_CKOUTC, e_CSTR, e_OSCRDY);
  TCLKCRrec = bitpacked record
    CKSEL0,
    CKSEL1,
    CKSEL2,
    CKSEL3,
    SUT,
    CKOUTC,
    CSTR,
    OSCRDY: TBitField;
  end;
var
  CLKCR: byte absolute $72;  // Clock Control Register
  CLKCRset: TCLKCRset absolute $72;
  CLKCRrec: TCLKCRrec absolute $72;
const
  CKSEL0 = 0;  m_CKSEL0 = 1;  // Clock Select Bits
  CKSEL1 = 1;  m_CKSEL1 = 2;  // Clock Select Bits
  CKSEL2 = 2;  m_CKSEL2 = 4;  // Clock Select Bits
  CKSEL3 = 3;  m_CKSEL3 = 8;  // Clock Select Bits
  SUT = 4;  m_SUT = 16;  // Start-up Time
  CKOUTC = 5;  m_CKOUTC = 32;  // Clock Output (Copy). Active low.
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
  CLKPR: byte absolute $73;  // Clock Prescale Register
  CLKPRset: TCLKPRset absolute $73;
  CLKPRrec: TCLKPRrec absolute $73;
const
  CLKPS0 = 0;  m_CLKPS0 = 1;  // Clock Prescaler Select Bits
  CLKPS1 = 1;  m_CLKPS1 = 2;  // Clock Prescaler Select Bits
  CLKPS2 = 2;  m_CLKPS2 = 4;  // Clock Prescaler Select Bits
  CLKPS3 = 3;  m_CLKPS3 = 8;  // Clock Prescaler Select Bits

var
  OSCCAL0: byte absolute $74;  // Oscillator Calibration Register 8MHz
  OSCTCAL0A: byte absolute $75;  // Oscillator Temperature Calibration Register A
  OSCTCAL0B: byte absolute $76;  // Oscillator Temperature Calibration Register B
  OSCCAL1: byte absolute $77;  // Oscillator Calibration Register 32kHz
  UDR0: byte absolute $80;  // USART I/O Data Register
  UBRR0: word absolute $81;  // USART Baud Rate Register Bytes
  UBRR0L: byte absolute $81;
  UBRR0H: byte absolute $82;

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
  UCSR0D: byte absolute $83;  // USART Control and Status Register D
  UCSR0Dset: TUCSR0Dset absolute $83;
  UCSR0Drec: TUCSR0Drec absolute $83;
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
  UCSR0C: byte absolute $84;  // USART Control and Status Register C
  UCSR0Cset: TUCSR0Cset absolute $84;
  UCSR0Crec: TUCSR0Crec absolute $84;
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
  UCSR0B: byte absolute $85;  // USART Control and Status Register B
  UCSR0Bset: TUCSR0Bset absolute $85;
  UCSR0Brec: TUCSR0Brec absolute $85;
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
  UCSR0A: byte absolute $86;  // USART Control and Status Register A
  UCSR0Aset: TUCSR0Aset absolute $86;
  UCSR0Arec: TUCSR0Arec absolute $86;
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
  UDR1: byte absolute $90;  // USART I/O Data Register
  UBRR1: word absolute $91;  // USART Baud Rate Register Bytes
  UBRR1L: byte absolute $91;
  UBRR1H: byte absolute $92;

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
  UCSR1D: byte absolute $93;  // USART Control and Status Register D
  UCSR1Dset: TUCSR1Dset absolute $93;
  UCSR1Drec: TUCSR1Drec absolute $93;
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
  UCSR1C: byte absolute $94;  // USART Control and Status Register C
  UCSR1Cset: TUCSR1Cset absolute $94;
  UCSR1Crec: TUCSR1Crec absolute $94;
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
  UCSR1B: byte absolute $95;  // USART Control and Status Register B
  UCSR1Bset: TUCSR1Bset absolute $95;
  UCSR1Brec: TUCSR1Brec absolute $95;
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
  UCSR1A: byte absolute $96;  // USART Control and Status Register A
  UCSR1Aset: TUCSR1Aset absolute $96;
  UCSR1Arec: TUCSR1Arec absolute $96;
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
  TWSD: byte absolute $A0;  // TWI Slave Data Register
  TWSDset: TTWSDset absolute $A0;
  TWSDrec: TTWSDrec absolute $A0;
const
  TWSD0 = 0;  m_TWSD0 = 1;  // TWI slave data bit
  TWSD1 = 1;  m_TWSD1 = 2;  // TWI slave data bit
  TWSD2 = 2;  m_TWSD2 = 4;  // TWI slave data bit
  TWSD3 = 3;  m_TWSD3 = 8;  // TWI slave data bit
  TWSD4 = 4;  m_TWSD4 = 16;  // TWI slave data bit
  TWSD5 = 5;  m_TWSD5 = 32;  // TWI slave data bit
  TWSD6 = 6;  m_TWSD6 = 64;  // TWI slave data bit
  TWSD7 = 7;  m_TWSD7 = 128;  // TWI slave data bit

type
  TTWSAMset = bitpacked set of (e_TWAE, e_TWSAM1, e_TWSAM2, e_TWSAM3, e_TWSAM4, e_TWSAM5, e_TWSAM6, e_TWSAM7);
  TTWSAMrec = bitpacked record
    TWAE,
    TWSAM1,
    TWSAM2,
    TWSAM3,
    TWSAM4,
    TWSAM5,
    TWSAM6,
    TWSAM7: TBitField;
  end;
var
  TWSAM: byte absolute $A1;  // TWI Slave Address Mask Register
  TWSAMset: TTWSAMset absolute $A1;
  TWSAMrec: TTWSAMrec absolute $A1;
const
  TWAE = 0;  m_TWAE = 1;  // TWI Address Enable
  TWSAM1 = 1;  m_TWSAM1 = 2;  // TWI Address Mask Bits
  TWSAM2 = 2;  m_TWSAM2 = 4;  // TWI Address Mask Bits
  TWSAM3 = 3;  m_TWSAM3 = 8;  // TWI Address Mask Bits
  TWSAM4 = 4;  m_TWSAM4 = 16;  // TWI Address Mask Bits
  TWSAM5 = 5;  m_TWSAM5 = 32;  // TWI Address Mask Bits
  TWSAM6 = 6;  m_TWSAM6 = 64;  // TWI Address Mask Bits
  TWSAM7 = 7;  m_TWSAM7 = 128;  // TWI Address Mask Bits

var
  TWSA: byte absolute $A2;  // TWI Slave Address Register

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
  TWSSRA: byte absolute $A3;  // TWI Slave Status Register A
  TWSSRAset: TTWSSRAset absolute $A3;
  TWSSRArec: TTWSSRArec absolute $A3;
const
  TWAS = 0;  m_TWAS = 1;  // TWI Address or Stop
  TWDIR = 1;  m_TWDIR = 2;  // TWI Read/Write Direction
  TWBE = 2;  m_TWBE = 4;  // TWI Bus Error
  TWC = 3;  m_TWC = 8;  // TWI Collision
  TWRA = 4;  m_TWRA = 16;  // TWI Receive Acknowledge
  TWCH = 5;  m_TWCH = 32;  // TWI Clock Hold
  TWASIF = 6;  m_TWASIF = 64;  // TWI Address/Stop Interrupt Flag
  TWDIF = 7;  m_TWDIF = 128;  // TWI Data Interrupt Flag.

type
  TTWSCRBset = bitpacked set of (e_TWCMD0, e_TWCMD1, e_TWAA, e_TWHNM);
  TTWSCRBrec = bitpacked record
    TWCMD0,
    TWCMD1,
    TWAA,
    TWHNM,
    ReservedBit4,
    ReservedBit5,
    ReservedBit6,
    ReservedBit7: TBitField;
  end;
var
  TWSCRB: byte absolute $A4;  // TWI Slave Control Register B
  TWSCRBset: TTWSCRBset absolute $A4;
  TWSCRBrec: TTWSCRBrec absolute $A4;
const
  TWCMD0 = 0;  m_TWCMD0 = 1;
  TWCMD1 = 1;  m_TWCMD1 = 2;
  TWAA = 2;  m_TWAA = 4;  // TWI Acknowledge Action
  TWHNM = 3;  m_TWHNM = 8;  // TWI High Noise Mode

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
  TWSCRA: byte absolute $A5;  // TWI Slave Control Register A
  TWSCRAset: TTWSCRAset absolute $A5;
  TWSCRArec: TTWSCRArec absolute $A5;
const
  TWSME = 0;  m_TWSME = 1;  // TWI Smart Mode Enable
  TWPME = 1;  m_TWPME = 2;  // TWI Promiscuous Mode Enable
  TWSIE = 2;  m_TWSIE = 4;  // TWI Stop Interrupt Enable
  TWEN = 3;  m_TWEN = 8;  // Two-Wire Interface Enable
  TWASIE = 4;  m_TWASIE = 16;  // TWI Address/Stop Interrupt Enable
  TWDIE = 5;  m_TWDIE = 32;  // TWI Data Interrupt Enable
  TWSHE = 7;  m_TWSHE = 128;  // TWI SDA Hold Time Enable

var
  SPDR: byte absolute $B0;  // SPI Data Register

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
  SPSR: byte absolute $B1;  // SPI Status Register
  SPSRset: TSPSRset absolute $B1;
  SPSRrec: TSPSRrec absolute $B1;
const
  SPI2X = 0;  m_SPI2X = 1;  // Double SPI Speed Bit
  WCOL = 6;  m_WCOL = 64;  // Write Collision Flag
  SPIF = 7;  m_SPIF = 128;  // SPI Interrupt Flag

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
  SPCR: byte absolute $B2;  // SPI Control Register
  SPCRset: TSPCRset absolute $B2;
  SPCRrec: TSPCRrec absolute $B2;
const
  SPR0 = 0;  m_SPR0 = 1;  // SPI Clock Rate Selects
  SPR1 = 1;  m_SPR1 = 2;  // SPI Clock Rate Selects
  CPHA = 2;  m_CPHA = 4;  // Clock Phase
  CPOL = 3;  m_CPOL = 8;  // Clock polarity
  MSTR = 4;  m_MSTR = 16;  // Master/Slave Select
  DORD = 5;  m_DORD = 32;  // Data Order
  SPE = 6;  m_SPE = 64;  // SPI Enable
  SPIE = 7;  m_SPIE = 128;  // SPI Interrupt Enable

var
  ICR2: word absolute $C0;  // Timer/Counter2 Input Capture Register  Bytes
  ICR2L: byte absolute $C0;
  ICR2H: byte absolute $C1;
  OCR2B: word absolute $C2;  // Timer/Counter2 Output Compare Register B  Bytes
  OCR2BL: byte absolute $C2;
  OCR2BH: byte absolute $C3;
  OCR2A: word absolute $C4;  // Timer/Counter2 Output Compare Register A  Bytes
  OCR2AL: byte absolute $C4;
  OCR2AH: byte absolute $C5;
  TCNT2: word absolute $C6;  // Timer/Counter2  Bytes
  TCNT2L: byte absolute $C6;
  TCNT2H: byte absolute $C7;

type
  TTCCR2Cset = bitpacked set of (e_FOC2B=6, e_FOC2A);
  TTCCR2Crec = bitpacked record
    ReservedBit0,
    ReservedBit1,
    ReservedBit2,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    FOC2B,
    FOC2A: TBitField;
  end;
var
  TCCR2C: byte absolute $C8;  // Timer/Counter2 Control Register C
  TCCR2Cset: TTCCR2Cset absolute $C8;
  TCCR2Crec: TTCCR2Crec absolute $C8;
const
  FOC2B = 6;  m_FOC2B = 64;  // Force Output Compare for Channel B
  FOC2A = 7;  m_FOC2A = 128;  // Force Output Compare for Channel A

type
  TTCCR2Bset = bitpacked set of (e_CS20, e_CS21, e_CS22, e_ICES2=6, e_ICNC2);
  TTCCR2Brec = bitpacked record
    CS20,
    CS21,
    CS22,
    ReservedBit3,
    ReservedBit4,
    ReservedBit5,
    ICES2,
    ICNC2: TBitField;
  end;
var
  TCCR2B: byte absolute $C9;  // Timer/Counter2 Control Register B
  TCCR2Bset: TTCCR2Bset absolute $C9;
  TCCR2Brec: TTCCR2Brec absolute $C9;
const
  CS20 = 0;  m_CS20 = 1;  // Clock Select bits
  CS21 = 1;  m_CS21 = 2;  // Clock Select bits
  CS22 = 2;  m_CS22 = 4;  // Clock Select bits
  ICES2 = 6;  m_ICES2 = 64;  // Input Capture 2 Edge Select
  ICNC2 = 7;  m_ICNC2 = 128;  // Input Capture 2 Noise Canceler

type
  TTCCR2Aset = bitpacked set of (e_WGM20, e_WGM21, e_COM2B0=4, e_COM2B1, e_COM2A0, e_COM2A1);
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
  TCCR2A: byte absolute $CA;  // Timer/Counter2 Control Register A
  TCCR2Aset: TTCCR2Aset absolute $CA;
  TCCR2Arec: TTCCR2Arec absolute $CA;
const
  WGM20 = 0;  m_WGM20 = 1;  // Pulse Width Modulator Select Bits
  WGM21 = 1;  m_WGM21 = 2;  // Pulse Width Modulator Select Bits
  COM2B0 = 4;  m_COM2B0 = 16;  // Compare Output Mode 2B, bits
  COM2B1 = 5;  m_COM2B1 = 32;  // Compare Output Mode 2B, bits
  COM2A0 = 6;  m_COM2A0 = 64;  // Compare Output Mode 2A, bits
  COM2A1 = 7;  m_COM2A1 = 128;  // Compare Output Mode 2A, bits
  // typedefs = 61

implementation
{$define RELBRANCHES}
{$i avrcommon.inc}

procedure INT0_ISR; external name 'INT0_ISR'; // Interrupt 1 External Interrupt Request 0
procedure PCINT0_ISR; external name 'PCINT0_ISR'; // Interrupt 2 Pin Change Interrupt Request 0
procedure PCINT1_ISR; external name 'PCINT1_ISR'; // Interrupt 3 Pin Change Interrupt Request 1
procedure WDT_ISR; external name 'WDT_ISR'; // Interrupt 4 Watchdog Time-out Interrupt
procedure TIMER1_CAPT_ISR; external name 'TIMER1_CAPT_ISR'; // Interrupt 5 Timer/Counter1 Capture Event
procedure TIMER1_COMPA_ISR; external name 'TIMER1_COMPA_ISR'; // Interrupt 6 Timer/Counter1 Compare Match A
procedure TIMER1_COMPB_ISR; external name 'TIMER1_COMPB_ISR'; // Interrupt 7 Timer/Counter1 Compare Match B
procedure TIMER1_OVF_ISR; external name 'TIMER1_OVF_ISR'; // Interrupt 8 Timer/Counter1 Overflow
procedure TIMER0_COMPA_ISR; external name 'TIMER0_COMPA_ISR'; // Interrupt 9 TimerCounter0 Compare Match A
procedure TIMER0_COMPB_ISR; external name 'TIMER0_COMPB_ISR'; // Interrupt 10 TimerCounter0 Compare Match B
procedure TIMER0_OVF_ISR; external name 'TIMER0_OVF_ISR'; // Interrupt 11 Timer/Couner0 Overflow
procedure ANA_COMP0_ISR; external name 'ANA_COMP0_ISR'; // Interrupt 12 Analog Comparator 0
procedure ADC_ISR; external name 'ADC_ISR'; // Interrupt 13 ADC Conversion Complete
procedure EE_RDY_ISR; external name 'EE_RDY_ISR'; // Interrupt 14 EEPROM Ready
procedure ANA_COMP1_ISR; external name 'ANA_COMP1_ISR'; // Interrupt 15 Analog Comparator 1
procedure TIMER2_CAPT_ISR; external name 'TIMER2_CAPT_ISR'; // Interrupt 16 Timer/Counter2 Capture Event
procedure TIMER2_COMPA_ISR; external name 'TIMER2_COMPA_ISR'; // Interrupt 17 Timer/Counter2 Compare Match A
procedure TIMER2_COMPB_ISR; external name 'TIMER2_COMPB_ISR'; // Interrupt 18 Timer/Counter2 Compare Match B
procedure TIMER2_OVF_ISR; external name 'TIMER2_OVF_ISR'; // Interrupt 19 Timer/Counter2 Overflow
procedure SPI_ISR; external name 'SPI_ISR'; // Interrupt 20 Serial Peripheral Interface
procedure USART0_START_ISR; external name 'USART0_START_ISR'; // Interrupt 21 USART0, Start
procedure USART0_RX_ISR; external name 'USART0_RX_ISR'; // Interrupt 22 USART0, Rx Complete
procedure USART0_UDRE_ISR; external name 'USART0_UDRE_ISR'; // Interrupt 23 USART0 Data Register Empty
procedure USART0_TX_ISR; external name 'USART0_TX_ISR'; // Interrupt 24 USART0, Tx Complete
procedure USART1_START_ISR; external name 'USART1_START_ISR'; // Interrupt 25 USART1, Start
procedure USART1_RX_ISR; external name 'USART1_RX_ISR'; // Interrupt 26 USART1, Rx Complete
procedure USART1_UDRE_ISR; external name 'USART1_UDRE_ISR'; // Interrupt 27 USART1 Data Register Empty
procedure USART1_TX_ISR; external name 'USART1_TX_ISR'; // Interrupt 28 USART1, Tx Complete
procedure TWI_SLAVE_ISR; external name 'TWI_SLAVE_ISR'; // Interrupt 29 Two-wire Serial Interface

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
  rjmp WDT_ISR
  rjmp TIMER1_CAPT_ISR
  rjmp TIMER1_COMPA_ISR
  rjmp TIMER1_COMPB_ISR
  rjmp TIMER1_OVF_ISR
  rjmp TIMER0_COMPA_ISR
  rjmp TIMER0_COMPB_ISR
  rjmp TIMER0_OVF_ISR
  rjmp ANA_COMP0_ISR
  rjmp ADC_ISR
  rjmp EE_RDY_ISR
  rjmp ANA_COMP1_ISR
  rjmp TIMER2_CAPT_ISR
  rjmp TIMER2_COMPA_ISR
  rjmp TIMER2_COMPB_ISR
  rjmp TIMER2_OVF_ISR
  rjmp SPI_ISR
  rjmp USART0_START_ISR
  rjmp USART0_RX_ISR
  rjmp USART0_UDRE_ISR
  rjmp USART0_TX_ISR
  rjmp USART1_START_ISR
  rjmp USART1_RX_ISR
  rjmp USART1_UDRE_ISR
  rjmp USART1_TX_ISR
  rjmp TWI_SLAVE_ISR

  {$i start.inc}

  .weak INT0_ISR
  .weak PCINT0_ISR
  .weak PCINT1_ISR
  .weak WDT_ISR
  .weak TIMER1_CAPT_ISR
  .weak TIMER1_COMPA_ISR
  .weak TIMER1_COMPB_ISR
  .weak TIMER1_OVF_ISR
  .weak TIMER0_COMPA_ISR
  .weak TIMER0_COMPB_ISR
  .weak TIMER0_OVF_ISR
  .weak ANA_COMP0_ISR
  .weak ADC_ISR
  .weak EE_RDY_ISR
  .weak ANA_COMP1_ISR
  .weak TIMER2_CAPT_ISR
  .weak TIMER2_COMPA_ISR
  .weak TIMER2_COMPB_ISR
  .weak TIMER2_OVF_ISR
  .weak SPI_ISR
  .weak USART0_START_ISR
  .weak USART0_RX_ISR
  .weak USART0_UDRE_ISR
  .weak USART0_TX_ISR
  .weak USART1_START_ISR
  .weak USART1_RX_ISR
  .weak USART1_UDRE_ISR
  .weak USART1_TX_ISR
  .weak TWI_SLAVE_ISR

  .set INT0_ISR, Default_IRQ_handler
  .set PCINT0_ISR, Default_IRQ_handler
  .set PCINT1_ISR, Default_IRQ_handler
  .set WDT_ISR, Default_IRQ_handler
  .set TIMER1_CAPT_ISR, Default_IRQ_handler
  .set TIMER1_COMPA_ISR, Default_IRQ_handler
  .set TIMER1_COMPB_ISR, Default_IRQ_handler
  .set TIMER1_OVF_ISR, Default_IRQ_handler
  .set TIMER0_COMPA_ISR, Default_IRQ_handler
  .set TIMER0_COMPB_ISR, Default_IRQ_handler
  .set TIMER0_OVF_ISR, Default_IRQ_handler
  .set ANA_COMP0_ISR, Default_IRQ_handler
  .set ADC_ISR, Default_IRQ_handler
  .set EE_RDY_ISR, Default_IRQ_handler
  .set ANA_COMP1_ISR, Default_IRQ_handler
  .set TIMER2_CAPT_ISR, Default_IRQ_handler
  .set TIMER2_COMPA_ISR, Default_IRQ_handler
  .set TIMER2_COMPB_ISR, Default_IRQ_handler
  .set TIMER2_OVF_ISR, Default_IRQ_handler
  .set SPI_ISR, Default_IRQ_handler
  .set USART0_START_ISR, Default_IRQ_handler
  .set USART0_RX_ISR, Default_IRQ_handler
  .set USART0_UDRE_ISR, Default_IRQ_handler
  .set USART0_TX_ISR, Default_IRQ_handler
  .set USART1_START_ISR, Default_IRQ_handler
  .set USART1_RX_ISR, Default_IRQ_handler
  .set USART1_UDRE_ISR, Default_IRQ_handler
  .set USART1_TX_ISR, Default_IRQ_handler
  .set TWI_SLAVE_ISR, Default_IRQ_handler
end;

end.
