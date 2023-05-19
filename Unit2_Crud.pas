unit Unit2_Crud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txt_Id: TEdit;
    txt_Nome: TEdit;
    txt_telefone: TEdit;
    txt_email: TEdit;
    txt_Obs: TMemo;
    FDConnection1: TFDConnection;
    FDContatos: TFDTable;
    DataSource1: TDataSource;
    Btn_Salvar: TButton;
    Btn_Fechar: TButton;
    Conexao: TLabel;
    Btn_Novo: TButton;
    Btn_anterior: TButton;
    Btn_proximo: TButton;
    Btn_carregar: TButton;
    Btn_delete: TButton;
    Btn_Editar: TButton;
    Btn_Cancelar: TButton;
    Procurar: TEdit;
    SpeedButton1: TSpeedButton;
    procedure Btn_proximoClick(Sender: TObject);
    procedure Btn_anteriorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure carregar;
    procedure bloquear;
    procedure limpar;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure FDContatosBeforePost(DataSet: TDataSet);
    procedure Btn_carregarClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_deleteClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  estado: integer;

implementation

{$R *.dfm}

procedure TForm2.bloquear;
begin
  txt_Nome.Enabled     := not txt_Nome.Enabled;
  txt_Telefone.Enabled := not txt_Telefone.Enabled;
  txt_Email.Enabled    := not txt_Email.Enabled;
  txt_Obs.Enabled      := not txt_Obs.Enabled;
end;


procedure TForm2.limpar;
begin
  txt_Id.Text       := '';
  txt_Nome.Text     := '';
  txt_Telefone.Text := '';
  txt_Email.Text    := '';
  txt_Obs.Text      := '';
  txt_Nome.SetFocus;

end;


procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  if fdcontatos.FindKey([Procurar.text]) then
     carregar
  else
    showmessage('Dados nao encontrados');
end;

procedure TForm2.carregar;
begin
  txt_Id.Text       := fdcontatos.FieldByName('Id').Value;
  txt_Nome.Text     := fdcontatos.FieldByName('Nome').Value;
  txt_Telefone.Text := fdcontatos.FieldByName('Telefone').Value;
  txt_Email.Text    := fdcontatos.FieldByName('Email').Value;
  txt_Obs.Text      := fdcontatos.FieldByName('Observações').Value;

  if fdcontatos.FieldByName('Observações').Value = NULL then
    txt_Obs.Text := ''
  else
    txt_Obs.Text := fdcontatos.FieldByName('Observações').Value;

end;

procedure TForm2.FDContatosBeforePost(DataSet: TDataSet);
begin
  fdcontatos.FieldByName('Nome').Value          :=  txt_Nome.Text;
  fdcontatos.FieldByName('Telefone').Value      :=  txt_Telefone.Text;
  fdcontatos.FieldByName('Email').Value         :=  txt_Email.Text;
  fdcontatos.FieldByName('Observações').Value   :=  txt_Obs.Text;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
    fdconnection1.Params.Database :=  (GetCurrentDir+'\Assets\Contatos.mdb');
    fdconnection1.Connected       := true;
    fdcontatos.TableName          := 'contatos';
    fdcontatos.Active             := true;

    if fdconnection1.Connected = true then
      begin
        conexao.Caption := 'Conectado';
        carregar;
      end;
end;

procedure TForm2.Btn_anteriorClick(Sender: TObject);
begin
 fdcontatos.Prior;
 carregar;
end;

procedure TForm2.Btn_CancelarClick(Sender: TObject);
begin
  limpar;
  if estado = 1 then
    fdcontatos.Prior;
  carregar;
  bloquear;
  estado := 0;
end;

procedure TForm2.Btn_NovoClick(Sender: TObject);
begin
  fdcontatos.Insert;
  bloquear;
  limpar;
  estado := 1;
end;

procedure TForm2.Btn_SalvarClick(Sender: TObject);
begin
  fdcontatos.Post;
  bloquear;
  showmessage ('Dados gravados com sucesso!');
  txt_Id.Text       := '';
  txt_Nome.Text     := '';
  txt_Telefone.Text := '';
  txt_Email.Text    := '';
  txt_Obs.Text      := '';
end;

procedure TForm2.Btn_carregarClick(Sender: TObject);
begin
  carregar;
end;

procedure TForm2.Btn_deleteClick(Sender: TObject);
begin
fdcontatos.Delete;
carregar;
end;

procedure TForm2.Btn_EditarClick(Sender: TObject);
begin
  bloquear;
  fdcontatos.Edit;

end;

procedure TForm2.Btn_FecharClick(Sender: TObject);
begin
  FORM2.Close;
end;

procedure TForm2.Btn_proximoClick(Sender: TObject);
begin
  fdcontatos.Next;
  carregar;
end;






end.
