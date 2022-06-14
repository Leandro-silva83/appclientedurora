unit untcardpedido;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, Skia.FMX, FMX.Controls.Presentation, FMX.Objects;

type
  TFrame3 = class(TFrame)
    Layout1: TLayout;
    SkLabel1: TSkLabel;
    Layout2: TLayout;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SkLabel2: TSkLabel;
    Layout3: TLayout;
    Label1: TLabel;
    lbquatprod: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    Image1: TImage;
    Rectangle1: TRectangle;
    Label2: TLabel;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame3.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
image1.Position.Y:=image1.Position.Y+3;
end;

procedure TFrame3.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
image1.Position.Y:=image1.Position.Y-3;
end;

end.
