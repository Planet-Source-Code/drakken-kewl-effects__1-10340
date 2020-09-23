VERSION 5.00
Begin VB.Form FrmAbout 
   BackColor       =   &H80000008&
   Caption         =   "About"
   ClientHeight    =   2370
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4695
   LinkTopic       =   "Form2"
   ScaleHeight     =   2370
   ScaleWidth      =   4695
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      BackColor       =   &H80000012&
      Caption         =   "<>"
      Height          =   375
      Left            =   2040
      TabIndex        =   9
      Top             =   1920
      Width           =   375
   End
   Begin VB.TextBox Text1 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   120
      PasswordChar    =   "*"
      TabIndex        =   8
      Top             =   1920
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ok"
      Height          =   255
      Left            =   3840
      TabIndex        =   0
      Top             =   2040
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   480
      Top             =   1800
   End
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   0
      Top             =   1800
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "About"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   0
      Width           =   3015
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Drakken@zipmail.com"
      ForeColor       =   &H80000014&
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "Wu-Moo"
      ForeColor       =   &H8000000E&
      Height          =   255
      Index           =   4
      Left            =   2280
      TabIndex        =   5
      Top             =   1080
      Width           =   2295
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "Methidis"
      ForeColor       =   &H8000000E&
      Height          =   255
      Index           =   3
      Left            =   2280
      TabIndex        =   4
      Top             =   840
      Width           =   2295
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "Unforgiven"
      ForeColor       =   &H8000000E&
      Height          =   255
      Index           =   2
      Left            =   3000
      TabIndex        =   3
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "Greetz go to:"
      ForeColor       =   &H8000000E&
      Height          =   255
      Index           =   1
      Left            =   2280
      TabIndex        =   2
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Coded by : Drakken"
      ForeColor       =   &H80000014&
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   2415
   End
End
Attribute VB_Name = "FrmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
#If Win32 Then
Private Declare Function ShellExecute Lib _
    "shell32.dll" Alias "ShellExecuteA" _
    (ByVal hwnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long

#Else
    Private Declare Function ShellExecute Lib _
    "shell.dll" Alias "ShellExecute" _
    (ByVal hwnd As Integer, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _

ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Integer) As Integer
#End If

Private Const SW_SHOWNORMAL = 1

Private Sub Command1_Click()
   FrmAbout.Hide
    Fade.Show
   
        
  
    
End Sub

Private Sub Command2_Click()
If Text1.Text = "guest" Then
MsgBox "Great - password accepted.... guest!", 6, "kewl!"
FrmAbout.Hide
Fade.Show
Else
MsgBox "Sorry, that's wrong hacker wanna be!", 6, "Try Again"
Text1.SetFocus
Text1.Text = ""
End If
End Sub

Private Sub Label2_Click(Index As Integer)
Dim iret As Long
    iret = ShellExecute(Me.hwnd, _
        vbNullString, _
        "http://devnull.cjb.net", _
        vbNullString, _
        "c:\", _
        SW_SHOWNORMAL)

End Sub

Private Sub Timer2_Timer()
    Dim speed As Integer
    Dim startvoid As Long
    Dim stopvoid As Long
    speed = 50
    startvoid = 2000
    endvoid = 3000
    
    For i = 1 To 4
    Label1(i).Top = Label1(i).Top - speed
    If Label1(i).Top < 0 Then Label1(i).Top = endvoid
    If Label1(i).Top > startvoid Then Label1(i).Visible = False Else Label1(i).Visible = True
    Next i
End Sub


Private Sub Timer5_Timer()
If FrmAbout.BackColor = vbBlack Then


        FrmAbout.BackColor = vbWhite
        Else


            FrmAbout.BackColor = vbBlack
            End If
        End Sub

