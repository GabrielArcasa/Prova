object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 309
  ClientWidth = 457
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
  object btnSelecionar: TButton
    Left = 0
    Top = -1
    Width = 457
    Height = 73
    Align = alBottom
    Caption = 'Selecione os arquivos'
    TabOrder = 0
    OnClick = btnSelecionarClick
    ExplicitTop = 128
    ExplicitWidth = 447
  end
  object btnVerificar: TButton
    Left = 0
    Top = 72
    Width = 457
    Height = 73
    Align = alBottom
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
    ExplicitTop = 128
    ExplicitWidth = 447
  end
  object mmo1: TMemo
    Left = 0
    Top = 145
    Width = 457
    Height = 164
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 144
    ExplicitWidth = 447
  end
  object dlgOpen: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 352
    Top = 24
  end
end
