object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 252
  ClientWidth = 594
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 252
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btnExecutar: TSpeedButton
      Left = 1
      Top = 195
      Width = 592
      Height = 56
      Align = alBottom
      Caption = 'Executar Leitura'
      OnClick = btnExecutarClick
      ExplicitLeft = -15
      ExplicitTop = 196
    end
    object mmo1: TMemo
      Left = 1
      Top = -1
      Width = 592
      Height = 196
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = -15
      ExplicitTop = -113
    end
  end
end
