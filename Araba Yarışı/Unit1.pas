unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  iRightSlide,iRightBorder,r,x:Integer;

begin
 iRightSlide:=Image1.Left+Image1.Width;
 iRightBorder:=Panel1.Width;

 if (iRightSlide>=iRightBorder) then
 begin
  Image1.Left:=10;
  Image2.Left:=8;
  Timer1.Enabled:=False;
  ShowMessage('yar?? bitti');
 end

 else
 begin
   Image1.Left:=Image1.Left+20;
   Image2.Left:=Image2.Left+18;
 end;

end;

end.
