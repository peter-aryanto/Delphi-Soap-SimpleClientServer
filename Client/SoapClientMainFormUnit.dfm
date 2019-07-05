object SoapClientMainForm: TSoapClientMainForm
  Left = 0
  Top = 0
  Caption = 'SoapClientMainForm'
  ClientHeight = 299
  ClientWidth = 414
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
    Text = 'Last Name'
  end
  object Edit2: TEdit
    Left = 48
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'First Name'
  end
  object Edit3: TEdit
    Left = 240
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 240
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 168
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Submit!'
    TabOrder = 4
    OnClick = Button1Click
  end
end
