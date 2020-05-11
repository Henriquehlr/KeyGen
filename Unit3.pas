unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, KeyGen, Unit4;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Edit9: TEdit;
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}





procedure TForm3.Button2Click(Sender: TObject);
begin
begin
  if (Edit9.Text <> form1.Edit8.Text) then
  begin
    ShowMessage('Chave Invalida' + #13 + #13 +
      'Entre em Contato com o Suporte.');
  end
  else if (Edit9.Text = '') then
  begin
    ShowMessage('Chave Invalida' + #13 + #13 +
      'Você deve preenhcer o campo validar chave.');
  end
  else
  begin
    begin
      ShowMessage('Chave Validada Com Sucesso,' + #13 + #13 +
        'Bem Vindo ao Neo System');
      form4.show;
    end
  end
end;

end;
end.
