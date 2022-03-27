unit simavr;

// Enumerations and record structures for data to be sent to simavr
// The data must be placed in section .mmcu
// or hex file with offset $910000
// could pass -k--section-start=.mmcu=0x910000 to linker to set offset of section
// .mmcu in elf file

// Also note that when placing the data not in the main program file
// the linker tends to discard the .mmcu section because it is not referenced
// elsewhere in code.  To retain the .mmcu section data add the following
// constant in the same unit containing the rest of the .mmcu data:

// anchor: Tavr_mmcu_uint32 =
//   (tag: AVR_MMCU_TAG; len: sizeof(Tavr_mmcu_uint32)-2;
//          val: 0); public name '_mmcu_'; section '.mmcu';

// Pass the following linker parameter via the compiler:
// -k'--undefined=_mmcu_ --section-start=.mmcu=0x910000'
// This will tell avr-ld to keep the section and map the data to address offset $910000

// Simavr by default print data sent to the serial data register (UDR[n])
// note that data gets buffered before printing to console until a newline (#10) char is encountered
interface

type
  {$PACKENUM 1}
  TAVR_MMCU_TAG = (AVR_MMCU_TAG=0,
    AVR_MMCU_TAG_NAME,
    AVR_MMCU_TAG_FREQUENCY,
    AVR_MMCU_TAG_VCC,
    AVR_MMCU_TAG_AVCC,
    AVR_MMCU_TAG_AREF,
    AVR_MMCU_TAG_LFUSE,
    AVR_MMCU_TAG_HFUSE,
    AVR_MMCU_TAG_EFUSE,
    AVR_MMCU_TAG_SIGNATURE,
    AVR_MMCU_TAG_SIMAVR_COMMAND,
    AVR_MMCU_TAG_SIMAVR_CONSOLE,   // output buffered, data only printed when a carriage return (#13) is encountered.
    AVR_MMCU_TAG_VCD_FILENAME,
    AVR_MMCU_TAG_VCD_PERIOD,
    AVR_MMCU_TAG_VCD_TRACE,
    AVR_MMCU_TAG_VCD_PORTPIN,
    AVR_MMCU_TAG_VCD_IRQ,
    AVR_MMCU_TAG_PORT_EXTERNAL_PULL);

  // Command enumerations for use with
  // AVR_MMCU_TAG_SIMAVR_COMMAND
  TAvrCmd = (SIMAVR_CMD_NONE = 0,
    SIMAVR_CMD_VCD_START_TRACE,
    SIMAVR_CMD_VCD_STOP_TRACE,
    SIMAVR_CMD_UART_LOOPBACK);

  Tavr_mmcu_uint32 = packed record
    tag: TAVR_MMCU_TAG;
    len: byte;
    val: uint32;
  end;

  Tavr_mmcu_str = packed record
    tag: TAVR_MMCU_TAG;
    len: byte;
    str: array[0..63] of char;
  end;

  Tavr_mmcu_addr = packed record
    tag: TAVR_MMCU_TAG;
    len: byte;
    addr: pointer;
  end;

  Tavr_mmcu_vcd_trace = packed record
    tag: TAVR_MMCU_TAG;
    len: byte;
    mask: byte;
    addr: pointer;
    name: array[0..31] of char;
  end;

implementation

// This public name can be used to prevent the linker from discarding the .mmcu section
// Pass the following linker parameter via the compiler:
// -k'--undefined=_mmcu_ --section-start=.mmcu=0x910000'
// This will tell avr-ld to keep the section and map the data to address offset $910000
// If not done then debug information for the types defined in this unit may not
// be correctly referenced elsewhere and gdb may have difficulty parsing the debug
// information
//const
//  anchor: Tavr_mmcu_uint32 =
//    (tag: AVR_MMCU_TAG; len: sizeof(Tavr_mmcu_uint32)-2;
//           val: 0); public name '_mmcu_'; section '.mmcu';
end.

