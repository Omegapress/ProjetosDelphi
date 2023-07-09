program ComponentesVisuais;

uses
  Vcl.Forms,
  uComponentesVisuais in 'uComponentesVisuais.pas' {frmPrincipal},
  ufrmTimer in 'ufrmTimer.pas' {frmTimer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTimer, frmTimer);
  Application.Run;
end.
