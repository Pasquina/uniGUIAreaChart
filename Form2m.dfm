object Form2: TForm2
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'Form2'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimTabPanel1: TUnimTabPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 593
    Hint = ''
    ActivePage = tsButtons
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitLeft = 96
    ExplicitTop = 144
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tsChart: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 352
      Height = 538
      Hint = ''
      Caption = 'Chart'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 360
      ExplicitHeight = 593
      object UnimChart1: TUnimChart
        Left = 0
        Top = 0
        Width = 352
        Height = 538
        Hint = ''
        Legend.Alignment = uaTop
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ExplicitLeft = 72
        ExplicitTop = 144
        ExplicitWidth = 400
        ExplicitHeight = 300
        object UnimAreaSeries1: TUnimAreaSeries
          Title = 'UnimAreaSeries1'
          Brush.Opacity = 0.899999976158142100
        end
        object UnimAreaSeries2: TUnimAreaSeries
          Title = 'UnimAreaSeries2'
          Brush.Opacity = 0.899999976158142100
        end
      end
    end
    object tsButtons: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 352
      Height = 538
      Hint = ''
      Caption = 'Buttons'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 360
      ExplicitHeight = 593
      object btPopulateChart: TUnimButton
        Left = 0
        Top = 0
        Width = 352
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Populate Chart'
        OnClick = btPopulateChartClick
        ExplicitLeft = 48
        ExplicitTop = 128
        ExplicitWidth = 225
      end
      object btClearChart: TUnimButton
        Left = 0
        Top = 47
        Width = 352
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Clear Chart'
        OnClick = btClearChartClick
        ExplicitLeft = 32
        ExplicitTop = 128
        ExplicitWidth = 225
      end
    end
  end
end
