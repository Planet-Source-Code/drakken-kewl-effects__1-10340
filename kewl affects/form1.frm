VERSION 5.00
Begin VB.Form Fade 
   BackColor       =   &H00000000&
   Caption         =   "Kewl affects"
   ClientHeight    =   4785
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7755
   LinkTopic       =   "Form1"
   Picture         =   "form1.frx":0000
   ScaleHeight     =   4785
   ScaleWidth      =   7755
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   405
      Left            =   0
      TabIndex        =   8
      Text            =   "Text2"
      Top             =   4320
      Width           =   3975
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   0
      TabIndex        =   7
      Text            =   "Text1"
      Top             =   3960
      Width           =   3975
   End
   Begin VB.CommandButton Command6 
      Caption         =   "why?"
      Height          =   495
      Left            =   4440
      TabIndex        =   6
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "execute"
      Height          =   495
      Left            =   4440
      TabIndex        =   5
      Top             =   1080
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "udp flooder"
      Height          =   495
      Left            =   4440
      TabIndex        =   4
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "cached passwords"
      Height          =   495
      Left            =   6000
      TabIndex        =   3
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Beginners-security    Tutorial"
      Height          =   495
      Left            =   6000
      TabIndex        =   2
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "etch-a-sketch"
      Height          =   495
      Left            =   6000
      TabIndex        =   1
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000007&
      Caption         =   "Move mouse over this for one of the best affects in frm!"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   840
      Width           =   3615
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "About:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   150
      TabIndex        =   0
      Top             =   390
      Width           =   810
   End
End
Attribute VB_Name = "Fade"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
etch.Show
End Sub

Private Sub Command2_Click()
frmMain.Show
End Sub

Private Sub Command3_Click()
frmdialup.Show
End Sub

Private Sub Command4_Click()
Form1.Show
End Sub

Private Sub Command5_Click()
execute.Show
End Sub

Private Sub Command6_Click()
Text1.Visible = True
Text2.Visible = True
Text2.Text = "I know this is really simple but i had to submit something (i have guilt)"
Text1.Text = "thanx to all of you who always helped me,@psc. i know this is really simple but i had to submit something (i have guilt)"
End Sub

Private Sub Form_Load()
frmBoton.Show
frmBoton.Tag = "0|0|254|10"
Text1.Visible = False
Text2.Visible = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim cx As Integer, Arr As Variant
Arr = tsstrarr(frmBoton.Tag, "|")
If Me.Visible And frmBoton.Visible And Arr(0) = "1" Then
    For cx = Val(Arr(1)) To Val(Arr(2)) Step Val(Arr(3))
        frmBoton.Cls
        Blend frmBoton, frmBoton.picDC, cx, 0, 0, frmBoton.ScaleWidth, frmBoton.ScaleHeight
        frmBoton.Show
        frmBoton.Refresh
    Next
    frmBoton.Tag = "0|0|254|10"
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload frmBoton
End Sub

