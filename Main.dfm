object frmMain: TfrmMain
  Left = 300
  Top = 300
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Clicking bot 2.1p'
  ClientHeight = 377
  ClientWidth = 334
  Color = clWindow
  Constraints.MaxWidth = 458
  Constraints.MinHeight = 330
  Constraints.MinWidth = 348
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    334
    377)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 60
    Width = 64
    Height = 13
    Caption = 'Boja kursora:'
  end
  object Label2: TLabel
    Left = 179
    Top = 60
    Width = 64
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Boja kursora:'
  end
  object Label3: TLabel
    Left = 89
    Top = 309
    Width = 67
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Tra'#382'ena boja:'
  end
  object Label4: TLabel
    Left = 239
    Top = 309
    Width = 38
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Pre'#269'ica:'
  end
  object txtShortcut: TEdit
    Left = 283
    Top = 307
    Width = 23
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 1
  end
  object btnOperation: TPanel
    Left = 22
    Top = 332
    Width = 285
    Height = 37
    Anchors = [akLeft, akRight, akBottom]
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = 'OUT'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnMouseDown = btnOperationMouseDown
    OnMouseLeave = btnOperationMouseLeave
    OnMouseUp = btnOperationMouseUp
  end
  object btnSearchColor: TPanel
    Left = 162
    Top = 307
    Width = 24
    Height = 18
    Anchors = [akLeft, akBottom]
    BevelOuter = bvSpace
    Color = clLime
    ParentBackground = False
    TabOrder = 3
    OnMouseDown = btnSearchColorMouseDown
    OnMouseEnter = btnSearchColorMouseEnter
    OnMouseLeave = btnSearchColorMouseLeave
    OnMouseUp = btnSearchColorMouseUp
  end
  object btnCursor1Color: TPanel
    Left = 90
    Top = 55
    Width = 28
    Height = 22
    BevelOuter = bvSpace
    Color = clBlue
    ParentBackground = False
    TabOrder = 4
    OnMouseDown = btnCursor1ColorMouseDown
    OnMouseEnter = btnCursor1ColorMouseEnter
    OnMouseLeave = btnCursor1ColorMouseLeave
    OnMouseUp = btnCursor1ColorMouseUp
  end
  object btnCursor2Color: TPanel
    Left = 250
    Top = 55
    Width = 28
    Height = 22
    Anchors = [akTop, akRight]
    BevelOuter = bvSpace
    Color = clYellow
    ParentBackground = False
    TabOrder = 5
    OnMouseDown = btnCursor2ColorMouseDown
    OnMouseEnter = btnCursor2ColorMouseEnter
    OnMouseLeave = btnCursor2ColorMouseLeave
    OnMouseUp = btnCursor2ColorMouseUp
  end
  object listView1: TListView
    Tag = 1
    Left = 6
    Top = 107
    Width = 158
    Height = 189
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = '#'
        Width = 24
      end
      item
        Caption = 'X'
        Width = 65
      end
      item
        Caption = 'Y'
        Width = 65
      end>
    ColumnClick = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLines = True
    MultiSelect = True
    RowSelect = True
    ParentFont = False
    TabOrder = 6
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = OnAdvCustomDrawItem
    OnClick = listView1Click
    OnCustomDrawItem = OnCustomDrawItem1
    OnItemChecked = listView1ItemChecked
  end
  object listView2: TListView
    Left = 170
    Top = 107
    Width = 159
    Height = 189
    Anchors = [akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = '#'
        Width = 24
      end
      item
        Caption = 'X'
        Width = 65
      end
      item
        Caption = 'Y'
        Width = 65
      end>
    ColumnClick = False
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLines = True
    MultiSelect = True
    RowSelect = True
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 7
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = OnAdvCustomDrawItem
    OnClick = listView2Click
    OnCustomDrawItem = OnCustomDrawItem2
    OnItemChecked = listView2ItemChecked
  end
  object btnAdd1: TPanel
    Left = 28
    Top = 86
    Width = 52
    Height = 18
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = '+'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 8
    OnMouseDown = btnAdd1MouseDown
    OnMouseEnter = btnAdd1MouseEnter
    OnMouseLeave = btnAdd1MouseLeave
    OnMouseUp = btnAdd1MouseUp
  end
  object btnRemove1: TPanel
    Left = 90
    Top = 86
    Width = 55
    Height = 18
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = '-'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
    OnMouseDown = btnRemove1MouseDown
    OnMouseEnter = btnRemove1MouseEnter
    OnMouseLeave = btnRemove1MouseLeave
    OnMouseUp = btnRemove1MouseUp
  end
  object btnRemove2: TPanel
    Left = 264
    Top = 83
    Width = 53
    Height = 18
    Anchors = [akTop, akRight]
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = '-'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 10
    OnMouseDown = btnRemove2MouseDown
    OnMouseEnter = btnRemove2MouseEnter
    OnMouseLeave = btnRemove2MouseLeave
    OnMouseUp = btnRemove2MouseUp
  end
  object btnAdd2: TPanel
    Left = 200
    Top = 83
    Width = 51
    Height = 18
    Anchors = [akTop, akRight]
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = '+'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 11
    OnMouseDown = btnAdd2MouseDown
    OnMouseEnter = btnAdd2MouseEnter
    OnMouseLeave = btnAdd2MouseLeave
    OnMouseUp = btnAdd2MouseUp
  end
  object upDown1: TUpDown
    Left = 118
    Top = 55
    Width = 17
    Height = 22
    Hint = 'Produ'#382'ava/skra'#263'uje virtuelni kursor'
    Min = 15
    Max = 200
    Increment = 2
    ParentShowHint = False
    Position = 56
    ShowHint = True
    TabOrder = 12
    OnClick = upDown1Click
  end
  object upDown2: TUpDown
    Left = 279
    Top = 55
    Width = 17
    Height = 22
    Hint = 'Produ'#382'ava/skra'#263'uje virtuelni kursor'
    Anchors = [akTop, akRight]
    Min = 15
    Max = 200
    Increment = 2
    ParentShowHint = False
    Position = 56
    ShowHint = True
    TabOrder = 13
    OnClick = upDown2Click
  end
  object chkFreeze: TCheckBox
    Left = 8
    Top = 307
    Width = 62
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Freeze'
    TabOrder = 14
    OnClick = chkFreezeClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 4
    Width = 318
    Height = 45
    Caption = 'Prozor'
    TabOrder = 0
    object Label5: TLabel
      Left = 10
      Top = 19
      Width = 10
      Height = 13
      Caption = 'X:'
    end
    object Label6: TLabel
      Left = 79
      Top = 20
      Width = 10
      Height = 13
      Caption = 'Y:'
    end
    object txtXcoord: TEdit
      Left = 22
      Top = 17
      Width = 40
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object txtYcoord: TEdit
      Left = 95
      Top = 17
      Width = 40
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object btnWhere: TButton
      Left = 222
      Top = 15
      Width = 87
      Height = 23
      Caption = 'Poka'#382'i!'
      TabOrder = 2
      OnClick = btnWhereClick
    end
  end
  object dlgColor: TColorDialog
    Left = 35
    Top = 356
  end
  object CheckStates: TImageList
    ColorDepth = cd32Bit
    Height = 22
    Width = 17
    Left = 304
    Top = 336
    Bitmap = {
      494C010102000800280011001600FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000440000001600000001002000000000006017
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF010101FF0F0F0FF00F0F
      0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F
      0FF00F0F0FF00F0F0FF00F0F0FF0010101FF000000FF000000FF010101FF0F0F
      0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F
      0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF0010101FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E
      0EF1000000FF000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0E0E0EF1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000FF0E0E0EF1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2
      A2FF000000FF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E
      0EF1000000FF000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0E0E0EF1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBBBBBBFF050505FF000000FF191919FFF1F1F1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000FF0E0E0EF1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFC8C8C8FF0C0C0CFF0000
      00FF000000FF000000FF707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E
      0EF1000000FF000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0E0E0EF1FFFFFFFFFFFF
      FFFFCCCCCCFF0F0F0FFF000000FF000000FF000000FF000000FF030303FFCCCC
      CCFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000FF0E0E0EF1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFC5C5C5FF0F0F0FFF000000FF080808FF8F8F
      8FFF868686FF000000FF000000FF2D2D2DFFF9F9F9FFFFFFFFFFFFFFFFFF0E0E
      0EF1000000FF000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0E0E0EF1FFFFFFFF6666
      66FF000000FF4B4B4BFFDBDBDBFFFFFFFFFFFFFFFFFF727272FF000000FF0000
      00FF737373FFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000FF0E0E0EF1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFFDFDFDFFD2D2D2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFF6A6A6AFF000000FF010101FFB2B2B2FFFFFFFFFF0D0D
      0DEF000000FF000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0E0E0EF1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777
      77FF000000FF0E0E0EFFD4D4D4FF05050568000000FE000000FF0E0E0EF1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FF060606FF1E1E1EFF0202
      022B00000069000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0E0E0EF1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC9C9C9FF1F1F1FFF010101DF00000020000000FF0E0E0EF1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EF1000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FF0303
      039B000000D2000000FF0E0E0EF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0E0E0EF1000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF010101FF0F0F0FF00F0F
      0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F
      0FF00F0F0FF00F0F0FF00B0B0BB40000001B0000001B000000FF010101FF0F0F
      0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF00F0F
      0FF00F0F0FF00F0F0FF00F0F0FF00F0F0FF0010101FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00F000000069000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000044000000160000000100010000000000080100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000}
  end
end
