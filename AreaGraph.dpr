program AreaGraph;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  Form2m in 'Form2m.pas' {Form2: TUnimForm},
  Form3m in 'Form3m.pas' {Form3: TUnimForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
