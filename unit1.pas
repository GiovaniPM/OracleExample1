unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, SQLDB, DB, Forms, Controls, Graphics,
  Dialogs, DBGrids, DBCtrls, BrookFCLEventLogHandler, ZMQueryBuilder,
  vte_initree, SpkToolbar, RxDBGrid, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    Connect: TOracleConnection;
    DBNavigator1: TDBNavigator;
    DS: TDataSource;
    Query: TSQLQuery;
    RxDBGrid1: TRxDBGrid;
    Transaction: TSQLTransaction;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

end.

