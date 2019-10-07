program uarttest;

// Remember to define F_CPU  because BAUD_SETTING below requires this.
// Either specify e.g. -dF_CPU:=3333333 as command line parameter to the compiler
// or in Lazarus under Project Options - Custom Options.

uses intrinsics;

const
  BAUD_Rate = 115200;
  BAUD_SETTING = (F_CPU * 64 + 8 *BAUD_Rate) div (16 * BAUD_Rate);
  TIMEROVERFLOWLIMIT = 20;  // 20 interrupts @ ~0.0492 sec is about a second
  RXBUFSIZE = 16;

var
  TXChar: char = '-';
  Tick: boolean = false;   // tick is set about once per second by timer

  rxbuffer: array[0..RXBUFSIZE-1] of char;
  rxbufStart, rxbufEnd: byte;

procedure USART3_init;
begin
  rxbufStart := 0;
  rxbufEnd := 0;
  // RX
  PORTB.DIRCLR := PIN1bm;

  // TX
  PORTB.OUTSET := Pin0bm;
  PORTB.DIRSET := Pin0bm;

  USART3.BAUD := BAUD_SETTING;
  USART3.CTRLA := TUSART.RXCIEbm;  // RX is interrupt driven
  USART3.CTRLB := TUSART.RXENbm or TUSART.TXENbm;
end;

procedure USART3_sendChar(c: char);
begin
  repeat
  until (USART3.STATUS and TUSART.DREIFbm = TUSART.DREIFbm);
  USART3.TXDATAL := ord(c);
end;

procedure USARTRX_ISR; interrupt; public alias: 'USART3_RXC_ISR';
begin
  rxbuffer[rxbufEnd] := char(USART3.RXDATAL);
  inc(rxbufEnd);
  rxbufEnd := rxbufEnd and (RXBUFSIZE-1);
end;

function USARTReadChar: char;
begin
  if rxbufStart = rxbufEnd then
    USARTReadChar := #0
  else
  begin
    USARTReadChar := rxbuffer[rxbufStart];
    inc(rxbufStart);
    rxbufStart := rxbufStart and (RXBUFSIZE-1);
  end;
end;

function USARTRxCount: byte;
begin
  USARTRxCount := (rxbufEnd - rxbufStart) and (RXBUFSIZE - 1);
end;

procedure configTimerB0;
begin
  TCB0.CCMP := 65535; // 65535 / 1 666 666 ~ 0.0492 s
  TCB0.INTCTRL := TTCB.CAPTbm;  // enable capture interrupt
  TCB0.CTRLA := TTCB.CLKSEL_CLKDIV2 or  // clk/2
                TTCB.ENABLEbm;
end;

procedure TCB0Interrupt; interrupt; public alias: 'TCB0_INT_ISR';
const
  timerB0IntCount: byte = 0;
begin
  inc(timerB0IntCount);
  if timerB0IntCount > TIMEROVERFLOWLIMIT then
  begin
    timerB0IntCount := 0;
    Tick := true;
  end;

  TCB0.INTFLAGS := 1;  // clear interrupt flag
end;

procedure BtnChange; interrupt; public alias: 'PORTF_PORT_ISR';
begin
  if PORTF.IN_ and PIN6bm = PIN6bm then
    TXChar := '-'
  else
    TXChar := '_';
  PORTF.INTFLAGS := 255; // clear all possible flags
end;

begin
  avr_cli;
  // LED connected to port F pin 5
  VPORTF.DIR := VPORTF.DIR or PIN5bm;
  VPORTF.OUT_ := PIN5bm;

  // Button connected to port F pin 6 and ground
  // Port F pin 6 interrupt - any edge
  PORTF.DIRCLR := PIN6bm;
  PORTF.PIN6CTRL := PORTF.PIN6CTRL or TPORT.PULLUPENbm or
                    TPORT.ISC_BOTHEDGES;  // pin interrupt on both edges

  // USART3 is connected via USB
  USART3_init;
  configTimerB0;
  avr_sei;

  while True do
  begin
    if Tick then
    begin
      Tick := false;
      PORTF.OUTTGL := PIN5bm;  // toggle pin 5
      USART3_sendChar(TXChar);
    end;
    if USARTRxCount > 0 then
      TXChar := USARTReadChar;
  end;
end.
