program uarttest;

{ This demo configures pin PF6 as input with pullup and pin change interrupt enabled.
  If PF6 is pulled down an underscore (_) is transmitted, else a minus (-) is transmitted
  every second

  Remember to define F_CPU  because BAUD_SETTING below requires this.
  Specify -dF_CPU:=3333333 as command line parameter to the compiler (in Lazarus
  this can be specified under Project Options - Custom Options).
}

uses
  intrinsics, uart, delay;

const
  BAUD_Rate = 115200;
  // Baud setting for x2 mode
  BAUD_SETTING = (F_CPU*64 + 4*BAUD_Rate) div (8*BAUD_Rate);
  TIMEROVERFLOWLIMIT = 20;  // 20 interrupts @ ~0.0492 sec is about a second
  LEDPin = PIN5bm;

var
  TXChar: char = '-';
  Tick: boolean = false;   // tick is set about once per second by timer

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
  VPORTF.DIR := VPORTF.DIR or LEDPin;
  VPORTF.OUT_ := LEDPin;

  // Button connected to port F pin 6 and ground
  // Port F pin 6 interrupt - any edge
  PORTF.DIRCLR := PIN6bm;
  PORTF.PIN6CTRL := PORTF.PIN6CTRL or TPORT.PULLUPENbm or
                    TPORT.ISC_BOTHEDGES;  // pin interrupt on both edges

  uart_init(BAUD_SETTING);
  // Configure RX & TX pins for USART3 of atmega48809
  PORTB.DIRCLR := PIN1bm; // RX in input mode
  PORTB.DIRSET := Pin0bm; // TX in output mode

  configTimerB0;
  avr_sei;

  while True do
  begin
    if Tick then
    begin
      Tick := false;
      PORTF.OUTTGL := PIN5bm;  // toggle pin 5
      uart_transmit(ord(TXChar));
    end;
  end;
end.

