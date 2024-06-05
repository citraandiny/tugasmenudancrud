object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 791
  Top = 100
  Height = 209
  Width = 457
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 4\Visual 2\Delphi\libmysql.dll'
    Left = 40
    Top = 16
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 112
    Top = 16
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 112
    Top = 88
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 168
    Top = 16
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 224
    Top = 16
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 272
    Top = 16
  end
  object Zbarang: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 328
    Top = 16
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 168
    Top = 88
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 224
    Top = 88
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 280
    Top = 88
  end
  object dsbarang: TDataSource
    DataSet = Zbarang
    Left = 336
    Top = 88
  end
end
