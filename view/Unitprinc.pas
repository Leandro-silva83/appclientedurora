unit Unitprinc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls,Fmx.Ani, FMX.Objects, FMX.Edit, FMX.TabControl, FMX.Effects,
  FMX.Controls.Presentation, FMX.Filter.Effects;

type
  TForm2 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    Layout3: TLayout;
    FlowLayout1: TFlowLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Image2: TImage;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Layout6: TLayout;
    Layout7: TLayout;
    Label2: TLabel;
    lay_name: TLayout;
    Rectangle7: TRectangle;
    edtname: TEdit;
    Line1: TLine;
    Layout8: TLayout;
    Rectangle3: TRectangle;
    edtcel: TEdit;
    Line2: TLine;
    Layout9: TLayout;
    Button1: TButton;
    tablist_client: TTabItem;
    Layout10: TLayout;
    Label3: TLabel;
    ListBox1: TListBox;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    StyleBook1: TStyleBook;
    FillRGBEffect1: TFillRGBEffect;
    Layout11: TLayout;
    Layout12: TLayout;
    Image1: TImage;
    FillRGBEffect2: TFillRGBEffect;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses untclient;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=TCloseAction.caFree;
form2:=nil;
end;

procedure TForm2.FormShow(Sender: TObject);
var cardframe:TFrame1;
begin
TabControl1.TabPosition:=TTabPosition.None;
TabControl1.ActiveTab:=tablist_client;
cardframe:=TFrame1.Create(ListBox1);
cardframe.Height:=126;
cardframe.Width:=320;
cardframe.Align:=TAlignLayout.Top;
cardframe.Margins.Left:=12;
cardframe.Margins.Right:=12;
cardframe.Margins.Top:=8;
cardframe.Parent:=ListBox1;
cardframe.Opacity:=1;
cardframe.Visible:=true;
//TAnimator.AnimateFloat(cardframe,'Opacity',1,0.7);
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
TabControl1.GotoVisibleTab(1);
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
image1.Position.Y:=image1.Position.Y+3;
end;

procedure TForm2.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
image1.Position.Y:=image1.Position.Y-3;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
TabControl1.GotoVisibleTab(0);
end;

procedure TForm2.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
image2.Position.Y:=image2.Position.Y+3;
end;

procedure TForm2.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
image2.Position.Y:=image2.Position.Y-3;
end;

end.
