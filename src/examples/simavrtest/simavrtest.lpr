program simavrtest;

uses
  intrinsics, simavr, uart;

const
  baud1 = 115200;
  ub1 = (((F_CPU + 4*baud1) shr 3) div baud1) - 1;
  baud2 = 9600;
  ub2 = (((F_CPU + 4*baud2) shr 3) div baud2) - 1;
  s = 'SizeOf(pointer) = ';

  // Data written in section .mmcu to be read by simavr
  // Microcontroller name
  mcuname: Tavr_mmcu_str = (tag: AVR_MMCU_TAG_NAME; len: sizeof(Tavr_mmcu_str)-2;
           str: 'atmega88'); section '.mmcu';

  // Specify CPU clock frequency
  freq: Tavr_mmcu_uint32 = (tag: AVR_MMCU_TAG_FREQUENCY; len: sizeof(uint32)-2;
        val: F_CPU); section '.mmcu';

  // Output trace of UDR0 register to vcd file
  trace: Tavr_mmcu_vcd_trace = (tag: AVR_MMCU_TAG_VCD_TRACE; len: sizeof(Tavr_mmcu_vcd_trace)-2;
         mask: 0; addr: @UDR0; name: 'UDR0'); section '.mmcu';

  // Data (text) written to this register (GPIOR0) will be echoed in terminal
  consolereg: Tavr_mmcu_addr = (tag: AVR_MMCU_TAG_SIMAVR_CONSOLE; len: sizeof(Tavr_mmcu_addr)-2;
              addr: @GPIOR0); section '.mmcu';

  // Write simavr commands to GPIOR1 e.g. start/stop trace
  commandreg: Tavr_mmcu_addr = (tag: AVR_MMCU_TAG_SIMAVR_COMMAND; len: sizeof(Tavr_mmcu_addr)-2;
                          addr: @GPIOR1); section '.mmcu';

var
  i: integer;

begin
  // Stop tracing
  GPIOR1 := ord(SIMAVR_CMD_VCD_STOP_TRACE);

  // Write text to console register for display
  for i := 1 to length(s) do
    GPIOR0 := ord(s[i]);
  i := sizeof(pointer);
  GPIOR0 := ord('0') + i;
  GPIOR0 := 13; // Text only flushed when #13 received (note this is different to UART!)

  // Write text to uart for display
  uart_init(word(ub1));  // ~ 115200 baud
  for i := 1 to length(s) do
    uart_transmit(ord(s[i]));
  i := sizeof(pointer);
  uart_transmit(ord('0') + i);

  // Start trace
  GPIOR1 := ord(SIMAVR_CMD_VCD_START_TRACE);
  // Write some characters to uart
  uart_transmit(10);  // newline to force simavr to write text to terminal
  uart_transmit(0);

  // Change baud rate
  uart_init(ub2);  // ~ 9600 baud
  uart_transmit(255);
  uart_transmit(10);
  uart_transmit(0);

  // The sleep instruction causes simavr to exit the simulation
  // if no wake on interrupt source is set
  avr_sleep;
end.

