---
# Use this template for posts to the internal Docs blog.

title: Oracle Example 1
description: Access Oracle using CodeTyphon IDE
author: Giovani Perotto Mesquita
ms.date: 9/15/2020
ms.custom: public-doc
---

# Oracle access using CodeTyphon

## Summary
First example to how access Oracle database using the IDE [CodeTyphon](https://www.pilotlogic.com/sitejoom/index.php/projects/codetyphon-studio/) and [Oracle XE 18.4](https://www.oracle.com/database/technologies/xe-downloads.html).

## Architecture used on this example
- Docker to support the DB [Oracle Express Edition 18.4.0 on Oracle Linux 7](https://hub.docker.com/r/pvargacl/oracle-xe-18.4.0);
- IDE [CodeTyphon 7.20](https://www.pilotlogic.com/sitejoom/index.php/downloads.html?task=download.send&id=123&catid=14&m=0);

## The example
### Design
![Unit1.frm](./Unit1.png)
### Code
- File tree
```
.
├── lib
│   └── x86_64-win64
│       ├── OraExemplo1.compiled
│       ├── OraExemplo1.o
│       ├── OraExemplo1.obj
│       ├── OraExemplo1.res
│       ├── unit1.frm
│       ├── unit1.o
│       └── unit1.ppu
├── OraExemplo1.ctpr
├── OraExemplo1.ctps
├── OraExemplo1.exe
├── OraExemplo1.ico
├── OraExemplo1.ppr
├── OraExemplo1.res
├── readme.md
├── SQL1.sql
├── unit1.frm
├── unit1.pas
└── Unit1.PNG
```
- Unit1.pas
``` Pascal
unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, oracleconnection, SQLDB, DB, Forms, Controls, Graphics,
  Dialogs, DBGrids, DBCtrls, ShellCtrls, RxDBGrid;

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

{ TForm1 }

end.
```
- Unit1.frm
``` Pascal
object Form1: TForm1
  Left = 100
  Height = 600
  Top = 85
  Width = 800
  Caption = 'Form1'
  ClientHeight = 600
  ClientWidth = 800
  LCLVersion = '7.2'
  object DBNavigator1: TDBNavigator
    Left = 8
    Height = 40
    Top = 8
    Width = 400
    BevelOuter = bvNone
    ChildSizing.EnlargeHorizontal = crsScaleChilds
    ChildSizing.EnlargeVertical = crsScaleChilds
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 100
    ClientHeight = 40
    ClientWidth = 400
    DataSource = DS
    Options = []
    TabOrder = 0
  end
  object RxDBGrid1: TRxDBGrid
    Left = 8
    Height = 520
    Top = 72
    Width = 784
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = False
    AutoSort = True
    KeyStrokes = <    
      item
        Command = rxgcShowFindDlg
        ShortCut = 16454
        Enabled = True
      end    
      item
        Command = rxgcShowColumnsDlg
        ShortCut = 16471
        Enabled = True
      end    
      item
        Command = rxgcShowFilterDlg
        ShortCut = 16468
        Enabled = True
      end    
      item
        Command = rxgcShowSortDlg
        ShortCut = 16467
        Enabled = True
      end    
      item
        Command = rxgcShowQuickFilter
        ShortCut = 16465
        Enabled = True
      end    
      item
        Command = rxgcHideQuickFilter
        ShortCut = 16456
        Enabled = True
      end    
      item
        Command = rxgcSelectAll
        ShortCut = 16449
        Enabled = True
      end    
      item
        Command = rxgcDeSelectAll
        ShortCut = 16429
        Enabled = True
      end    
      item
        Command = rxgcInvertSelection
        ShortCut = 16426
        Enabled = True
      end    
      item
        Command = rxgcOptimizeColumnsWidth
        ShortCut = 16427
        Enabled = True
      end    
      item
        Command = rxgcCopyCellValue
        ShortCut = 16451
        Enabled = True
      end>
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgAllowQuickFilter]
    Color = clWindow
    DrawFullLine = False
    FocusColor = clRed
    SelectedColor = clHighlight
    GridLineStyle = psDot
    DataSource = DS
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
  end
  object Connect: TOracleConnection
    Connected = True
    LoginPrompt = False
    DatabaseName = 'XE'
    KeepConnection = False
    Password = 'Pm11092j'
    Transaction = Transaction
    UserName = 'C##GIOVANIPM'
    HostName = 'localhost'
    Left = 592
    Top = 8
  end
  object Transaction: TSQLTransaction
    Active = True
    Database = Connect
    Left = 648
    Top = 8
  end
  object Query: TSQLQuery
    IndexName = 'DEFAULT_ORDER'
    MaxIndexesCount = 4
    FieldDefs = <    
      item
        Name = 'Código'
        DataType = ftFloat
        Precision = -1
      end    
      item
        Name = '2nd Código'
        DataType = ftString
        Precision = -1
        Size = 25
      end    
      item
        Name = '3rd Código'
        DataType = ftString
        Precision = -1
        Size = 25
      end    
      item
        Name = 'Descrição 1'
        DataType = ftString
        Precision = -1
        Size = 30
      end    
      item
        Name = 'Descrição 2'
        DataType = ftString
        Precision = -1
        Size = 30
      end>
    Active = True
    Database = Connect
    Transaction = Transaction
    SQL.Strings = (
      'select'
      '    imitm        as "Código",'
      '    trim(imlitm) as "2nd Código",'
      '    trim(imaitm) as "3rd Código",'
      '    trim(imdsc1) as "Descrição 1",'
      '    trim(imdsc2) as "Descrição 2"'
      'from'
      '    C##GIOVANIPM.F4101'
      'order by'
      '    imitm'
    )
    UpdateSQL.Strings = (
      'update F4101'
      'set'
      'where'
      '   (IMITM = :OLD_IMITM)'
    )
    Params = <>
    Macros = <>
    Left = 704
    Top = 8
  end
  object DS: TDataSource
    DataSet = Query
    Left = 760
    Top = 8
  end
end
```

> [!IMPORTANT]
> The database scheme not present in this GitHub.