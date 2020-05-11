unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, KeyGen, Unit3;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  tentativas: integer; // variavel para contar a quantidade de tentativas.

implementation

{$R *.dfm}

//Validação Usuario
procedure TForm2.Button1Click(Sender: TObject);

begin
  if tentativas = 3 then
  begin
    Button2.Enabled := false; // desabilita o botão após três tentativas
    ShowMessage('Numero de tentativas excedidos');
  end
  else // verifica usuario e senha
  begin
    if (Edit1.text = 'apereira') and (Edit2.text = 'rhrules') then
    begin
      form1.show; // chama formulario 1.
    end
    else if (Edit1.text = 'irodrigues') and (Edit2.text = 'harleys2') then
    begin
      form1.show;
    end
    else if (Edit1.text = 'scastro') and (Edit2.text = 'neomeufilho') then
    begin
      form1.show;
    end
    else if (Edit1.text = 'henrique') and (Edit2.text = '1234') then
    begin
      form1.show;
    end
    else
    begin
      tentativas := tentativas + 1;
      ShowMessage('Usuario ou senha Invalido');
    end;
  end;
end;


procedure TForm2.Button2Click(Sender: TObject);

begin
  if tentativas = 3 then
  begin
    Button2.Enabled := false; // desabilita o botão após três tentativas
    ShowMessage('Numero de tentativas excedidos');
  end
  else // verifica usuario e senha
  begin
    if (Edit1.text = 'apereira') and (Edit2.text = 'rhrules') then
    begin
      form1.show; // chama formulario 1.
    end
    else if (Edit1.text = 'irodrigues') and (Edit2.text = 'harleys2') then
    begin
      form1.show;
    end
    else if (Edit1.text = 'scastro') and (Edit2.text = 'neomeufilho') then
    begin
      form1.show;
    end
    else if (Edit1.text = 'henrique') and (Edit2.text = '1234') then
    begin
      form1.show;
    end
    else
    begin
      tentativas := tentativas + 1;
      ShowMessage('Usuario ou senha Invalido');
    end;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);

begin
  if tentativas = 3 then
  begin
    Button2.Enabled := false; // desabilita o botão após três tentativas
    ShowMessage('Numero de tentativas excedidos');
  end
  else // verifica usuario e senha
  begin
    if (Edit1.text = 'apereira') and (Edit2.text = 'rhrules') then
    begin
      form1.show; // chama formulario 1.
    end
    else if (Edit1.text = 'irodrigues') and (Edit2.text = 'harleys2') then
    begin
      form1.show;
    end
    else if (Edit1.text = 'scastro') and (Edit2.text = 'neomeufilho') then
    begin
      form1.show;
    end
    else if (Edit1.text = 'henrique') and (Edit2.text = '1234') then
    begin
      form3.show;
    end
    else
    begin
      tentativas := tentativas + 1;
      ShowMessage('Usuario ou senha Invalido');
    end;
  end;
end;



end.
