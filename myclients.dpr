program myclients;

uses
  System.StartUpCopy,
  FMX.Forms,
  untclient in 'frames\untclient.pas' {Frame1: TFrame},
  Unitprinc in 'view\Unitprinc.pas' {Form2},
  untcard_prod in 'untcard_prod.pas' {Frame2: TFrame},
  uFormat in 'lib\uFormat.pas',
  untcardpedido in 'frames\untcardpedido.pas' {Frame3: TFrame},
  untprojanimacoes in 'lib\untprojanimacoes.pas',
  untcardproduto in 'frames\untcardproduto.pas' {Frame4: TFrame};

{$R *.res}

begin
 {$IFDEF DEBUG}
   ReportMemoryLeaksOnShutdown:=TRUE;
 {$ENDIF}
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
