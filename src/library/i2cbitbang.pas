unit i2cbitbang;

interface

type
  // atmega4809 default TWI pins
{$ifdef CPUAVRXMEGA3}
  {$define SCLpin := 3}
  {$define SCLpin_bm := (1 shl SCLpin)}
  {$define SCLport := PORTA}

  {$define SDApin := 2}
  {$define SDApin_bm := (1 shl SDApin)}
  {$define SDAport := PORTA}
{$else}
  {$define SCLpin := 5}
  {$define SCLpin_bm := (1 shl SCLpin)}
  {$define SCLport := PORTC}
  {$define SCLdir := DDRC}
  {$define SCLPinReg := PINC}

  {$define SDApin := 4}
  {$define SDApin_bm := (1 shl SDApin)}
  {$define SDAport := PORTC}
  {$define SDAdir := DDRC}
  {$define SDAPinReg := PINC}
{$endif CPUAVRXMEGA3}

  { TI2CMaster }

  TI2CMaster = object
  private
    fDelay: byte;
    procedure setSCL(val: boolean);
    procedure setSDA(val: boolean);
  public
    retVal: byte;
    procedure init(bitRate: byte);
    // Address should be left adjusted 7-bit value
    function start(address: byte; readTransaction: boolean): boolean;
    function readByte(out data: byte; ack: boolean): boolean;
    function writeByte(data: byte): boolean;
    function stop: boolean;
  end;

const
  I2C_START             = $08;
  I2C_REPSTART          = $10;
  I2C_SLAW_ACK          = $18;
  I2C_SLAW_NACK         = $20;
  I2C_DATA_WRITE_ACK    = $28;
  I2C_DATA_WRITE_NACK   = $30;
  I2C_LOST_ARBITRATION  = $38;
  I2C_SLAR_ACK          = $40;
  I2C_SLAR_NACK         = $48;
  I2C_DATA_READ_ACK     = $50;
  I2C_DATA_READ_NACK    = $58;
  I2C_WriteMode         = false;
  I2C_ReadMode          = true;

  // Delay (us) to achieve bit rate
  I2C_100kHz = 8;
  I2C_400kHz = 1;

implementation

uses
  delay;

{ TI2CMaster }

procedure TI2CMaster.setSCL(val: boolean);
begin
  if val then  // high value = tristate
  begin
    {$ifdef CPUAVRXMEGA3}
    SCLport.DIRCLR := SCLpin_bm;
    // Check for clock stretching before continuing
    repeat until (SCLport.In_ and SCLpin_bm) > 0;
    {$else}
    SCLdir := SCLdir and not (SCLpin_bm);
    //SCLport := SCLport and not(SCLpin_bm);
    repeat until (SCLPinReg and SCLpin_bm) > 0;
    {$endif CPUAVRXMEGA3}
  end
  else  // pull bus low
  begin
    {$ifdef CPUAVRXMEGA3}
    SCLport.DIRSET := SCLpin_bm;
    SCLport.OUTCLR := SCLpin_bm;
    {$else}
    SCLdir := SCLdir or SCLpin_bm;
    //SCLport := SCLport and not(SCLpin_bm);
    {$endif CPUAVRXMEGA3}
  end;
end;

procedure TI2CMaster.setSDA(val: boolean);
begin
  if val then  // high value = tristate
  begin
    {$ifdef CPUAVRXMEGA3}
    SDAport.DIRCLR := SDApin_bm;
    {$else}
    SDAdir := SDAdir and not (SDApin_bm);
    {$endif CPUAVRXMEGA3}
  end
  else  // pull bus low
  begin
    {$ifdef CPUAVRXMEGA3}
    SDAport.DIRSET := SDApin_bm;
    SDAport.OUTCLR := SDApin_bm;
    {$else}
    SDAdir := SDAdir or SDApin_bm;
    //SDAport := SDAport and not(SDApin_bm);
    {$endif CPUAVRXMEGA3}
  end;
end;

procedure TI2CMaster.init(bitRate: byte);
{$ifdef CPUAVRXMEGA3}
var
  SDAPinCtrlArray: array [0..7] of byte absolute SDAport;
  SCLPinCtrlArray: array [0..7] of byte absolute SCLport;
{$endif CPUAVRXMEGA3}
begin
  fDelay := bitRate;

  // Set pins to floating input
  {$ifdef CPUAVRXMEGA3}
  SDAPinCtrlArray[SDApin] := 0;
  SCLPinCtrlArray[SCLpin] := 0;
  SDAport.DIRCLR := SDApin_bm;
  SCLport.DIRCLR := SCLpin_bm;
  {$else}
  SDAdir := SDAdir and not(SDApin_bm);
  SDAport := SDAport and not(SDApin_bm);
  SCLdir := SCLdir and not(SCLpin_bm);
  SCLport := SCLport and not(SCLpin_bm);
  {$endif CPUAVRXMEGA3}
end;

function TI2CMaster.start(address: byte; readTransaction: boolean
		  ): boolean;
begin
  // TODO: Check SDA & SCL both high as precondition
  if readTransaction then
    address := address or 1;

  // Generate start condition
  setSCL(true);
  delay_us(5);  // Setup time for repstart = 4.7us min
  setSDA(false);
  delay_us(4);  // Hold time for start = 4us min
  setSCL(false);
  //delay_us(fDelay);

  result := writeByte(address);
end;

function TI2CMaster.readByte(out data: byte; ack: boolean): boolean;
var
  i: byte;
begin
  data := 0;
  setSDA(true);
  delay_us(fDelay);
  for i := 7 downto 0 do
  begin
    setSCL(true);
    delay_us(fDelay);
    // set bit if SDA is high
    {$ifdef CPUAVRXMEGA3}
    if (SDAport.In_ and SDApin_bm) = SDApin_bm then
    {$else}
    if (SDAPinReg and SDApin_bm) = SDApin_bm then
    {$endif CPUAVRXMEGA3}
      data := data or byte(1 shl i);

    setSCL(false);
    delay_us(fDelay);
  end;
  // TODO: Ensure SDA goes high first?

  if ack then
    setSDA(false);
  setSCL(true);
  delay_us(fDelay);
  setSCL(false);
  setSDA(true);
  delay_us(fDelay);
  result := true;
end;

function TI2CMaster.writeByte(data: byte): boolean;
var
  i: byte;
begin
  for i := 1 to 8 do
  begin
    setSDA(data and $80 = $80);
    // Setup time for data (end of SCL to new SDA level) = 0.25us
    data := data shl 1;
    delay_us(5);
    setSCL(true);
    delay_us(4);
    setSCL(false);
    // Hold time for data (only relevant for CBUS compatibility)
  end;

  // Release SDA
  setSDA(true);
  delay_us(5);
  setSCL(true);
  delay_us(4);
  {$ifdef CPUAVRXMEGA3}
  result := (SDAport.In_ and SDApin_bm) = 0;
  {$else}
  result := (SDAPinReg and SDApin_bm) = 0;
  {$endif CPUAVRXMEGA3}
  setSCL(false);
  // keep SDA floating high
  //delay_us(fDelay);
end;

function TI2CMaster.stop: boolean;
begin
  result := true;
  setSCL(true);
  delay_us(fDelay);
  setSDA(true);
end;

end.

