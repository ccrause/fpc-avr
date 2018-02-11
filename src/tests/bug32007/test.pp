program test;
// asmr_e_invalid_opcode_and_operand
  // The opcode cannot be used with this type of operand

// asmr_e_too_many_operands=07057_E_Too many operands on line
  // There are too many operands for this opcode. Check your assembler syntax

// asmr_e_invalid_register=07063_E_Invalid register name
  // There is an unknown register name used as operand.


label
  q;

begin
  asm
    q:
    nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;
    nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;
    nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;
    nop; nop; nop;
    breq q
  end;
end.
