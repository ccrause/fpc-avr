unit generatepascalunit;

interface

uses
  parsingATDF, classes;

procedure generateUnitFromATDFInfo(constref device: TDevice; var SL: TStrings);

implementation

uses
  sysutils, math;

const
  // 's' clashes with attiny40 PSR
  setPrefix = 's';

  // 'm' clashes at90pwm316 MUBBR
  constMaskPrefix = 'c';

type
  TReg = record
    aname,
    caption: string;
    address,
    size,
    mask: integer;
    bitFields: TBitFields;  // add bit fields in sorted order
  end;
  TSortedRegs = array of TReg;

var
  IDList: TStringList;  // list used to check uniqueness of identifier names

// Check if ID is unique, append _ to make unique
// then add to IDList
function AddUniqueID(s: string): string;
var
  i: integer;
begin
  if s <> '' then
  begin
    i := IDList.IndexOf(s);
    while not (i = -1) do
    begin
      s := s + '_';
      i := IDList.IndexOf(s);
    end;
    IDList.Add(s);
  end;
  Result := s;
end;

function findPeriphModule(constref device: TDevice; nameInModule, nameInRegGroup: string): PPeriphRegGroup;
var
  i, j, k: integer;
begin
  Result := nil;

  i := 0;
  while (i < length(device.PeriphModules)) and (device.PeriphModules[i].aname <> nameInModule) do
    inc(i);

  if i = length(device.PeriphModules) then exit;

  j := 0;
  while (j < length(device.PeriphModules[i].periphInstances)) and (device.PeriphModules[i].periphInstances[j].aname <> nameInRegGroup) do
    inc(j);

  if j = length(device.PeriphModules[i].periphInstances) then exit;

  k := 0;
  while (k < length(device.PeriphModules[i].periphInstances[j].RegGroup)) and
        (device.PeriphModules[i].periphInstances[j].RegGroup[k].nameInModule <> nameInRegGroup) do
    inc(k);

  if k = length(device.PeriphModules[i].periphInstances[j].RegGroup) then exit;

  Result := @(device.PeriphModules[i].periphInstances[j].RegGroup[k]);
end;

procedure insertBitfield(constref source: TBitField; var dest: TBitFields);
var
  i, j, len: integer;
begin
  len := Length(dest)+1;
  SetLength(dest, len);

  // Locate spot after next smallest entry
  i := 0;
  while (i < len-1) and (source.mask >= dest[i].mask) do
    inc(i);

  // Potentially just after previous duplicate
  if (i > 0) and (source.aname = dest[i-1].aname) then
  begin
    SetLength(dest, len-1);  // remove added field
    exit;
  end;

  j := len-1;
  while (j > i) do
  begin
    dest[j] := dest[j-1];
    dec(j);
  end;

  // now i should point to new available slot
  dest[i] := source;
end;

function sortedRegisters(constref device: TDevice): TSortedRegs;
var
  i, j, k, l, reg_offset, len: integer;
  reg: ^TReg;
  prg: PPeriphRegGroup;
  portChar: char;
  bitFieldList: TStringList;
  s: string;
begin
  bitFieldList := TStringList.Create;

  i := 0;
  while (i < length(device.AddressSpaces)) and (device.AddressSpaces[i].aname <> 'data') do
    inc(i);

  j := 0;
  while (j < Length(device.AddressSpaces[i].memorySegments)) and
        (device.AddressSpaces[i].memorySegments[j].type_ <> 'io') do
    inc(j);

  SetLength(Result, device.AddressSpaces[i].memorySegments[j].start + device.AddressSpaces[i].memorySegments[j].size);

  for i := 0 to High(device.Modules) do
  begin
    for j := 0 to High(device.Modules[i].registerGroups) do
    begin
      prg := findPeriphModule(device,
                              device.Modules[i].aname,
                              device.Modules[i].registerGroups[j].aname);
      // ATtiny80 has TC3 under modules but not peripherals...
      if prg = nil then
        continue;

      if prg^.addressSpace = 'data' then
        for k := 0 to High(device.Modules[i].registerGroups[j].registers) do
        begin
          reg := @device.Modules[i].registerGroups[j].registers[k];
          reg_offset := device.Modules[i].registerGroups[j].registers[k].offset;

          Result[reg_offset].address := reg_offset + prg^.offset;  // TODO: What about module offset?
          Result[reg_offset].aname := reg^.aname;
          Result[reg_offset].caption := reg^.caption;
          Result[reg_offset].size := reg^.size;
          Result[reg_offset].mask := reg^.mask;

          if length(device.Modules[i].registerGroups[j].registers[k].bitFields) > 0 then
          begin
            for l := 0 to length(device.Modules[i].registerGroups[j].registers[k].bitFields)-1 do
            begin
              s := device.Modules[i].registerGroups[j].registers[k].bitFields[l].aname;
              if bitFieldList.IndexOf(s) = -1 then  // hack to prevent duplicate identifier names from at90usb646
              begin
                bitFieldList.Add(s);
                insertBitfield(device.Modules[i].registerGroups[j].registers[k].bitFields[l], Result[reg_offset].bitFields);
              end;
            end;
          end
          else if pos('PORT', reg^.aname) = 1 then  // check for PORTA, PORTD etc.
          begin
            len := Length(Result[reg_offset].aname);
            portChar := Result[reg_offset].aname[len];
            for l := 0 to 7 do
              if ((1 shl l) and device.Modules[i].registerGroups[j].registers[k].mask) > 0 then
              begin
                len := length(Result[reg_offset].bitFields);
                SetLength(Result[reg_offset].bitFields, len+1);
                Result[reg_offset].bitFields[len].aname := 'P' + portChar + IntToStr(l);
                Result[reg_offset].bitFields[len].mask := (1 shl l);
              end;
          end;
        end;
    end;
  end;

  FreeAndNil(bitFieldList);
end;

procedure generateDeclarationsOpt1(constref device: TDevice; var List: TStrings);
var
  i, j, k, bitsInMask: integer;
  sortedRegs: TSortedRegs;
  r: TReg;
  b: TBitField;
  previousVar: boolean;
  comment: string;
begin
  sortedRegs := sortedRegisters(device);

  previousVar := false;
  for i := 0 to length(sortedRegs)-1 do
  begin
    r := sortedRegs[i];
    if r.aname <> '' then
    begin
      if not previousVar then
      begin
        List.Add('var');
        previousVar := true;
      end;

      if r.caption <> '' then
        comment := '  // ' + r.caption
      else
        comment := '';

      if r.size = 1 then
        List.Add(format('  %s: byte absolute $%.2x;%s', [r.aname, r.address, comment]))
      else if r.size = 2 then
      begin
        List.Add(format('  %s: word absolute $%.2x;%s', [r.aname, r.address, comment]));
        List.Add(format('  %sL: byte absolute $%.2x;', [r.aname, r.address]));
        List.Add(format('  %sH: byte absolute $%.2x;', [r.aname, r.address+1]));
      end
      else if r.size = 4 then
      begin
        List.Add(format('  %s: dword absolute $%.2x;%s', [r.aname, r.address, comment]));
        List.Add(format('  %sL: word absolute $%.2x;', [r.aname, r.address]));
        List.Add(format('  %sH: word absolute $%.2x;', [r.aname, r.address+2]));
      end
      else
      raise Exception.Create('Unexpected register size:: $' + IntToHex(r.size, 2));

      // Bit fields
      if length(r.bitFields) > 0 then
      begin
        List.Add('const');
        previousVar := false;
        for j := 0 to length(r.bitFields)-1 do
        begin
          // check if single bit value
          if r.bitFields[j].mask in [1, 2, 4, 8, 16, 32, 64, 128] then
          begin
            b := r.bitFields[j];
            if b.caption = '' then
              List.Add(format('  %s = $%.2x;',
                            [b.aname, round(log2(b.mask))]))
            else
              List.Add(format('  %s = $%.2x;  // %s',
                            [b.aname, round(log2(b.mask)), b.caption]));
          end
          else // expand mask into several bit definitions
          begin
            bitsInMask := -1;     // identify lowest bit label
            for k := 0 to 7 do
              if ((1 shl k) and r.bitFields[j].mask) > 0 then
              begin
                inc(bitsInMask);  // zero based
                if r.bitFields[j].caption = '' then
                  List.Add(format('  %s = $%.2x;',
                    [r.bitFields[j].aname + IntToStr(bitsInMask + r.bitFields[j].lsb), k]))
                else
                  List.Add(format('  %s = $%.2x;  // %s',
                    [r.bitFields[j].aname + IntToStr(bitsInMask + r.bitFields[j].lsb), k, r.bitFields[j].caption]));
              end;
          end;
        end;
        List.Add('');
      end;
    end;
  end;
end;

procedure generateStandardDeclarationFromRegisterInfo(constref reg: TReg; var  typeStr, varStr, constStr: string);
var
  j, k, bitsInMask, bitIndex, bitmask, bitnumber: integer;
  b: TBitField;
  comment, s: string;
  typeList, varList, constList: TStringList;
begin
  typeList := TStringList.Create;
  varList := TStringList.Create;
  constList := TStringList.Create;

  if reg.aname <> '' then
  begin
    if reg.caption <> '' then
      comment := '  // ' + reg.caption
    else
      comment := '';

    if reg.size = 1 then
      varList.Add(format('  %s: byte absolute $%.2x;%s', [reg.aname, reg.address, comment]))
    else if reg.size = 2 then
    begin
      varList.Add(format('  %s: word absolute $%.2x;%s', [reg.aname, reg.address, comment]));
      varList.Add(format('  %sL: byte absolute $%.2x;', [reg.aname, reg.address]));
      varList.Add(format('  %sH: byte absolute $%.2x;', [reg.aname, reg.address+1]));
    end
    else if reg.size = 4 then
    begin
      varList.Add(format('  %s: dword absolute $%.2x;%s', [reg.aname, reg.address, comment]));
      varList.Add(format('  %sL: word absolute $%.2x;', [reg.aname, reg.address]));
      varList.Add(format('  %sH: word absolute $%.2x;', [reg.aname, reg.address+2]));
    end
    else
    raise Exception.Create('Unexpected register size:: $' + IntToHex(reg.size, 2));

    // Bit fields
    bitmask := 0;
    if length(reg.bitFields) > 0 then
    begin
      for j := 0 to length(reg.bitFields)-1 do
      begin
        b := reg.bitFields[j];
        if b.caption = '' then
          comment := ''
        else
          comment := '  // ' + b.caption;

        // check if single bit value
        if reg.bitFields[j].mask in [1, 2, 4, 8, 16, 32, 64, 128] then
        begin
          if (bitmask and reg.bitFields[j].mask) = 0 then
          begin
            // const name and mask name handled together
            s := AddUniqueID(b.aname);
            constList.Add(format('  %s = %d;  ' + constMaskPrefix + '%s = %d;%s',
                          [s, round(log2(b.mask)), s, b.mask, comment]));
            bitmask := bitmask or reg.bitFields[j].mask;
          end;
        end
        else // expand mask into several bit definitions
        begin
          bitsInMask := -1;     // identify lowest bit label
          for k := 0 to 7 do
            if ((1 shl k) and reg.bitFields[j].mask) > 0 then
            begin
              inc(bitsInMask);  // zero based
              bitnumber := bitsInMask + reg.bitFields[j].lsb;
              if (bitmask and (1 shl k)) = 0 then
              begin
                // const name and mask name handled together
                s := reg.bitFields[j].aname + IntToStr(bitnumber);
                s := AddUniqueID(s);
                constList.Add(format('  %s = %d;  ' + constMaskPrefix + '%s = %d;%s',
                  [s, k, s, 1 shl k, comment]));
                bitmask := bitmask or (1 shl k);
              end;
            end;
        end;
      end;
    end;
  end;

  if typeList.Count > 0 then
    if typeStr = '' then
      typeStr := TrimRight(typeList.Text)
    else
      typeStr := typeStr + typeList.LineBreak + TrimRight(typeList.Text);

  if varList.Count > 0 then
    if varStr = '' then
      varStr := TrimRight(varList.Text)
    else
      varStr := varStr + varList.LineBreak + TrimRight(varList.Text);

  if constList.Count > 0 then
    if constStr = '' then
      constStr := TrimRight(constList.Text)
    else
      constStr := constStr + constList.LineBreak + TrimRight(constList.Text);

  FreeAndNil(constList);
  FreeAndNil(varList);
  FreeAndNil(typeList);
end;

procedure generateRecordDeclarationFromRegisterInfo(constref reg: TReg; var typeStr, varStr, constStr: string);
var
  j, k, bitsInMask, dummycount: integer;
  s, recdef: string;
  typeList, varList, constList, bitList: TStringList;
  b: TBitField;
begin
  typeList  := TStringList.Create;
  varList  := TStringList.Create;
  constList  := TStringList.Create;
  bitList := TStringList.Create;

  if (reg.aname <> '') and (Length(reg.bitFields) > 0) and (reg.size = 1) then // no bitfields, use generic definitions
  begin
    // Sort Bits from 0 to 7
    bitlist.Clear;
    for j := 0 to length(reg.bitFields)-1 do
    begin
      b := reg.bitFields[j];

      if b.mask in [1, 2, 4, 8, 16, 32, 64, 128] then
      begin
        s := IntToStr(round(log2(b.mask))) + '=' + b.aname;
        bitlist.Add(s);
      end
      else // expand mask into several bit definitions
      begin
        bitsInMask := -1;     // identify lowest bit label
        for k := 0 to 7 do
          if ((1 shl k) and b.mask) > 0 then
          begin
            inc(bitsInMask);  // zero based
            s := IntToStr(k) + '=' + b.aname + IntToStr(bitsInMask + b.lsb);
            bitlist.Add(s);
          end;
      end;
    end;

    recdef := format('  T%srec = bitpacked record', [reg.aname]);
    dummycount := -1;
    for j := 0 to 7 do
    begin
      k := bitlist.IndexOfName(IntToStr(j));
      if k > -1 then
        recdef := recdef + bitList.LineBreak + '    ' + bitlist.ValueFromIndex[k] + ','
      else // skip missing bit,
      begin
        inc(dummycount);
        recdef := recdef + bitList.LineBreak + '    ReservedBit' + IntToStr(j) + ',';
      end;
    end;

    if recdef <> '' then  // remove last ,
    begin
      delete(recdef, length(recdef), 1);
      recdef := recdef + ': TBitField;' + bitList.LineBreak + '  end;';
      typeList.Add(recdef);
    end;

    varList.Add(format('  %srec: T%srec absolute $%.2x;', [reg.aname, reg.aname, reg.address]));
  end
  else if (reg.aname <> '') then
  begin
    // generic record declaration?
  end;

  if typeList.Count > 0 then
    if typeStr = '' then
      typeStr := TrimRight(typeList.Text)
    else
      typeStr := typeStr + typeList.LineBreak + TrimRight(typeList.Text);

  if varList.Count > 0 then
    if varStr = '' then
      varStr := TrimRight(varList.Text)
    else
      varStr := varStr + varList.LineBreak + TrimRight(varList.Text);

  if constList.Count > 0 then
    if constStr = '' then
      constStr := TrimRight(constList.Text)
    else
      constStr := constStr + constList.LineBreak + TrimRight(constList.Text);

  FreeAndNil(bitList);
  FreeAndNil(constList);
  FreeAndNil(varList);
  FreeAndNil(typeList);
end;

procedure generateSetDeclarationFromRegisterInfo(constref reg: TReg; var typeStr, varStr, constStr: string);
var
  j, k, bitsInMask: integer;
  s, sID, setdef: string;
  skippedbit: boolean;
  typeList, varList, constList, bitList: TStringList;
  b: TBitField;
begin
  typeList  := TStringList.Create;
  varList  := TStringList.Create;
  constList  := TStringList.Create;
  bitList := TStringList.Create;

  if (reg.aname <> '') and (Length(reg.bitFields) > 0) and (reg.size = 1) then // no bitfields, use generic definitions
  begin
    // Sort Bits from 0 to 7
    bitlist.Clear;
    for j := 0 to length(reg.bitFields)-1 do
    begin
      b := reg.bitFields[j];

      if b.mask in [1, 2, 4, 8, 16, 32, 64, 128] then
      begin
        s := IntToStr(round(log2(b.mask))) + '=' + b.aname;
        bitlist.Add(s);
      end
      else // expand mask into several bit definitions
      begin
        bitsInMask := -1;     // identify lowest bit label
        for k := 0 to 7 do
          if ((1 shl k) and b.mask) > 0 then
          begin
            inc(bitsInMask);  // zero based
            s := IntToStr(k) + '=' + b.aname + IntToStr(bitsInMask + b.lsb);
            bitlist.Add(s);
          end;
      end;
    end;

    skippedbit := false;
    setdef := format('  T%sset = bitpacked set of (', [reg.aname]);
    for j := 0 to 7 do
    begin
      s := '';
      sID := '';
      k := bitlist.IndexOfName(IntToStr(j));
      if k > -1 then
      begin
        //setdef := setdef + 'e';  // e prefix = set element prefix
        //s := 'e';
        if skippedbit then
        begin
          skippedbit := false;
          //setdef := setdef + bitlist.ValueFromIndex[k] + '=' +IntToStr(j) + ', '
          s := setPrefix + bitlist.ValueFromIndex[k];
          sID := '=' + IntToStr(j);
        end
        else
          //setdef := setdef + bitlist.ValueFromIndex[k] + ', ';
          s := setPrefix + bitlist.ValueFromIndex[k];

        s := AddUniqueID(s);
        setdef := setdef + s + sID + ', ';
      end
      else // skip missing bit,
      begin
        skippedbit := true;
      end;
    end;

    if setdef <> '' then
    begin
      delete(setdef, length(setdef)-1, 2);
      setdef := setdef + ');';
      typeList.Add(setdef);
    end;

    varList.Add(format('  %sset: T%sset absolute $%.2x;', [reg.aname, reg.aname, reg.address]));
  end;

  if typeList.Count > 0 then
    if typeStr = '' then
      typeStr := TrimRight(typeList.Text)
    else
      typeStr := typeStr + typeList.LineBreak + TrimRight(typeList.Text);

  if varList.Count > 0 then
    if varStr = '' then
      varStr := TrimRight(varList.Text)
    else
      varStr := varStr + varList.LineBreak + TrimRight(varList.Text);

  if constList.Count > 0 then
    if constStr = '' then
      constStr := TrimRight(constList.Text)
    else
      constStr := constStr + constList.LineBreak + TrimRight(constList.Text);

  FreeAndNil(bitList);
  FreeAndNil(constList);
  FreeAndNil(varList);
  FreeAndNil(typeList);
end;

procedure generateDeclarationsOpt2(constref device: TDevice; var List: TStrings);
var
  i, typedefcount: integer;
  sortedRegs: TSortedRegs;
  r: TReg;
  previousVar, previousType: boolean;
  s, sType, sVar, sConst: string;
begin
  IDList := TStringList.Create;
  IDList.CaseSensitive := false;
  typedefcount := 0;
  List.Add('{$bitpacking on}{$packset 1}{$packenum 1}');
  List.Add('type');
  List.Add('  TBitField = 0..1;');

  sortedRegs := sortedRegisters(device);

  previousVar := false;
  previousType := false;
  for i := 0 to length(sortedRegs)-1 do
  begin
    r := sortedRegs[i];
    if r.aname <> '' then
    begin
      sType := '';
      sVar := '';
      sConst := '';
      // First standard declarations so that conventional identifiers are used afap for the plain const names
      generateStandardDeclarationFromRegisterInfo(r, sType, sVar, sConst);
      generateSetDeclarationFromRegisterInfo(r, sType, sVar, sConst);
      generateRecordDeclarationFromRegisterInfo(r, sType, sVar, sConst);

      if (sType <> '') then
      begin
        if not previousType then
        begin
          List.Add('');
          List.Add('type');
          previousVar := false;
          previousType := true;
          Inc(typedefcount);
        end;

        List.Add(sType);
      end;

      if (sVar <> '') then
      begin
        if not previousVar then
        begin
          if not previousType then
            List.Add('');
          List.Add('var');
          previousVar := true;
          previousType := false;
        end;

        List.Add(sVar);
      end;

      if (sConst <> '') then
      begin
        List.Add('const');  // always add const identifier
        previousVar := false;
        previousType := false;
        List.Add(sConst);
      end;
    end
    else
      s := '';

    if s <> '' then
      List.Add(s);
  end;
  List.Add('  // typedefs = ' + IntToStr(typedefcount));
  FreeAndNil(IDList);
end;

procedure generateUnitFromATDFInfo(constref device: TDevice; var SL: TStrings);
var
  jmpInstr: string;  // jmp/rjmp depending on target capability
  startInc: string;  // start.inc/start_noram.inc depending on target RAM
  i: integer;
  pgmsize, sramsize: integer;
  cl, vl: TStringList;
begin
  cl := TStringList.Create;
  vl := TStringList.Create;
  try
    // device capability checks required later on
    pgmsize := 0;
    sramsize := 0;
    i := 0;
    while i < length(device.AddressSpaces) do
    begin
      if device.AddressSpaces[i].aname = 'prog' then
        pgmsize := device.AddressSpaces[i].size;
      if device.AddressSpaces[i].aname = 'data' then
        sramsize := device.AddressSpaces[i].size;

      inc(i);
    end;

    if pgmsize > 8192 then jmpInstr := 'jmp' else jmpInstr := 'rjmp';
    if sramsize > 0 then startInc := 'start' else startInc := 'start_noram';

    SL.Clear;
    SL.Add('unit ' + device.deviceName + ';');
    SL.Add(#13#10'{$goto on}'#13#10'interface'#13#10);

    //generateDeclarationsOpt1(device, SL);
    generateDeclarationsOpt2(device, SL);

    if pgmsize > 8192 then
      SL.Add(#13#10'implementation'#13#10#13#10'{$i avrcommon.inc}'#13#10)
    else
      SL.Add(#13#10'implementation'#13#10'{$define RELBRANCHES}'#13#10'{$i avrcommon.inc}'#13#10);

    for i := 0 to High(device.Interrupts) do
    begin
      if device.Interrupts[i].index <> 0 then
        SL.Add(format('procedure %s_ISR; external name ''%s_ISR''; // Interrupt %d %s',
            [device.Interrupts[i].name, device.Interrupts[i].name,
             device.Interrupts[i].index, device.Interrupts[i].caption]));
    end;

    SL.Add(#13#10'procedure _FPC_start; assembler; nostackframe;'#13#10'label'#13#10'  _start;'#13#10 +
                    'asm'#13#10'  .init'#13#10'  .globl _start'#13#10#13#10'  '+jmpInstr+' _start');

    for i := 0 to High(device.Interrupts) do
      if device.Interrupts[i].index <> 0 then
        SL.Add('  '+jmpInstr+' ' + device.Interrupts[i].name + '_ISR');

    SL.Add(#13#10'  {$i '+startInc+'.inc}'#13#10);
    for i := 0 to High(device.Interrupts) do
      if device.Interrupts[i].index <> 0 then
        SL.Add('  .weak ' + device.Interrupts[i].name + '_ISR');

    SL.Add('');
    for i := 0 to High(device.Interrupts) do
      if device.Interrupts[i].index <> 0 then
        SL.Add('  .set ' + device.Interrupts[i].name + '_ISR' + ', Default_IRQ_handler');

    SL.Add('end;');
    SL.Add('');
    SL.Add('end.');
  finally
    FreeAndNil(cl);
    FreeAndNil(vl);
  end;
end;

end.

