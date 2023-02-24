unit Object_3D;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, math;

Type
  { TForm1 }

  TForm1 = class(TForm)
    ButtonGambar: TButton;
    ButtonHapus: TButton;
    ButtonKeluar: TButton;
    ButtonTranslasi: TButton;
    ButtonScalling: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    EditX1: TEdit;
    EditX4: TEdit;
    EditY4: TEdit;
    EditZ4: TEdit;
    EditX5: TEdit;
    EditY5: TEdit;
    EditZ5: TEdit;
    EditX6: TEdit;
    EditY6: TEdit;
    EditZ6: TEdit;
    EditX7: TEdit;
    EditY1: TEdit;
    EditY7: TEdit;
    EditZ7: TEdit;
    EditX8: TEdit;
    EditY8: TEdit;
    EditZ8: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    EditZ1: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    EditX2: TEdit;
    EditY2: TEdit;
    EditZ2: TEdit;
    EditX3: TEdit;
    EditY3: TEdit;
    EditZ3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioGroup1: TRadioGroup;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    procedure Button6Click(Sender: TObject);
    procedure ButtonGambarClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonKeluarClick(Sender: TObject);
    procedure ButtonScallingClick(Sender: TObject);
    procedure ButtonTranslasiClick(Sender: TObject);
    procedure Edit28Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

var
  X1,X2,X3,X4,X5,X6,X7,X8 : integer;
  Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8 : integer;
  Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8 : integer;
  Xp1,Xp2,Xp3,Xp4,Xp5,Xp6,Xp7,Xp8 : integer;
  Yp1,Yp2,Yp3,Yp4,Yp5,Yp6,Yp7,Yp8 : integer;
  lebar, tinggi : integer;
  barisP, kolomP : integer;
  Alpha, Psi, M : integer;
  L1 : Double;

procedure TForm1.FormShow(Sender: TObject);
begin
  tinggi := image1.Height;
  lebar := image1.Width;
  barisP := tinggi div 2;
  kolomP := lebar div 2;
  buttonHapusClick(NIL);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Label31.caption := IntToStr(trackbar1.position);
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  Label32.caption := IntToStr(Trackbar2.Position);
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
  Label33.Caption := IntToStr(Trackbar3.Position);
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
begin
  image1.Canvas.Pen.Color := clWhite;
  image1.Canvas.Pen.Style := psSolid;
  image1.Canvas.Brush.Color := clWhite;
  image1.Canvas.Brush.Style := bsSolid;
  image1.Canvas.Rectangle(0,0,lebar,tinggi);

  image1.Canvas.Pen.Color := clRed;
  image1.Canvas.Pen.Style := psDot;
  image1.Canvas.MoveTo(kolomP,0);
  image1.Canvas.LineTo(KolomP,tinggi);
  image1.Canvas.MoveTo(0,barisP);
  image1.Canvas.LineTo(lebar,barisP);
end;

procedure TForm1.ButtonKeluarClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonScallingClick(Sender: TObject);
var
  Sx1, Sx2, Sx3, Sx4, Sx5, Sx6, Sx7, Sx8 : integer;
  Sy1, Sy2, Sy3, Sy4, Sy5, Sy6, Sy7, Sy8 : integer;
  Sz1, Sz2, Sz3, Sz4, Sz5, Sz6, Sz7, Sz8 : integer;
  Sx, Sy, Sz : double;
begin
  ButtonHapusClick(NIL);

  X1 := StrToInt(EditX1.Text);
  X2 := StrToInt(EditX2.Text);
  X3 := StrToInt(EditX3.Text);
  X4 := StrToInt(EditX4.Text);
  X5 := StrToInt(EditX5.Text);
  X6 := StrToInt(EditX6.Text);
  X7 := StrToInt(EditX7.Text);
  X8 := StrToInt(EditX8.Text);
  Y1 := StrToInt(EditY1.Text);
  Y2 := StrToInt(EditY2.Text);
  Y3 := StrToInt(EditY3.Text);
  Y4 := StrToInt(EditY4.Text);
  Y5 := StrToInt(EditY5.Text);
  Y6 := StrToInt(EditY6.Text);
  Y7 := StrToInt(EditY7.Text);
  Y8 := StrToInt(EditY8.Text);
  Z1 := StrToInt(EditZ1.Text);
  Z2 := StrToInt(EditZ2.Text);
  Z3 := StrToInt(EditZ3.Text);
  Z4 := StrToInt(EditZ4.Text);
  Z5 := StrToInt(EditZ5.Text);
  Z6 := StrToInt(EditZ6.Text);
  Z7 := StrToInt(EditZ7.Text);
  Z8 := StrToInt(EditZ8.Text);
  Sx := StrToFloat(Edit28.Text);
  Sy := StrToFloat(Edit29.Text);
  Sz := StrToFloat(Edit30.Text);

  Sx1 := Round(X1*Sx);
  Sx2 := Round(X2*Sx);
  Sx3 := Round(X3*Sx);
  Sx4 := Round(X4*Sx);
  Sx5 := Round(X5*Sx);
  Sx6 := Round(X6*Sx);
  Sx7 := Round(X7*Sx);
  Sx8 := Round(X8*Sx);
  Sy1 := Round(Y1*Sy);
  Sy2 := Round(Y2*Sy);
  Sy3 := Round(Y3*Sy);
  Sy4 := Round(Y4*Sy);
  Sy5 := Round(Y5*Sy);
  Sy6 := Round(Y6*Sy);
  Sy7 := Round(Y7*Sy);
  Sy8 := Round(Y8*Sy);
  Sz1 := Round(Z1*Sz);
  Sz2 := Round(Z2*Sz);
  Sz3 := Round(Z3*Sz);
  Sz4 := Round(Z4*Sz);
  Sz5 := Round(Z5*Sz);
  Sz6 := Round(Z6*Sz);
  Sz7 := Round(Z7*Sz);
  Sz8 := Round(Z8*Sz);

  M := Trackbar1.Position;
  Alpha := Trackbar2.Position;
  Psi := Trackbar3.Position;

  if RadioButton4.Checked = True then
  begin
    L1 := Round(1 / Tan(Alpha*pi/180));

    Xp1 := Round(SX1 + SZ1 * L1 * cos(Psi*pi/180));
    Xp2 := Round(SX2 + SZ2 * L1 * cos(Psi*pi/180));
    Xp3 := Round(SX3 + SZ3 * L1 * cos(Psi*pi/180));
    Xp4 := Round(SX4 + SZ4 * L1 * cos(Psi*pi/180));
    Xp5 := Round(SX5 + SZ5 * L1 * cos(Psi*pi/180));
    Xp6 := Round(SX6 + SZ6 * L1 * cos(Psi*pi/180));
    Xp7 := Round(SX7 + SZ7 * L1 * cos(Psi*pi/180));
    Xp8 := Round(SX8 + SZ8 * L1 * cos(Psi*pi/180));
    Yp1 := Round(SY1 + SZ1 * L1 * Sin(Psi*pi/180));
    Yp2 := Round(SY2 + SZ2 * L1 * Sin(Psi*pi/180));
    Yp3 := Round(SY3 + SZ3 * L1 * Sin(Psi*pi/180));
    Yp4 := Round(SY4 + SZ4 * L1 * Sin(Psi*pi/180));
    Yp5 := Round(SY5 + SZ5 * L1 * Sin(Psi*pi/180));
    Yp6 := Round(SY6 + SZ6 * L1 * Sin(Psi*pi/180));
    Yp7 := Round(SY7 + SZ7 * L1 * Sin(Psi*pi/180));
    Yp8 := Round(SY8 + SZ8 * L1 * Sin(Psi*pi/180));
  end;

  if RadioButton5.Checked = True then
  begin
    Xp1 := Round(SX1/1-SZ1/(M*pi/180));
    Xp2 := Round(SX2/1-SZ2/(M*pi/180));
    Xp3 := Round(SX3/1-SZ3/(M*pi/180));
    Xp4 := Round(SX4/1-SZ4/(M*pi/180));
    Xp5 := Round(SX5/1-SZ5/(M*pi/180));
    Xp6 := Round(SX6/1-SZ6/(M*pi/180));
    Xp7 := Round(SX7/1-SZ7/(M*pi/180));
    Xp8 := Round(SX8/1-SZ8/(M*pi/180));
    Yp1 := Round(SY1/1-SZ1/(M*pi/180));
    Yp2 := Round(SY2/1-SZ2/(M*pi/180));
    Yp3 := Round(SY3/1-SZ3/(M*pi/180));
    Yp4 := Round(SY4/1-SZ4/(M*pi/180));
    Yp5 := Round(SY5/1-SZ5/(M*pi/180));
    Yp6 := Round(SY6/1-SZ6/(M*pi/180));
    Yp7 := Round(SY7/1-SZ7/(M*pi/180));
    Yp8 := Round(SY8/1-SZ8/(M*pi/180));
  end;

  image1.Canvas.Pen.Color := clBlack;
  image1.Canvas.Pen.Style := psSolid;

  if CheckBox2.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    Image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox3.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox4.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox5.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox6.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox7.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox8.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox9.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox11.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox12.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox13.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox14.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox15.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox16.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox17.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3, BarisP-Yp3);
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox18.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox20.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp4,BarisP-Yp4);
  end;

  if CheckBox21.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp5,BarisP-Yp5);
  end;

    if CheckBox22.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp6,BarisP-Yp6);
  end;

  if CheckBox23.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox24.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp8,BarisP-Yp8);
  end;

  if CheckBox25.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox26.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox27.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox29.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox30.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox31.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox32.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox33.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox34.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox35.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox36.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox38.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox39.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox40.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox41.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox42.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox43.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox44.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox45.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox47.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox48.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox49.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox50.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox51.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox52.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox53.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox54.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox56.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox57.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox58.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox59.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox60.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox61.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox62.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox63.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8,BarisP-Yp8);
    image1.Canvas.LineTO(KolomP+Xp7,BarisP-Yp7);
  end;
end;

procedure TForm1.ButtonTranslasiClick(Sender: TObject);
Var
  Tx1, Tx2, Tx3, Tx4, Tx5, Tx6, Tx7, Tx8 : integer;
  Ty1, Ty2, Ty3, Ty4, Ty5, Ty6, Ty7, Ty8 : integer;
  Tz1, Tz2, Tz3, TZ4, Tz5, Tz6, Tz7, Tz8 : integer;
  Tx, Ty, Tz : integer;
begin
  ButtonHapusClick(NIL);

  X1 := StrToInt(EditX1.Text);
  X2 := StrToInt(EditX2.Text);
  X3 := StrToInt(EditX3.Text);
  X4 := StrToInt(EditX4.Text);
  X5 := StrToInt(EditX5.Text);
  X6 := StrToInt(EditX6.Text);
  X7 := StrToInt(EditX7.Text);
  X8 := StrToInt(EditX8.Text);
  Y1 := StrToInt(EditY1.Text);
  Y2 := StrToInt(EditY2.Text);
  Y3 := StrToInt(EditY3.Text);
  Y4 := StrToInt(EditY4.Text);
  Y5 := StrToInt(EditY5.Text);
  Y6 := StrToInt(EditY6.Text);
  Y7 := StrToInt(EditY7.Text);
  Y8 := StrToInt(EditY8.Text);
  Z1 := StrToInt(EditZ1.Text);
  Z2 := StrToInt(EditZ2.Text);
  Z3 := StrToInt(EditZ3.Text);
  Z4 := StrToInt(EditZ4.Text);
  Z5 := StrToInt(EditZ5.Text);
  Z6 := StrToInt(EditZ6.Text);
  Z7 := StrToInt(EditZ7.Text);
  Z8 := StrToInt(EditZ8.Text);
  Tx := StrToInt(Edit25.Text);
  Ty := StrToInt(Edit26.Text);
  Tz := StrToInt(Edit27.Text);

  Tx1 := X1 + Tx;
  Tx2 := X2 + Tx;
  Tx3 := X3 + Tx;
  Tx4 := X4 + Tx;
  Tx5 := X5 + Tx;
  Tx6 := X6 + Tx;
  Tx7 := X7 + Tx;
  Tx8 := X8 + Tx;
  Ty1 := Y1 + Ty;
  Ty2 := Y2 + Ty;
  Ty3 := Y3 + Ty;
  Ty4 := Y4 + Ty;
  Ty5 := Y5 + Ty;
  Ty6 := Y6 + Ty;
  Ty7 := Y7 + Ty;
  Ty8 := Y8 + Ty;
  Tz1 := Z1 + Tz;
  Tz2 := Z2 + Tz;
  Tz3 := Z3 + Tz;
  Tz4 := Z4 + Tz;
  Tz5 := Z5 + Tz;
  Tz6 := Z6 + Tz;
  Tz7 := Z7 + Tz;
  Tz8 := Z8 + Tz;

  M := Trackbar1.Position;
  Alpha := Trackbar2.Position;
  Psi := Trackbar3.Position;

  if RadioButton4.Checked = True then
  begin
    L1 := Round(1 / Tan(Alpha*pi/180));

    Xp1 := Round(TX1 + TZ1 * L1 * cos(Psi*pi/180));
    Xp2 := Round(TX2 + TZ2 * L1 * cos(Psi*pi/180));
    Xp3 := Round(TX3 + TZ3 * L1 * cos(Psi*pi/180));
    Xp4 := Round(TX4 + TZ4 * L1 * cos(Psi*pi/180));
    Xp5 := Round(TX5 + TZ5 * L1 * cos(Psi*pi/180));
    Xp6 := Round(TX6 + TZ6 * L1 * cos(Psi*pi/180));
    Xp7 := Round(TX7 + TZ7 * L1 * cos(Psi*pi/180));
    Xp8 := Round(TX8 + TZ8 * L1 * cos(Psi*pi/180));
    Yp1 := Round(TY1 + TZ1 * L1 * Sin(Psi*pi/180));
    Yp2 := Round(TY2 + TZ2 * L1 * Sin(Psi*pi/180));
    Yp3 := Round(TY3 + TZ3 * L1 * Sin(Psi*pi/180));
    Yp4 := Round(TY4 + TZ4 * L1 * Sin(Psi*pi/180));
    Yp5 := Round(TY5 + TZ5 * L1 * Sin(Psi*pi/180));
    Yp6 := Round(TY6 + TZ6 * L1 * Sin(Psi*pi/180));
    Yp7 := Round(TY7 + TZ7 * L1 * Sin(Psi*pi/180));
    Yp8 := Round(TY8 + TZ8 * L1 * Sin(Psi*pi/180));
  end;

  if RadioButton5.Checked = True then
  begin
    Xp1 := Round(TX1/1-TZ1/(M*pi/180));
    Xp2 := Round(TX2/1-TZ2/(M*pi/180));
    Xp3 := Round(TX3/1-TZ3/(M*pi/180));
    Xp4 := Round(TX4/1-TZ4/(M*pi/180));
    Xp5 := Round(TX5/1-TZ5/(M*pi/180));
    Xp6 := Round(TX6/1-TZ6/(M*pi/180));
    Xp7 := Round(TX7/1-TZ7/(M*pi/180));
    Xp8 := Round(TX8/1-TZ8/(M*pi/180));
    Yp1 := Round(TY1/1-TZ1/(M*pi/180));
    Yp2 := Round(TY2/1-TZ2/(M*pi/180));
    Yp3 := Round(TY3/1-TZ3/(M*pi/180));
    Yp4 := Round(TY4/1-TZ4/(M*pi/180));
    Yp5 := Round(TY5/1-TZ5/(M*pi/180));
    Yp6 := Round(TY6/1-TZ6/(M*pi/180));
    Yp7 := Round(TY7/1-TZ7/(M*pi/180));
    Yp8 := Round(TY8/1-TZ8/(M*pi/180));
  end;

  image1.Canvas.Pen.Color := clBlack;
  image1.Canvas.Pen.Style := psSolid;

  if CheckBox2.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    Image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox3.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox4.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox5.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox6.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox7.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox8.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox9.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox11.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox12.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox13.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox14.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox15.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox16.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox17.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3, BarisP-Yp3);
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox18.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox20.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp4,BarisP-Yp4);
  end;

  if CheckBox21.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp5,BarisP-Yp5);
  end;

    if CheckBox22.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp6,BarisP-Yp6);
  end;

  if CheckBox23.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox24.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp8,BarisP-Yp8);
  end;

  if CheckBox25.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox26.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox27.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox29.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox30.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox31.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox32.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox33.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox34.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox35.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox36.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox38.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox39.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox40.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox41.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox42.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox43.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox44.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox45.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox47.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox48.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox49.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox50.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox51.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox52.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox53.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox54.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox56.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox57.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox58.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox59.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox60.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox61.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox62.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox63.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8,BarisP-Yp8);
    image1.Canvas.LineTO(KolomP+Xp7,BarisP-Yp7);
  end;
end;

procedure TForm1.Edit28Change(Sender: TObject);
begin

end;

procedure TForm1.ButtonGambarClick(Sender: TObject);
begin
  X1 := StrToInt(EditX1.Text);
  X2 := StrToInt(EditX2.Text);
  X3 := StrToInt(EditX3.Text);
  X4 := StrToInt(EditX4.Text);
  X5 := StrToInt(EditX5.Text);
  X6 := StrToInt(EditX6.Text);
  X7 := StrToInt(EditX7.Text);
  X8 := StrToInt(EditX8.Text);
  Y1 := StrToInt(EditY1.Text);
  Y2 := StrToInt(EditY2.Text);
  Y3 := StrToInt(EditY3.Text);
  Y4 := StrToInt(EditY4.Text);
  Y5 := StrToInt(EditY5.Text);
  Y6 := StrToInt(EditY6.Text);
  Y7 := StrToInt(EditY7.Text);
  Y8 := StrToInt(EditY8.Text);
  Z1 := StrToInt(EditZ1.Text);
  Z2 := StrToInt(EditZ2.Text);
  Z3 := StrToInt(EditZ3.Text);
  Z4 := StrToInt(EditZ4.Text);
  Z5 := StrToInt(EditZ5.Text);
  Z6 := StrToInt(EditZ6.Text);
  Z7 := StrToInt(EditZ7.Text);
  Z8 := StrToInt(EditZ8.Text);

  M := Trackbar1.Position;
  Alpha := Trackbar2.Position;
  Psi := Trackbar3.Position;

  if RadioButton4.Checked = True then
  begin
    L1 := Round(1 / Tan(Alpha*pi/180));

    Xp1 := Round(X1 + Z1 * L1 * cos(Psi*pi/180));
    Xp2 := Round(X2 + Z2 * L1 * cos(Psi*pi/180));
    Xp3 := Round(X3 + Z3 * L1 * cos(Psi*pi/180));
    Xp4 := Round(X4 + Z4 * L1 * cos(Psi*pi/180));
    Xp5 := Round(X5 + Z5 * L1 * cos(Psi*pi/180));
    Xp6 := Round(X6 + Z6 * L1 * cos(Psi*pi/180));
    Xp7 := Round(X7 + Z7 * L1 * cos(Psi*pi/180));
    Xp8 := Round(X8 + Z8 * L1 * cos(Psi*pi/180));
    Yp1 := Round(Y1 + Z1 * L1 * Sin(Psi*pi/180));
    Yp2 := Round(Y2 + Z2 * L1 * Sin(Psi*pi/180));
    Yp3 := Round(Y3 + Z3 * L1 * Sin(Psi*pi/180));
    Yp4 := Round(Y4 + Z4 * L1 * Sin(Psi*pi/180));
    Yp5 := Round(Y5 + Z5 * L1 * Sin(Psi*pi/180));
    Yp6 := Round(Y6 + Z6 * L1 * Sin(Psi*pi/180));
    Yp7 := Round(Y7 + Z7 * L1 * Sin(Psi*pi/180));
    Yp8 := Round(Y8 + Z8 * L1 * Sin(Psi*pi/180));
  end;
  if RadioButton5.Checked = True then
  begin
    Xp1 := Round(X1/1-Z1/(M*pi/180));
    Xp2 := Round(X2/1-Z2/(M*pi/180));
    Xp3 := Round(X3/1-Z3/(M*pi/180));
    Xp4 := Round(X4/1-Z4/(M*pi/180));
    Xp5 := Round(X5/1-Z5/(M*pi/180));
    Xp6 := Round(X6/1-Z6/(M*pi/180));
    Xp7 := Round(X7/1-Z7/(M*pi/180));
    Xp8 := Round(X8/1-Z8/(M*pi/180));
    Yp1 := Round(Y1/1-Z1/(M*pi/180));
    Yp2 := Round(Y2/1-Z2/(M*pi/180));
    Yp3 := Round(Y3/1-Z3/(M*pi/180));
    Yp4 := Round(Y4/1-Z4/(M*pi/180));
    Yp5 := Round(Y5/1-Z5/(M*pi/180));
    Yp6 := Round(Y6/1-Z6/(M*pi/180));
    Yp7 := Round(Y7/1-Z7/(M*pi/180));
    Yp8 := Round(Y8/1-Z8/(M*pi/180));
  end;
  image1.Canvas.Pen.Color := clBlack;
  image1.Canvas.Pen.Style := psSolid;

  if CheckBox2.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    Image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox3.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox4.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox5.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox6.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox7.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox8.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox9.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox11.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox12.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox13.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox14.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox15.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox16.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox17.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3, BarisP-Yp3);
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox18.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox20.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp4,BarisP-Yp4);
  end;

  if CheckBox21.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp5,BarisP-Yp5);
  end;

    if CheckBox22.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp6,BarisP-Yp6);
  end;

  if CheckBox23.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox24.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp8,BarisP-Yp8);
  end;

  if CheckBox25.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox26.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox27.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox29.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox30.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox31.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox32.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox33.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox34.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox35.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox36.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox38.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox39.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox40.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox41.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox42.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox43.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox44.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox45.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox47.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox48.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox49.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox50.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox51.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox52.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox53.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox54.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox56.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox57.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox58.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox59.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox60.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox61.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox62.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox63.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8,BarisP-Yp8);
    image1.Canvas.LineTO(KolomP+Xp7,BarisP-Yp7);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Derajat : Double;
  Rx1, Rx2, Rx3, Rx4, Rx5, Rx6, Rx7, Rx8 : Double;
  Ry1, Ry2, Ry3, Ry4, Ry5, Ry6, Ry7, Ry8 : Double;
  Rz1, Rz2, Rz3, Rz4, Rz5, Rz6, Rz7, Rz8 : Double;
  L1 : Integer;
begin
  ButtonHapusClick(NIL);
  X1 := StrToInt(EditX1.Text);
  X2 := StrToInt(EditX2.Text);
  X3 := StrToInt(EditX3.Text);
  X4 := StrToInt(EditX4.Text);
  X5 := StrToInt(EditX5.Text);
  X6 := StrToInt(EditX6.Text);
  X7 := StrToInt(EditX7.Text);
  X8 := StrToInt(EditX8.Text);
  Y1 := StrToInt(EditY1.Text);
  Y2 := StrToInt(EditY2.Text);
  Y3 := StrToInt(EditY3.Text);
  Y4 := StrToInt(EditY4.Text);
  Y5 := StrToInt(EditY5.Text);
  Y6 := StrToInt(EditY6.Text);
  Y7 := StrToInt(EditY7.Text);
  Y8 := StrToInt(EditY8.Text);
  Z1 := StrToInt(EditZ1.Text);
  Z2 := StrToInt(EditZ2.Text);
  Z3 := StrToInt(EditZ3.Text);
  Z4 := StrToInt(EditZ4.Text);
  Z5 := StrToInt(EditZ5.Text);
  Z6 := StrToInt(EditZ6.Text);
  Z7 := StrToInt(EditZ7.Text);
  Z8 := StrToInt(EditZ8.Text);

  Derajat := StrToFloat(Edit31.Text);

  M := Trackbar1.Position;
  Alpha := Trackbar2.Position;
  Psi := Trackbar3.Position;

  Derajat := Derajat*pi/180;

  if RadioButton1.Checked = True then
  begin
    RX1 := X1;
    RX2 := X2;
    RX3 := X3;
    RX4 := X4;
    RX5 := X5;
    RX6 := X6;
    RX7 := X7;
    RX8 := X8;
    RY1 := Y1*Cos(Derajat) - Z1*Sin(Derajat);
    RY2 := Y2*Cos(Derajat) - Z2*Sin(Derajat);
    RY3 := Y3*Cos(Derajat) - Z3*Sin(Derajat);
    RY4 := Y4*Cos(Derajat) - Z4*Sin(Derajat);
    RY5 := Y5*Cos(Derajat) - Z5*Sin(Derajat);
    RY6 := Y6*Cos(Derajat) - Z6*Sin(Derajat);
    RY7 := Y7*Cos(Derajat) - Z7*Sin(Derajat);
    RY8 := Y8*Cos(Derajat) - Z8*Sin(Derajat);
    RZ1 := Y1*Sin(Derajat) + Z1*Cos(Derajat);
    RZ2 := Y2*Sin(Derajat) + Z2*Cos(Derajat);
    RZ3 := Y3*Sin(Derajat) + Z3*Cos(Derajat);
    RZ4 := Y4*Sin(Derajat) + Z4*Cos(Derajat);
    RZ5 := Y5*Sin(Derajat) + Z5*Cos(Derajat);
    RZ6 := Y6*Sin(Derajat) + Z6*Cos(Derajat);
    RZ7 := Y7*Sin(Derajat) + Z7*Cos(Derajat);
    RZ8 := Y8*Sin(Derajat) + Z8*Cos(Derajat);
  end;

  if RadioButton2.Checked = True then
  begin
    RY1 := Y1;
    RY2 := Y2;
    RY3 := Y3;
    RY4 := Y4;
    RY5 := Y5;
    RY6 := Y6;
    RY7 := Y7;
    RY8 := Y8;
    RX1 := X1*Cos(Derajat) - Z1*Sin(Derajat);
    RX2 := X2*Cos(Derajat) - Z2*Sin(Derajat);
    RX3 := X3*Cos(Derajat) - Z3*Sin(Derajat);
    RX4 := X4*Cos(Derajat) - Z4*Sin(Derajat);
    RX5 := X5*Cos(Derajat) - Z5*Sin(Derajat);
    RX6 := X6*Cos(Derajat) - Z6*Sin(Derajat);
    RX7 := X7*Cos(Derajat) - Z7*Sin(Derajat);
    RX8 := X8*Cos(Derajat) - Z8*Sin(Derajat);
    RZ1 := X1*Sin(Derajat) + Z1*Cos(Derajat);
    RZ2 := X2*Sin(Derajat) + Z2*Cos(Derajat);
    RZ3 := X3*Sin(Derajat) + Z3*Cos(Derajat);
    RZ4 := X4*Sin(Derajat) + Z4*Cos(Derajat);
    RZ5 := X5*Sin(Derajat) + Z5*Cos(Derajat);
    RZ6 := X6*Sin(Derajat) + Z6*Cos(Derajat);
    RZ7 := X7*Sin(Derajat) + Z7*Cos(Derajat);
    RZ8 := X8*Sin(Derajat) + Z8*Cos(Derajat);
  end;

  if RadioButton3.Checked = True then
  begin
    RZ1 := Z1;
    RZ2 := Z2;
    RZ3 := Z3;
    RZ4 := Z4;
    RZ5 := Z5;
    RZ6 := Z6;
    RZ7 := Z7;
    RZ8 := Z8;
    RX1 := X1*Cos(Derajat) - Y1*Sin(Derajat);
    RX2 := X2*Cos(Derajat) - Y2*Sin(Derajat);
    RX3 := X3*Cos(Derajat) - Y3*Sin(Derajat);
    RX4 := X4*Cos(Derajat) - Y4*Sin(Derajat);
    RX5 := X5*Cos(Derajat) - Y5*Sin(Derajat);
    RX6 := X6*Cos(Derajat) - Y6*Sin(Derajat);
    RX7 := X7*Cos(Derajat) - Y7*Sin(Derajat);
    RX8 := X8*Cos(Derajat) - Y8*Sin(Derajat);
    RY1 := X1*Sin(Derajat) + Y1*Cos(Derajat);
    RY2 := X2*Sin(Derajat) + Y2*Cos(Derajat);
    RY3 := X3*Sin(Derajat) + Y3*Cos(Derajat);
    RY4 := X4*Sin(Derajat) + Y4*Cos(Derajat);
    RY5 := X5*Sin(Derajat) + Y5*Cos(Derajat);
    RY6 := X6*Sin(Derajat) + Y6*Cos(Derajat);
    RY7 := X7*Sin(Derajat) + Y7*Cos(Derajat);
    RY8 := X8*Sin(Derajat) + Y8*Cos(Derajat);
  end;

  if RadioButton4.Checked = True then
  begin
    L1 := Round(1 / Tan(Alpha*pi/180));

    Xp1 := Round(RX1 + RZ1 * L1 * cos(Psi*pi/180));
    Xp2 := Round(RX2 + RZ2 * L1 * cos(Psi*pi/180));
    Xp3 := Round(RX3 + RZ3 * L1 * cos(Psi*pi/180));
    Xp4 := Round(RX4 + RZ4 * L1 * cos(Psi*pi/180));
    Xp5 := Round(RX5 + RZ5 * L1 * cos(Psi*pi/180));
    Xp6 := Round(RX6 + RZ6 * L1 * cos(Psi*pi/180));
    Xp7 := Round(RX7 + RZ7 * L1 * cos(Psi*pi/180));
    Xp8 := Round(RX8 + RZ8 * L1 * cos(Psi*pi/180));
    Yp1 := Round(RY1 + RZ1 * L1 * Sin(Psi*pi/180));
    Yp2 := Round(RY2 + RZ2 * L1 * Sin(Psi*pi/180));
    Yp3 := Round(RY3 + RZ3 * L1 * Sin(Psi*pi/180));
    Yp4 := Round(RY4 + RZ4 * L1 * Sin(Psi*pi/180));
    Yp5 := Round(RY5 + RZ5 * L1 * Sin(Psi*pi/180));
    Yp6 := Round(RY6 + RZ6 * L1 * Sin(Psi*pi/180));
    Yp7 := Round(RY7 + RZ7 * L1 * Sin(Psi*pi/180));
    Yp8 := Round(RY8 + RZ8 * L1 * Sin(Psi*pi/180));
  end;

  if RadioButton5.Checked = True then
  begin
    Xp1 := Round(RX1/1-RZ1/(M*pi/180));
    Xp2 := Round(RX2/1-RZ2/(M*pi/180));
    Xp3 := Round(RX3/1-RZ3/(M*pi/180));
    Xp4 := Round(RX4/1-RZ4/(M*pi/180));
    Xp5 := Round(RX5/1-RZ5/(M*pi/180));
    Xp6 := Round(RX6/1-RZ6/(M*pi/180));
    Xp7 := Round(RX7/1-RZ7/(M*pi/180));
    Xp8 := Round(RX8/1-RZ8/(M*pi/180));
    Yp1 := Round(RY1/1-RZ1/(M*pi/180));
    Yp2 := Round(RY2/1-RZ2/(M*pi/180));
    Yp3 := Round(RY3/1-RZ3/(M*pi/180));
    Yp4 := Round(RY4/1-RZ4/(M*pi/180));
    Yp5 := Round(RY5/1-RZ5/(M*pi/180));
    Yp6 := Round(RY6/1-RZ6/(M*pi/180));
    Yp7 := Round(RY7/1-RZ7/(M*pi/180));
    Yp8 := Round(RY8/1-RZ8/(M*pi/180));
  end;

  image1.Canvas.Pen.Color := clBlack;
  image1.Canvas.Pen.Style := psSolid;

  if CheckBox2.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    Image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox3.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox4.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox5.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox6.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox7.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox8.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox9.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox11.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox12.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox13.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox14.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox15.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox16.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp2, BarisP-Yp2);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox17.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3, BarisP-Yp3);
    image1.Canvas.MoveTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox18.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox20.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp4,BarisP-Yp4);
  end;

  if CheckBox21.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp5,BarisP-Yp5);
  end;

    if CheckBox22.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp6,BarisP-Yp6);
  end;

  if CheckBox23.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox24.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp3,BarisP-Yp3);
    Image1.Canvas.LineTo(KolomP+Xp8,BarisP-Yp8);
  end;

  if CheckBox25.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox26.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox27.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox29.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox30.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox31.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox32.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp4, BarisP-Yp4);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox33.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox34.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox35.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox36.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox38.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox39.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp7, BarisP-Yp7);
  end;

  if CheckBox40.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp5, BarisP-Yp5);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox41.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox42.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp2,BarisP-Yp2);
  end;

  if CheckBox43.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox44.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox45.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox47.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6,BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp7,BarisP-Yp7);
  end;

  if CheckBox48.Checked = True Then
  begin
    image1.Canvas.MoveTo(KolomP+Xp6, BarisP-Yp6);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox49.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox50.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox51.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox52.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox53.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox54.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox56.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp7, BarisP-Yp7);
    image1.Canvas.LineTo(KolomP+Xp8, BarisP-Yp8);
  end;

  if CheckBox57.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp1, BarisP-Yp1);
  end;

  if CheckBox58.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp2, BarisP-Yp2);
  end;

  if CheckBox59.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp3, BarisP-Yp3);
  end;

  if CheckBox60.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp4, BarisP-Yp4);
  end;

  if CheckBox61.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp5, BarisP-Yp5);
  end;

  if CheckBox62.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8, BarisP-Yp8);
    image1.Canvas.LineTo(KolomP+Xp6, BarisP-Yp6);
  end;

  if CheckBox63.Checked = True then
  begin
    image1.Canvas.MoveTo(KolomP+Xp8,BarisP-Yp8);
    image1.Canvas.LineTO(KolomP+Xp7,BarisP-Yp7);
  end;
end;

end.

