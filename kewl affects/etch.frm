VERSION 5.00
Begin VB.Form etch 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Etchy"
   ClientHeight    =   7275
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   8730
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7275
   ScaleWidth      =   8730
   StartUpPosition =   2  'CenterScreen
   Begin VB.Menu mnuGame 
      Caption         =   "Game"
      Begin VB.Menu mnuNew 
         Caption         =   "SHAKE!!!"
      End
      Begin VB.Menu Sep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHelp 
         Caption         =   "How To Use..."
      End
      Begin VB.Menu mnuAbout 
         Caption         =   "About"
      End
      Begin VB.Menu Sep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "etch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim fPixelHeight As Long, fPixelWidth As Long, fWhereX As Long, fWhereY As Long

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

Dim YesNo%

Select Case KeyCode

    Case vbKeyLeft
    
        If fWhereX <= 0 Then
            fWhereX = 0
        Else
            fWhereX = fWhereX - 1
        End If
            
    
    Case vbKeyRight
    
        If fWhereX >= fPixelWidth Then
            fWhereX = fPixelWidth
        Else
            fWhereX = fWhereX + 1
        End If
        
        
    Case vbKeyUp
    
        If fWhereY <= 0 Then
            fWhereY = fWhereY - 1
        Else
            fWhereY = fWhereY - 1
        End If
                
                
    Case vbKeyDown
    
        If fWhereY >= fPixelHeight Then
            fWhereY = fPixelHeight
        Else
            fWhereY = fWhereY + 1
        End If
        
        
    Case Else
    
        Beep
        
    End Select
    
    PSet (fWhereX, fWhereY)
    
End Sub

Private Sub Form_Load()
    
    Me.AutoRedraw = True
    Me.ScaleMode = 3
    fPixelHeight = Me.ScaleHeight
    fPixelWidth = Me.ScaleWidth
    fWhereX = fPixelWidth / 2
    fWhereY = fPixelHeight / 2
    
End Sub

Private Sub mnuAbout_Click()
    FrmAbout.Show
End Sub

Private Sub mnuExit_Click()

    Unload Me

End Sub

Private Sub mnuHelp_Click()
    
    MsgBox "To use Etch-A-Scetch you move the cursor using the arrow keys (It's Etch-A-Sketch!!!).  To shake the board (ie. Start A New Game) click on ""SHAKE!!!"" from the file menu.  -Have fun :-)"

End Sub



Private Sub mnuNew_Click()
    
    Unload etch
    Load etch
    etch.Show

End Sub
