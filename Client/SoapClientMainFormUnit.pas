unit SoapClientMainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSoapClientMainForm = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoapClientMainForm: TSoapClientMainForm;

implementation

{$R *.dfm}

uses
  Soap.SOAPHTTPClient,
  IAuthenticatorIntf;

procedure TSoapClientMainForm.Button1Click(Sender: TObject);
var
  LHttpRio: THTTPRIO;
  LAuthenticator: IAuthenticator;
  LInputEmployee: TMyEmployee;
  LOutputEmployee: TMyEmployee;
begin
  // Getting the interface.
  LHttpRio := THTTPRIO.Create(nil);
  LHttpRio.URL := 'http://localhost:60640/SOAP/IAuthenticator';
  LAuthenticator := LHttpRio as IAuthenticator;

  LInputEmployee := TMyEmployee.Create;
  LOutputEmployee := nil;
  try
    LInputEmployee.LastName := Edit1.Text;
    LInputEmployee.FirstName := Edit2.Text;

    LOutputEmployee := LAuthenticator.echoMyEmployee(LInputEmployee);
    Edit3.Text := LOutputEmployee.LastName;
    Edit4.Text := LOutputEmployee.FirstName;

  finally
    LOutputEmployee.Free;
    LInputEmployee.Free;
  end;
end;

end.
