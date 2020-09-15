unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, SQLDB, DB, Forms, Controls, Graphics,
  Dialogs, DBGrids, DBCtrls, ButtonPanel, EditBtn, IniPropStorage,
  JSONPropStorage, ShellCtrls, Calendar, BrookFCLEventLogHandler,
  ZMQueryBuilder, vte_initree, SpkToolbar, RxDBGrid, RxSortZeos, RxSortSqlDB,
  RxCloseFormValidator, VpClock, plotpanel, BCImageButton, BGRANeoButton,
  BGRAKnob, BCButton, BCDefaultThemeManager, BCMaterialDesignButton, ubarcodes,
  StBarPN, LuiOrderedDataset, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    Connect: TOracleConnection;
    DBNavigator1: TDBNavigator;
    DS: TDataSource;
    Query: TSQLQuery;
    RxDBGrid1: TRxDBGrid;
    Transaction: TSQLTransaction;
    procedure JSONPropStorage1RestoreProperties(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.JSONPropStorage1RestoreProperties(Sender: TObject);
begin

end;

end.

