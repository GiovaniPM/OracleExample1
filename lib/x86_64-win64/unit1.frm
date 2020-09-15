object Form1: TForm1
  Left = 486
  Height = 600
  Top = 156
  Width = 800
  Caption = 'Form1'
  ClientHeight = 600
  ClientWidth = 800
  LCLVersion = '7.2'
  object DBGrid1: TDBGrid
    Left = 0
    Height = 520
    Top = 72
    Width = 800
    Color = clWindow
    Columns = <>
    DataSource = DS
    TabOrder = 0
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
    Left = 16
    Top = 16
  end
  object Transaction: TSQLTransaction
    Active = True
    Database = Connect
    Left = 72
    Top = 16
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
    Params = <>
    Macros = <>
    Left = 128
    Top = 16
  end
  object DS: TDataSource
    DataSet = Query
    Left = 184
    Top = 16
  end
end
