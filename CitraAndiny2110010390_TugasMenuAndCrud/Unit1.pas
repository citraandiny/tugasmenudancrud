unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    FILE1: TMenuItem;
    DATAMASTER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    LAPORAN: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    KATEGORI1: TMenuItem;
    SATUAN1: TMenuItem;
    SUPPLIER1: TMenuItem;
    KUSTOMER1: TMenuItem;
    PENJUALAN1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    LAPORANSTOKBARANG1: TMenuItem;
    LAPORANBARANG1: TMenuItem;
    USER1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure KATEGORI1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
    procedure SATUAN1Click(Sender: TObject);
    procedure USER1Click(Sender: TObject);
    procedure SUPPLIER1Click(Sender: TObject);
    procedure LAPORANBARANG1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  IsLoggedIn: Boolean = False;

implementation

uses Unit2, Unit3, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
Form1.mm1.Items[1].Visible:= False;
Form1.mm1.Items[2].Visible:= False;
Form1.mm1.Items[3].Visible:= False;

end;

procedure TForm1.LOGIN1Click(Sender: TObject);
begin
  Form2.show;
  if IsLoggedIn = True then
  begin
  ShowMessage('Anda Telah Login! Harap Logout Terlebih Dahulu');
  Form2.Close;
  end
end;

procedure TForm1.KATEGORI1Click(Sender: TObject);
begin
  Form3.show;
end;

procedure TForm1.LOGOUT1Click(Sender: TObject);
begin
  ShowMessage('Anda Telah Berhasil Logout');
  IsLoggedIn := False;
  Form1.mm1.Items[1].Visible:= False;
  Form1.mm1.Items[2].Visible:= False;
  Form1.mm1.Items[3].Visible:= False;
end;

procedure TForm1.SATUAN1Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm1.USER1Click(Sender: TObject);
begin
Form6.show;
end;

procedure TForm1.SUPPLIER1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm1.LAPORANBARANG1Click(Sender: TObject);
begin
Form8.show;
end;

end.
