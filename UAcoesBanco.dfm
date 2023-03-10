object dtmAcoesBanco: TdtmAcoesBanco
  OldCreateOrder = False
  Height = 287
  Width = 439
  object cnnBanco: TFDConnection
    Params.Strings = (
      
        'Database=E:\Anderson\Projetos\GerenciadorAbastecimento\banco\dbA' +
        'bastecimento.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 28
  end
  object qryTiposMestre: TFDQuery
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    TiposMestreId,'
      '    Descricao,'
      '    Ativo,'
      '    InseridoEm'
      'from TiposMestre'
      'order by Descricao')
    Left = 40
    Top = 88
    object qryTiposMestreTiposMestreId: TFDAutoIncField
      FieldName = 'TiposMestreId'
      Origin = 'TiposMestreId'
      ProviderFlags = [pfInWhere, pfInKey]
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
    Connection = cnnBanco
    SQL.Strings = (
      'select'
      '    TiposId,'
      '    TiposMestreId,'
      '    Descricao,'
      '    Ativo,'
      '    InseridoEm'
      'from Tipos'
      'where TiposMestreId = :TiposMestreId'
      'order by TiposMestreId,'
      'Descricao')
    Left = 40
    Top = 148
    ParamData = <
      item
        Name = 'TIPOSMESTREID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryTiposTiposId: TFDAutoIncField
      FieldName = 'TiposId'
      Origin = 'TiposId'
      ProviderFlags = [pfInWhere, pfInKey]
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
  end
end
