unit untcard_prod;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, Skia.FMX;

type
  TFrame2 = class(TFrame)
    Layout1: TLayout;
    Layout2: TLayout;
    Image1: TImage;
    Labdescricao: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout10: TLayout;
    Image3: TImage;
    Layout8: TLayout;
    Image2: TImage;
    Layout9: TLayout;
    Edit1: TEdit;
    StyleBook1: TStyleBook;
    Layout11: TLayout;
    SkLabcodprod: TSkLabel;
    Layout12: TLayout;
    SkLab_valprod: TSkLabel;
    Layout13: TLayout;
    SkLabtotal: TSkLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  var cont:integer;
  var tot:double;
  public
 procedure calculavalor;
 function valorcalculadoped:double;
  { Public declarations }
  end;

implementation

{$R *.fmx}

uses uFormat;

procedure TFrame2.calculavalor;
begin
try
tot:=SkLab_valprod.Words[1].Text.ToDouble;
tot:=Edit1.Text.ToInteger*tot;
SkLabtotal.Words[1].Text:='R$ '+tot.ToString;
except on E: Exception do

end;

end;

procedure TFrame2.Image2Click(Sender: TObject);
var tot:double;
begin
Inc(cont,1);
Edit1.Text:=cont.ToString;
 tot:=SkLab_valprod.Words[1].Text.todouble;
 tot:=cont*tot;
 SkLabtotal.Words[1].Text:='R$ '+tot.ToString;
end;

procedure TFrame2.Image3Click(Sender: TObject);
var tot:double;
begin
if cont=1 then
 begin

 end
  else
    begin
     Dec(cont,1);
     Edit1.Text:=cont.ToString;
     tot:=SkLab_valprod.Words[1].Text.todouble;
     tot:=cont*tot;
     SkLabtotal.Words[1].Text:='R$ '+tot.ToString;
    end;
end;

function TFrame2.valorcalculadoped: double;
begin
result:=tot;
end;

end.
