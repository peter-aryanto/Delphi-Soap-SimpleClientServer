program SoapClient2;

uses
  Vcl.Forms,
  SoapClient2MainFormUnit in 'SoapClient2MainFormUnit.pas' {SoapClient2MainForm},
  IAuthenticatorPartialIntf in 'IAuthenticatorPartialIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSoapClient2MainForm, SoapClient2MainForm);
  Application.Run;
end.
