object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnDivisores: TSpeedButton
    Left = 143
    Top = 40
    Width = 123
    Height = 22
    Caption = 'Encontrar Divisores'
    OnClick = btnDivisoresClick
  end
  object btn1: TSpeedButton
    Left = 143
    Top = 112
    Width = 123
    Height = 22
    Caption = 'Validar Numero Primo'
    OnClick = btn1Click
  end
  object edtNumero: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object edtDivisores: TEdit
    Left = 272
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNumeroPrimo: TEdit
    Left = 16
    Top = 112
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object edtValidoPrimo: TEdit
    Left = 272
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
