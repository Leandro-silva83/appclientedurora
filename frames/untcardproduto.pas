unit untcardproduto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects;

type
  TFrame4 = class(TFrame)
    Layout1: TLayout;
    Label1: TLabel;
    Labcod: TLabel;
    Labdesc: TLabel;
    Labvalor: TLabel;
    Rectangle1: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
