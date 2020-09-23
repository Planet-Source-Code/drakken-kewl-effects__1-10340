VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H8000000B&
   Caption         =   "Info"
   ClientHeight    =   4860
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   6975
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4860
   ScaleWidth      =   6975
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "Brute Force"
      Height          =   495
      Left            =   5520
      TabIndex        =   15
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Firewalls"
      Height          =   495
      Left            =   4320
      TabIndex        =   11
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Nuke"
      Height          =   495
      Left            =   3240
      TabIndex        =   9
      Top             =   1440
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "IM Ip's"
      Height          =   495
      Left            =   2160
      TabIndex        =   8
      Top             =   1440
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Pinging"
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   1440
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "I.P "
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   1440
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   240
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   840
      Width           =   6255
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   240
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   360
      Width           =   6255
   End
   Begin VB.Shape S9 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   3000
      Shape           =   3  'Circle
      Top             =   2640
      Width           =   255
   End
   Begin VB.Shape S8 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   2400
      Width           =   255
   End
   Begin VB.Label L2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   1455
      Left            =   3600
      TabIndex        =   14
      Top             =   2280
      Visible         =   0   'False
      Width           =   2535
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000008&
      Caption         =   "Trojan"
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   240
      TabIndex        =   13
      Top             =   4320
      Width           =   495
   End
   Begin VB.Shape S7 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   3000
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape S6 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   3240
      Width           =   255
   End
   Begin VB.Label L3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   3600
      TabIndex        =   12
      Top             =   2520
      Visible         =   0   'False
      Width           =   2535
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000D&
      Caption         =   "FTP"
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   3720
      Width           =   495
   End
   Begin VB.Label Label5 
      BackColor       =   &H00000000&
      Caption         =   "I.P"
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   2640
      Width           =   375
   End
   Begin VB.Label L4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Internet Protocol, A 32 Bit Number Used to Identify other machines on the internei in a 4 #   sequence. Ex: 62.1.46.13"
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   3600
      TabIndex        =   2
      Top             =   2040
      Visible         =   0   'False
      Width           =   2535
      WordWrap        =   -1  'True
   End
   Begin VB.Shape S3 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   2880
      Shape           =   3  'Circle
      Top             =   2880
      Width           =   255
   End
   Begin VB.Shape S4 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   255
   End
   Begin VB.Shape S2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   3240
      Shape           =   3  'Circle
      Top             =   3480
      Width           =   255
   End
   Begin VB.Shape S1 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   255
      Left            =   2880
      Shape           =   3  'Circle
      Top             =   3720
      Width           =   255
   End
   Begin VB.Label L1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   1575
      Left            =   3600
      TabIndex        =   1
      Top             =   2040
      Visible         =   0   'False
      Width           =   2535
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "D.O.S"
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   3120
      Width           =   495
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text1.Text = "An IP Is what you need to attack or connect to other pc's."
End Sub

Private Sub Command2_Click()
Text2.Text = "Start-Run-Command-ping www.microsoft.com [<--- you can change the site too ;)]"
End Sub

Private Sub Command3_Click()
Text1.Text = "start-run-command-netstat -a[this will tell you all your connections then find out the ip]"
End Sub

Private Sub Command4_Click()
Text1.Text = "Nuking Somebody is considered a D.O.S Attack, It reboots there Pc or Lags them Bad"
End Sub

Private Sub Command5_Click()
Text1.Text = "A protection suite used to control the incoming packages and stop hacking of your Box"



End Sub

Private Sub Command6_Click()
Text2.Text = "a way of hacking a box w/out cracking the *** it will use random #'s ex: aab or @!& etc."
End Sub

Private Sub Form_Load()
S1.Visible = False
S2.Visible = False
L1.Visible = False
S3.Visible = False
S4.Visible = False
L4.Visible = False
L3.Visible = False
S6.Visible = False
S7.Visible = False
L2.Visible = False
S8.Visible = False
S9.Visible = False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
S1.Visible = False
S2.Visible = False
L1.Visible = False
S3.Visible = False
S4.Visible = False
L4.Visible = False
L3.Visible = False
S6.Visible = False
S7.Visible = False
L2.Visible = False
S8.Visible = False
S9.Visible = False
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
S1.Visible = True
S2.Visible = True
L1.Visible = True
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
L3.Visible = True
S6.Visible = True
S7.Visible = True
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
L2.Visible = True
S8.Visible = True
S9.Visible = True
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
S3.Visible = True
S4.Visible = True
L4.Visible = True
End Sub

