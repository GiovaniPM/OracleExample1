unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, SQLDB, DB, Forms, Controls, Graphics,
  Dialogs, DBGrids, DBCtrls, BrookFCLEventLogHandler, ZMQueryBuilder, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    Connect: TOracleConnection;
    DBNavigator1: TDBNavigator;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    Query: TSQLQuery;
    Transaction: TSQLTransaction;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

end.

