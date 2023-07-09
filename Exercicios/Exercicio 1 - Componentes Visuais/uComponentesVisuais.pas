unit uComponentesVisuais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    pnlRodape: TPanel;
    PageControl: TPageControl;
    tsAba1: TTabSheet;
    tsAba2: TTabSheet;
    tsAba3: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBoxSenha: TGroupBox;
    edtSenha: TEdit;
    lblSenha: TLabel;
    RadioGroupItens: TRadioGroup;
    ListBoxSelecionados: TListBox;
    lblItensSelecionados: TLabel;
    btnSelecionarItem: TButton;
    Button2: TButton;
    MemoObs: TMemo;
    lblObs: TLabel;
    Button3: TButton;
    Button4: TButton;
    btnExibirForm: TButton;
    ImageList: TImageList;
    Button1: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure FormShow(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSelecionarItemClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnExibirFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmTimer;

procedure TfrmPrincipal.btnExibirFormClick(Sender: TObject);
begin
  frmTimer.ShowModal;
end;

procedure TfrmPrincipal.btnSelecionarItemClick(Sender: TObject);
begin
  if RadioGroupItens.ItemIndex >= 0 then
    begin
      ListBoxSelecionados.Items.Add(
      RadioGroupItens.Items[RadioGroupItens.ItemIndex]);
      RadioGroupItens.ItemIndex := -1;
    end
    else
      ShowMessage('Nenhum item foi selecionado');

end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  PageControl.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  ListBoxSelecionados.Items.Clear;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
MemoObs.SelectAll;
MemoObs.SetFocus;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
MemoObs.Lines.Clear;
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
  PageControl.ActivePageIndex := 2;
end;

procedure TfrmPrincipal.Button7Click(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
end;

procedure TfrmPrincipal.Button8Click(Sender: TObject);
begin
  PageControl.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.edtSenhaEnter(Sender: TObject);
begin
  edtSenha.Color := $00B9FFFF;
end;

procedure TfrmPrincipal.edtSenhaExit(Sender: TObject);
begin
  if edtSenha.Text = '' then
    begin

      ShowMessage('Você não digitou nenhum conteudo');
      edtSenha.SetFocus;

    end
    else
      if Length(edtSenha.Text) <> 4 then
        begin

        ShowMessage('Voce não digitou 4 caracteres');
        edtSenha.SetFocus;
        edtSenha.SelectAll;

        end
        else
          edtSenha.Color := clWindow;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  pnlTitulo.Caption := 'Mudando o Caption do Panel no OnShow';
  pnlTitulo.Color := $00B9FFFF ;
end;

end.
