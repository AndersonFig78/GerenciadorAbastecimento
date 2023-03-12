object dtmAcoesBanco: TdtmAcoesBanco
  OldCreateOrder = False
  Height = 509
  Width = 610
  object cnnBanco: TFDConnection
    Params.Strings = (
      
        'Database=E:\Anderson\Projetos\GerenciadorAbastecimento\banco\dbA' +
        'bastecimento.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object qryTiposMestre: TFDQuery
    AfterInsert = qryTiposMestreAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    TiposMestreId,'
      '    Descricao,'
      '    Ativo,'
      '    InseridoEm'
      'from TiposMestre'
      'order by Descricao')
    Left = 156
    Top = 40
    object qryTiposMestreTiposMestreId: TFDAutoIncField
      FieldName = 'TiposMestreId'
      Origin = 'TiposMestreId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryTiposMestreDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
    object qryTiposMestreAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryTiposMestreInseridoEm: TDateTimeField
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
  end
  object qryTipos: TFDQuery
    AfterClose = qryTiposAfterClose
    AfterInsert = qryTiposAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    TiposId,'
      '    TiposMestreId,'
      '    Descricao,'
      '    Ativo,'
      '    InseridoEm'
      'from Tipos'
      'order by TiposMestreId,'
      'Descricao')
    Left = 156
    Top = 108
    object qryTiposTiposId: TFDAutoIncField
      FieldName = 'TiposId'
      Origin = 'TiposId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryTiposTiposMestreId: TIntegerField
      FieldName = 'TiposMestreId'
      Origin = 'TiposMestreId'
    end
    object qryTiposDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
    object qryTiposAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryTiposInseridoEm: TDateTimeField
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
    object qryTiposTiposMestreDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'TiposMestreDescricao'
      LookupDataSet = qryTiposMestre
      LookupKeyFields = 'TiposMestreId'
      LookupResultField = 'Descricao'
      KeyFields = 'TiposMestreId'
      Lookup = True
    end
  end
  object qryImposto: TFDQuery
    AfterInsert = qryImpostoAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    ImpostoId,'
      '    Descricao,'
      '    Taxa,'
      '    Formula,'
      '    Ativo,'
      '    InseridoEm'
      'from Imposto'
      'order by ImpostoId')
    Left = 152
    Top = 168
    object qryImpostoImpostoId: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ImpostoId'
      Origin = 'ImpostoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryImpostoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
    object qryImpostoTaxa: TBCDField
      Alignment = taCenter
      FieldName = 'Taxa'
      Origin = 'Taxa'
      Required = True
      Precision = 4
    end
    object qryImpostoFormula: TStringField
      Alignment = taCenter
      FieldName = 'Formula'
      Origin = 'Formula'
    end
    object qryImpostoAtivo: TBooleanField
      Alignment = taCenter
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryImpostoInseridoEm: TDateTimeField
      DisplayLabel = 'Inserido Em'
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
  end
  object qryValorCombustivel: TFDQuery
    AfterClose = qryValorCombustivelAfterClose
    AfterInsert = qryValorCombustivelAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select '
      '    ValorCombustivelId,'
      '    CombustivelTiposId,'
      '    ValorLitro,'
      '    Ativo,'
      '    InseridoEm        '
      'from ValorCombustivel'
      'order by '
      '    CombustivelTiposId,'
      '    Ativo desc')
    Left = 152
    Top = 228
    object qryValorCombustivelValorCombustivelId: TFDAutoIncField
      FieldName = 'ValorCombustivelId'
      Origin = 'ValorCombustivelId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryValorCombustivelCombustivelTiposId: TIntegerField
      FieldName = 'CombustivelTiposId'
      Origin = 'CombustivelTiposId'
      Required = True
    end
    object qryValorCombustivelValorLitro: TBCDField
      FieldName = 'ValorLitro'
      Origin = 'ValorLitro'
      Required = True
      Precision = 4
    end
    object qryValorCombustivelAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryValorCombustivelInseridoEm: TDateTimeField
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
    object qryValorCombustivelCombustivelDescrical: TStringField
      FieldKind = fkLookup
      FieldName = 'CombustivelDescrical'
      LookupDataSet = qryTipos
      LookupKeyFields = 'TiposId'
      LookupResultField = 'Descricao'
      KeyFields = 'CombustivelTiposId'
      Lookup = True
    end
  end
  object qryTanque: TFDQuery
    AfterClose = qryTanqueAfterClose
    AfterInsert = qryTanqueAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    TanqueId,'
      '    Descricao,'
      '    CombustivelTiposId,'
      '    Capacidade,'
      '    SituacaoAtual,'
      '    Ativo,'
      '    InseridoEm'
      'from Tanque'
      'order by CombustivelTiposId,'
      'TanqueId')
    Left = 364
    Top = 48
    object qryTanqueTanqueId: TFDAutoIncField
      FieldName = 'TanqueId'
      Origin = 'TanqueId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryTanqueDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
    object qryTanqueCombustivelTiposId: TIntegerField
      FieldName = 'CombustivelTiposId'
      Origin = 'CombustivelTiposId'
      Required = True
    end
    object qryTanqueCapacidade: TIntegerField
      FieldName = 'Capacidade'
      Origin = 'Capacidade'
      Required = True
    end
    object qryTanqueSituacaoAtual: TIntegerField
      FieldName = 'SituacaoAtual'
      Origin = 'SituacaoAtual'
      Required = True
    end
    object qryTanqueAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryTanqueInseridoEm: TDateTimeField
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
    object qryTanqueCombustivelDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'CombustivelDescricao'
      LookupDataSet = qryTipos
      LookupKeyFields = 'TiposId'
      LookupResultField = 'Descricao'
      KeyFields = 'CombustivelTiposId'
      Lookup = True
    end
  end
  object qryFuncionario: TFDQuery
    AfterClose = qryFuncionarioAfterClose
    AfterInsert = qryFuncionarioAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    FuncionarioId,'
      '    Nome,'
      '    CargoTiposId,'
      '    Ativo,'
      '    InseridoEm'
      'from Funcionario'
      'order by CargoTiposId,'
      'FuncionarioId')
    Left = 364
    Top = 116
    object qryFuncionarioFuncionarioId: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FuncionarioId'
      Origin = 'FuncionarioId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFuncionarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 120
    end
    object qryFuncionarioCargoTiposId: TIntegerField
      FieldName = 'CargoTiposId'
      Origin = 'CargoTiposId'
      Required = True
    end
    object qryFuncionarioAtivo: TBooleanField
      Alignment = taCenter
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryFuncionarioInseridoEm: TDateTimeField
      DisplayLabel = 'Inserido Em'
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
    object qryFuncionarioCargoDescicao: TStringField
      DisplayLabel = 'Cargo'
      FieldKind = fkLookup
      FieldName = 'CargoDescicao'
      LookupDataSet = qryTipos
      LookupKeyFields = 'TiposId'
      LookupResultField = 'Descricao'
      KeyFields = 'CargoTiposId'
      Lookup = True
    end
  end
  object qryBomba: TFDQuery
    AfterClose = qryBombaAfterClose
    AfterInsert = qryBombaAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select '
      '    BombaId,'
      '    Descricao,'
      '    TanqueId,'
      '    Ativo,'
      '    InseridoEm'
      'from Bomba'
      'order by TanqueId,'
      'BombaId')
    Left = 368
    Top = 172
    object qryBombaBombaId: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BombaId'
      Origin = 'BombaId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryBombaDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
    object qryBombaTanqueId: TIntegerField
      FieldName = 'TanqueId'
      Origin = 'TanqueId'
      Required = True
    end
    object qryBombaAtivo: TBooleanField
      Alignment = taCenter
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryBombaInseridoEm: TDateTimeField
      DisplayLabel = 'Inserido Em'
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
    object strngfldBombaTanqueDescricao: TStringField
      DisplayLabel = 'Tanque'
      FieldKind = fkLookup
      FieldName = 'TanqueDescricao'
      LookupDataSet = qryTanque
      LookupKeyFields = 'TanqueId'
      LookupResultField = 'Descricao'
      KeyFields = 'TanqueId'
      Lookup = True
    end
    object qryBombaCombustivelDescricao: TStringField
      DisplayLabel = 'Combust'#237'vel'
      FieldKind = fkLookup
      FieldName = 'CombustivelDescricao'
      LookupDataSet = qryTanque
      LookupKeyFields = 'TanqueId'
      LookupResultField = 'CombustivelDescricao'
      KeyFields = 'TanqueId'
      Lookup = True
    end
  end
  object qryAbastecimento: TFDQuery
    AfterClose = qryAbastecimentoAfterClose
    AfterInsert = qryAbastecimentoAfterInsert
    Connection = cnnBanco
    SQL.Strings = (
      'select '
      '    AbastecimentoId,'
      '    FuncinarioId,'
      '    BombaId,'
      '    FormaPagamentoTiposId,'
      '    ValorCombustivelId,'
      '    Litros,'
      '    ImpostoId,'
      '    Valor,'
      '    Ativo,'
      'InseridoEm'
      'from Abastecimento'
      'order by BombaId,'
      'AbastecimentoId')
    Left = 368
    Top = 228
    object qryAbastecimentoAbastecimentoId: TFDAutoIncField
      FieldName = 'AbastecimentoId'
      Origin = 'AbastecimentoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryAbastecimentoFuncinarioId: TIntegerField
      FieldName = 'FuncinarioId'
      Origin = 'FuncinarioId'
      Required = True
    end
    object qryAbastecimentoBombaId: TIntegerField
      FieldName = 'BombaId'
      Origin = 'BombaId'
      Required = True
    end
    object qryAbastecimentoFormaPagamentoTiposId: TIntegerField
      FieldName = 'FormaPagamentoTiposId'
      Origin = 'FormaPagamentoTiposId'
      Required = True
    end
    object qryAbastecimentoValorCombustivelId: TIntegerField
      FieldName = 'ValorCombustivelId'
      Origin = 'ValorCombustivelId'
      Required = True
    end
    object qryAbastecimentoLitros: TIntegerField
      FieldName = 'Litros'
      Origin = 'Litros'
      Required = True
    end
    object qryAbastecimentoImpostoId: TIntegerField
      FieldName = 'ImpostoId'
      Origin = 'ImpostoId'
      Required = True
    end
    object qryAbastecimentoValor: TBCDField
      FieldName = 'Valor'
      Origin = 'Valor'
      Required = True
      Precision = 5
      Size = 2
    end
    object qryAbastecimentoAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'Ativo'
      Required = True
    end
    object qryAbastecimentoInseridoEm: TDateTimeField
      FieldName = 'InseridoEm'
      Origin = 'InseridoEm'
      Required = True
    end
  end
  object dsAbastecimento: TDataSource
    DataSet = qryAbastecimento
    Left = 460
    Top = 228
  end
  object dsBomba: TDataSource
    DataSet = qryBomba
    Left = 460
    Top = 172
  end
  object dsFuncionario: TDataSource
    DataSet = qryFuncionario
    Left = 460
    Top = 116
  end
  object dsTanque: TDataSource
    DataSet = qryTanque
    Left = 452
    Top = 52
  end
  object dsValorCombustivel: TDataSource
    DataSet = qryValorCombustivel
    Left = 256
    Top = 228
  end
  object dsImposto: TDataSource
    DataSet = qryImposto
    Left = 256
    Top = 164
  end
  object dsTipos: TDataSource
    DataSet = qryTipos
    Left = 256
    Top = 104
  end
  object dsTiposMestre: TDataSource
    DataSet = qryTiposMestre
    Left = 256
    Top = 44
  end
  object SQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 44
    Top = 92
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 44
    Top = 148
  end
  object qryCombusiveis: TFDQuery
    Connection = cnnBanco
    SQL.Strings = (
      'select '
      '    TiposId,'
      '    Descricao'
      'from Tipos'
      'where TiposMestreId = 3'
      'and Ativo = 1'
      'order by descricao')
    Left = 148
    Top = 300
    object qryCombusiveisTiposId: TFDAutoIncField
      FieldName = 'TiposId'
      Origin = 'TiposId'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryCombusiveisDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
  end
  object dsCombusiveis: TDataSource
    DataSet = qryCombusiveis
    Left = 256
    Top = 300
  end
  object qryCargos: TFDQuery
    Connection = cnnBanco
    SQL.Strings = (
      'select '
      '    TiposId,'
      '    Descricao'
      'from Tipos'
      'where TiposMestreId = 4'
      'and Ativo = 1'
      'order by descricao')
    Left = 148
    Top = 356
    object qryCargosTiposId: TFDAutoIncField
      FieldName = 'TiposId'
      Origin = 'TiposId'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryCargosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 40
    end
  end
  object dsCargos: TDataSource
    DataSet = qryCargos
    Left = 256
    Top = 356
  end
end
