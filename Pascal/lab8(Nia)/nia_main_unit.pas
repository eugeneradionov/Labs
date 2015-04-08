unit Nia_main_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus;

type

  { TNiaForm }

  TNiaForm = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    File1: TMenuItem;
    Edit: TMenuItem;
    FontChoices: TMenuItem;
    About: TMenuItem;
    MenuItem2: TMenuItem;
    Help: TMenuItem;
    OpenDialog1: TOpenDialog;
    ReadOnly: TMenuItem;
    Open: TMenuItem;
    Save: TMenuItem;
    MenuItem6: TMenuItem;
    Quit: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure AboutClick(Sender: TObject);
    procedure FontChoicesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure OpenDialog1FolderChange(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure ReadOnlyClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  NiaForm: TNiaForm;
  a:string;
  ButtonSelected:integer;

implementation

{$R *.lfm}

{ TNiaForm }

procedure TNiaForm.Memo1Change(Sender: TObject);
begin

end;

procedure TNiaForm.MenuItem2Click(Sender: TObject);
begin
  if Memo1.WordWrap=True then
  Memo1.WordWrap:=False
  else Memo1.WordWrap:=True
end;

procedure TNiaForm.MenuItem6Click(Sender: TObject);
begin
   if SaveDialog1.Execute=True then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    a:=SaveDialog1.FileName;
  end;
end;

procedure TNiaForm.OpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute=True then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TNiaForm.OpenDialog1FolderChange(Sender: TObject);
begin

end;

procedure TNiaForm.AboutClick(Sender: TObject);
begin
  MessageDlg('Created by Eugene Radionov 2015',mtInformation,[mbOK],0);
end;

procedure TNiaForm.FontChoicesClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    Memo1.Font:=FontDialog1.Font;
end;

procedure TNiaForm.FormCreate(Sender: TObject);
begin
  Memo1.Text:='';
end;

procedure TNiaForm.QuitClick(Sender: TObject);
begin
ButtonSelected:=MessageDlg('Do you want to save a changes',mtWarning,[mbYes,mbNo,mbCancel],0);
if ButtonSelected=mrYes
 then
   begin
     if a<>'' then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    a:=SaveDialog1.FileName;
  end
else
begin
  if SaveDialog1.Execute=True then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    a:=SaveDialog1.FileName;
  end;
end;
   end;
if ButtonSelected=mrNo then
  begin
     NiaForm.Close;
  end;
end;

procedure TNiaForm.ReadOnlyClick(Sender: TObject);
begin
  if Memo1.ReadOnly=False then Memo1.ReadOnly:=True
  else Memo1.ReadOnly:=False;
end;

procedure TNiaForm.SaveClick(Sender: TObject);
begin
  if a<>'' then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    a:=SaveDialog1.FileName;
  end
else
begin
  if SaveDialog1.Execute=True then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    a:=SaveDialog1.FileName;
  end;
end;
end;
end.

