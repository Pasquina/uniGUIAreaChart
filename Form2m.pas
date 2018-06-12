unit Form2m;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniChart, unimChart, uniPanel, uniPageControl,
  unimTabPanel, uniGUIBaseClasses;

type
  TForm2 = class(TUnimForm)
    UnimTabPanel1: TUnimTabPanel;
    tsChart: TUnimTabSheet;
    UnimChart1: TUnimChart;
    UnimAreaSeries1: TUnimAreaSeries;
    UnimAreaSeries2: TUnimAreaSeries;
    tsButtons: TUnimTabSheet;
    btPopulateChart: TUnimButton;
    btClearChart: TUnimButton;
    procedure btClearChartClick(Sender: TObject);
    procedure btPopulateChartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form2: TForm2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form2: TForm2;
begin
  Result := TForm2(UniMainModule.GetFormInstance(TForm2));
end;

procedure TForm2.btClearChartClick(Sender: TObject);
begin
  UnimAreaSeries1.Clear;
  UnimAreaSeries2.Clear;
  UnimChart1.Refresh;
end;

procedure TForm2.btPopulateChartClick(Sender: TObject);
var
  LX: Integer;
begin
  UnimAreaSeries1.Clear;
  for LX := 0 to 199 do
    UnimAreaSeries1.Add(LX, (199 - LX).ToString);
  UnimAreaSeries2.Clear;
  for LX := 199 downto 0 do
    UnimAreaSeries2.Add(LX, (199 - LX).ToString);
  UnimChart1.RefreshData;
end;

end.
