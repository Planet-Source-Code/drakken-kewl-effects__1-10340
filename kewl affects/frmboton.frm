VERSION 5.00
Begin VB.Form frmBoton 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000008&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1635
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   4290
   ForeColor       =   &H8000000D&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmboton.frx":0000
   ScaleHeight     =   109
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   286
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox picDC 
      AutoRedraw      =   -1  'True
      Height          =   0
      Left            =   0
      ScaleHeight     =   0
      ScaleWidth      =   0
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   0
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Blend Level"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3240
      TabIndex        =   1
      Top             =   2040
      Width           =   1335
   End
End
Attribute VB_Name = "frmBoton"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private hRgn As Long

Private Sub Form_Load()
Fade.Show
SetParent frmBoton.hwnd, Fade.hwnd
DoEvents
SetWindowPos Me.hwnd, -1, 100, 100, Me.ScaleWidth, Me.ScaleHeight, SWP_NOOWNERZORDER
picDC.Width = Me.ScaleWidth + 10
picDC.Height = Me.ScaleHeight + 10
picDC.Left = 0
picDC.Top = 0
DeskHdc = GetDC(0)
ret = BitBlt(picDC.hDC, 0, 0, Me.ScaleWidth, Me.ScaleHeight, DeskHdc, Me.Left / Screen.TwipsPerPixelX, Me.Top / Screen.TwipsPerPixelY, vbSrcCopy)
ret = ReleaseDC(0&, DeskHdc)
Blend Me, picDC, 254, 0, 0, Me.ScaleWidth, Me.ScaleHeight
Me.Show
Me.Refresh
SetRegion frmBoton, RGB(255, 255, 255)
End Sub

Private Sub Form_Click()
MsgBox "Click!"
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim cx As Integer, Arr As Variant
Arr = tsstrarr(frmBoton.Tag, "|")
If Arr(0) = "0" Then
    For cx = Val(Arr(2)) To Val(Arr(1)) Step -Val(Arr(3))
        Me.Cls
        Blend Me, picDC, cx, 0, 0, Me.ScaleWidth, Me.ScaleHeight
        Me.Show
        Me.Refresh
    Next
    frmBoton.Tag = "1|0|254|10"
End If
End Sub


