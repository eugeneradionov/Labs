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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var T:real;
    x,y,z:integer;
begin
  x:=strtoint(edit1.Text);
  y:=strtoint(edit2.Text);
  z:=strtoint(edit3.Text);
  if z<>1 then
  begin
    T:=(x+(sin(y)/cos(y)))/(1-z);
    edit4.Text:=floattostr(T);
  end
  else showmessage('Incorrect z, please try again');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Close;
end;

end.

