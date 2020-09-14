object Form1: TForm1
  Left = 486
  Height = 600
  Top = 156
  Width = 800
  Caption = 'Form1'
  ClientHeight = 600
  ClientWidth = 800
  OnCreate = FormCreate
  LCLVersion = '7.2'
  object DBGrid1: TDBGrid
    Left = 8
    Height = 488
    Top = 104
    Width = 784
    Color = clWindow
    Columns = <    
      item
        Title.Caption = 'Código'
        FieldName = 'Código'
      end    
      item
        Title.Caption = '2nd Código'
        FieldName = '2nd Código'
      end    
      item
        Title.Caption = '3rd Código'
        FieldName = '3rd Código'
      end    
      item
        Title.Caption = 'Descrição 1'
        FieldName = 'Descrição 1'
      end    
      item
        Title.Caption = 'Descrição 2'
        FieldName = 'Descrição 2'
      end>
    DataSource = DSOracle
    TabOrder = 0
  end
  object Oracle: TOracleConnection
    Connected = True
    LoginPrompt = False
    DatabaseName = 'XE'
    KeepConnection = False
    Password = 'Pm11092j'
    Transaction = TraOracle
    UserName = 'C##GIOVANIPM'
    HostName = 'localhost'
    Left = 40
    Top = 24
  end
  object DSOracle: TDataSource
    DataSet = SQLOracle
    Left = 208
    Top = 24
  end
  object SQLOracle: TSQLQuery
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
    AutoCalcFields = False
    Database = Oracle
    Transaction = TraOracle
    ReadOnly = True
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
    ParamCheck = False
    Macros = <    
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ParseSQL = False
    UsePrimaryKeyAsKey = False
    Left = 96
    Top = 24
  end
  object TraOracle: TSQLTransaction
    Active = True
    Database = Oracle
    Left = 152
    Top = 24
  end
end
