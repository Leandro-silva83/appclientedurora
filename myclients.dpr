program myclients;

uses
  System.StartUpCopy,
  FMX.Forms,
  untprincipal in 'view\untprincipal.pas' {Form1},
  untclient in 'frames\untclient.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
