object dmDatabase: TdmDatabase
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSAcc')
    Left = 24
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 80
    Top = 24
  end
end
