object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 432
  Width = 724
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=restaurante'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\hugov\Documents\Embarcadero\Studio\Projects\Back End\Si' +
      'stema Restaurante\Win32\Debug\lib\libmySQL.dll'
    Left = 112
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 24
  end
  object tb_cargo: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'restaurante.cargo'
    TableName = 'restaurante.cargo'
    Left = 40
    Top = 104
    object tb_cargoid: TFDAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_cargonome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
  end
  object dsCargo: TDataSource
    DataSet = tb_cargo
    Left = 88
    Top = 104
  end
  object dsFuncionarios: TDataSource
    DataSet = tb_funcionarios
    Left = 256
    Top = 104
  end
  object tb_funcionarios: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'restaurante.funcionarios'
    TableName = 'restaurante.funcionarios'
    Left = 176
    Top = 104
    object tb_funcionariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
      Visible = False
    end
    object tb_funcionariosnome: TStringField
      ConstraintErrorMessage = 'Preencher campo nome'
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 10
    end
    object tb_funcionarioscpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '000\.000\.000\-00;1;_'
      Size = 15
    end
    object tb_funcionariostelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object tb_funcionariosendereco: TStringField
      DisplayLabel = 'Endereco'
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 15
    end
    object tb_funcionarioscargo: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 10
    end
    object tb_funcionariosusuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 10
    end
    object tb_funcionariossenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object tb_funcionariosdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object queryFunc: TFDQuery
    Connection = FDConnection1
    Left = 40
    Top = 232
  end
  object queryConFunc: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from funcionarios order by id desc')
    Left = 104
    Top = 232
    object queryConFuncid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object queryConFuncnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object queryConFunccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
    object queryConFunctelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object queryConFuncendereco: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 10
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object queryConFunccargo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      DisplayWidth = 10
      FieldName = 'cargo'
      Origin = 'cargo'
    end
    object queryConFuncusuario: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 10
      FieldName = 'usuario'
      Origin = 'usuario'
    end
    object queryConFuncsenha: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Senha'
      DisplayWidth = 6
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object queryConFuncdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object dsConFuncionarios: TDataSource
    DataSet = queryConFunc
    Left = 184
    Top = 232
  end
end
