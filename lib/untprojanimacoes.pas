unit untprojanimacoes;

interface

uses FMX.Forms,
  FMX.Objects,
  FMX.Types,
  FMX.Layouts,
  skia.FMX,
  System.UITypes,
  FMX.Graphics;
type
  TProjAni = class
  private
    class var fskimage: TSKAnimatedImage;
    class var fsklab: TSkLabel;
    class var layout: TLayout;
    class var layout_aux: TLayout;
    class var layout_flow: TFlowLayout;
    class var layout_alt: TLayout;
    class var Fundo: TRectangle;

    Faniok: string;
    Fani_loading: string;
    Fani_error: string;
    Fani_errorserver: string;
    Fani_sync_server: string;
    Fani_upload:string;
    class procedure finishani(sender: Tobject);
  public
    class function animations4androidactions(sender:TForm;loopcont: boolean = True): TRectangle;
class procedure stop;
  end;

implementation

{ TProjAni }

uses system.SysUtils;

class function TProjAni.animations4androidactions(sender:TForm;loopcont: boolean = True): TRectangle;
var
  I: integer;

begin
 // Panel de fundo opaco...
Fundo := TRectangle.Create(sender);
Fundo.Opacity := 0.7;
Fundo.Parent := sender;
Fundo.Visible := true;
Fundo.Align := TAlignLayout.Contents;
Fundo.Fill.Color := TAlphaColorRec.Null;
Fundo.Fill.Kind := TBrushKind.Solid;
Fundo.Stroke.Kind := TBrushKind.None;
Fundo.Visible := true;

layout := TLayout.Create(nil);
layout.Parent := Fundo;

if sender <> nil then
  begin
  layout.Height := sender.Height / 2;
  layout.Width := sender.Width / 2;
  layout.Margins.Left := 10;
  layout.Margins.Right := 10;
  end
else
  begin
  layout.Height := 120;
  layout.Width := 320;
  layout.Margins.Left := 10;
  layout.Margins.Right := 10;

  end;


layout.Align := TAlignLayout.Center;
layout.Visible := true;

  layout_alt := TLayout.Create(nil);
  layout_alt.Parent := layout;
  layout_alt.Align := TAlignLayout.Contents;
  layout_alt.Visible := true;

  fskimage := TSKAnimatedImage.Create(layout_alt);
  fskimage.Parent := layout_alt;
  fskimage.Loop := loopcont;
  fskimage.LoadFromFile('C:\Users\Bete\Documents\Embarcadero\Studio\Projects\appclientedurora\animacoes\load.json');
  fskimage.Align := TAlignLayout.Client;
  fskimage.Visible := true;
  fskimage.OnAnimationFinished := finishani;
  Fundo.BringToFront;

  result := Fundo;
end;

class procedure TProjAni.finishani(sender: Tobject);
begin
Fundo.Visible := false;
end;

class procedure TProjAni.stop;
begin
fskimage.Loop:=false;
fskimage.Parent:=nil;
finishani(nil);
end;

end.
