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
    Image2: TImage;
    procedure imgaddpedMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure imgaddpedMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure imglist_pedMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure imglist_pedMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}



procedure TFrame1.imgaddpedMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
imgaddped.Position.Y:=imgaddped.Position.Y+3;
end;

procedure TFrame1.imgaddpedMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
imgaddped.Position.Y:=imgaddped.Position.Y-3;
end;

procedure TFrame1.imglist_pedMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
imglist_ped.Position.Y:=imglist_ped.Position.Y+3;
end;

procedure TFrame1.imglist_pedMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
imglist_ped.Position.Y:=imglist_ped.Position.Y-3;
end;

end.
