program BookManagerFmx;

uses
  System.StartUpCopy,
  FMX.Forms,
  BaseForm in 'BaseForm.pas' {frmBase},
  MainForm in 'MainForm.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
