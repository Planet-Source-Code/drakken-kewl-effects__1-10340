Attribute VB_Name = "mod1"

Public Actual As Integer

Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long

Declare Function AlphaBlending Lib "Alphablending.dll" _
            (ByVal destHDC As Long, ByVal XDest As Long, ByVal YDest As Long, _
            ByVal destWidth As Long, ByVal destHeight As Long, ByVal srcHDC As Long, _
            ByVal xSrc As Long, ByVal ySrc As Long, ByVal srcWidth As Long, ByVal srcHeight As Long, ByVal AlphaSource As Long) As Long

Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hDC As Long) As Long
Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long

Public Declare Function SetWindowRgn Lib "user32" (ByVal hwnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
Public Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
Public Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function SelectObject Lib "gdi32" (ByVal hDC As Long, ByVal hObject As Long) As Long
Private Declare Function GetObject Lib "gdi32" Alias "GetObjectA" (ByVal hObject As Long, ByVal nCount As Long, lpObject As Any) As Long
Private Declare Function CreateRectRgn Lib "gdi32" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare Function CombineRgn Lib "gdi32" (ByVal hDestRgn As Long, ByVal hSrcRgn1 As Long, ByVal hSrcRgn2 As Long, ByVal nCombineMode As Long) As Long
Private Declare Function DeleteDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function GetPixel Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal Y As Long) As Long

Private Type BITMAP
    bmType As Long
    bmWidth As Long
    bmHeight As Long
    bmWidthBytes As Long
    bmPlanes As Integer
    bmBitsPixel As Integer
    bmBits As Long
End Type

Public Const WM_NCLBUTTONDOWN = &HA1
Public Const HTCAPTION = 2

Public Function GetBitmapRegion(cPicture As StdPicture, cTransparent As Long)
    Dim hRgn As Long, tRgn As Long
    Dim X As Integer, Y As Integer, X0 As Integer
    Dim hDC As Long, BM As BITMAP
    hDC = CreateCompatibleDC(0)
    If hDC Then
        SelectObject hDC, cPicture
        GetObject cPicture, Len(BM), BM
        hRgn = CreateRectRgn(0, 0, BM.bmWidth, BM.bmHeight)
        For Y = 0 To BM.bmHeight
            For X = 0 To BM.bmWidth
                While X <= BM.bmWidth And GetPixel(hDC, X, Y) <> cTransparent
                    X = X + 1
                Wend
                X0 = X
                While X <= BM.bmWidth And GetPixel(hDC, X, Y) = cTransparent
                    X = X + 1
                Wend
                If X0 < X Then
                    tRgn = CreateRectRgn(X0, Y, X, Y + 1)
                    CombineRgn hRgn, hRgn, tRgn, 4
                    DeleteObject tRgn
                End If
            Next X
        Next Y
        GetBitmapRegion = hRgn
        DeleteObject SelectObject(hDC, cPicture)
    End If
    DeleteDC hDC
End Function

Public Sub Blend(Destination As Object, Source As Object, Amount As Integer, X, Y, X2, Y2)
AlphaBlending Destination.hDC, X, Y, X2, Y2, Source.hDC, X, Y, X2, Y2, Amount
End Sub

Public Function tsstrarr(ByVal Cadena As String, ByVal delimitador As String)
Dim Rpta() As Variant, Contador As String, Numero As Integer, Buffer As String
Numero = 0
If IsEmpty(delimitador) Then
 delimitador = "|"
End If
Cadena = Cadena + delimitador
While InStr(1, Cadena, delimitador) <> 0
    Buffer = Mid(Cadena, 1, InStr(1, Cadena, delimitador) - 1)
    ReDim Preserve Rpta(Numero)
    Rpta(Numero) = Buffer
    Numero = Numero + 1
    Cadena = Mid(Cadena, InStr(1, Cadena, delimitador) + 1)
Wend
tsstrarr = Rpta
End Function

Public Sub SetRegion(Ventana As Form, Color As Long)
If hRgn Then DeleteObject hRgn
hRgn = GetBitmapRegion(Ventana.Picture, Color)
SetWindowRgn Ventana.hwnd, hRgn, True
End Sub

