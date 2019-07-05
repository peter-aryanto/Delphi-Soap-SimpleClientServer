program SoapServer;

{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  SoapServerMainFormUnit in 'SoapServerMainFormUnit.pas' {SoapServerMainForm},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule},
  IAuthenticatorImpl in 'IAuthenticatorImpl.pas',
  IAuthenticatorIntf in 'IAuthenticatorIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;

  Application.Title := 'Soap Server';
  Application.Initialize;
  Application.CreateForm(TSoapServerMainForm, SoapServerMainForm);
  Application.Run;
end.
