unit UnitCalculadoraSimples;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFPrincipal = class(TForm)
    PanelRodape: TPanel;
    PanelClient: TPanel;
    PanelTop: TPanel;
    EditVisor: TEdit;
    ButtonUm: TButton;
    ButtonDois: TButton;
    ButtonTres: TButton;
    ButtonMais: TButton;
    ButtonMaisMenos: TButton;
    ButtonQuatro: TButton;
    ButtonSete: TButton;
    ButtonC: TButton;
    ButtonCinco: TButton;
    ButtonSeis: TButton;
    ButtonOito: TButton;
    ButtonNove: TButton;
    ButtonZero: TButton;
    ButtonMenos: TButton;
    ButtonDividir: TButton;
    ButtonVezes: TButton;
    ButtonIgual: TButton;
    LabelRodape: TLabel;
    EditHistorico: TEdit;

    procedure ButtonUmClick(Sender: TObject);
    procedure ButtonDoisClick(Sender: TObject);
    procedure ButtonTresClick(Sender: TObject);
    procedure ButtonQuatroClick(Sender: TObject);
    procedure ButtonCincoClick(Sender: TObject);
    procedure ButtonSeisClick(Sender: TObject);
    procedure ButtonSeteClick(Sender: TObject);
    procedure ButtonOitoClick(Sender: TObject);
    procedure ButtonNoveClick(Sender: TObject);
    procedure ButtonZeroClick(Sender: TObject);
    procedure ButtonMaisClick(Sender: TObject);
    procedure ButtonMenosClick(Sender: TObject);
    procedure ButtonDividirClick(Sender: TObject);
    procedure ButtonVezesClick(Sender: TObject);
    procedure ButtonMaisMenosClick(Sender: TObject);
    procedure ButtonCClick(Sender: TObject);
    procedure ButtonIgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    private
      { Private declarations }
    public
      { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  valor1 : real;
  valor2 : real;
  funcao : integer;

implementation
  {$R *.dfm}

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  valor1 := 0;
  valor2 := 0;
end;

procedure TFPrincipal.ButtonUmClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonDoisClick(Sender: TObject);
begin
  EditVisor.Text:= EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonTresClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonQuatroClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonCincoClick(Sender: TObject);
begin
    EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonSeisClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonSeteClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonOitoClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonNoveClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonZeroClick(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + (Sender as TButton).Caption;
end;

procedure TFPrincipal.ButtonCClick(Sender: TObject);
begin
    EditVisor.Text := '';
    EditHistorico.Text := '';
end;

procedure TFPrincipal.ButtonDividirClick(Sender: TObject);
begin
  valor1:= StrToFloat(EditVisor.Text);
  EditHistorico.Text := EditVisor.Text + '�';
  EditVisor.Text:= '';
  funcao:= 4;
end;

procedure TFPrincipal.ButtonMaisClick(Sender: TObject);
begin
    valor1:= StrToFloat(EditVisor.Text);
    EditHistorico.Text := EditVisor.Text + '+';
    EditVisor.Text:= '';
    funcao:= 1;
end;

procedure TFPrincipal.ButtonMenosClick(Sender: TObject);
begin
  valor1 := StrToFloat(EditVisor.Text);
  EditHistorico.Text := EditVisor.Text + '-';
  EditVisor.Text := '';
  funcao := 2;
end;

procedure TFPrincipal.ButtonVezesClick(Sender: TObject);
begin
  valor1 := StrToFloat(EditVisor.Text);
  EditHistorico.Text := EditVisor.Text + 'x';
  EditVisor.Text := '';
  funcao := 3;
end;

procedure TFPrincipal.ButtonMaisMenosClick(Sender: TObject);
begin
  if (EditVisor.Text = '-') then
    begin
    EditVisor.Text := '';
    end
      else
        EditVisor.Text := '-' + EditVisor.Text;
end;

procedure TFPrincipal.ButtonIgualClick(Sender: TObject);
var
  Lresultado: real;
begin
  valor2:= StrToFloat(EditVisor.Text);
  case (funcao) of
    1:
    begin
      Lresultado:= valor1 + valor2;
      EditHistorico.Text := FloatToStr(valor1) + '+' + FloatToStr(valor2) + '=';
      EditVisor.Text := FloatToStr(Lresultado);
    end;
    2:
    begin
      Lresultado:= valor1 - valor2;
      EditHistorico.Text := FloatToStr(valor1) + '-' + FloatToStr(valor2) + '=';
      EditVisor.Text := FloatToStr(Lresultado);
    end;
    3:
    begin
      Lresultado:= valor1 * valor2;
      EditHistorico.Text := FloatToStr(valor1) + 'x' + FloatToStr(valor2) + '=';
      EditVisor.Text := FloatToStr(Lresultado);
    end;
    4:
    begin
      if (valor2 <> 0) then
        begin
          Lresultado:= valor1 / valor2;
          EditHistorico.Text := FloatToStr(valor1) + '�' + FloatToStr(valor2) + '=';
          EditVisor.Text:= FloatToStr(Lresultado);
        end
      else
        begin
          ShowMessage('Divis�o por zero');
          EditVisor.Text:= 'ERROR';
        end;
    end;
    end;
end;

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_NUMPAD1 then
    ButtonUm.Click;
  if Key = VK_NUMPAD2 then
    ButtonDois.Click;
  if Key = VK_NUMPAD3 then
    ButtonTres.Click;
  if Key = VK_NUMPAD4 then
    ButtonQuatro.Click;
  if Key = VK_NUMPAD5 then
    ButtonCinco.Click;
  if Key = VK_NUMPAD6 then
     ButtonSeis.Click;
  if Key = VK_NUMPAD7 then
     ButtonSete.Click;
  if Key = VK_NUMPAD8 then
     ButtonOito.Click;
  if Key = VK_NUMPAD9 then
     ButtonNove.Click;
  if Key = VK_NUMPAD0 then
     ButtonZero.Click;
  if Key = VK_ADD then
     ButtonMais.Click;
  if Key = VK_SUBTRACT then
     ButtonMenos.Click;
  if Key = VK_MULTIPLY then
     ButtonVezes.Click;
  if Key = VK_DIVIDE then
     ButtonDividir.Click;
  if Key = VK_RETURN then
     ButtonIgual.Click;
  if Key = VK_DELETE then
     ButtonC.Click;
end;

end.
