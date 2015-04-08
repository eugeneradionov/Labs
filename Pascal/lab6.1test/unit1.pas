unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var f:integer;
begin
  Showmessage('Hello World');

  f:=strtoint(edit1.Text);
  f:=f+29;
  edit1.Text:=inttostr(f);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

