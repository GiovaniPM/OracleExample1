unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, SQLDB, DB, Forms, Controls, Graphics,
  Dialogs, DBGrids, FZDB, mooncomp, BGRAButton, BCRadialProgressBar, BCPanel,
  ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    DSOracle: TDataSource;
    DBGrid1: TDBGrid;
    Oracle: TOracleConnection;
    SQLOracle: TSQLQuery;
    TraOracle: TSQLTransaction;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

