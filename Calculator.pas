unit Calculator;

interface

uses
  Vcl.Clipbrd, Math, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, FMX.Menus, FMX.ScrollBox,
  FMX.Memo, FMX.Layouts, FMX.ExtCtrls;

type
  TForm5 = class(TForm)
    editNumber: TEdit;
    btnShowMenu: TButton;
    btnNumber7: TButton;
    btnNumber8: TButton;
    btnNumber9: TButton;
    btnNumber4: TButton;
    btnNumber5: TButton;
    btnNumber6: TButton;
    btnNumber1: TButton;
    btnNumber2: TButton;
    btnNumber3: TButton;
    btnNumber0: TButton;
    btnClear: TButton;
    btnPolus: TButton;
    btnDivide: TButton;
    btnMultiplie: TButton;
    buttonMinus: TButton;
    buttonSum: TButton;
    btnResult: TButton;
    buttonFloat: TButton;
    btnIngFunctions: TButton;
    btnSin: TButton;
    btnCos: TButton;
    btnCtg: TButton;
    btnTg: TButton;
    btnSqrt: TButton;
    btnXInY: TButton;
    btnArcSin: TButton;
    btnArcCos: TButton;
    btnArcTg: TButton;
    btnArcCtg: TButton;
    CalcMenu: TMainMenu;
    Files: TMenuItem;
    correction: TMenuItem;
    about: TMenuItem;
    CloseCalc: TMenuItem;
    copy: TMenuItem;
    paste: TMenuItem;
    btnArcCosH: TButton;
    btnArcSinh: TButton;
    btnArcTanh: TButton;
    btnArcCtgH: TButton;
    btnSinH: TButton;
    btnCosH: TButton;
    btnTgH: TButton;
    btnCtgH: TButton;
    procedure btnShowMenuClick(Sender: TObject);
    procedure btnNumber7Click(Sender: TObject);
    function ArcCtg(var Value: real): Real;
    function CtgH(var value: Real): Real;
    procedure btnNumber8Click(Sender: TObject);
    procedure btnNumber1Click(Sender: TObject);
    procedure btnNumber2Click(Sender: TObject);
    procedure btnNumber3Click(Sender: TObject);
    procedure btnNumber5Click(Sender: TObject);
    procedure btnNumber6Click(Sender: TObject);
    procedure btnNumber9Click(Sender: TObject);
    procedure btnNumber4Click(Sender: TObject);
    procedure btnNumber0Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnPolusClick(Sender: TObject);
    procedure buttonFloatClick(Sender: TObject);
    procedure buttonSumClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure btnMultiplieClick(Sender: TObject);
    procedure buttonMinusClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
    procedure btnIngFunctionsClick(Sender: TObject);
    procedure btnXInYClick(Sender: TObject);
    procedure btnSqrtClick(Sender: TObject);
    procedure btnSinClick(Sender: TObject);
    procedure btnCosClick(Sender: TObject);
    procedure btnCtgClick(Sender: TObject);
    procedure btnTgClick(Sender: TObject);
    procedure btnArcSinClick(Sender: TObject);
    procedure btnArcCosClick(Sender: TObject);
    procedure btnArcCtgClick(Sender: TObject);
    procedure btnArcTgClick(Sender: TObject);
    procedure CloseCalcClick(Sender: TObject);
    procedure copyClick(Sender: TObject);
    procedure pasteClick(Sender: TObject);
    procedure editNumberKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure buttonFloatKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure aboutClick(Sender: TObject);
    procedure btnArcCosHClick(Sender: TObject);
    procedure btnArcSinhClick(Sender: TObject);
    procedure btnArcTanhClick(Sender: TObject);
    procedure btnSinHClick(Sender: TObject);
    procedure btnCosHClick(Sender: TObject);
    procedure btnTgHClick(Sender: TObject);
    procedure btnCtgHClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  FirstValue, SecondValue, ResultValue: real;
  Code: Char;
implementation

{$R *.fmx}
uses Menu;
procedure TForm5.aboutClick(Sender: TObject);
begin
   ShowMessage('This calculator of the organizer created by BSUIR student, Department of Software Information Technology , Group 551006 , Tatchikhyn Kirill,Minsk,2016.');
end;

function TForm5.ArcCtg(var Value: real): real;
begin
   Value := (Value * 3.14)/180;
   ArcCtg := ((3.14) / 2) - ArcTan(Value);
end;

procedure TForm5.btnArcCosClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := ArcCos(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnArcCosHClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := ArcCosh(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnArcCtgClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   editNumber.text := '';
   ResultValue := ArcCtg(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;


procedure TForm5.btnArcSinClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := ArcSin(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnArcSinhClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue*3.14)/180;
   editNumber.text := '';
   ResultValue := ArcSinh(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnArcTanhClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue*3.14)/180;
   editNumber.text := '';
   ResultValue := ArcTanh(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnArcTgClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue*3.14)/180;
   editNumber.text := '';
   ResultValue := ArcTan(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnClearClick(Sender: TObject);
begin
   editNumber.Text := '';
end;


procedure TForm5.btnCosClick(Sender: TObject);
begin
    if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
    FirstValue := (FirstValue * 3.14)/180;
    editNumber.text := '';
    ResultValue := cos(FirstValue);
    editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnCosHClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := CosH(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnCtgClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue*3.14)/180;
   editNumber.text := '';
   ResultValue := cotan(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnCtgHClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   editNumber.text := '';
   ResultValue := CtgH(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnDivideClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := StrToFloat(editNumber.text);
   Code := '/';
   editNumber.Text := '';
end;

procedure TForm5.btnIngFunctionsClick(Sender: TObject);
begin
   btnSin.Visible := True;
   btnCos.Visible := True;
   btnTg.Visible := True;
   btnCtg.Visible := True;
   btnSqrt.Visible := True;
   btnXInY.Visible := true;
   btnArcSin.Visible := True;
   btnArcCos.Visible := true;
   btnArcTg.Visible := true;
   btnArcCtg.Visible := True;
   btnCtgH.Visible := true;
   btnCosH.Visible := True;
   btnSinH.visible := true;
   btnTgH.Visible := true;
   btnArcSinh.Visible := true;
   btnArcCosH.Visible := true;
   btnArcTanh.Visible := True;
   btnArcCtgH.Visible := true;
end;

procedure TForm5.btnMultiplieClick(Sender: TObject);
begin
if (editNumber.Text <> '') then
      FirstValue := StrToFloat(editNumber.text);
   Code := '*';
   editNumber.Text := '';
end;

procedure TForm5.btnNumber0Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '0';
end;

procedure TForm5.btnNumber1Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '1';
end;

procedure TForm5.btnNumber2Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '2';
end;

procedure TForm5.btnNumber3Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '3';
end;

procedure TForm5.btnNumber4Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '4';
end;

procedure TForm5.btnNumber5Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '5';
end;

procedure TForm5.btnNumber6Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '6';
end;

procedure TForm5.btnNumber7Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '7';
end;

procedure TForm5.btnNumber8Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '8';
end;

procedure TForm5.btnNumber9Click(Sender: TObject);
begin
   editNumber.Text := editNumber.Text + '9';
end;

procedure TForm5.btnPolusClick(Sender: TObject);
begin
   if(editNumber.Text[1] = '-') then
      editNumber.Text := editNumber.Text
   else
      editNumber.Text :='-' + editNumber.Text;
end;

procedure TForm5.btnResultClick(Sender: TObject);
var
   Power, Counter: Integer;
begin
    if editNumber.Text<>'' then
       begin
          SecondValue := strtofloat(editNumber.text);
       end;
    case Code of
    '+':
       ResultValue := FirstValue + SecondValue;
    '-':
       ResultValue := FirstValue - SecondValue;
    '*':
       ResultValue := FirstValue * SecondValue;
    '/':
       ResultValue := FirstValue / SecondValue;
    '^':
       begin
          Power := StrToInt(editNumber.text);
          editNumber.Text := '';
          ResultValue := 1;
          for Counter := 1 to Power do
               begin
                  ResultValue := ResultValue * FirstValue
               end;
       end;
    end;
editNumber.Text:=floattostr(ResultValue)
end;

procedure TForm5.btnShowMenuClick(Sender: TObject);
begin
   Form5.close;
   Form4.Show;
end;

procedure TForm5.btnSinClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := sin(FirstValue);
   editNumber.Text:=floattostr(ResultValue);
end;

procedure TForm5.btnSinHClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := SinH(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnSqrtClick(Sender: TObject);
begin
    FirstValue := strtofloat( editNumber.Text);
     editNumber.Text := '';
     ResultValue := sqrt(Abs(FirstValue));
     editNumber.Text:=floattostr(ResultValue)
end;

procedure TForm5.btnTgClick(Sender: TObject);
begin
    if (editNumber.Text <> '') then
       FirstValue := strtofloat(editNumber.Text);
    FirstValue := (FirstValue * 3.14)/180;
    editNumber.text := '';
    ResultValue := Tan(FirstValue);
    editNumber.Text := floattostr(ResultValue);
end;



procedure TForm5.btnTgHClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := strtofloat(editNumber.Text);
   FirstValue := (FirstValue * 3.14)/180;
   editNumber.text := '';
   ResultValue := TanH(FirstValue);
   editNumber.Text := floattostr(ResultValue);
end;

procedure TForm5.btnXInYClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := StrToFloat(editNumber.text);
   Code := '^';
   editNumber.Text := '';
end;

procedure TForm5.buttonFloatClick(Sender: TObject);
var
   i: Integer;
begin
   if (pos(',',editNumber.text) <> 0) then
      editNumber.Text := editNumber.Text
   else
      editNumber.Text := editNumber.Text + ',';
end;


procedure TForm5.buttonFloatKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
   i: Integer;
begin
     if (pos(',',editNumber.text) <> 0) then
      KeyChar := #0;
end;

procedure TForm5.buttonMinusClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := StrToFloat(editNumber.text);
   Code := '-';
   editNumber.Text := '';
end;

procedure TForm5.buttonSumClick(Sender: TObject);
begin
   if (editNumber.Text <> '') then
      FirstValue := StrToFloat(editNumber.text);
   Code := '+';
   editNumber.Text := '';
end;



procedure TForm5.CloseCalcClick(Sender: TObject);
begin
   Close;
   Form4.Show;
end;

procedure TForm5.copyClick(Sender: TObject);
begin
   editNumber.SelectAll;
   editNumber.CopyToClipboard;
end;

function TForm5.CtgH(var value: Real): Real;
begin
   Value := (Value * 3.14)/180;
   CtgH := 1 / (Tanh(Value));
end;

procedure TForm5.editNumberKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
   i: Integer;
begin
   if (pos(',',editNumber.text) <> 0) then
      KeyChar := #0;
    if (pos('-',editNumber.text) <> 0) then
      KeyChar := #0;

end;



procedure TForm5.pasteClick(Sender: TObject);
begin
   EditNumber.PasteFromClipboard;
end;

end.
