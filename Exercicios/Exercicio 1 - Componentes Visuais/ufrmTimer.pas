unit ufrmTimer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmTimer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    lblDataHora: TLabel;
    lblTimer: TLabel;
    Timer: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTimer: TfrmTimer;

implementation

{$R *.dfm}

procedure TfrmTimer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer.Enabled := False;
end;

procedure TfrmTimer.FormShow(Sender: TObject);
begin
  Timer.Enabled := True;
  lblTimer.Caption := FormatDateTime ('dd/mm/yyyy hh:mm:ss', now);
end;

end.
