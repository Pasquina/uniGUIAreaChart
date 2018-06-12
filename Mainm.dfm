object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'MainmForm'
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
    object tsChart: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 352
      Height = 538
      Hint = ''
      Caption = 'Chart'
      object UnimChart1: TUnimChart
        Left = 0
        Top = 0
        Width = 352
        Height = 538
        Hint = ''
        Legend.Alignment = uaTop
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        ExplicitLeft = 104
        ExplicitTop = 72
        ExplicitWidth = 225
      end
      object btOpenForm2: TUnimButton
        Left = 0
        Top = 94
        Width = 352
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Open Form 2'
        OnClick = btOpenForm2Click
        ExplicitLeft = 72
        ExplicitTop = 88
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
        ExplicitTop = 53
      end
      object btOpenForm3: TUnimButton
        Left = 0
        Top = 141
        Width = 352
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Open Form 3'
        OnClick = btOpenForm3Click
        ExplicitLeft = 120
        ExplicitTop = 208
        ExplicitWidth = 225
      end
    end
  end
end
