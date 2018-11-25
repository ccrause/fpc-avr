unit simavr;

// Enumerations and record structures for data to be sent to simavr
// The data must be placed in section .mmcu
// or hex file with offset $910000
// could pass -k--section-start=.mmcu=0x910000 to linker to set offset of section
// .mmcu in elf file

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
    AVR_MMCU_TAG_SIMAVR_CONSOLE,
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

end.

