VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00FAD3BC&
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "     ""L.E.D. Clock in one line""    by  Light Templer  ;)"
   ClientHeight    =   1635
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6690
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1635
   ScaleWidth      =   6690
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Timer tmrOneSecond 
      Interval        =   1000
      Left            =   15
      Top             =   840
   End
   Begin VB.Label lbltime 
      Alignment       =   2  'Zentriert
      BackStyle       =   0  'Transparent
      Caption         =   "00-00-00"
      BeginProperty Font 
         Name            =   "LED Real"
         Size            =   69.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   1035
      Left            =   -15
      TabIndex        =   0
      Top             =   330
      Width           =   6495
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'
'   LED Clock in one line
'

'   Doing it the Microsoft way:   "If you can't beat their technik change the rules!"   ;)))

'   Be sure to copy the font file 'LED_REAL.TTF' to your windows font directory before start!

'   Font source for this free Truetype font is   http://desktoppub.about.com/library/fonts/dd/uc_led.htm
'   Thanks to Matthew Welch for it!


'   Joke in 2005 by Light Templer


Option Explicit
'
'
'


Private Sub tmrOneSecond_Timer()
    
    lbltime.Caption = Format$(Time, "hh :nn :ss")
    
End Sub


' #*#
