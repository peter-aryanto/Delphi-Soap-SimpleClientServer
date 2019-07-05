{ Invokable implementation File for TIAuthenticator which implements IIAuthenticator }

unit IAuthenticatorImpl;

interface

uses Soap.InvokeRegistry{, System.Types, Soap.XSBuiltIns}, IAuthenticatorIntf;

type

  { TIAuthenticator }
  TAuthenticator = class(TInvokableClass, IAuthenticator)
  private
    class var FCounter: Integer;
  public
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
  end;

implementation

uses
  System.SysUtils,
  System.Types;//, Soap.XSBuiltIns;

function TAuthenticator.echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
  { TODO : Implement method echoEnum }
  Result := Value;
end;

function TAuthenticator.echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
  { TODO : Implement method echoDoubleArray }
  Result := Value;
end;

function TAuthenticator.echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
  { TODO : Implement method echoMyEmployee }
//  Result := Value;
  Inc(FCounter);
  Result := TMyEmployee.Create;
  Result.LastName := Value.LastName + IntToStr(FCounter);
  Result.FirstName := Value.FirstName + IntToStr(FCounter);
end;

function TAuthenticator.echoDouble(const Value: Double): Double; stdcall;
begin
  { TODO : Implement method echoDouble }
//  Result := Value;
  Result := Value + 1;
end;

procedure IAuthenticatorFactory(out obj: TObject);
{$J+}
const
  iInstance: IAuthenticator = nil;
  instance: TAuthenticator = nil;
begin
  if instance = nil then
  begin
    instance := TAuthenticator.Create;
    instance.FCounter := 0;
    instance.GetInterface(IAuthenticator, iInstance)
  end;
  obj := instance
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TAuthenticator);//, IAuthenticatorFactory);
end.

