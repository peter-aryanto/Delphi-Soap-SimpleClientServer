object SoapClient2MainForm: TSoapClient2MainForm
  Left = 0
  Top = 0
  Caption = 'SoapClient2MainForm'
  ClientHeight = 299
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 48
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object Edit2: TEdit
    Left = 48
    Top = 144
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 175
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Submit!'
    TabOrder = 2
    OnClick = Button1Click
  end
end
