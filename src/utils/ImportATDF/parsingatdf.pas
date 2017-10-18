unit parsingATDF;

interface

uses
  Classes, SysUtils,
  DOM;

type
  TReadWrite = (rwRead, rwWrite);

  TMemorySegment = record
    start,
    size,
    pagesize: integer;
    type_,
    name: string;
    executable: boolean;
    ReadWrite: set of TReadWrite;
    external_: boolean;
  end;

  TAddressSpace = record
    name,
    id: string;
    start,
    size: integer;
    memorySegments: array of TMemorySegment;
  end;
  TAddressSpaces = array of TAddressSpace;

  TSignal = record
    group,
    function_,
    index,
    pad: string;
  end;
  //TSingals = array of TSignal;

  TBitField = record
    name,
    caption,
    values: string;    // values only set when enumeration are given in value-group
    mask,
    lsb: integer;         // offset for bit name index
  end;
  //TBitFields = array of TBitField;

  TRegister = record
    name,
    caption: string;
    offset,
    size: integer;
    bitFields: array of TBitField;
  end;

  TValueEnum = record
    name,
    caption: string;
    value: integer;
  end;
  TValueEnums = record
    name,
    caption: string;
    values: array of TValueEnum;
  end;

  TRegisterGroup= record
    name,
    caption: string;
    addressSpace: string;
    offset: integer;
    signals: array of TSignal; // usually alternative names for pin names, e.g. MOSI = PB2   or pin number, e.g. PB2 = 2
    registers: array of TRegister; // register could be mentioned several times to cover different bit fields
  end;

  // Module, includes information from peripherals node & modules node
  TModule = record
    name,
    caption: string;
    registerGroups: array of TRegisterGroup;
    //addressSpace: string;
    //offset: integer;
    //type_: string;   // e.g. UART, PORT
    //signals: array of TSignal; // usually alternative names for pin names, e.g. MOSI = PB2   or pin number, e.g. PB2 = 2
    //registers: array of TRegister; // register could be mentioned several times to cover different bit fields
    valueEnums: array of TValueEnums;
  end;
  TModules = array of TModule;

  TInterrupt = record
    name,
    caption: string;
    index: integer;
  end;
  TInterrupts = array of TInterrupt;

  TProgrammerInterface = record
    name,
    type_: string;
  end;
  TProgrammerInterfaces = array of TProgrammerInterface;

  TProperty = record
    name,
    value: string;    // value mostly a number, but could also be a pad name such as PD1
  end;

  TPropGroup = record
    name: string;
    properties: array of TProperty;
  end;
  TPropGroups = array of TPropGroup;

  TDevice = record
    deviceName,          // e.g. ATmega328P
    architechture,       // e.g. AVR8, AVR8L, AVR8X
    family: string;      // e.g. megaAVR, tinyAVR, AVR TINY
    AddressSpaces: TAddressSpaces;
    Modules: TModules;
    Interrupts: TInterrupts;
    Interfaces: TProgrammerInterfaces;
    PropertyGroups: TPropGroups;
  end;

function parseDevice(DocNode: TDOMNode): TDevice;

implementation

function findChildNode(parentNode: TDOMNode; nodeName: string): TDOMNode;
begin
  Result := parentNode.FirstChild;
  while Assigned(Result) and not(Result.NodeName = nodeName) do
    Result := Result.NextSibling;
end;

function findChildNodebyAttribute(parentNode: TDOMNode; AttribName, AttribValue: string): TDOMNode;
begin
  Result := parentNode.FirstChild;
  while Assigned(Result) and not(Result.Attributes.GetNamedItem(AttribName).NodeValue = AttribValue) do
    Result := Result.NextSibling;
end;

function safeAttributeValue(attr: TDOMNode): string;
begin
  if Assigned(attr) then
    Result := attr.NodeValue
  else
    Result := '';
end;

function parseAddressSpaces(DocNode: TDOMNode): TAddressSpaces;
var
  node, memSegNode, ASNode: TDOMNode;
  i, j, errCode: integer;
  s: string;
begin
  Result := nil;
  node := findChildNode(DocNode, 'devices');
  if Assigned(node) then
  begin
    node := findChildNode(node, 'device');
  end
  else
    exit;

  if Assigned(node) then
  begin
    node := findChildNode(node, 'address-spaces');
  end
  else
    exit;

  if not Assigned(node) then
    exit;

  ASNode := node.FirstChild;
  Result := nil;
  while Assigned(ASNode) and (ASNode.NodeName = 'address-space') do
  begin
    i := length(Result);
    SetLength(Result, i+1);

    Result[i].id := safeAttributeValue(ASNode.Attributes.GetNamedItem('id'));
    Result[i].name := safeAttributeValue(ASNode.Attributes.GetNamedItem('name'));
    Val(safeAttributeValue(ASNode.Attributes.GetNamedItem('size')), Result[i].size, errCode);
    Val(safeAttributeValue(ASNode.Attributes.GetNamedItem('start')), Result[i].start, errCode);

    memSegNode := ASNode.FirstChild;
    while Assigned(memSegNode) do
    begin
      j := length(Result[i].memorySegments);
      SetLength(Result[i].memorySegments, j+1);

      Result[i].memorySegments[j].name := safeAttributeValue(memSegNode.Attributes.GetNamedItem('name'));
      Result[i].memorySegments[j].type_ := safeAttributeValue(memSegNode.Attributes.GetNamedItem('type'));
      Result[i].memorySegments[j].executable := safeAttributeValue(memSegNode.Attributes.GetNamedItem('exec')) = '1';


      Val(safeAttributeValue(memSegNode.Attributes.GetNamedItem('start')), Result[i].memorySegments[j].start, errCode);
      Val(safeAttributeValue(memSegNode.Attributes.GetNamedItem('size')), Result[i].memorySegments[j].size, errCode);
      Val(safeAttributeValue(memSegNode.Attributes.GetNamedItem('pagesize')), Result[i].memorySegments[j].pagesize, errCode);

      s := safeAttributeValue(memSegNode.Attributes.GetNamedItem('rw'));
      if pos('R', s) > 0 then
        Include(Result[i].memorySegments[j].ReadWrite, rwRead);
      if pos('W', s) > 0 then
        Include(Result[i].memorySegments[j].ReadWrite, rwWrite);

      s := safeAttributeValue(memSegNode.Attributes.GetNamedItem('external'));
      if CompareText(s, 'true') = 0 then
        Result[i].memorySegments[j].external_ := True;

      memSegNode := memSegNode.NextSibling;
    end;

    ASNode := ASNode.NextSibling;
  end;
end;

function parseModules(DocNode: TDOMNode): TModules;
var
  periphNode, periphModuleNode, periphModuleInstanceNode, periphRegisterGroup, periphSignalsNode,
  modulesNode, moduleChildNode, rgNode, bfNode, vgNode, node: TDOMNode;
  i, j, k, l, errCode, v: integer;
  s, periphName: string;
begin
  Result := nil;
  periphNode := findChildNode(DocNode, 'devices');
  if Assigned(periphNode) then
    periphNode := findChildNode(periphNode, 'device')
  else
    exit;

  if Assigned(periphNode) then
    periphNode := findChildNode(periphNode, 'peripherals')
  else
    exit;

  if not Assigned(periphNode) then
    exit;

  // E.g. <module name="ADC">
  periphModuleNode := periphNode.FirstChild;
  periphName := safeAttributeValue(periphModuleNode.Attributes.GetNamedItem('name'));

  modulesNode := DocNode.FindNode('modules');
  if not Assigned(modulesNode) then
    raise Exception.Create('Error finding node <modules>');

  // E.g. <module caption="Fuses" name="FUSE">
  moduleChildNode := findChildNodebyAttribute(modulesNode, 'name', periphName);

  // iterate over modules
  while Assigned(periphModuleNode) and Assigned(moduleChildNode) do
  begin
    i := length(Result);
    SetLength(Result, i+1);
    Result[i].name := safeAttributeValue(periphModuleNode.Attributes.GetNamedItem('name'));

    // iterate over instances/register-groups
    // E.g.  <instance name="PORTB" caption="I/O Port">
    periphModuleInstanceNode := findChildNode(periphModuleNode, 'instance');
    rgNode := findChildNode(moduleChildNode, 'register-group');
    while Assigned(periphModuleInstanceNode) and Assigned(rgNode) do
    begin
      j := Length(Result[i].registerGroups);
      SetLength(Result[i].registerGroups, j + 1);

      // E.g. <register-group name="PORTB" name-in-module="PORTB" offset="0x00" address-space="data" caption="I/O Port"/>
      periphRegisterGroup := findChildNode(periphModuleInstanceNode, 'register-group');

      Result[i].registerGroups[j].name := safeAttributeValue(periphRegisterGroup.Attributes.GetNamedItem('name'));
      Result[i].registerGroups[j].caption := safeAttributeValue(periphRegisterGroup.Attributes.GetNamedItem('caption'));
      Result[i].registerGroups[j].addressSpace := safeAttributeValue(periphRegisterGroup.Attributes.GetNamedItem('address-space'));

      s := safeAttributeValue(periphRegisterGroup.Attributes.GetNamedItem('offset'));
      Val(s, v, errCode);
      if errCode = 0 then
        Result[i].registerGroups[j].offset := v
      else
      begin
        Result[i].registerGroups[j].offset := 0;
      end;

      // Read signals from periph
      periphSignalsNode := findChildNode(periphModuleInstanceNode, 'signals');
      SetLength(Result[i].registerGroups[j].signals, 0);
      while Assigned(periphSignalsNode) do
      begin
        node := periphSignalsNode.FirstChild;
        while Assigned(node) do
        begin
          if node.NodeType <> COMMENT_NODE then
          begin
            k := length(Result[i].registerGroups[j].signals);
            SetLength(Result[i].registerGroups[j].signals, k+1);

            Result[i].registerGroups[j].signals[k].function_ := safeAttributeValue(node.Attributes.GetNamedItem('function'));
            Result[i].registerGroups[j].signals[k].group := safeAttributeValue(node.Attributes.GetNamedItem('group'));
            Result[i].registerGroups[j].signals[k].index := safeAttributeValue(node.Attributes.GetNamedItem('index'));
            Result[i].registerGroups[j].signals[k].pad := safeAttributeValue(node.Attributes.GetNamedItem('pad'));
          end;
          node := node.NextSibling;
        end;
        periphSignalsNode := periphSignalsNode.NextSibling;
      end;

      // Scan registers
      node := findChildNode(rgNode, 'register');
      while Assigned(node) do
      begin
        k := Length(Result[i].registerGroups[j].registers);
        SetLength(Result[i].registerGroups[j].registers, k+1);

        Result[i].registerGroups[j].registers[k].name := safeAttributeValue(node.Attributes.GetNamedItem('name'));
        Result[i].registerGroups[j].registers[k].caption := safeAttributeValue(node.Attributes.GetNamedItem('caption'));

        s := safeAttributeValue(node.Attributes.GetNamedItem('offset'));
        Val(s, v, errCode);
        if errCode = 0 then
          Result[i].registerGroups[j].registers[k].offset := v
        else
          Result[i].registerGroups[j].registers[k].offset := 0;

        s := safeAttributeValue(node.Attributes.GetNamedItem('size'));
        Val(s, v, errCode);
        if errCode = 0 then
          Result[i].registerGroups[j].registers[k].size := v
        else
          Result[i].registerGroups[j].registers[k].size := 0;

        //bit fields
        SetLength(Result[i].registerGroups[j].registers[k].bitFields, 0);
        bfNode := node.FirstChild;
        while Assigned(bfNode) do
        begin
          if bfNode.NodeType <> COMMENT_NODE then
          begin
            l := Length(Result[i].registerGroups[j].registers[k].bitFields);
            SetLength(Result[i].registerGroups[j].registers[k].bitFields, l+1);

            Result[i].registerGroups[j].registers[k].bitFields[l].caption := safeAttributeValue(bfNode.Attributes.GetNamedItem('caption'));
            Result[i].registerGroups[j].registers[k].bitFields[l].name := safeAttributeValue(bfNode.Attributes.GetNamedItem('name'));
            Result[i].registerGroups[j].registers[k].bitFields[l].values := safeAttributeValue(bfNode.Attributes.GetNamedItem('values'));

            s := safeAttributeValue(bfNode.Attributes.GetNamedItem('mask'));
            Val(s, v, errCode);
            if errCode = 0 then
              Result[i].registerGroups[j].registers[k].bitFields[l].mask := v
            else
              Result[i].registerGroups[j].registers[k].bitFields[l].mask := 0;

            s := safeAttributeValue(bfNode.Attributes.GetNamedItem('lsb'));
            Val(s, v, errCode);
            if errCode = 0 then
              Result[i].registerGroups[j].registers[k].bitFields[l].lsb := v
            else
              Result[i].registerGroups[j].registers[k].bitFields[l].lsb := 0;

          end;
          bfNode := bfNode.NextSibling;
        end;
        node := node.NextSibling;
      end;
      periphModuleInstanceNode := periphModuleInstanceNode.NextSibling;
      rgNode := rgNode.NextSibling;
    end;

    // Scan value group
//      <value-group caption="" name="ENUM_SUT_CKSEL">
//        <value caption="Ext. Clock; Start-up time: 14 CK + 0 ms" name="EXTCLK_14CK_0MS" value="0x00"/>
    vgNode := findChildNode(moduleChildNode, 'value-group');
    while Assigned(vgNode) and (vgNode.NodeName = 'value-group') do
    begin
      j := Length(Result[i].valueEnums);
      SetLength(Result[i].valueEnums, j+1);

      Result[i].valueEnums[j].name := safeAttributeValue(vgNode.Attributes.GetNamedItem('name'));
      Result[i].valueEnums[j].caption := safeAttributeValue(vgNode.Attributes.GetNamedItem('caption'));

      //bit fields
      SetLength(Result[i].valueEnums[j].values, 0);
      bfNode := vgNode.FirstChild;
      while Assigned(bfNode) do
      begin
        k := Length(Result[i].valueEnums[j].values);
        SetLength(Result[i].valueEnums[j].values, k+1);

        Result[i].valueEnums[j].values[k].caption := safeAttributeValue(bfNode.Attributes.GetNamedItem('caption'));
        Result[i].valueEnums[j].values[k].name := safeAttributeValue(bfNode.Attributes.GetNamedItem('name'));

        s := safeAttributeValue(bfNode.Attributes.GetNamedItem('value'));
        Val(s, v, errCode);
        if errCode = 0 then
          Result[i].valueEnums[j].values[k].value := v
        else
          Result[i].valueEnums[j].values[k].value := 0;

        bfNode := bfNode.NextSibling;
      end;
      vgNode := vgNode.NextSibling;
    end;

    // Next child nodes
    periphModuleNode := periphModuleNode.NextSibling;

    if Assigned(periphModuleNode) then
    begin
      periphName := safeAttributeValue(periphModuleNode.Attributes.GetNamedItem('name'));
      moduleChildNode := findChildNodebyAttribute(modulesNode, 'name', periphName);
    end;
  end;
end;

function parseInterrupts(DocNode: TDOMNode): TInterrupts;
var
  node: TDOMNode;
  i: integer;
  s: string;
  v, errcode: integer;
begin
  Result := nil;
  node := DocNode.FindNode('devices');
  if Assigned(node) then
  begin
    node := node.FindNode('device');
  end
  else
    exit;

  if Assigned(node) then
  begin
    node := node.FindNode('interrupts');
  end
  else
    exit;

  if not Assigned(node) then
    exit;

  node := node.FirstChild;
  while Assigned(node) and (node.NodeName = 'interrupt') do
  begin
    i := length(Result);
    SetLength(Result, i+1);

    Result[i].caption := safeAttributeValue(node.Attributes.GetNamedItem('caption'));
    Result[i].name:= safeAttributeValue(node.Attributes.GetNamedItem('name'));
    s := safeAttributeValue(node.Attributes.GetNamedItem('index'));
    Val(s, v, errcode);
    if errcode = 0 then
      Result[i].index := v
    else
      raise Exception.Create('Error converting text "'+s+'" to integer in <interrupt...> parsing.');

    node := node.NextSibling;
  end;
end;

function parsePropertyGroups(DocNode: TDOMNode): TPropGroups;
var
  node, pgnode: TDOMNode;
  i, j: integer;
begin
  Result := nil;
  node := DocNode.FindNode('devices');
  if Assigned(node) then
  begin
    node := node.FindNode('device');
  end
  else
    exit;

  if Assigned(node) then
  begin
    node := node.FindNode('property-groups');
  end
  else
    exit;

  if not Assigned(node) then
    exit;

  node := node.FirstChild;
  while Assigned(node) and (node.NodeName = 'property-group') do
  begin
    i := length(Result);
    SetLength(Result, i+1);

    Result[i].name:= safeAttributeValue(node.Attributes.GetNamedItem('name'));

    pgnode := node.FirstChild;
    while Assigned(pgnode) and (pgnode.NodeName = 'property') do
    begin
      j := Length(Result[i].properties);
      SetLength(Result[i].properties, j+1);
      Result[i].properties[j].name := safeAttributeValue(pgnode.Attributes.GetNamedItem('name'));
      Result[i].properties[j].value := safeAttributeValue(pgnode.Attributes.GetNamedItem('value'));
      pgnode := pgnode.NextSibling;
    end;
    node := node.NextSibling;
  end;
end;

function parseInterfaces(DocNode: TDOMNode): TProgrammerInterfaces;
var
  node: TDOMNode;
  i: integer;
begin
  Result := nil;
  node := DocNode.FindNode('devices');
  if Assigned(node) then
  begin
    node := node.FindNode('device');
  end
  else
    exit;

  if Assigned(node) then
  begin
    node := node.FindNode('interfaces');
  end
  else
    exit;

  if not Assigned(node) then
    exit;

  node := node.FirstChild;
  while Assigned(node) and (node.NodeName = 'interface') do
  begin
    i := length(Result);
    SetLength(Result, i+1);

    Result[i].name := safeAttributeValue(node.Attributes.GetNamedItem('name'));
    Result[i].type_ := safeAttributeValue(node.Attributes.GetNamedItem('type'));
    node := node.NextSibling;
  end;
end;

function parseDevice(DocNode: TDOMNode): TDevice;
var
  node: TDOMNode;
begin
  node := findChildNode(DocNode, 'devices');
  if Assigned(node) then
  begin
    node := findChildNode(node, 'device');
  end
  else
    exit;

  if not Assigned(node) then
    exit;

  Result.architechture := safeAttributeValue(node.Attributes.GetNamedItem('architecture'));
  Result.deviceName := safeAttributeValue(node.Attributes.GetNamedItem('name'));
  Result.family := safeAttributeValue(node.Attributes.GetNamedItem('family'));

  Result.AddressSpaces := parseAddressSpaces(DocNode);
  Result.Modules := parseModules(DocNode);
  Result.Interrupts := parseInterrupts(DocNode);
  Result.PropertyGroups := parsePropertyGroups(DocNode);
  Result.Interfaces := parseInterfaces(DocNode);
end;

end.

