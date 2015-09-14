unit lab2unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ColorDialog1: TColorDialog;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    PaintBox1: TPaintBox;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;
    TAngle=class
    private
      Value:integer;
      Xpos, Ypos:integer;
      Can:TCanvas;
      ColorDrow:TColor;
    public
      constructor Create(X, Y:integer; NewCanvas:TCanvas);
      procedure SetValue(NewValue:integer);
      procedure Drow;
      procedure SetColor(NewColor:TColor);
      function GetValue:integer;
      function Plus (Increment:integer):integer;
      function Minus (Decrement:integer):integer;
      destructor Destroy; override;
    end;

var
  Form1: TForm1;
  Angle: TAngle;
  //Increment, Decrement: integer;

implementation

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  PaintBox1.Canvas.Clear;
  if Angle = nil then
    begin
      Angle := TAngle.Create(0, 0, PaintBox1.Canvas);
      Angle.Value := strtoint(Edit1.Text);
    end
  else
  begin
    Angle.Value := strtoint(Edit1.Text);
  end;
  Angle.Drow;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Angle.Plus(strtoint(SpinEdit1.Text));
  PaintBox1.Repaint;
  Angle.Drow;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  PaintBox1.Repaint;
  Angle.Drow;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Angle.GetValue <> 0 then
    ShowMessage('Угол равен: ' + inttostr(Angle.GetValue))
  else
    ShowMessage('Угол не задан!') ;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Angle.Destroy;
  Angle:=nil;
  PaintBox1.Repaint;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    begin
      Angle.SetColor(ColorDialog1.Color);
      Angle.Drow;
    end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;


{TAngle class description}

constructor TAngle.Create(X, Y:integer; NewCanvas:TCanvas);
begin
  inherited Create;
  Xpos := X;
  YPos := Y;
  Value := 45;
  Can := NewCanvas;
  ColorDrow := clYellow;
end;

destructor TAngle.Destroy;
begin
  inherited Destroy;
end;

procedure TAngle.SetValue(NewValue:integer);
begin
  Value := NewValue;
  if Value > 360 then
    Value := Value mod 360;
end;
function TAngle.GetValue:integer;
begin
   result:=Value;
end;
procedure TAngle.Drow;
begin
  {Can.Brush.Color:=ColorDrow;
  Can.Pie(Xpos, Ypos, Xpos + 100, Ypos + 100,
    Xpos + 50 + round(50*cos(Value*pi/180)),
    Ypos + 50 + round(50*sin(Value*pi/180)),
    Xpos + 100, Ypos + 50);}
  Can.Brush.Color:=ColorDrow;
  Can.Pie(Xpos, Ypos, Xpos + 100, Ypos + 100,
    Xpos + 50 + round(50*cos(Value*pi/180)),
    Ypos + round(50*sin(Value*pi/180)),
    Xpos + 50, Ypos);
end;
function TAngle.Plus(Increment:integer):integer;
begin
  Value := (Value + Increment) mod 360;
  result := Value;
end;

function TAngle.Minus(Decrement:integer):integer;
begin
  Value := (Value + Decrement) mod 360;
  result := Value;
end;

procedure TAngle.SetColor(NewColor:TColor);
begin
  ColorDrow := NewColor;
end;

{$R *.lfm}

end.

