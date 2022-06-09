unit untclient;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Effects, FMX.Controls.Presentation;

type
  TFrame1 = class(TFrame)
    Layout1: TLayout;
    Layout2: TLayout;
    Circle1: TCircle;
    ShadowEffect1: TShadowEffect;
    labfoto: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    labnome: TLabel;
    Layout5: TLayout;
    Labcel: TLabel;
    Layout6: TLayout;
    FlowLayout1: TFlowLayout;
    Layout7: TLayout;
    imglist_ped: TLayout;
    Layout8: TLayout;
    Image1: TImage;
    StyleBook1: TStyleBook;
    Layout10: TLayout;
    Circle2: TCircle;
    labdetped: TLabel;
    Layout11: TLayout;
    imgaddped: TImage;
    Rectangle1: TRectangle;
    Layout9: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
