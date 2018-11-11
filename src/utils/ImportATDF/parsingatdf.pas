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
    aname: string;
    executable: boolean;
    ReadWrite: set of TReadWrite;
    external_: boolean;
  end;

  TAddressSpace = record
    aname,
    id: string;
    start,
    size: integer;
    memorySegments: array of TMemorySegment;
  end;
  TAddressSpaces = array of TAddressSpace;

  // Beginning of structures for peripherals node
  TSignal = record
    group,
    function_,
    index,
    pad: string;
  end;
  TSignals = array of TSignal;

  TPeriphRegGroup = record
    aname,
    nameInModule,
    caption,
    addressSpace: string;
    offset: integer;
    signals: TSignals;
  end;
  PPeriphRegGroup = ^TPeriphRegGroup;
  TPeriphRegGroups = array of TPeriphRegGroup;

  TPeriphInstance = record
    aname: string;
    RegGroup: TPeriphRegGroups;
  end;
  TPeriphInstances = array of TPeriphInstance;

  TPeriphModule = record
    aname,
    ID: string;
    periphInstances: TPeriphInstances;
  end;
  TPeriphModules = array of TPeriphModule;
  // End of structures for peripherals node

  // Beginning of structures for modules node
  TBitField = record
    aname,
    caption,
    values: string;    // values only set when enumeration are given in value-group
    mask,
    lsb: integer;         // offset for bit name index
  end;
  TBitFields = array of TBitField;

  TRegister = record
    aname,
    caption: string;
    offset,
    size,
    initVal,
    mask: integer;
    bitFields: TBitFields;
  end;
  TRegisters = array of TRegister;

  TRegisterGroup = record
    aname,
    caption,
    class_: string;
    size: integer;
    registers: TRegisters;
  end;
  TRegisterGroups = array of TRegisterGroup;

  TValue = record
    aname,
    caption: string;
    value: integer;
  end;

  TValueGroup = record
    aname,
    caption: string;
    values: array of TValue;
  end;
  TValueGroups = array of TValueGroup;

  TModule = record
    aname,
    caption: string;
    registerGroups: TRegisterGroups;
    valueGroups: TValueGroups;
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
    PeriphModules: TPeriphModules;
    Modules: TModules;
    Interrupts: TInterrupts;
    Interfaces: TProgrammerInterfaces;
    PropertyGroups: TPropGroups;
  end;

function parseDevice(DocNode: TDOMNode): TDevice;

implementation

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

function safeAttributeInteger(attr: TDOMNode): integer;
var
  s: string;
  v, errcode: integer;
begin
  s := safeAttributeValue(attr);
  Val(s, v, errCode);
  if errCode = 0 then
    Result := v
  else
    Result := 0;
end;

function parseAddressSpaces(DocNode: TDOMNode): TAddressSpaces;
var
  node, memSegNode, ASNode: TDOMNode;
  i, j, errCode: integer;
  s: string;
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
    node := node.FindNode('address-spaces');
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
    Result[i].aname := safeAttributeValue(ASNode.Attributes.GetNamedItem('name'));
    Val(safeAttributeValue(ASNode.Attributes.GetNamedItem('size')), Result[i].size, errCode);
    Val(safeAttributeValue(ASNode.Attributes.GetNamedItem('start')), Result[i].start, errCode);

    memSegNode := ASNode.FirstChild;
    while Assigned(memSegNode) do
    begin
      j := length(Result[i].memorySegments);
      SetLength(Result[i].memorySegments, j+1);

      Result[i].memorySegments[j].aname := safeAttributeValue(memSegNode.Attributes.GetNamedItem('name'));
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

function parsePeripherals(DocNode: TDOMNode): TPeriphModules;
var
  periphModuleNode, periphInstNode, rgNode, sigNode: TDOMNode;
  i, j, k, l: integer;
begin
  SetLength(Result, 0);
  periphModuleNode := DocNode.FindNode('devices');
  if Assigned(periphModuleNode) then
    periphModuleNode := periphModuleNode.FindNode('device')
  else
    exit;

  if Assigned(periphModuleNode) then
    periphModuleNode := periphModuleNode.FindNode('peripherals')
  else
    exit;

  if not Assigned(periphModuleNode) then
    exit;

  periphModuleNode := periphModuleNode.FirstChild;

  while Assigned(periphModuleNode) do
  begin
    i := length(Result);
    SetLength(Result, i+1);

    Result[i].aname := safeAttributeValue(periphModuleNode.Attributes.GetNamedItem('name'));
    Result[i].ID := safeAttributeValue(periphModuleNode.Attributes.GetNamedItem('id'));

    periphInstNode := periphModuleNode.FirstChild;
    while Assigned(periphInstNode) do
    begin
      if periphInstNode.NodeType <> COMMENT_NODE then
      begin
        j := Length(Result[i].periphInstances);
        SetLength(Result[i].periphInstances, j+1);

        Result[i].periphInstances[j].aname := safeAttributeValue(periphInstNode.Attributes.GetNamedItem('name'));

        rgNode := periphInstNode.FirstChild;
        while Assigned(rgNode) and (rgNode.NodeName = 'register-group') do
        begin
          if rgNode.NodeType <> COMMENT_NODE then
          begin
            k := Length(Result[i].periphInstances[j].RegGroup);
            SetLength(Result[i].periphInstances[j].RegGroup, k+1);

            Result[i].periphInstances[j].RegGroup[k].aname :=
              safeAttributeValue(rgNode.Attributes.GetNamedItem('name'));
            Result[i].periphInstances[j].RegGroup[k].nameInModule :=
              safeAttributeValue(rgNode.Attributes.GetNamedItem('name-in-module'));
            Result[i].periphInstances[j].RegGroup[k].addressSpace :=
              safeAttributeValue(rgNode.Attributes.GetNamedItem('address-space'));
            Result[i].periphInstances[j].RegGroup[k].offset :=
              safeAttributeInteger(rgNode.Attributes.GetNamedItem('offset'));
            Result[i].periphInstances[j].RegGroup[k].caption :=
              safeAttributeValue(rgNode.Attributes.GetNamedItem('caption'));

            sigNode := periphInstNode.FindNode('signals');  // one per register-group?
            if Assigned(sigNode) then                       // not all register groups have signals
              sigNode := sigNode.FirstChild;
            while Assigned(sigNode) do
            begin
              if sigNode.NodeType <> COMMENT_NODE then
              begin
                l := Length(Result[i].periphInstances[j].RegGroup[k].signals);
                SetLength(Result[i].periphInstances[j].RegGroup[k].signals, l+1);

                Result[i].periphInstances[j].RegGroup[k].signals[l].function_ :=
                  safeAttributeValue(sigNode.Attributes.GetNamedItem('function'));
                Result[i].periphInstances[j].RegGroup[k].signals[l].group :=
                  safeAttributeValue(sigNode.Attributes.GetNamedItem('group'));
                Result[i].periphInstances[j].RegGroup[k].signals[l].index :=
                  safeAttributeValue(sigNode.Attributes.GetNamedItem('index'));
                Result[i].periphInstances[j].RegGroup[k].signals[l].pad :=
                  safeAttributeValue(sigNode.Attributes.GetNamedItem('pad'));
              end;

              sigNode := sigNode.NextSibling;
            end;
          end;

          rgNode := rgNode.NextSibling;
        end;
      end;

      periphInstNode := periphInstNode.NextSibling;
    end;

    periphModuleNode := periphModuleNode.NextSibling;
  end;
end;

function parseModules(DocNode: TDOMNode): TModules;
var
  ModulesNode, ModuleNode, rgNode, rNode, bfNode, vgNode, vNode: TDOMNode;
  i, j, k, l: integer;
begin
  SetLength(Result, 0);
  ModulesNode := DocNode.FindNode('modules');
  if Assigned(ModulesNode) then
    ModuleNode := ModulesNode.FirstChild
  else
    exit;

  while Assigned(ModuleNode) do
  begin
    i := length(Result);
    SetLength(Result, i+1);

    Result[i].aname := safeAttributeValue(ModuleNode.Attributes.GetNamedItem('name'));
    Result[i].caption := safeAttributeValue(ModuleNode.Attributes.GetNamedItem('caption'));

    rgNode := ModuleNode.FindNode('register-group');
    while Assigned(rgNode) and (rgNode.NodeName = 'register-group') do
    begin
      if rgNode.NodeType <> COMMENT_NODE then
      begin
        j := Length(Result[i].registerGroups);
        SetLength(Result[i].registerGroups, j+1);

        Result[i].registerGroups[j].aname := safeAttributeValue(rgNode.Attributes.GetNamedItem('name'));
        Result[i].registerGroups[j].caption := safeAttributeValue(rgNode.Attributes.GetNamedItem('caption'));
        Result[i].registerGroups[j].class_ := safeAttributeValue(rgNode.Attributes.GetNamedItem('class'));  // for union structures
        Result[i].registerGroups[j].size := safeAttributeInteger(rgNode.Attributes.GetNamedItem('size'));

        rNode := rgNode.FirstChild;
        while Assigned(rNode) and
          ((rNode.NodeName = 'register') or (rNode.NodeName = 'register-group')) do
        begin
          if rNode.NodeType <> COMMENT_NODE then
          begin
            k := Length(Result[i].registerGroups[j].registers);
            SetLength(Result[i].registerGroups[j].registers, k+1);

            if (rNode.NodeName = 'register') then
            begin
              Result[i].registerGroups[j].registers[k].aname :=
                safeAttributeValue(rNode.Attributes.GetNamedItem('name'));
              Result[i].registerGroups[j].registers[k].caption :=
                safeAttributeValue(rNode.Attributes.GetNamedItem('caption'));
              Result[i].registerGroups[j].registers[k].offset :=
                safeAttributeInteger(rNode.Attributes.GetNamedItem('offset'));
              Result[i].registerGroups[j].registers[k].size :=
                safeAttributeInteger(rNode.Attributes.GetNamedItem('size'));
              Result[i].registerGroups[j].registers[k].mask :=
                safeAttributeInteger(rNode.Attributes.GetNamedItem('mask'));
              Result[i].registerGroups[j].registers[k].initVal :=
                safeAttributeInteger(rNode.Attributes.GetNamedItem('initval'));

              bfNode := rNode.FindNode('bitfield');
              while Assigned(bfNode) and (bfNode.NodeName = 'bitfield') do
              begin
                if bfNode.NodeType <> COMMENT_NODE then
                begin
                  l := Length(Result[i].registerGroups[j].registers[k].bitFields);
                  SetLength(Result[i].registerGroups[j].registers[k].bitFields, l+1);

                  Result[i].registerGroups[j].registers[k].bitFields[l].aname :=
                    safeAttributeValue(bfNode.Attributes.GetNamedItem('name'));
                  Result[i].registerGroups[j].registers[k].bitFields[l].caption :=
                    safeAttributeValue(bfNode.Attributes.GetNamedItem('caption'));
                  Result[i].registerGroups[j].registers[k].bitFields[l].values :=
                    safeAttributeValue(bfNode.Attributes.GetNamedItem('values'));
                  Result[i].registerGroups[j].registers[k].bitFields[l].lsb :=
                    safeAttributeInteger(bfNode.Attributes.GetNamedItem('lsb'));
                  Result[i].registerGroups[j].registers[k].bitFields[l].mask :=
                    safeAttributeInteger(bfNode.Attributes.GetNamedItem('mask'));
                end;

                bfNode := bfNode.NextSibling;
              end;
            end
            else if (rNode.NodeName = 'register-group') then
            begin
              Result[i].registerGroups[j].registers[k].aname :=
                safeAttributeValue(rNode.Attributes.GetNamedItem('name'));  // refer to original reg-group name
              Result[i].registerGroups[j].registers[k].caption :=
                safeAttributeValue(rNode.Attributes.GetNamedItem('name-in-module'));  // refer to original reg-group name
            end;
          end;

          rNode := rNode.NextSibling;
        end;
      end;

      rgNode := rgNode.NextSibling;
    end;

    vgNode := ModuleNode.FindNode('value-group');
    while Assigned(vgNode) and (vgNode.NodeName = 'value-group') do
    begin
      if vgNode.NodeType <> COMMENT_NODE then
      begin
        j := Length(Result[i].valueGroups);
        SetLength(Result[i].valueGroups, j+1);

        Result[i].valueGroups[j].aname := safeAttributeValue(vgNode.Attributes.GetNamedItem('name'));
        Result[i].valueGroups[j].caption := safeAttributeValue(vgNode.Attributes.GetNamedItem('caption'));

        vNode := vgNode.FirstChild;
        while Assigned(vNode) do
        begin
          if vNode.NodeType <> COMMENT_NODE then
          begin
            k := Length(Result[i].valueGroups[j].values);
            SetLength(Result[i].valueGroups[j].values, k+1);

            Result[i].valueGroups[j].values[k].aname :=
              safeAttributeValue(vNode.Attributes.GetNamedItem('name'));
            Result[i].valueGroups[j].values[k].caption :=
              safeAttributeValue(vNode.Attributes.GetNamedItem('caption'));
            Result[i].valueGroups[j].values[k].value :=
              safeAttributeInteger(vNode.Attributes.GetNamedItem('value'));
          end;

          vNode := vNode.NextSibling;
        end;
      end;

      vgNode := vgNode.NextSibling;
    end;

    ModuleNode := ModuleNode.NextSibling;
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

    Result[i].name:= safeAttributeValue(node.Attributes.GetNamedItem('module-instance'));
    if Result[i].name = '' then  // not xmega
      Result[i].name:= safeAttributeValue(node.Attributes.GetNamedItem('name'))
    else
      Result[i].name:= Result[i].name+'_'+safeAttributeValue(node.Attributes.GetNamedItem('name'));

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
  node := DocNode.FindNode('devices');
  if Assigned(node) then
  begin
    node := node.FindNode('device');
  end
  else
    exit;

  if not Assigned(node) then
    exit;

  Result.architechture := safeAttributeValue(node.Attributes.GetNamedItem('architecture'));
  Result.deviceName := safeAttributeValue(node.Attributes.GetNamedItem('name'));
  Result.family := safeAttributeValue(node.Attributes.GetNamedItem('family'));

  Result.AddressSpaces := parseAddressSpaces(DocNode);
  Result.PeriphModules := parsePeripherals(DocNode);
  Result.Modules := parseModules(DocNode);
  Result.Interrupts := parseInterrupts(DocNode);
  Result.PropertyGroups := parsePropertyGroups(DocNode);
  Result.Interfaces := parseInterfaces(DocNode);
end;

end.

