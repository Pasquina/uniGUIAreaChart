unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniChart, unimChart, uniPanel, uniPageControl, unimTabPanel, uniGUIBaseClasses,
  uniButton, unimButton, Form2m, Form3m;

type
  TMainmForm = class(TUnimForm)
    UnimTabPanel1: TUnimTabPanel;
    tsChart: TUnimTabSheet;
    tsButtons: TUnimTabSheet;
    UnimChart1: TUnimChart;
    UnimAreaSeries1: TUnimAreaSeries;
    UnimAreaSeries2: TUnimAreaSeries;
    btPopulateChart: TUnimButton;
    btOpenForm2: TUnimButton;
    btClearChart: TUnimButton;
    btOpenForm3: TUnimButton;
    procedure btPopulateChartClick(Sender: TObject);
    procedure btClearChartClick(Sender: TObject);
    procedure btOpenForm2Click(Sender: TObject);
    procedure btOpenForm3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btClearChartClick(Sender: TObject);
begin
  UnimAreaSeries1.Clear;
  UnimAreaSeries2.Clear;
  UnimChart1.RefreshData;
end;

procedure TMainmForm.btOpenForm2Click(Sender: TObject);
begin
  Form2.Show();
end;

procedure TMainmForm.btOpenForm3Click(Sender: TObject);
begin
  Form3.Show();
end;

procedure TMainmForm.btPopulateChartClick(Sender: TObject);
var
  LX: Integer;
begin
  UnimAreaSeries1.Clear;
  for LX := 0 to 99 do
    UnimAreaSeries1.Add(LX, (99 - LX).ToString);
  UnimAreaSeries2.Clear;
  for LX := 99 downto 0 do
    UnimAreaSeries2.Add(LX, (99 - LX).ToString);
  UnimChart1.RefreshData;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
