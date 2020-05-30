SetTitleMatchMode, 2


#t::
    IfWinExist Total Commander
    {
        WinActivate Total Commander
    }
    else
    {
        Run, C:\Programs\totalcmd\TOTALCMD64.EXE
    }
Return

#j::
    IfWinExist WhatsApp
    {
        WinActivate WhatsApp
    }
    else
    {
        Run, C:\Users\sebas\AppData\Local\WhatsApp\WhatsApp.exe
    }
Return

#c::
    IfWinExist Google Chrome
    {
        WinActivate Google Chrome
    }
    else
    {
        Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
    }
Return

#s::
    IfWinExist Microsoft SQL Server Management Studio
    {
        WinActivate Microsoft SQL Server Management Studio
    }
    else
    {
        Run, C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\Ssms.exe
    }
Return

#i::
    IfWinExist Microsoft Visual Studio
    {
        WinActivate Microsoft Visual Studio
    }
Return

#v::
    IfWinExist Visual Studio Code
    {
        WinActivate Visual Studio Code
    }
    else
    {
        Run, C:\Users\sebas\AppData\Local\Programs\Microsoft VS Code\Code.exe
    }
Return

#o::
    IfWinExist Outlook
    {
        WinActivate Outlook
    }
    else
    {
        Run, C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE
    }
Return

#y::
    IfWinExist Spotify
    {
        WinActivate Spotify
    }
    else
    {
        Run, C:\Users\sebas\AppData\Roaming\Spotify\Spotify.exe
    }
Return

#b::
    IfWinExist - BareTail
    {
        WinActivate - BareTailPro
    }
    else
    {
        Run, C:\Programs\baretailpro.exe
    }
Return

#q::
    IfWinExist Shift
    {
        WinActivate Shift
    }
    else
    {
        Run, C:\Users\sebas\AppData\Local\Shift\Shift.exe
    }
Return


#+Up::
   WinGetActiveTitle, Title
   WinRestore, %Title%
   
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1, Y1, Width, Height - 40

   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1, Y1, Width, Height - 40
Return

+`::
   WinGetActiveTitle, Title
   WinRestore, %Title%
   
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, -10, 520, 1620, 887

   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, -10, 520, 1620, 887
Return

!`::
    Send #+{Right}
Return

#IfWinActive, Microsoft SQL Server Management Studio
;+`::
`::
	Send {Home}+{End}^e
Return

:*:/vn::
    StringReplace, clipboard, clipboard, `r`n, `,` , All
    Send ^v
Return

 

:*:/vs::
    StringReplace, TempValue, clipboard, `r`n, `'`,` `', All
    TempValue2 = `'%TempValue%`'
    clipboard = %TempValue2%
    Send ^v
Return

;#IfWinActive, Microsoft SQL Server Management Studio

;LButton::
;	Click
;	Send,{Shift down}{Left 8}{Shift up}
;	Send, ^c
;Return
