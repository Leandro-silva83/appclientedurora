﻿unit Unitprinc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls,Fmx.Ani, FMX.Objects, FMX.Edit, FMX.TabControl, FMX.Effects,
  FMX.Controls.Presentation, FMX.Filter.Effects, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, untclient, Skia.FMX;

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
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    Layout13: TLayout;
    SpeedButton1: TSpeedButton;
    Layout14: TLayout;
    tbinewped: TTabItem;
    Layout15: TLayout;
    Layout16: TLayout;
    VertScrollBox1: TVertScrollBox;
    SkLabel1: TSkLabel;
    B: TLayout;
    Label4: TLabel;
    Edit1: TEdit;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Rectangle5: TRectangle;
    Edit2: TEdit;
    Layout17: TLayout;
    Image3: TImage;
    Layout18: TLayout;
    Layout19: TLayout;
    Label6: TLabel;
    labdesc: TLabel;
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
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    procedure readlist;
    function format_caracter(v: string): string;
    procedure newped(sender: TObject);
   var  cardframe:TFrame1;
  { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}



procedure TForm2.Button1Click(Sender: TObject);
begin
FDConnection1.Connected:=true;
try
FDQuery1.SQL.Add('insert into clientes(id,nomepessoa,cel,pedidos) values (hex(randomblob(2)),'+QuotedStr(edtname.Text)+','+
QuotedStr(edtcel.Text)+','+inttostr(0)+')');
FDQuery1.ExecSQL;
except on E: Exception do
  begin
    ShowMessage(e.Message);
  end;
end;
FDConnection1.Connected:=false;
end;

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
readlist;
end;

function TForm2.format_caracter(v: string): string;
var
  str: string;
begin
str := v.Substring(0, 1);
str := str + v.Substring(1, 1);
result := str;
end;


procedure TForm2.readlist;
begin
FDConnection1.Connected:=true;
FDQuery1.SQL.Clear;
FDQuery1.SQL.Add('select * from clientes');
FDQuery1.Open;
while not FDQuery1.Eof do
 begin
 cardframe:=TFrame1.Create(ListBox1);
 cardframe.Height:=126;
 cardframe.Width:=320;
 cardframe.Align:=TAlignLayout.Top;
 cardframe.Margins.Left:=12;
 cardframe.Margins.Right:=12;
 cardframe.Margins.Top:=8;
 cardframe.Parent:=ListBox1;
 cardframe.Opacity:=1;
 cardframe.TagString:=FDQuery1.FieldByName('id').AsString;
 cardframe.labnome.Text:=FDQuery1.FieldByName('nomepessoa').AsString;
 cardframe.labfoto.Text:=format_caracter(FDQuery1.FieldByName('nomepessoa').AsString);
 cardframe.Labcel.Text:=FDQuery1.FieldByName('cel').AsString;
 cardframe.labdetped.Text:=FDQuery1.FieldByName('pedidos').AsString;
 cardframe.imgaddped.TagString:=FDQuery1.FieldByName('nomepessoa').AsString;
 cardframe.imgaddped.OnClick:=newped;
 cardframe.Visible:=true;
 FDQuery1.Next;
 end;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
{$IFDEF ANDROID}

{$ENDIF}
 {$IFDEF MSWINDOWS}
    Application.Terminate;
 {$ENDIF}
end;

procedure TForm2.SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
SpeedButton1.Position.X:=SpeedButton1.Position.X-3;
end;

procedure TForm2.SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
SpeedButton1.Position.X:=SpeedButton1.Position.X+3;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
TabControl1.GotoVisibleTab(1);
end;

procedure TForm2.newped(sender:TObject);
begin
SkLabel1.Words[1].Text:=TImage(sender).TagString;

TabControl1.GotoVisibleTab(2);
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
