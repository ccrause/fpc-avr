unit generatepascalunit;

interface

uses
  parsingATDF, classes;

procedure generateUnitFromATDFInfo(constref device: TDevice; var SL: TStrings);

implementation

uses
  sysutils, math;

//procedure generateVarList(constref device: TDevice; var varList: TStrings);
//var
//  i, j, k: integer;
//  iolist: TStringList;
//  reg: TRegister;
//  comment: string;
//  writeComment: boolean;
//begin
//  iolist := TStringList.Create;
//  // Build i/o port list & associated constant definitions
//  for i := 0 to High(device.Modules) do
//  begin
//    for j := 0 to High(device.Modules[i].registerGroups) do
//    begin
//      // Only list modules in data space
//      if device.Modules[i].registerGroups[j].addressSpace <> 'data' then
//        continue;
//
//      comment := '  // '+ device.Modules[i].registerGroups[j].name;
//      writeComment := true;
//      for k := 0 to High(device.Modules[i].registerGroups[j].registers) do
//      begin
//        reg := device.Modules[i].registerGroups[j].registers[k];
//        if iolist.IndexOf(reg.name) > -1 then continue;
//
//        if writeComment then
//        begin
//          varList.Add(comment);
//          writeComment := false;
//        end;
//
//        iolist.Add(reg.name);
//        if device.Modules[i].registerGroups[j].registers[k].size = 1 then
//          varList.Add(format('  %s: byte absolute $%x; // %s',
//                      [reg.name,
//                       reg.offset + device.Modules[i].registerGroups[j].offset,
//                       reg.caption]))
//        else if device.Modules[i].registerGroups[j].registers[k].size = 2 then
//        begin
//          varList.Add(format('  %s: word absolute $%x; // %s',
//                      [reg.name,
//                       reg.offset + device.Modules[i].registerGroups[j].offset,
//                       reg.caption]));
//
//          varList.Add(format('  %sL: byte absolute $%x; // %s',
//                      [reg.name,
//                       reg.offset + device.Modules[i].registerGroups[j].offset,
//                       reg.caption]));
//          varList.Add(format('  %sH: word absolute $%x; // %s',
//                      [reg.name,
//                       reg.offset + device.Modules[i].registerGroups[j].offset + 1,
//                       reg.caption]));
//        end
//        else if device.Modules[i].registerGroups[j].registers[k].size = 4 then
//        begin
//          varList.Add(format('  %s: dword absolute $%x; // %s',
//                      [reg.name,
//                       reg.offset + device.Modules[i].registerGroups[j].offset,
//                       reg.caption]));
//        end
//        else
//          raise Exception.Create(format('Unexpected register size: %d', [reg.size]));
//      end;
//    end;
//  end;
//  FreeAndNil(iolist)
//end;
//
//procedure generateConstList(constref device: TDevice; var constList: TStrings);
//var
//  i, j, k, l, m, bitsInMask, v, errcode: integer;
//  comment: string;
//  reg: TSignal;
//  bitfield: TBitField;
//  printComment: boolean;
//  checkList: TStringList;   // track uniqueness of each const definition
//  prop: TProperty;
//begin
//  checkList := TStringList.Create;
//  // Build i/o port list & associated constant definitions
//  for i := 0 to High(device.Modules) do
//  begin
//    // first generate pin mappings
//    if device.Modules[i].name = 'PORT' then
//      for j := 0 to High(device.Modules[i].registerGroups) do
//      begin
//        constList.Add('  // '+ device.Modules[i].registerGroups[j].name);
//        for k := 0 to High(device.Modules[i].registerGroups[j].signals) do
//        begin
//          reg := device.Modules[i].registerGroups[j].signals[k];
//          if checkList.IndexOf(reg.pad) = -1 then
//          begin
//            constList.Add(format('  %s = %s;',
//                        [reg.pad,
//                         reg.index]));
//            checkList.Add(reg.pad);
//          end;
//        end;
//      end;
//  end;
//
//  // Then register bit mappings
//  for i := 0 to High(device.Modules) do
//  begin
//    if not(device.Modules[i].name = 'PORT') then
//      for j := 0 to High(device.Modules[i].registerGroups) do
//      begin
//        comment := '  // '+ device.Modules[i].registerGroups[j].name;
//
//        for k := 0 to High(device.Modules[i].registerGroups[j].registers) do
//        begin
//          printComment := true;  // New description to potentially print
//          for l := 0 to High(device.Modules[i].registerGroups[j].registers[k].bitFields) do
//          begin
//            bitfield := device.Modules[i].registerGroups[j].registers[k].bitFields[l];
//
//            if checkList.IndexOf(bitfield.name) = -1 then  // unique bitfield name?
//            begin
//              checkList.Add(bitfield.name);
//              if printComment then
//              begin
//                if device.Modules[i].registerGroups[j].addressSpace <> 'data' then
//                  constList.Add(comment + ' - ' + device.Modules[i].registerGroups[j].registers[k].name)
//                else
//                  constList.Add(comment);
//                printComment := false;
//              end;
//
//              // check if single bit value
//              if bitfield.mask in [1, 2, 4, 8, 16, 32, 64, 128] then
//              begin
//                if bitfield.caption = '' then
//                  constList.Add(format('  %s = $%.2x;',
//                                [bitfield.name, bitfield.mask]))
//                else
//                  constList.Add(format('  %s = $%.2x; // %s',
//                                [bitfield.name, bitfield.mask, bitfield.caption]));
//              end
//              else   // multiple bits with same root name, expand
//              begin
              //  bitsInMask := 0;     // identify highest bit label
              //  for m := 7 downto 0 do
              //    if ((1 shl m) and bitfield.mask) > 0 then
              //      inc(bitsInMask);
              //
              //  for m := 7 downto 0 do
              //    if ((1 shl m) and bitfield.mask) > 0 then
              //    begin
              //      dec(bitsInMask);  // zero based
              //      if bitfield.caption = '' then
              //        constList.Add(format('  %s = $%.2x;',
              //          [bitfield.name + IntToStr(bitsInMask + bitfield.lsb), m]))
              //      else
              //        constList.Add(format('  %s = $%.2x; // %s',
              //          [bitfield.name + IntToStr(bitsInMask + bitfield.lsb), m, bitfield.caption]));
              //    end;
              //end;
//            end;
//          end;
//        end;
//      end;
//  end;
//
//  // Property group values
//  for i := 0 to High(device.PropertyGroups) do
//  begin
//    comment := device.PropertyGroups[i].name;
//    if comment <> '' then
//    begin
//      printComment := true;
//      comment := '  // ' + comment;
//    end
//    else
//      printComment := false;
//
//    for j := 0 to High(device.PropertyGroups[i].properties) do
//    begin
//      prop := device.PropertyGroups[i].properties[j];
//      if checkList.IndexOf(prop.name) = -1 then
//      begin
//        checkList.Add(prop.name);
//        Val(prop.value, v, errcode);
//        if printComment then
//        begin
//          printComment := false;
//          constList.Add(comment);
//        end;
//
//        if errcode = 0 then
//          constList.Add(format('  %s = $%.2x;', [prop.name, v]))
//        else
//        begin
//          // Could be something like: value="0x0E 0x1E 0x0F ...
//          // Convert to array if so
//          if pos(' ', prop.value) <> 0 then
//          begin
//            comment := StringReplace(prop.value, ' ', ', ', [rfReplaceAll]);
//            comment := '[' + StringReplace(comment, '0x', '$', [rfReplaceAll]) + ']';
//            constList.Add(format('  %s = %s;', [prop.name, comment]));
//          end;
//        end;
//
//      end;
//    end;
//  end;
//
//  FreeAndNil(checkList);
//end;

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
  while (i < len-1) and (trunc(log2(source.mask)) >= trunc(log2(dest[i].mask))) do
    inc(i);

  // Potentially just after previous duplicate
  if (i > 0) and (source.aname = dest[i-1].aname) then
    exit;

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
  i, j, k, l, reg_offset, reg_size, len: integer;
  reg: ^TReg;
  prg: PPeriphRegGroup;
  portChar: char;
begin
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
              insertBitfield(device.Modules[i].registerGroups[j].registers[k].bitFields[l], Result[reg_offset].bitFields);
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
end;

procedure generateDeclarations(constref device: TDevice; var List: TStrings);
var
  i, j, k, bitsInMask: integer;
  sortedRegs: TSortedRegs;
  r: TReg;
  b: TBitField;
  previousVar: boolean;
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

      if r.size = 1 then
        List.Add(format('  %s: byte absolute $%.2x;', [r.aname, r.address]))
      else if r.size = 2 then
      begin
        List.Add(format('  %s: word absolute $%.2x;', [r.aname, r.address]));
        List.Add(format('  %sL: byte absolute $%.2x;', [r.aname, r.address]));
        List.Add(format('  %sH: byte absolute $%.2x;', [r.aname, r.address+1]));
      end
      else if r.size = 4 then
      begin
        List.Add(format('  %s: dword absolute $%.2x;', [r.aname, r.address]));
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
              List.Add(format('  %s = $%.2x; // %s',
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
                  List.Add(format('  %s = $%.2x; // %s',
                    [r.bitFields[j].aname + IntToStr(bitsInMask + r.bitFields[j].lsb), k, r.bitFields[j].caption]));
              end;
          end;
        end;
        List.Add('');
      end;
    end;
  end;
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
    SL.Add(#13#10'{$goto on}'#10#13'interface'#10#13);

    generateDeclarations(device, SL);

    SL.Add(#13#10'implementation'#13#10#13#10'{$i avrcommon.inc}'#13#10);

    for i := 0 to High(device.Interrupts) do
    begin
      if device.Interrupts[i].index <> 0 then
        SL.Add(format('procedure %s_ISR; external name ''%s_ISR''; // Interrupt %d %s',
            [device.Interrupts[i].name, device.Interrupts[i].name,
             device.Interrupts[i].index, device.Interrupts[i].caption]));
    end;

    SL.Add(#13#10'procedure _FPC_start; assembler; nostackframe;'#13#10'label'#13#10'  _start'#13#10 +
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

