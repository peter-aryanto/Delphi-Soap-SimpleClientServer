unit SoapClient2MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSoapClient2MainForm = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoapClient2MainForm: TSoapClient2MainForm;

implementation

{$R *.dfm}

uses
  Soap.SOAPHTTPClient,
//  IAuthenticatorPartialIntf;
  IAuthenticatorIntf;

procedure TSoapClient2MainForm.Button1Click(Sender: TObject);
var
  LHttpRio: THTTPRIO;
  LAuthenticator: IAuthenticator;
//  LInputEmployee: TMyEmployee;
//  LOutputEmployee: TMyEmployee;
  LInitialValue: Integer;
begin
  // Getting the interface.
  LHttpRio := THTTPRIO.Create(nil);
  LHttpRio.URL := 'http://localhost:60640/SOAP/IAuthenticator';
  LAuthenticator := LHttpRio as IAuthenticator;

//  LInputEmployee := TMyEmployee.Create;
//  LInputEmployee.LastName := Edit1.Text;
//  LInputEmployee.FirstName := Edit2.Text;

//  LOutputEmployee := LAuthenticator.echoMyEmployee(LInputEmployee);
//  Edit3.Text := LOutputEmployee.LastName;
//  Edit4.Text := LOutputEmployee.FirstName;

//  LOutputEmployee.Free;
//  LInputEmployee.Free;

  if Edit2.Text <> '' then
    LInitialValue := StrToInt(Edit2.Text)
  else
    LInitialValue := StrToInt(Edit1.Text);

  Edit2.Text := FloatToStr(Trunc(LAuthenticator.echoDouble(LInitialValue)));
end;

end.
