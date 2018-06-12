unit Form3m;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniChart, unimChart, uniPanel, uniGUIBaseClasses, uniButton, unimButton;

type
  TForm3 = class(TUnimForm)
    btPopulateChart: TUnimButton;
    btClearChart: TUnimButton;
    UnimChart1: TUnimChart;
    UnimAreaSeries1: TUnimAreaSeries;
    UnimAreaSeries2: TUnimAreaSeries;
    procedure btPopulateChartClick(Sender: TObject);
    procedure btClearChartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form3: TForm3;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form3: TForm3;
begin
  Result := TForm3(UniMainModule.GetFormInstance(TForm3));
end;

procedure TForm3.btClearChartClick(Sender: TObject);
begin
  UnimAreaSeries1.Clear;
  UnimAreaSeries2.Clear;
  UnimChart1.RefreshData;
end;

procedure TForm3.btPopulateChartClick(Sender: TObject);
var
  LX: Integer;
begin
  UnimAreaSeries1.Clear;
  for LX := 0 to 299 do
    UnimAreaSeries1.Add(LX, (299 - LX).ToString);
  UnimAreaSeries2.Clear;
  for LX := 299 downto 0 do
    UnimAreaSeries2.Add(LX, (299 - LX).ToString);
  UnimChart1.RefreshData;
end;

end.
