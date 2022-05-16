program tikal;

uses
  System.StartUpCopy,
  FMX.Forms,
  TabbedTemplate in 'TabbedTemplate.pas' {uAna};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TuAna, uAna);
  Application.Run;
end.
