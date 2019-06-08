object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 179
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
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 457
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = 'VERIFICAR PALINDROMO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 214
  end
  object btnCarregarDll: TSpeedButton
    Left = 0
    Top = 48
    Width = 457
    Height = 37
    Align = alBottom
    Caption = 'Carregar DLL dinamicamente'
    OnClick = btnCarregarDllClick
    ExplicitLeft = -3
    ExplicitTop = 63
  end
  object edtPalavra: TEdit
    Left = 0
    Top = 85
    Width = 457
    Height = 21
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 35
  end
  object btnVerificar: TButton
    Left = 0
    Top = 106
    Width = 457
    Height = 73
    Align = alBottom
    Caption = 'Verificar'
    Enabled = False
    TabOrder = 1
    OnClick = btnVerificarClick
    ExplicitTop = 67
  end
  object edtCaminhoDLL: TEdit
    Left = 0
    Top = 27
    Width = 457
    Height = 21
    Margins.Top = 13
    Margins.Bottom = 20
    Align = alBottom
    ReadOnly = True
    TabOrder = 2
    OnChange = edtCaminhoDLLChange
    ExplicitTop = 18
  end
  object opendlg: TOpenTextFileDialog
    Filter = '.dll'
    Left = 288
    Top = 32
  end
end
