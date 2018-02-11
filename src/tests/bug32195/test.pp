program test;

procedure SomeThing;
begin
  asm
  // Directly encode instruction: jmp	0x68
    .word 0x940c
    .word 0x0034
  end;
end;

begin
  SomeThing;
end.
