object frmMain: TfrmMain
  Left = 300
  Top = 300
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Clicking bot 2.1p'
  ClientHeight = 377
  ClientWidth = 334
  Color = clWindow
  Constraints.MaxWidth = 350
  Constraints.MinHeight = 330
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Font.Height = -12
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
    Left = 8
    Top = 107
    Width = 156
    Height = 189
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = '#'
        Width = 22
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
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLines = True
    MultiSelect = True
    RowSelect = True
    ParentFont = False
    SmallImages = ImageList
    TabOrder = 6
    ViewStyle = vsReport
    OnClick = listView1Click
    OnItemChecked = listView1ItemChecked
  end
  object listView2: TListView
    Left = 170
    Top = 107
    Width = 156
    Height = 189
    Anchors = [akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = '#'
        Width = 22
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
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLines = True
    MultiSelect = True
    RowSelect = True
    ParentFont = False
    SmallImages = ImageList
    TabOrder = 7
    ViewStyle = vsReport
    OnClick = listView2Click
    OnItemChecked = listView2ItemChecked
  end
  object btnAdd1: TPanel
    Left = 18
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
    Left = 80
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
    Left = 243
    Top = 86
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
    Left = 179
    Top = 86
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
    Width = 50
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
  object ImageList: TImageList
    Height = 22
    Width = 22
    Left = 304
    Top = 336
  end
end
