unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    ImgBack: TImage;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnEntrar: TSpeedButton;
    procedure FormCreate(Sender: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;


implementation

{$R *.dfm}

uses Principal;


function ConverterRGB(r, g, b : Byte) : TColor;
begin
    Result := RGB(r, g, b);
end;



procedure ChamarLogin();
begin
     if (Trim(FrmLogin.edtUsuario.Text) <> '') and (Trim(FrmLogin.edtSenha.Text) <> '') then
      begin
             {AQUI ENTRA O LOGIN}

      end
      else
      begin
         MessageDlg('Preencha os Campos', mtInformation, mbOKCancel, 0);
      end;
end;


procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
ChamarLogin();
FrmPrincipal := TFrmPrincipal.Create(self);
FrmPrincipal.ShowModal;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
        {COR HEXADECIMAL}
       { FrmLogin.Color := $FFd9CD;   }

        {COR RBG}
         FrmLogin.Color := ConverterRGB(162, 249, 147);

end;



procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 13 then
         ChamarLogin()
end;

end.
