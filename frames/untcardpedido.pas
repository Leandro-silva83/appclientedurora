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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
