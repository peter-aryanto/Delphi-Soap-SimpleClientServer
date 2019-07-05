program SoapClient;

uses
  Vcl.Forms,
  SoapClientMainFormUnit in 'SoapClientMainFormUnit.pas' {SoapClientMainForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSoapClientMainForm, SoapClientMainForm);
  Application.Run;
end.
