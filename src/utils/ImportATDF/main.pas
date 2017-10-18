unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    ParseMenuItem: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenMenuItem: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ParseMenuItemClick(Sender: TObject);
    procedure OpenMenuItemClick(Sender: TObject);
  private
  public

  end;

var
  Form1: TForm1;
  // Format of an entry:
  // NAME=flashbase,flashsize,srambase,sramsize,eeprombase,eepromsize
  ControllerInfo: TStringList;

procedure ParseFile(FileName: string; SL: TStrings);

implementation

uses
  XMLRead, dom, parsingATDF, generatepascalunit;

{$R *.lfm}

{ TForm1 }

procedure TForm1.OpenMenuItemClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Self.Caption := ExtractFileName(OpenDialog1.FileName);
    ParseFile(OpenDialog1.FileName, Memo1.Lines);
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if (Application.ParamCount > 0) and FileExists(Application.Params[0]) then
  begin
    OpenDialog1.FileName :=  Application.Params[1];
    Self.Caption := ExtractFileName(OpenDialog1.FileName);
    ParseFile(Application.Params[1], Memo1.Lines);
  end;
end;

procedure TForm1.ParseMenuItemClick(Sender: TObject);
var
  info: TSearchRec;
  sourcepath, destpath, s: string;
  SL: TStringList;
begin
  if OpenDialog1.Execute then
  begin
    SL := TStringList.Create;
    ControllerInfo := TStringList.Create;

    sourcepath := IncludeTrailingPathDelimiter(ExtractFileDir(OpenDialog1.FileName));
    destpath := sourcepath + 'pp/';
    if not DirectoryExists(destpath) then
      CreateDir(destpath);

    Memo1.Clear;
    if FindFirst(sourcepath + '*', faNormal, info) = 0 then
    repeat
      // Save empty file so that empty file indicates error during processing
      s := ExtractFileNameWithoutExt(info.Name);
      Memo1.Lines.Add(s);
      Self.Caption := s;
      Application.ProcessMessages;
      s := LowerCase(s);
      SL.Clear;
      SL.SaveToFile(destpath + s + '.pp');
      ParseFile(sourcepath + info.Name, SL);
      SL.SaveToFile(destpath + s + '.pp');
    until FindNext(info) <> 0;
    SL.Free;
    ControllerInfo.SaveToFile(destpath + 'cpuinfo.pas');
    FreeAndNil(ControllerInfo);
  end;
end;

function unpackAddressSpaces(const dev: TDevice): string;
var
  i: integer;
  s1, s2, s3: string;
begin
  for i := 0 to High(dev.AddressSpaces) do
  begin
    if dev.AddressSpaces[i].id = 'prog' then
      s1 := '0,' + IntToStr(dev.AddressSpaces[i].size)
    else if dev.AddressSpaces[i].id = 'data' then
      s2 := '0,' + IntToStr(dev.AddressSpaces[i].size)
    else if dev.AddressSpaces[i].id = 'eeprom' then
      s3 := '0,' + IntToStr(dev.AddressSpaces[i].size);
  end;
  Result := dev.deviceName + ',' +
            dev.architechture + ',' +
            dev.family + ',' +
            s1 + ',' + s2 + ',' + s3;
end;

procedure ParseFile(FileName: string; SL: TStrings);
var
  Doc: TXMLDocument;
  device: TDevice;
  s: string;
begin
  ReadXMLFile(Doc, FileName);
  device := parseDevice(Doc.DocumentElement);
  generateUnitFromATDFInfo(device, SL);

  if Assigned(ControllerInfo) then
  begin
    s := unpackAddressSpaces(device);
    ControllerInfo.Add(s);
  end;
end;

end.
