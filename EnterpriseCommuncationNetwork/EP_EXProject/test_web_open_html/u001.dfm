object Form1: TForm1
  Left = 445
  Top = 114
  Width = 1079
  Height = 698
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 11
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 1063
    Height = 659
    Align = alClient
    ItemHeight = 11
    TabOrder = 0
  end
  object TCPS: TIdTCPServer
    Active = True
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 7003
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = TCPSExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 8
    Top = 8
  end
end
