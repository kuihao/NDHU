unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient;

type
  TForm1 = class(TForm)
    TCPC: TIdTCPClient;
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
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
var s: string; ms: TMemorystream; k,len: integer;
begin
    TCPC.Connect(); len:=0;
    if TCPC.Connected=true then
    begin
        TCPC.writeln('GET /Koala.jpg HTTP/1.0');
        TCPC.WriteLn('');

        //Content-Length:
        repeat
           s:= TCPC.ReadLn();
           k:=pos('Content-Length:',s);
           if k>0 then
           begin
               len:=strtoint(copy(s,16,10000));
           end;

           listbox1.Items.Add(s);
        until s='';

        if len>0 then
        begin
          ms:=TMemoryStream.Create;
          TCPC.ReadStream(ms,len);
          ms.SaveToFile('d:\xxx.jpg'); ms.Free;
        end;
        TCPC.Disconnect;
    end;
end;

end.
