object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Exemplo iNoveFast TEmail'
  ClientHeight = 485
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 509
    Height = 485
    Align = alClient
    Caption = 'Enviar E-mail'
    TabOrder = 0
    ExplicitWidth = 452
    object Label1: TLabel
      Left = 18
      Top = 192
      Width = 58
      Height = 13
      Caption = 'Destinat'#225'rio'
    end
    object Label2: TLabel
      Left = 18
      Top = 238
      Width = 72
      Height = 13
      Caption = 'T'#237'tulo do e-mail'
    end
    object Label3: TLabel
      Left = 18
      Top = 284
      Width = 51
      Height = 13
      Caption = 'Mensagem'
    end
    object Label4: TLabel
      Left = 18
      Top = 352
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 505
      Height = 162
      Align = alTop
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      ExplicitWidth = 448
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 71
        Height = 13
        Caption = 'Nome Cedente'
      end
      object Label7: TLabel
        Left = 232
        Top = 24
        Width = 72
        Height = 13
        Caption = 'E-Mail Cedente'
      end
      object Label8: TLabel
        Left = 232
        Top = 70
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label9: TLabel
        Left = 338
        Top = 70
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label10: TLabel
        Left = 16
        Top = 70
        Width = 40
        Height = 13
        Caption = 'Servidor'
      end
      object Label11: TLabel
        Left = 177
        Top = 70
        Width = 26
        Height = 13
        Caption = 'Porta'
      end
      object edtNomeCedente: TEdit
        Left = 16
        Top = 43
        Width = 200
        Height = 21
        TabOrder = 0
        Text = 'iNoveFast TEmail'
      end
      object edtEmailCedente: TEdit
        Left = 236
        Top = 43
        Width = 209
        Height = 21
        TabOrder = 1
        Text = 'email@gmail.com'
      end
      object edtUsuario: TEdit
        Left = 232
        Top = 89
        Width = 100
        Height = 21
        TabOrder = 2
        Text = 'email@gmail.com'
      end
      object edtSenha: TEdit
        Left = 338
        Top = 89
        Width = 100
        Height = 21
        PasswordChar = '*'
        TabOrder = 3
        Text = 'senha'
      end
      object edtServidor: TEdit
        Left = 16
        Top = 89
        Width = 155
        Height = 21
        TabOrder = 4
        Text = 'smtp.gmail.com'
      end
      object edtPorta: TEdit
        Left = 177
        Top = 89
        Width = 39
        Height = 21
        TabOrder = 5
        Text = '465'
      end
      object ckbUtilizaSSL: TCheckBox
        Left = 16
        Top = 128
        Width = 63
        Height = 17
        Caption = 'UtilizaSSL'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object ckbUtilizaTSL: TCheckBox
        Left = 112
        Top = 128
        Width = 63
        Height = 17
        Caption = 'UtilizaTSL'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
    end
    object Button2: TButton
      Left = 340
      Top = 301
      Width = 75
      Height = 25
      Caption = 'Enviar E-mail'
      TabOrder = 1
      OnClick = Button2Click
    end
    object edtDestinatario: TEdit
      Left = 18
      Top = 211
      Width = 316
      Height = 21
      TabOrder = 2
      Text = 'contato@inovefast.com.br'
    end
    object edtTitulo: TEdit
      Left = 18
      Top = 257
      Width = 316
      Height = 21
      TabOrder = 3
      Text = 'iNoveFast TEmail'
    end
    object edtMensagem: TEdit
      Left = 18
      Top = 303
      Width = 316
      Height = 21
      TabOrder = 4
      Text = 'Mensagem enviada com TEmail'
    end
    object memStatus: TMemo
      Left = 16
      Top = 376
      Width = 399
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 5
    end
  end
  object EMail: TEMail
    Configuracoes.Servidor = 'smtp.gmail.com'
    Configuracoes.Porta = '465'
    Configuracoes.Email = 'email@gmail.com'
    Configuracoes.Usuario = 'email@gmail.com'
    Configuracoes.Senha = 'senha'
    Configuracoes.NomeCedente = 'TEmail'
    Configuracoes.UtilizaSSL = True
    Configuracoes.UtilizaTLS = 1
    Configuracoes.TipoAutenticacao = 1
    Configuracoes.PortaProxy = 0
    Configuracoes.TipoProxy = tpNenhum
    OnStatus = EMailStatus
    OnError = EMailError
    Left = 364
    Top = 206
  end
end
