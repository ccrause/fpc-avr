program hello_world;

uses
  consoleio, uart, delay;

function WriteChar(ACh: char; AUserData: pointer): boolean;
begin
  WriteChar := true;
  uart.uart_transmit(ord(Ach));
end;

function ReadChar(var ACh: char; AUserData: pointer): boolean;
begin
  ReadChar:=true;
  ACh := char(uart.uart_receive);
end;

procedure initIO;
begin
  uart_init1(115200, true);
  OpenIO(Input, @WriteChar, @ReadChar, fmInput, nil);
  OpenIO(Output, @WriteChar, @ReadChar, fmOutput, nil);
  OpenIO(ErrOutput, @WriteChar, @ReadChar, fmOutput, nil);
  OpenIO(StdOut, @WriteChar, @ReadChar, fmOutput, nil);
  OpenIO(StdErr, @WriteChar, @ReadChar, fmOutput, nil);
end;

begin
  initIO;
  repeat
    writeln('Hello world');
    delay_ms(1000);
  until false;
end.

