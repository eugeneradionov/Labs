unit CalcUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure Bevel3ChangeBounds(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  Code:integer;
  N:real;
  R:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Code:=(Sender as TMenuItem).Tag;
  N:=strtofloat(Edit1.Text);
  Edit1.Text:='';
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'1';
end;

procedure TForm1.Button20Click(Sender: TObject);
var a:real;
begin
  a:=strtofloat(Edit1.Text);
  a:=ln(a);
  Edit1.Text:=floattostr(a);
  R:='Last result is: '+ floattostr(a);
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  Edit1.Text:=copy(Edit1.Text,0,length(Edit1.Text)-1);
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Edit1.Text:='';
  Code:=0;
  N:=0;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  Showmessage(R);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'0';
end;

procedure TForm1.Bevel3ChangeBounds(Sender: TObject);
begin
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  if Pos('.',Edit1.Text)=0 then
  Edit1.Text:=Edit1.Text+'.';
end;

procedure TForm1.Button12Click(Sender: TObject);
var a:real;
begin
  a:=strtofloat(Edit1.Text);
  a:=-a;
  Edit1.Text:=floattostr(a);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Code:=(Sender as Tbutton).Tag;
  N:=strtofloat(Edit1.Text);
  Edit1.Text:='';
end;

procedure TForm1.Button17Click(Sender: TObject);
var a,Ans:real;
begin
  a:=strtofloat(Edit1.Text);
  case Code of
    11:Ans:=N+a;
    12:Ans:=N-a;
    13:Ans:=N/a;
    14:Ans:=N*a;
    15:Ans:=Round(N) div round(a);
   end;
  Edit1.Text:=floattostr(Ans);
  R:='Last result is: '+floattostr(Ans)
end;

procedure TForm1.Button18Click(Sender: TObject);
var a:real;
begin
  a:=strtofloat(Edit1.Text);
  a:=sin(a);
  Edit1.Text:=floattostr(a);
  R:='Last result is: '+floattostr(a);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + 'div';
end;

procedure TForm1.Button2Click(Sender: TObject);
var a:string;
begin
  a:=inttostr((sender as TButton).Tag);
  Edit1.Text:=Edit1.Text+a;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'9';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
var a:real;
begin
   a:=strtofloat(Edit1.Text);
   a:=sin(a);
   Edit1.Text:=floattostr(a);
   R:='Last result is: '+floattostr(a);
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + 'div';
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
var a:real;
begin
  a:=strtofloat(Edit1.Text);
    a:=ln(a);
    Edit1.Text:=floattostr(a);
    R:='Last result is: '+ floattostr(a);
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Showmessage('Created by Eugene Radionov');
end;
end.

