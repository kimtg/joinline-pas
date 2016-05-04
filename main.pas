unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, strutils;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonJoin: TButton;
    Edit1: TEdit;
    EditSep: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure ButtonJoinClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Text := 'foo' + #10 + 'bar' + #10 + 'baz';
end;

procedure TForm1.ButtonJoinClick(Sender: TObject);
begin
  Edit1.Text := replacestr(Memo1.Text, #10, EditSep.Text);
end;

end.

