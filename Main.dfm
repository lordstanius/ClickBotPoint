object frmMain: TfrmMain
  Left = 300
  Top = 300
  BorderIcons = [biSystemMenu]
  Caption = 'Clicking bot 2.1p'
  ClientHeight = 330
  ClientWidth = 264
  Color = clWindow
  Constraints.MaxWidth = 280
  Constraints.MinHeight = 330
  Constraints.MinWidth = 280
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
    264
    330)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Boja kursora:'
  end
  object Label2: TLabel
    Left = 139
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Boja kursora:'
  end
  object Label3: TLabel
    Left = 76
    Top = 264
    Width = 67
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Tra'#382'ena boja:'
  end
  object Label4: TLabel
    Left = 187
    Top = 265
    Width = 38
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Pre'#269'ica:'
  end
  object txtShortcut: TEdit
    Left = 231
    Top = 263
    Width = 23
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 1
  end
  object btnOperation: TPanel
    Left = 8
    Top = 296
    Width = 249
    Height = 30
    Anchors = [akLeft, akBottom]
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
    Left = 147
    Top = 262
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
    Left = 80
    Top = 59
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
    Left = 210
    Top = 59
    Width = 28
    Height = 22
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
    Top = 111
    Width = 117
    Height = 147
    Anchors = [akLeft, akTop, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = '#'
        Width = 22
      end
      item
        Caption = 'X'
        Width = 45
      end
      item
        Caption = 'Y'
        Width = 45
      end>
    ColumnClick = False
    GridLines = True
    MultiSelect = True
    RowSelect = True
    TabOrder = 6
    ViewStyle = vsReport
    OnClick = listView1Click
    OnItemChecked = listView1ItemChecked
  end
  object listView2: TListView
    Left = 138
    Top = 111
    Width = 117
    Height = 147
    Anchors = [akLeft, akTop, akBottom]
    Checkboxes = True
    Columns = <
      item
        Caption = '#'
        Width = 22
      end
      item
        Caption = 'X'
        Width = 45
      end
      item
        Caption = 'Y'
        Width = 45
      end>
    ColumnClick = False
    GridLines = True
    MultiSelect = True
    RowSelect = True
    TabOrder = 7
    ViewStyle = vsReport
    OnClick = listView2Click
    OnItemChecked = listView2ItemChecked
  end
  object btnAdd1: TPanel
    Left = 8
    Top = 90
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
    Left = 70
    Top = 90
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
    Left = 203
    Top = 90
    Width = 53
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
    TabOrder = 10
    OnMouseDown = btnRemove2MouseDown
    OnMouseEnter = btnRemove2MouseEnter
    OnMouseLeave = btnRemove2MouseLeave
    OnMouseUp = btnRemove2MouseUp
  end
  object btnAdd2: TPanel
    Left = 139
    Top = 90
    Width = 51
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
    TabOrder = 11
    OnMouseDown = btnAdd2MouseDown
    OnMouseEnter = btnAdd2MouseEnter
    OnMouseLeave = btnAdd2MouseLeave
    OnMouseUp = btnAdd2MouseUp
  end
  object upDown1: TUpDown
    Left = 108
    Top = 59
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
    Left = 239
    Top = 59
    Width = 17
    Height = 22
    Hint = 'Produ'#382'ava/skra'#263'uje virtuelni kursor'
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
    Left = 10
    Top = 261
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
    Width = 384
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
      Left = 160
      Top = 16
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
end
