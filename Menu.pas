unit Menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm4 = class(TForm)
    btnCalculator: TButton;
    ButtonReminder: TButton;
    btnSuperNote: TButton;
    btnClocks: TButton;
    btnGetOut: TButton;
    procedure btnCalculatorClick(Sender: TObject);
    procedure ButtonReminderClick(Sender: TObject);
    procedure btnGetOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
implementation

{$R *.fmx}
uses Calculator, Triangles;
procedure TForm4.btnCalculatorClick(Sender: TObject);
begin
   Form4.hide;
   Form5.show;
end;

procedure TForm4.btnGetOutClick(Sender: TObject);
begin
   Form4.Close;
end;

procedure TForm4.ButtonReminderClick(Sender: TObject);
begin
   Form1.Show;
   Form4.Hide;
end;

end.
