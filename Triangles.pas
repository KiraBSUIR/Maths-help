unit Triangles;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtFirstSide: TEdit;
    edtSecondSide: TEdit;
    edtThirdSide: TEdit;
    btnFindSquare: TButton;
    LabelSquare: TLabel;
    btnThroughTheRadius: TButton;
    edtRadius: TEdit;
    btnWithoutRadius: TButton;
    btnShowMenu: TButton;
    edtFirstAngle: TEdit;
    edtSecondAngle: TEdit;
    edtThirdAngle: TEdit;
    btnwithangles: TButton;
    btnWithoutAngles: TButton;
    procedure btnFindSquareClick(Sender: TObject);
    procedure btnThroughTheRadiusClick(Sender: TObject);
    procedure btnWithoutRadiusClick(Sender: TObject);
    procedure btnShowMenuClick(Sender: TObject);
    procedure btnwithanglesClick(Sender: TObject);
    procedure btnWithoutAnglesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  check: word;

implementation

{$R *.fmx}
uses Menu;
procedure TForm1.btnFindSquareClick(Sender: TObject);
var
   FirstSide, SecondSide, ThirdSide, Radius: Integer;
   Height, Square: real;
begin
   if (edtFirstSide.Text <> '') then
      FirstSide := StrToInt(EdtFirstSide.text);
   if (edtSecondSide.Text <> '') then
      SecondSide := StrToInt(edtSecondSide.text);
   if (edtThirdSide.Text <> '') then
      ThirdSide := StrToInt(edtThirdSide.text);
   if (check = 0) then
      if (FirstSide = SecondSide) and (FirstSide = ThirdSide) and (SecondSide = ThirdSide) then
         begin
            Square := Trunc((Sqr(FirstSide) * Sqrt(3)) / 4);
            LabelSquare.Text := 'square of equilateral triangle is: ' + FloatToStr(Square);
         end;
   if (Check = 1) then
      begin
         if (edtRadius.Text <> '') then
            Radius := StrToInt(edtRadius.text);
         Radius := Radius * Radius;
         Square := 3 * Sqrt(3) * Radius;
         LabelSquare.Text := 'square of equilateral triangle is: ' + FloatToStr(Square);
      end;
      {if (FirstSide = SecondSide) then
      begin
         ThirdSide := round((1 / 2) * ThirdSide);
         height := (SecondSide * SecondSide) - (ThirdSide * ThirdSide);
         Height := Sqrt(height);
         Square := ThirdSide * height;
         LabelSquare.Text := 'square of triangle is: ' + FloatToStr(Square);
      end;       }
end;

procedure TForm1.btnShowMenuClick(Sender: TObject);
begin
   Form4.Show;
   Form1.Close;
end;

procedure TForm1.btnThroughTheRadiusClick(Sender: TObject);
begin
   Check := 1;
   edtRadius.Visible := true;
end;

procedure TForm1.btnwithanglesClick(Sender: TObject);
begin
   check := 2;
   edtFirstAngle.Visible := True;
   edtSecondSide.Visible := True;
   edtThirdAngle.Visible := true;
end;

procedure TForm1.btnWithoutAnglesClick(Sender: TObject);
begin
   check := 0;
   edtFirstAngle.Visible := false;
   edtSecondSide.Visible := false;
   edtThirdAngle.Visible := false;
end;

procedure TForm1.btnWithoutRadiusClick(Sender: TObject);
begin
   check := 0;
   edtRadius.Visible := false;
end;

end.
