unit KeyGen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, idHashMessageDigest, IniFiles, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Button3: TButton;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    function GetComputerNameFunc: string;
    procedure Label9Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ArqIni: TIniFile;

implementation

{$R *.dfm}

uses Unit3;

// MD5 Criptografia
procedure TForm1.Button1Click(Sender: TObject);

Var
  Md5: TidHashMessageDigest5;
  Str: String;
  Str3: String;
  Str4: String;
  Str5: String;
  Str6: String;
  Str7: String;
  Sai: String;

begin

  Md5 := TidHashMessageDigest5.Create;
  Str := label9.Caption;
  Str3 := Edit3.Text;
  Str4 := Edit4.Text;
  Str5 := Edit5.Text;
  Str6 := Edit6.Text;
  Str7 := Edit7.Text;

  Sai := Md5.HashStringAsHex((Str) + (Str3) + (Str4) + (Str5) + (Str6)
    + (Str7));
  Edit8.Text := Sai;
end;

procedure TForm1.Button3Click(Sender: TObject);

var
  Arquivo: TStringList;
begin
  Arquivo := TStringList.Create;

  try
    Arquivo.Add(Edit8.Text);
    Arquivo.SaveToFile
      ('C:\Users\Henrique\Desktop\Projeto Realtec\Win32\Debug\ARQUIVO.TXT');
  finally
    Arquivo.Free;
    ShowMessage('Chave Salva Com Sucesso.');
  end;
end;

// Mascara CPF


procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #8 then
    exit;

  if Length(Edit4.Text) = 3 then
  begin
    Edit4.Text := Edit4.Text + '.';
    Edit4.Selstart := Length(Edit4.Text);
  end;

  if Length(Edit4.Text) = 7 then
  begin
    Edit4.Text := Edit4.Text + '.';
    Edit4.Selstart := Length(Edit4.Text);
  end;

  if Length(Edit4.Text) = 11 then
  begin
    Edit4.Text := Edit4.Text + '-';
    Edit4.Selstart := Length(Edit4.Text);
  end
end;

// Mascara CNPJ
procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #8 then
    exit;

  if Length(Edit7.Text) = 2 then
  begin
    Edit7.Text := Edit7.Text + '.';
    Edit7.Selstart := Length(Edit7.Text);
  end;

  if Length(Edit7.Text) = 6 then
  begin
    Edit7.Text := Edit7.Text + '.';
    Edit7.Selstart := Length(Edit7.Text);
  end;

  if Length(Edit7.Text) = 10 then
  begin
    Edit7.Text := Edit7.Text + '/';
    Edit7.Selstart := Length(Edit7.Text);
  end;

  if Length(Edit7.Text) = 15 then
  begin
    Edit7.Text := Edit7.Text + '-';
    Edit7.Selstart := Length(Edit7.Text);
  end
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin

end;

// Mascara N�mero da Vers�o
procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #8 then
    exit;

  if Length(Edit5.Text) = 1 then
  begin
    Edit5.Text := Edit5.Text + '.';
    Edit5.Selstart := Length(Edit5.Text);
  end;

  if Length(Edit5.Text) = 4 then
  begin
    Edit5.Text := Edit5.Text + '.';
    Edit5.Selstart := Length(Edit5.Text);
  end;

  if Length(Edit5.Text) = 6 then
  begin
    Edit5.Text := Edit5.Text + '.';
    Edit5.Selstart := Length(Edit5.Text);
  end;

end;

// Fun��o pegar o Nome do Computador Onde o Programa est� sendo executado.
function GetComputerNameFunc: string;
var
  ipbuffer: string;
  nsize: dword;
begin
  nsize := 255;
  SetLength(ipbuffer, nsize);
  if GetComputerName(pchar(ipbuffer), nsize) then
    result := ipbuffer;
end;

procedure TForm1.FormShow(Sender: TObject);

begin
  Edit6.Text := DateToStr(Date());
  Edit3.Text := TimeToStr(Now);
end;

procedure TForm1.Label9Click(Sender: TObject);
begin
      label9.caption := GetComputerNameFunc;
end;

end.
