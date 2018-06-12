object Form3: TForm3
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'Form 3'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btPopulateChart: TUnimButton
    Left = 0
    Top = 0
    Width = 360
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Populate Chart'
    OnClick = btPopulateChartClick
    ExplicitLeft = 88
    ExplicitTop = 80
    ExplicitWidth = 225
  end
  object btClearChart: TUnimButton
    Left = 0
    Top = 47
    Width = 360
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Clear Chart'
    OnClick = btClearChartClick
    ExplicitLeft = 88
    ExplicitTop = 144
    ExplicitWidth = 225
  end
  object UnimChart1: TUnimChart
    Left = 0
    Top = 94
    Width = 360
    Height = 499
    Hint = ''
    Legend.Alignment = uaTop
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitLeft = 128
    ExplicitTop = 208
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
