program Project_Crud;

uses
  Vcl.Forms,
  Unit2_Crud in 'Unit2_Crud.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
