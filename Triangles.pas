unit Triangles;

interface

uses
  Math, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
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
    btnwithangles: TButton;
    btnWithoutAngles: TButton;
    btnClearAll: TButton;
    procedure btnFindSquareClick(Sender: TObject);
    procedure btnThroughTheRadiusClick(Sender: TObject);
    procedure btnWithoutRadiusClick(Sender: TObject);
    procedure btnShowMenuClick(Sender: TObject);
    procedure btnwithanglesClick(Sender: TObject);
    procedure btnWithoutAnglesClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
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
procedure TForm1.btnClearAllClick(Sender: TObject);
begin
   edtFirstAngle.Text := '';
   edtFirstSide.Text := '';
   edtSecondSide.Text := '';
   edtThirdSide.Text := '';
   edtRadius.Text := '';
   LabelSquare.Text := 'Square of triangle: ';
end;

procedure TForm1.btnFindSquareClick(Sender: TObject);
var
   semiperimeter, FirstAngle, FirstSide, SecondSide, ThirdSide, Radius: Integer;
   Height, Square: real;
begin
   if (edtFirstSide.Text <> '') then
      FirstSide := StrToInt(EdtFirstSide.text);
   if (edtSecondSide.Text <> '') then
      SecondSide := StrToInt(edtSecondSide.text);
   if (edtThirdSide.Text <> '') then
      ThirdSide := StrToInt(edtThirdSide.text);
   if (edtFirstAngle.Text <> '') then
      FirstAngle := StrToInt(edtFirstAngle.text);
   if (edtRadius.Text <> '') then
      Radius := StrToInt(edtRadius.text);
      if (FirstSide = SecondSide) and (FirstSide = ThirdSide) and (SecondSide = ThirdSide) then
         begin
            if (check = 0) then
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
         end;
      if (FirstSide = SecondSide) then
         begin
            if (check = 2) then
               begin
                  Square := trunc((1 / 2) * FirstSide * SecondSide * Sin(FirstAngle));
                  LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
               end
            else
               if (check = 1) then
                  begin
                     semiperimeter := Trunc((FirstSide + SecondSide + ThirdSide) / 2);
                     Square := Semiperimeter * Radius;
                      LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
                  end
               else
            begin
               ThirdSide := round((1 / 2) * ThirdSide);
               height := (SecondSide * SecondSide) - (ThirdSide * ThirdSide);
               Height := Sqrt(height);
               Square := Trunc(ThirdSide * height);
               LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
            end;
         end;
      if (FirstSide = ThirdSide) then
         begin
            if (check = 2) then
               begin
                  Square := trunc((1 / 2) * FirstSide * ThirdSide * Sin(FirstAngle));
                  LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
               end
            else
               if (check = 1) then
                  begin
                     semiperimeter := Trunc((FirstSide + SecondSide + ThirdSide) / 2);
                     Square := Semiperimeter * Radius;
                      LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
                  end
               else
            begin
               SecondSide := round((1 / 2) * SecondSide);
               height := (FirstSide * FirstSide) - (SecondSide * SecondSide);
               Height := Sqrt(height);
               Square := Trunc(SecondSide * height);
               LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
            end;
         end;
      if (SecondSide = ThirdSide) then
         begin
            if (check = 2) then
               begin
                  Square := trunc((1 / 2) * SecondSide * ThirdSide * Sin(FirstAngle));
                  LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
               end
            else
               if (check = 1) then
                  begin
                     semiperimeter := Trunc((FirstSide + SecondSide + ThirdSide) / 2);
                     Square := Semiperimeter * Radius;
                      LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
                  end
               else
            begin
               FirstSide := round((1 / 2) * FirstSide);
               height := (ThirdSide * ThirdSide) - (FirstSide * FirstSide);
               Height := Sqrt(height);
               Square := Trunc(FirstSide * height);
               LabelSquare.Text := 'square of isosceles triangle is: ' + FloatToStr(Square);
            end;
         end;
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
end;

procedure TForm1.btnWithoutAnglesClick(Sender: TObject);
begin
   check := 0;
   edtFirstAngle.Visible := false;
end;

procedure TForm1.btnWithoutRadiusClick(Sender: TObject);
begin
   check := 0;
   edtRadius.Visible := false;
end;

end.
