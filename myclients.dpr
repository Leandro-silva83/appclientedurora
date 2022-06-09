program myclients;

uses
  System.StartUpCopy,
  FMX.Forms,
  untclient in 'frames\untclient.pas' {Frame1: TFrame},
  Unitprinc in 'view\Unitprinc.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
