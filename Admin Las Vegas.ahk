#SingleInstance, Force
#UseHook
#NoEnv
SetWorkingDir %A_ScriptDir%
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0


SplashTextoff
ListLines Off
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0
FormatTime, CurrentDate,, ddMM

Usefull = Ïîëåçíîå
Cheatsheet = Ìåíþ ïàìÿòêè

IfnotExist, %A_ScriptDir%\res
{
FileCreateDir, %A_ScriptDir%\res
}

IfnotExist, %A_ScriptDir%\res\yerka.png
{
URLDownloadToFile, https://jeazz.ucoz.net/ahk/admins/yerka.png,%A_ScriptDir%\res\yerka.png
}
IfnotExist, %A_ScriptDir%\res\bebra.png
{
URLDownloadToFile, https://jeazz.ucoz.net/ahk/admins/bebra.png,%A_ScriptDir%\res\bebra.png
}
IfnotExist, %A_ScriptDir%\res\maj.png
{
URLDownloadToFile,https://jeazz.ucoz.net/ahk/admins/maj.png,%A_ScriptDir%\res\maj.png
}
IfNotExist, %A_ScriptDir%\Punishment.txt 
{
URLDownloadToFile, https://jeazz.ucoz.net/ahk/admins/Punishment.txt,%A_ScriptDir%\Punishment.txt
}
IfnotExist, %A_ScriptDir%\res
{
FileCreateDir, %A_ScriptDir%\res
}

FileSetAttrib, +H, %A_ScriptDir%\res

Menu, Tray, add, Ïîêàçàòü, Show,
Menu, Tray, Default, Ïîêàçàòü,
Menu, Tray, add, Ïåðåçàãðóçèòü, Reload,
Menu, Tray, add, Ñêðûòü, Hide,
Menu, Tray, add, Çàêðûòü, Close,
Menu, Tray, NoStandard

IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
}
else
{
    IniWrite, %CurrentDate%, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
    IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
    IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
    IniRead, CurrentDateT, %A_ScriptDir%\res\Settings.ini, ANS, CurrentDateT
}
if Week=%A_YWeek%
{
IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
}
else
{
    IniWrite, %A_YWeek%, %A_ScriptDir%\res\Settings.ini, ANS, Week
    IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
    IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
    IniRead, Week, %A_ScriptDir%\res\Settings.ini, ANS, Week
}

IniRead, Radio1, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x1080
IniRead, Radio2, %A_ScriptDir%\res\Settings.ini, Resolution, 1600x900
IniRead, Radio3, %A_ScriptDir%\res\Settings.ini, Resolution, 1680x1050
IniRead, Radio4, %A_ScriptDir%\res\Settings.ini, Resolution, 1366x768
IniRead, Radio5, %A_ScriptDir%\res\Settings.ini, Resolution, 1280x960
IniRead, Radio6, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x10802
IniRead, Radio7, %A_ScriptDir%\res\Settings.ini, Resolution, 1280õ1024

IniRead, Radio8, %A_ScriptDir%\res\Settings.ini, Login Commands, /hidecheatinfo
IniRead, Radio9, %A_ScriptDir%\res\Settings.ini, Login Commands, /showcheats
IniRead, Radio10, %A_ScriptDir%\res\Settings.ini, Login Commands, /dl
IniRead, Radio11, %A_ScriptDir%\res\Settings.ini, Login Commands, /esp3
IniRead, Radio12, %A_ScriptDir%\res\Settings.ini, Login Commands, /templeader
IniRead, Radio13, %A_ScriptDir%\res\Settings.ini, Login Commands, /chide
IniRead, Radio14, %A_ScriptDir%\res\Settings.ini, Login Commands, /zzdebug
IniRead, Radio15, %A_ScriptDir%\res\Settings.ini, Login Commands, /objdl
IniRead, Radio16, %A_ScriptDir%\res\Settings.ini, Login Commands, /netstat

IniRead, key1, %A_ScriptDir%\res\Settings.ini, Binds, KEY1
IniRead, key2, %A_ScriptDir%\res\Settings.ini, Binds, KEY2
IniRead, key3, %A_ScriptDir%\res\Settings.ini, Binds, KEY3
IniRead, key4, %A_ScriptDir%\res\Settings.ini, Binds, KEY4
IniRead, key5, %A_ScriptDir%\res\Settings.ini, Binds, KEY5
IniRead, key6, %A_ScriptDir%\res\Settings.ini, Binds, KEY6
IniRead, key7, %A_ScriptDir%\res\Settings.ini, Binds, KEY7
IniRead, key8, %A_ScriptDir%\res\Settings.ini, Binds, KEY8
IniRead, key9, %A_ScriptDir%\res\Settings.ini, Binds, KEY9
IniRead, key10, %A_ScriptDir%\res\Settings.ini, Binds, KEY10
IniRead, key11, %A_ScriptDir%\res\Settings.ini, Binds, KEY11
IniRead, key12, %A_ScriptDir%\res\Settings.ini, Binds, KEY12
IniRead, key13, %A_ScriptDir%\res\Settings.ini, Binds, KEY13
IniRead, key14, %A_ScriptDir%\res\Settings.ini, Binds, KEY14
IniRead, key15, %A_ScriptDir%\res\Settings.ini, Binds, KEY15
IniRead, key16, %A_ScriptDir%\res\Settings.ini, Binds, KEY16
IniRead, key17, %A_ScriptDir%\res\Settings.ini, Binds, KEY17
IniRead, key18, %A_ScriptDir%\res\Settings.ini, Binds, KEY18
IniRead, key19, %A_ScriptDir%\res\Settings.ini, Binds, KEY19
IniRead, key20, %A_ScriptDir%\res\Settings.ini, Binds, KEY20

IniRead, dis, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniRead, tag, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniRead, gadis, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniRead, gatag, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniRead, zgadis, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniRead, zgatag, %A_ScriptDir%\res\Settings.ini, Discord, zgatag

if dis=ERROR
{
IniWrite, .jeazz, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, 5533, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, TiGeR, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, 7777, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, yerka, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniWrite, 0023, %A_ScriptDir%\res\Settings.ini, Discord, zgatag
}

IniRead, X, %A_ScriptDir%\res\Settings.ini, Coords, X
IniRead, Y, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniRead, X2, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniRead, Y2, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniRead, Fraction, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction
IniRead, Dimension, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension

if X=ERROR
{
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, X
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniWrite, 0, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniWrite, 222, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension
IniWrite, 7, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction
reload
}

;ãóè ñ÷åò÷èêà
WinSet_Click_Through(I, T="254") {
IfWinExist, % "ahk_id " I
{
If (T == "Off")
{
WinSet, AlwaysOnTop, Off, % "ahk_id " I
WinSet, Transparent, On, % "ahk_id " I
WinSet, ExStyle, -0x20, % "ahk_id " I
}
Else
{
WinSet, AlwaysOnTop, On, % "ahk_id " I
If(T < 0  T > 254  T == "On")
T := 254
WinSet, Transparent, % T, % "ahk_id " I
WinSet, ExStyle, +0x20, % "ahk_id " I
}
}
Else
Return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed
Gui, Font,, Proxima nova
Gui, Font, s12
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, x9 vMyText cYellow, XXX, YYYY
Gui, Add, Text, x107 y7 vMyTotalR cRed, XXXXXX, YYYYYY
Gui, Color, 19181a
WinSet, TransColor, AAAAAA 5000
GoSub, UpdateCounter1
Gui, Show, x%X% y%Y% w212 h30, Overlay
Gui, Color, 19181a
WinSet, TransColor, AAAAAA 5000
GoSub, UpdateCounter1
Gui, Show, x%X% y%Y% w212 h30, Overlay

Hotkey, %KEY1%, Off, UseErrorLevel
Hotkey, %KEY1%, Reports, On, UseErrorLevel
Hotkey, %KEY2%, Off, UseErrorLevel
Hotkey, %KEY2%, delv, On, UseErrorLevel
Hotkey, %KEY3%, Off, UseErrorLevel
Hotkey, %KEY3%, gm, On, UseErrorLevel
Hotkey, %KEY4%, Off, UseErrorLevel
Hotkey, %KEY4%, vac, On, UseErrorLevel
Hotkey, %KEY5%, Off, UseErrorLevel
Hotkey, %KEY5%, mess, On, UseErrorLevel
Hotkey, %KEY6%, Off, UseErrorLevel
Hotkey, %KEY6%, dimcar, On, UseErrorLevel
Hotkey, %KEY7%, Off, UseErrorLevel
Hotkey, %KEY7%, gcar, On, UseErrorLevel
Hotkey, %KEY8%, Off, UseErrorLevel
Hotkey, %KEY8%, mtp, On, UseErrorLevel
Hotkey, %KEY9%, Off, UseErrorLevel
Hotkey, %KEY9%, repm, On, UseErrorLevel
Hotkey, %KEY10%, Off, UseErrorLevel
Hotkey, %KEY10%, rep, On, UseErrorLevel
Hotkey, %KEY11%, Off, UseErrorLevel
Hotkey, %KEY11%, vhod, On, UseErrorLevel
Hotkey, %KEY12%, Off, UseErrorLevel
Hotkey, %KEY12%, resc, On, UseErrorLevel
Hotkey, %KEY13%, Off, UseErrorLevel
Hotkey, %KEY13%, PunishmentHandler, On, UseErrorLevel
Hotkey, %KEY14%, Off, UseErrorLevel
Hotkey, %KEY14%, Cheatsheet, On, UseErrorLevel
Hotkey, %KEY15%, Off, UseErrorLevel
Hotkey, %KEY15%, gh, On, UseErrorLevel
Hotkey, %KEY16%, Off, UseErrorLevel
Hotkey, %KEY16%, chide, On, UseErrorLevel
Hotkey, %KEY17%, Off, UseErrorLevel
Hotkey, %KEY17%, zzdebug, On, UseErrorLevel
Hotkey, %KEY18%, Off, UseErrorLevel
Hotkey, %KEY18%, reshp, On, UseErrorLevel
Hotkey, %KEY19%, Off, UseErrorLevel
Hotkey, %KEY19%, killplayer, On, UseErrorLevel
Hotkey, %KEY20%, Off, UseErrorLevel
Hotkey, %KEY20%, f5, On, UseErrorLevel

;Îáùàÿ èíôà
Gui, Main: Add, Tab, x0 y0 w732 h400 , Õîòêåè|Íàñòðîéêè
Gui, Main: -MaximizeBox
Gui, Main: -SysMenu
Gui, Main: Show, w732 h400, Admin | Las Vegas by Richard Bonanno
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, 
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Color, 1e2124
Gui, Main: Font,cwhite, Proxima Nova

Gui, Main: Add, Picture, x474 y298, %A_ScriptDir%\res\yerka.png
Gui, Main: Add, Picture, x12 y338, %A_ScriptDir%\res\bebra.png


;Ëåâûé áëîê êíîïîê
Gui, Main: Add, Button, x10 y24 w64 h21 gInfo , Èôíî
Gui, Main: Add, Button, x10 y50 w64 h21 gSkillInfo, Íàâûêè
Gui, Main: Add, Button, x10 y76 w64 h21 gCommandlist, Êîìàíäû
Gui, Main: Add, Button, x10 y102 w64 h21 gAnswers, Îòâåòû
Gui, Main: Add, Button, x10 y128 w64 h21 gPunish, Íàêàçàíèÿ
Gui, Main: Add, Button, x10 y154 w64 h21 gUsefull, Ïîëåçíîå
Gui, Main: Add, Button, x10 y180 w64 h21 gTeleports, Òåëåïîðòû
;Gui, Main: Add, Button, x10 y206 w64 h21 g, Îòâåòû 
Gui, Main: Add, Button, x10 y310 w64 h21 gSaveData, Ñîõðàíèòü



;Ïðàûé áëîê êíîïîê
;Gui, Main: Add, Button, x658 y50 w64 h21 gUsefull, Ôðàêöèè
;Gui, Main: Add, Button, x658 y76 w64 h21 gUsefull, Àìôèòåàòð
;Gui, Main: Add, Button, x658 y128 w64 h21 gUsefull, Ëèöåíçèè

;Âåðõíèå áîêñû
Gui, Main: Add, GroupBox, x90 y18 w368 h27 cA52A2A,
Gui, Main: Add, GroupBox, x474 y18 w168 h27 cA52A2A,
Gui, Main: Add, GroupBox, x658 y18 w66 h27 cA52A2A,
Gui, Main: Add, Text, x246 y28 w50 h14 +0x200, Áèíäû
Gui, Main: Add, Text, x504 y28 w100 h14 +0x200 , Êîìàíäû ïðè âõîäå
Gui, Main: Add, Text, x668 y28 w50 h14 +0x200 , Äèíàìèê

;äèíàìèê
Gui, Main: Add, Edit, x658 y50 w33 h21 +Number vDinamic cblack, %Dinamic%
Gui, Main: Add, Button, x696 y53 w21 h15 gsavedata1, ?

Gui, Main: Add, Hotkey, x90 y50 w48 h21 vHot1, %KEY1% ;F8
Gui, Main: Add, Hotkey, x90 y76 w48 h21 vHot2, %KEY2% ;Óäàëèòü ìàøèíó
Gui, Main: Add, Hotkey, x90 y102 w48 h21 vHot3, %KEY3% ; gm 
Gui, Main: Add, Hotkey, x90 y128 w48 h21 vHot4, %KEY4% ; âàêöèíà
Gui, Main: Add, Hotkey, x90 y154 w48 h21 vHot5, %KEY5% ; ïåðâîå ñîîáùåíèå
Gui, Main: Add, Hotkey, x280 y258 w48 h21 vHot6, %KEY6% ; ìàøèíà ïîñëå âîäû
Gui, Main: Add, Hotkey, x90 y180 w48 h21 vHot7, %KEY7% ; getcar
Gui, Main: Add, Hotkey, x90 y206 w48 h21 vHot8, %KEY8% ; òï íà ìåòêó
Gui, Main: Add, Hotkey, x90 y232 w48 h21 vHot9, %KEY9% ; -ðåï
Gui, Main: Add, Hotkey, x90 y258 w48 h21 vHot10, %KEY10% ; +1 ðåïîðò
Gui, Main: Add, Hotkey, x280 y206 w48 h21 vHot11, %KEY11% ; Êîìàíäû ïðè âõîäå
Gui, Main: Add, Hotkey, x90 y284 w48 h21 vHot12, %KEY12% ;   rescue
Gui, Main: Add, Hotkey, x280 y76 w48 h21 vHot13, %KEY13% ; âûäà÷à 
Gui, Main: Add, Hotkey, x280 y284 w48 h21 vHot14, %KEY14% ; ïàìÿòêà
Gui, Main: Add, Hotkey, x280 y180 w48 h21 vHot15, %KEY15% ;  âêë âûêë gh
Gui, Main: Add, Hotkey, x280 y102 w48 h21 vHot16, %KEY16% ; âêë âûêë chide 
Gui, Main: Add, Hotkey, x280 y128 w48 h21 vHot17, %KEY17% ;  âêë âûêë zzdebug
Gui, Main: Add, Hotkey, x280 y154 w48 h21 vHot18, %KEY18% ;  êèë ðåñ
Gui, Main: Add, Hotkey, x280 y50 w48 h21 vHot19, %KEY19% ; ïîãîäà  
Gui, Main: Add, Hotkey, x280 y232 w48 h21 vHot20, %KEY20% ; ôðèòêàì

Gui, Main: Add, Text, x143 y53 w120 h14 +0x200, Àìíèñòèÿ25
Gui, Main: Add, Text, x143 y79 w120 h14 +0x600, Óäàëèòü òðàíñïîðò
Gui, Main: Add, Text, x143 y105 w120 h14 +0x200, Âêë/Âûêë /gm
Gui, Main: Add, Text, x143 y131 w120 h14 +0x200, Âàêöèíà
Gui, Main: Add, Text, x143 y157 w120 h14 +0x200, Ïåðâîå ñîîáùåíèå
Gui, Main: Add, Text, x143 y183 w120 h14 +0x200, ÒÏ àâòî ê ñåáå
Gui, Main: Add, Text, x143 y209 w120 h14 +0x200, ÒÏ íà ìåòêó
Gui, Main: Add, Text, x143 y235 w120 h14 +0x200, Óáðàòü -1 ðåïîðò
Gui, Main: Add, Text, x143 y261 w120 h14 +0x200, Äîáàâèòü +1 ðåïîðò
Gui, Main: Add, Text, x143 y287 w120 h14 +0x200, Âîñêðåñèòü èãðîêà
Gui, Main: Add, Text, x333 y287 w120 h14 +0x200, Ïàìÿòêà

Gui, Main: Add, Text, x333 y53 w120 h14 +0x200, Ïîãîäà
Gui, Main: Add, Text, x333 y79 w120 h14 +0x200, Âûäà÷à íàêàçàíèé
Gui, Main: Add, Text, x333 y105 w120 h14 +0x200, Âêë/Âûêë /chide
Gui, Main: Add, Text, x333 y131 w120 h14 +0x200, Òï ê èãðîêó
Gui, Main: Add, Text, x333 y160 w220 h14 +0x200, HP 0 + rescue
Gui, Main: Add, Text, x333 y183 w122 h14 +0x200, Òåëåïîðò èãðîêà ê ñåáå
Gui, Main: Add, Text, x333 y209 w100 h14 +0x200 , Êîìàíäû ïðè âõîäå
Gui, Main: Add, Text, x333 y235 w100 h14 +0x200 , Óéòè â F5
Gui, Main: Add, Text, x333 y261 w104 h14 +0x200 , Ìàøèíà ïîñëå âîäû 

;ïðè âõîäå
Gui, Main: Add, CheckBox, x474 y50 w120 h23 vRadio8 Checked%Radio8%, /hidecheatinfo
Gui, Main: Add, CheckBox, x474 y76 w120 h23 vRadio9 Checked%Radio9%, /showcheats
Gui, Main: Add, CheckBox, x474 y102 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, Main: Add, CheckBox, x474 y128 w120 h23 vRadio11 Checked%Radio11%, /esp3
Gui, Main: Add, CheckBox, x474 y154 w120 h23 vRadio12 Checked%Radio12%, /templeader %Fraction%
Gui, Main: Add, CheckBox, x474 y180 w120 h23 vRadio13 Checked%Radio13%, /chide
Gui, Main: Add, CheckBox, x474 y206 w120 h23 vRadio14 Checked%Radio14%, /zzdebug
Gui, Main: Add, CheckBox, x474 y232 w120 h23 vRadio15 Checked%Radio15%, /objdl
Gui, Main: Add, CheckBox, x474 y258 w120 h23 vRadio16 Checked%Radio16%, /netstat

;íàñòðîéêè 
Gui, Main: Tab, 2
Gui, Main: Add, Button, x675 y2 w25 h16 ghide, 
Gui, Main: Add, Button, x705 y2 w25 h16 gClose, X
Gui, Main: Add, Picture, x149 y240, %A_ScriptDir%\res\maj.png
Gui, Main: Add, GroupBox, x10 y18 w710 h27 cA52A2A,
Gui, Main: Add, GroupBox, x10 y150 w168 h27 cA52A2A,
Gui, Main: Add, Text, x44 y28 w120 h14 +0x200 , Ðàçðåøåíèå ýêðàíà
Gui, Main: Add, Radio, x12 y50 w80 h23 Group vRadio1 Checked%Radio1%, 1920x1080
Gui, Main: Add, Radio, x12 y128 w80 h23 vRadio2 Checked%Radio2%, 1600x900
Gui, Main: Add, Radio, x12 y102 w80 h23 vRadio3 Checked%Radio3%, 1680x1050
Gui, Main: Add, Radio, x114 y102 w80 h23 vRadio4 Checked%Radio4%, 1366x768
Gui, Main: Add, Radio, x114 y76 w80 h23 vRadio5 Checked%Radio5%, 1280x960
Gui, Main: Add, Radio, x12 y76 w100 h23 vRadio6 Checked%Radio6%, 1920x1080 | 5:4
Gui, Main: Add, Radio, x114 y50 w80 h23 vRadio7 Checked%Radio7%, 1280x1024




Gui, Main: Add, Text, x526 y28 w190 h14 +0x200 , Ðàñïîëîæåíèå ñ÷åò÷èêà/ïàìÿòêè
Gui, Main: Add, Text, x573 y53 w80 h14 +0x200, Êîîðäèíàòà X
Gui, Main: Add, Text, x573 y79 w80 h14 +0x200, Êîîðäèíàòà Y
Gui, Main: Add, Edit, x520 y50 w48 h21 vX +number cblack, %X%
Gui, Main: Add, Edit, x520 y76 w48 h21 vY +number cblack, %Y%

Gui, Main: Add, Text, x573 y105 w130 h14 +0x200, Êîîðäèíàòà X (Ïàìÿòêà)
Gui, Main: Add, Text, x573 y131 w140 h14 +0x200, Êîîðäèíàòà Y (Ïàìÿòêà)

Gui, Main: Add, Edit, x520 y102 w48 h21 vX2 +number cblack, %X2%
Gui, Main: Add, Edit, x520 y128 w48 h21 vY2 +number cblack, %Y2%


Gui, Main: Add, Button, x10 y310 w64 h21 gSaveData, Ñîõðàíèòü

;äèíàìèê
SaveData1: 
Gui, Main: Submit, NoHide
IniWrite, %Dinamic%, %A_ScriptDir%\res\Settings.ini, ID, Dinamic
sleep 200
return

;íàñòðîéêè
SaveData:
Gui, Submit, NoHide
IniWrite, %Radio1%, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x1080
IniWrite, %Radio3%, %A_ScriptDir%\res\Settings.ini, Resolution, 1680x1050
IniWrite, %Radio2%, %A_ScriptDir%\res\Settings.ini, Resolution, 1600x900
IniWrite, %Radio4%, %A_ScriptDir%\res\Settings.ini, Resolution, 1366x768
IniWrite, %Radio5%, %A_ScriptDir%\res\Settings.ini, Resolution, 1280x960
IniWrite, %Radio6%, %A_ScriptDir%\res\Settings.ini, Resolution, 1920x10802
IniWrite, %Radio7%, %A_ScriptDir%\res\Settings.ini, Resolution, 1280õ1024

IniWrite, %Radio8%, %A_ScriptDir%\res\Settings.ini, Login Commands, /hidecheatinfo
IniWrite, %Radio9%, %A_ScriptDir%\res\Settings.ini, Login Commands, /showcheats
IniWrite, %Radio10%, %A_ScriptDir%\res\Settings.ini, Login Commands, /dl
IniWrite, %Radio11%, %A_ScriptDir%\res\Settings.ini, Login Commands, /esp3
IniWrite, %Radio12%, %A_ScriptDir%\res\Settings.ini, Login Commands, /templeader
IniWrite, %Radio13%, %A_ScriptDir%\res\Settings.ini, Login Commands, /chide
IniWrite, %Radio14%, %A_ScriptDir%\res\Settings.ini, Login Commands, /zzdebug
IniWrite, %Radio15%, %A_ScriptDir%\res\Settings.ini, Login Commands, /objdl
IniWrite, %Radio16%, %A_ScriptDir%\res\Settings.ini, Login Commands, /netstat

IniWrite, %Hot1%, %A_ScriptDir%\res\Settings.ini, Binds, KEY1
IniWrite, %Hot2%, %A_ScriptDir%\res\Settings.ini, Binds, KEY2
IniWrite, %Hot3%, %A_ScriptDir%\res\Settings.ini, Binds, KEY3
IniWrite, %Hot4%, %A_ScriptDir%\res\Settings.ini, Binds, KEY4
IniWrite, %Hot5%, %A_ScriptDir%\res\Settings.ini, Binds, KEY5
IniWrite, %Hot6%, %A_ScriptDir%\res\Settings.ini, Binds, KEY6
IniWrite, %Hot7%, %A_ScriptDir%\res\Settings.ini, Binds, KEY7
IniWrite, %Hot8%, %A_ScriptDir%\res\Settings.ini, Binds, KEY8
IniWrite, %Hot9%, %A_ScriptDir%\res\Settings.ini, Binds, KEY9
IniWrite, %Hot10%, %A_ScriptDir%\res\Settings.ini, Binds, KEY10
IniWrite, %Hot11%, %A_ScriptDir%\res\Settings.ini, Binds, KEY11
IniWrite, %Hot12%, %A_ScriptDir%\res\Settings.ini, Binds, KEY12
IniWrite, %Hot13%, %A_ScriptDir%\res\Settings.ini, Binds, KEY13
IniWrite, %Hot14%, %A_ScriptDir%\res\Settings.ini, Binds, KEY14
IniWrite, %Hot15%, %A_ScriptDir%\res\Settings.ini, Binds, KEY15
IniWrite, %Hot16%, %A_ScriptDir%\res\Settings.ini, Binds, KEY16
IniWrite, %Hot17%, %A_ScriptDir%\res\Settings.ini, Binds, KEY17
IniWrite, %Hot18%, %A_ScriptDir%\res\Settings.ini, Binds, KEY18
IniWrite, %Hot19%, %A_ScriptDir%\res\Settings.ini, Binds, KEY19
IniWrite, %Hot20%, %A_ScriptDir%\res\Settings.ini, Binds, KEY20

IniWrite, %X%, %A_ScriptDir%\res\Settings.ini, Coords, X
IniWrite, %Y%, %A_ScriptDir%\res\Settings.ini, Coords, Y
IniWrite, %X2%, %A_ScriptDir%\res\Settings.ini, Coords, X2
IniWrite, %Y2%, %A_ScriptDir%\res\Settings.ini, Coords, Y2
IniWrite, %Dimension%, %A_ScriptDir%\res\Settings.ini, Dimension, Dimension
IniWrite, %Fraction%, %A_ScriptDir%\res\Settings.ini, Fraction, Fraction

IniWrite, %dis%, %A_ScriptDir%\res\Settings.ini, Discord, dis
IniWrite, %tag%, %A_ScriptDir%\res\Settings.ini, Discord, tag
IniWrite, %gadis%, %A_ScriptDir%\res\Settings.ini, Discord, gadis
IniWrite, %gatag%, %A_ScriptDir%\res\Settings.ini, Discord, gatag
IniWrite, %zgadis%, %A_ScriptDir%\res\Settings.ini, Discord, zgadis
IniWrite, %zgatag%, %A_ScriptDir%\res\Settings.ini, Discord, zgatag
Reload

return


UpdateCounter1:
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, Äåíü: %DayANS%
GuiControl,, MyTotalR, Íåäåëÿ: %WeekANS%
return

UpdateCounter2:
DayANS-=1
WeekANS-=1
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, Äåíü: %DayANS%
GuiControl,, MyTotalR, Íåäåëÿ: %WeekANS%
return

UpdateCounter:
DayANS+=1
WeekANS+=1
IniWrite, %DayANS%, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniRead, DayANS, %A_ScriptDir%\res\Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
IniRead, WeekANS, %A_ScriptDir%\res\Settings.ini, ANS, WeekANS
GuiControl,, MyText, Äåíü: %DayANS%
GuiControl,, MyTotalR, Íåäåëÿ: %WeekANS%
return

Reports:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 300
SendInput, {T}
Sleep 500
SendInput,/unjail %hId% Àìíèñòèÿ{Enter}
Sleep 500
SendInput, {T}
Sleep 500
SendInput,/ajail %hId% 25 Àìíèñòèÿ{Enter}
Return

;ñ÷åò÷èê
mess: 
labelgo:

{
sleep 50
SendInput, Çäðàâñòâóéòå, ñåé÷àñ çàéìóñü âàøèì îáðàùåíèåì, îæèäàéòå.

Sleep 50
SendInput, {Enter}
Sleep 50

{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}

return

	Info:
    Gui, Info: Color, 1e2124
    Gui, Info: Font, s12, Segoe UI
    Gui, Info: Font, cwhite
	Gui, Info: Add, Text, x8 y8  h23 +0x200,ÀÕÊ ñîçäàí äëÿ îáëåã÷åíèÿ ðàáîòû àäìèíèñòðàöèè ïðîåêòà Majestic.
    Gui, Info: Add, Text, x8 y32  h23 +0x200, 
    Gui, Info: Add, Text, x8 y56  h23 +0x200,ÀÕÊ àâòîìàòè÷åñêè ñ÷èòàåò êîë-âî îòâå÷åííûõ ðåïîðòîâ â äåíü è â íåäåëþ, âî 
    Gui, Info: Add, Text, x8 y80  h23 +0x200, âðåìÿ îòâåòà íà ðåïîðò ïðè ïåðâîì ñîîáùåíèè â îòâåòå æìèòå íà êëàâèøó, 
    Gui, Info: Add, Text, x8 y104  h23 +0x200, êîòîðóþ âû çàáèíäèëè â "Ïåðâîå ñîîáùåíèå".
    Gui, Info: Add, Text, x8 y128  h23 +0x200,
    Gui, Info: Add, Text, x8 y152  h23 +0x200, Âñå êîìàíäû, òåëåïîðòû, íàêàçàíèÿ ìîæíî ââîäèòü òðàíñëèòîì. Ïð.: .åç -> /tp
    Gui, Info: Add, Text, x8 y176  h23 +0x200, 
    Gui, Info: Add, Text, x8 y200  h23 +0x200, Äëÿ êîððåêòíîé ðàáîòû ñîôòà íåîáõîäèìî âûáðàòü ðàçðåøåíèå ýêðàíà, âàø 
    Gui, Info: Add, Text, x8 y224  h23 +0x200, äèñêîðä, ñåðâåð è âàø ïîë â íàñòðîéêàõ.
    Gui, Info: Add, Text, x8 y248  h23 +0x200, 
    Gui, Info: Add, Text, cred x8 y272  h23 +0x200, Õîòêåè:
	Gui, Info: Add, Text, x8 y320  h23 +0x200,Ctrl + F9 - Ïåðåçàïóñòèòü.
    Gui, Info: Add, Text, x8 y296  h23 +0x200,Ctrl + F10 - Çàêðûòü.
    Gui, Info: Add, Text, x8 y344  h23 +0x200,
    Gui, Info: Add, Text, x8 y368  h23 +0x200, Åñëè ÷òî-òî ñëîìàëîñü/íå ðàáîòàåò/åñòü èäåè è ò.ï. ïèñàòü - .jeazz#5533
    Gui, Info: Show, h390 w600, Èíôîðìàöèÿ
	Return
	
	Usefull:
	Gui, Usefull: -SysMenu
	Gui, Usefull: Add, Button, x275 y2 w25 h16 gguiclose4, X
	Gui, Usefull: Add, Tab, x0 y0 h414 w300, 1|2|3|4
    Gui, Usefull: Color, 1e2124
    Gui, Usefull: Font,s9, Segoe UI
    Gui, Usefull: Font, cwhite
	
	Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Ñïèñîê ñêèëîâ
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, stamina - Âûíîñëèâîñòü
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, lung_capacity - Äûõàíèå
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, wheelie_ability - Âîæäåíèå
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, flying_ability - Ïîë¸ò
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, shooting_ability - Ñòðåëüáà
    Gui, Usefull: Add, Text, x8 y136  h20 +0x200, stealth_ability - Ñêðûòíîñòü
    Gui, Usefull: Add, Text, x8 y152  h20 +0x200, builder - Ñòðîèòåëü
    Gui, Usefull: Add, Text, x8 y168  h20 +0x200, butcher - Ìÿñíèê
    Gui, Usefull: Add, Text, x8 y184  h20 +0x200, trucker - Äàëüíîáîéùèê
    Gui, Usefull: Add, Text, x8 y200  h20 +0x200, fishing - Ðûáàëîâ
    Gui, Usefull: Add, Text, x8 y216  h20 +0x200, busdriver - Âîäèòåëü àâòîáóñà
    Gui, Usefull: Add, Text, x8 y232  h20 +0x200, moneycollector - Èíêàññàòîð
    Gui, Usefull: Add, Text, x8 y248  h20 +0x200, vineyard - Âèíîãðàäíèê
    Gui, Usefull: Add, Text, x8 y264  h20 +0x200, lumberjack - Ëåñîðóá
    Gui, Usefull: Add, Text, x8 y280  h20 +0x200, garbagecollector - Ìóñîðùèê
    Gui, Usefull: Add, Text, x8 y296  h20 +0x200, farmer - Ôåðìåð 
    Gui, Usefull: Add, Text, x8 y312  h20 +0x200, mushroomer - Ãðèáíèê 
    Gui, Usefull: Add, Text, x8 y328  h20 +0x200, gopostal - Ïî÷òàëüîí
    Gui, Usefull: Add, Text, x8 y344  h20 +0x200, gangjob - Çàêëàä÷èê áàíäèò
    Gui, Usefull: Add, Text, x8 y360  h20 +0x200, mafiajob - Çàêäàæ÷èê ìàôèîçè
    Gui, Usefull: Add, Text, x8 y376  h20 +0x200, bikerjob - Çàêëàä÷èê áàéêåð
    Gui, Usefull: Add, Text, x8 y392  h20 +0x200, hijacker - Óãîíùèê
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, strength - Ñèëà

	Gui, Usefull: Tab, 2
	Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Ñïèñîê ôðàêöèé
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, 1 - LSPD
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, 2 - EMS
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, 3 - Sheriff
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, 4 - National Guard
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, 5 - CityHall (Gov)
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, 6 - Weazel News
    Gui, Usefull: Add, Text, x8 y136  h20 +0x200, 7 - FIB
    Gui, Usefull: Add, Text, x8 y152  h20 +0x200, 8 - The Ballas Gang 
    Gui, Usefull: Add, Text, x8 y168  h20 +0x200, 9 - Los-Santos Vagos
    Gui, Usefull: Add, Text, x8 y184  h20 +0x200, 10 - The Famillies 
    Gui, Usefull: Add, Text, x8 y200  h20 +0x200, 11 - The Bloods Gang 
    Gui, Usefull: Add, Text, x8 y216  h20 +0x200, 12 - Marabunta Grande
    Gui, Usefull: Add, Text, x8 y232  h20 +0x200, 13 - La Cosa Nostra
    Gui, Usefull: Add, Text, x8 y248  h20 +0x200, 14 - Russian Mafia
    Gui, Usefull: Add, Text, x8 y264  h20 +0x200, 15 - Yakuza
    Gui, Usefull: Add, Text, x8 y280  h20 +0x200, 16 - Mexican Cartel 
    Gui, Usefull: Add, Text, x8 y296  h20 +0x200, 17 - The Lost MC
    Gui, Usefull: Add, Text, x8 y312  h20 +0x200, 18 - Angel of Death MC
    Gui, Usefull: Add, Text, x8 y328  h20 +0x200, 19 - Irish Mafia

	Gui, Usefull: Tab, 3
	Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Ñïèñîê NPL 
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, ID 0 - Îäíà ñòîéêà äëÿ âûñòóïëåíèé
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, ID 1 - Äâå ñòîéêè äëÿ äåáàòîâ
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, ID 2 - Òðè ñòîéêè äëÿ äåáàòîâ
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, ID 3 - ×åòûðå ñòîéêè äëÿ äåáàòîâ
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, ID 4 - Àìåðèêàíñêèå ôëàãè âäîëü è íà ñöåíå
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, ID 5 - Êàìåðû íà ñöåíå
	Gui, Usefull: Add, Text, x8 y136  h20 +0x200, ID 6 - Ñòîë ñ êðåñëàìè è áàííåðàìè íà ñöåíå 

	Gui, Usefull: Tab, 4
    Gui, Usefull: Add, Text, x106 y24  h20 +0x200 cred, Ñïèñîê ëèöåíçèé
    Gui, Usefull: Add, Text, x8 y40  h20 +0x200, DriveD - Ëåãêîâîé òðàíñïîðò
    Gui, Usefull: Add, Text, x8 y56  h20 +0x200, DriveM - Ìîòîöèêëû
    Gui, Usefull: Add, Text, x8 y72  h20 +0x200, CDLA - Òÿãà÷è è ìîíîãðóçîâèêè
    Gui, Usefull: Add, Text, x8 y88  h20 +0x200, CDLB - Ïèêàïû è ãðóçîâèêè
    Gui, Usefull: Add, Text, x8 y104  h20 +0x200, CDWL - Îðóæèå
    Gui, Usefull: Add, Text, x8 y120  h20 +0x200, FH - Îõîòà è ðûáàëêà
	Gui, Usefull: Add, Text, x8 y136  h20 +0x200, Business - Áèçíåñû
    Gui, Usefull: Show, h414 w300, %Usefull%
	Return

      
	Teleports:
    Gui, Teleports: Color, 1e2124
    Gui, Teleports: Font, s9, Segoe UI
    Gui, Teleports: Font, cwhite
    Gui, Teleports: Add, Text, cred x8 y8  h20 +0x200, Ðåñïàâíû ôðàêöèé
    Gui, Teleports: Add, Text, x8 y24  h20 +0x200, .ëñïä - /ctp 429 -980 30.50
    Gui, Teleports: Add, Text, x8 y40  h20 +0x200, .áîë - /ctp 287.70 -578.35 50
    Gui, Teleports: Add, Text, x8 y56  h20 +0x200, .øä - /ctp -434.87 6024.54 31.50
    Gui, Teleports: Add, Text, x8 y72  h20 +0x200, .øä2 - /ctp 1843.770 3666.384 33.760
    Gui, Teleports: Add, Text, x8 y88  h20 +0x200, .ôç - ö
    Gui, Teleports: Add, Text, x8 y104  h20 +0x200, .ìýð - /ctp -534.70 -222.07 37.60
    Gui, Teleports: Add, Text, x8 y120  h20 +0x200, .âèçë - /ctp -593 -929 24
    Gui, Teleports: Add, Text, x8 y136  h20 +0x200, .ôèá - /ctp 2527 -377 93
    Gui, Teleports: Add, Text, x8 y152  h20 +0x200, .áàë - /ctp -70.06 -1824.64 26.94
    Gui, Teleports: Add, Text, x8 y168  h20 +0x200, .âàã - /ctp 967 -1817 31
    Gui, Teleports: Add, Text, x8 y184  h20 +0x200, .ôýì - /ctp -204.29 -1513.69 31.60
    Gui, Teleports: Add, Text, x8 y200  h20 +0x200, .áëàäñ - /ctp 496 -1330 29.40
    Gui, Teleports: Add, Text, x8 y216  h20 +0x200, .ìàðà - /ctp 1437.61 -1509.64 62.40
    Gui, Teleports: Add, Text, x8 y232  h20 +0x200, .ëêí - /ctp 1385 1154 114.40
    Gui, Teleports: Add, Text, x8 y248  h20 +0x200, .ðì - /ctp -1526 858 181
    Gui, Teleports: Add, Text, x8 y264  h20 +0x200, .ÿê - /ctp -1556.36 113.07 57
    Gui, Teleports: Add, Text, x8 y280  h20 +0x200, .ìåêñ - /ctp 381.03 23.12 91.40
    Gui, Teleports: Add, Text, x8 y296  h20 +0x200, .èð - /ctp -3028.926 100.118 11.614
    Gui, Teleports: Add, Text, x8 y312  h20 +0x200, .ëîñò - /ctp 969.84 -128.40 74.40
    Gui, Teleports: Add, Text, x8 y328  h20 +0x200, .àîä - /ctp 1995.99 3062.44 47.06
    Gui, Teleports: Add, Text, x8 y344  h20 +0x200, .àì - /ctp -1895.23 2027.19 141
    Gui, Teleports: Add, Text, x8 y360  h20 +0x200, .ãðóá - /ctp -3022 105 11.30
	Gui, Teleports: Add, Text, x8 y376  h20 +0x200, .êëàá - /ctp 1588.65 6445.38 25
    Gui, Teleports: Add, Text, x8 y392  h20 +0x200, .ðè÷ - /ctp -1302.49 294.52 64.50
    Gui, Teleports: Add, Text, x8 y408  h20 +0x200, .ìàíîð - /ctp -58.20 343.73 111.80
    Gui, Teleports: Add, Text, x8 y424  h20 +0x200, .êîíò - /ctp -1865.51 -355.96 57
    Gui, Teleports: Add, Text, cred x8 y440  h20 +0x200, Êëþ÷è
	Gui, Teleports: Add, Text, x8 y456  h20 +0x200, .êëì - /ctp -361.424 -129.636 38.696
    Gui, Teleports: Add, Text, x8 y472  h20 +0x200, .êëã - /ctp -40.529 -1077.648 26.653 
    Gui, Teleports: Add, Text, x8 y488  h20 +0x200, .êëñ - /ctp 1728.313 3717.568 34.109
    Gui, Teleports: Add, Text, x8 y504  h20 +0x200, .êëï - /ctp -196.836 6218.708 31.491 
	
	Gui, Teleports: Add, Text, cred x220 y8  h20 +0x200, Ìåñòà
	Gui, Teleports: Add, Text, x220 y24  h20 +0x200, .õóì - /ctp 3569.54 3789.48 30
    Gui, Teleports: Add, Text, x220 y40  h20 +0x200, .ìåéç - /ctp -75 -818 326
    Gui, Teleports: Add, Text, x220 y56  h20 +0x200, .êàç - /ctp 916 50 81
    Gui, Teleports: Add, Text, x220 y72  h20 +0x200, .àø - /ctp -620 -2264 6
    Gui, Teleports: Add, Text, x220 y88  h20 +0x200, .ãã - /ctp -257 -2023 30
    Gui, Teleports: Add, Text, x220 y104  h20 +0x200, .áóðãåð - /ctp -1171.31 -890.20 13.90
    Gui, Teleports: Add, Text, x220 y120  h20 +0x200, .áàãàìà - /ctp -1391.30 -585.35 30
    Gui, Teleports: Add, Text, x220 y136  h20 +0x200, .êàéî - /ctp 4488.58 -4493.52 4
    Gui, Teleports: Add, Text, x220 y152  h20 +0x200, .àâèà - /ctp 3035.21 -4688.55 15
    Gui, Teleports: Add, Text, x220 y168  h20 +0x200, .ìîë - /ctp 61.67 -1751.80 47
    Gui, Teleports: Add, Text, x220 y184  h20 +0x200, .òðàñ - /ctp 7400 3946 1124
    Gui, Teleports: Add, Text, x220 y200  h20 +0x200, .òðàññ - /ctp 7400 -656 1124
    Gui, Teleports: Add, Text, x220 y216  h20 +0x200, .àóê - /ctp -833 -699.50 27
    Gui, Teleports: Add, Text, x220 y232  h20 +0x200, .áîêñ - /ctp 8.56 -1658.55 28.71
    Gui, Teleports: Add, Text, x220 y248  h20 +0x200, .áàð - /ctp -305.09 6259.59 30.92
    Gui, Teleports: Add, Text, x220 y264  h20 +0x200, .áê - /ctp 500.44 109.79 96.49
    Gui, Teleports: Add, Text, x220 y280  h20 +0x200, .âàíèëà - /ctp 131.33 -1302.93 29.23
    Gui, Teleports: Add, Text, x220 y296  h20 +0x200, .ïî÷èíêà - /ctp -1430.45 -450.5 35.91
    Gui, Teleports: Add, Text, x220 y312  h20 +0x200, .ñýíäè - /ctp 1843.770 3666.384 33.760
    Gui, Teleports: Add, Text, x220 y328  h20 +0x200, .ïîðò - /ctp 417 -2501 13.46
    Gui, Teleports: Add, Text, x220 y344  h20 +0x200, .ñòð - /ctp 1304 1453 98.87
    Gui, Teleports: Add, Text, x220 y360  h20 +0x200, .ëåñ - /ctp -321 6093 31.14
	Gui, Teleports: Add, Text, x220 y376  h20 +0x200, .áìàðà - /ctp 1302 -1646 51.04
    Gui, Teleports: Add, Text, x220 y392  h20 +0x200, .ñàìîë - /ctp 1473 2730 37.38
    Gui, Teleports: Add, Text, x220 y408  h20 +0x200, .÷èë - /ctp 498 5592 795
    Gui, Teleports: Add, Text, x220 y424  h20 +0x200, .ïàëåòî - /ctp -434.87 6024.54 31.50
    Gui, Teleports: Add, Text, cred x220 y440  h20 +0x200, Áèçâàðû
    Gui, Teleports: Add, Text, x220 y456  h20 +0x200, .ñâàëêà1/2 - Ëîêàöèÿ áèçâàðà + 222 äèìåíøåí
    Gui, Teleports: Add, Text, x220 y472  h20 +0x200, .ïîðò1/2 - Ëîêàöèÿ áèçâàðà + 222 äèìåíøåí
    Gui, Teleports: Add, Text, x220 y488  h20 +0x200, .ìàðà1/2 - Ëîêàöèÿ áèçâàðà + 222 äèìåíøåí
    Gui, Teleports: Add, Text, x220 y504  h20 +0x200, .ñòðîéêà1/2 - Ëîêàöèÿ áèçâàðà + 222 äèìåíøåí
    Gui, Teleports: Show, h526 w500, Òåëåïîðòû
	Return

	Commandlist:
	Gui, Commandlist: -SysMenu
	Gui, Commandlist: Add, Button, x487 y2 w25 h16 gguiclose3, X
    Gui, Commandlist: Add, Tab, x0 y0 h782 w512, 1|2
    Gui, Commandlist: Color, 1e2124
    Gui, Commandlist: Font, s8, Segoe UI
    Gui, Commandlist: Font, cwhite
    Gui, Commandlist: Add, Text, x8 y24  h20 +0x200, .èñð - /bancheck
    Gui, Commandlist: Add, Text, x8 y40  h20 +0x200, /jch - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .îñð - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .èôòñðóñë - /bancheck
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .ôîôøäñðóñë - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y104  h20 +0x200, /tf - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .åà - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, /sm - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ûü - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, /tn - /tempname 
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .åò - /tempname 
    Gui, Commandlist: Add, Text, x8 y200  h20 +0x200, .ÿÿâ - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, /zzd - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, /Usefull - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .ôüçð - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, /rUsefull - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .êôüçð - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, /gzone - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .ïÿùòó - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, /mcheck - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, .üñðóñë - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, .üãåóñðóñë - /mutecheck 
	Gui, Commandlist: Add, Text, x8 y376  h20 +0x200, .ãòîôøä - /unjail 
    Gui, Commandlist: Add, Text, x8 y392  h20 +0x200, .öôêò - /warn 
    Gui, Commandlist: Add, Text, x8 y408  h20 +0x200, .äâ - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y424  h20 +0x200, /ld - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y440  h20 +0x200, /af - /ainfect 
    Gui, Commandlist: Add, Text, x8 y456  h20 +0x200, .ôà - /ainfect 
    Gui, Commandlist: Add, Text, x8 y472  h20 +0x200, /sk - /skick 
    Gui, Commandlist: Add, Text, x8 y488  h20 +0x200, .ûë - /skick 
    Gui, Commandlist: Add, Text, x8 y504  h20 +0x200, /k - /kick 
    Gui, Commandlist: Add, Text, x8 y520  h20 +0x200, .ë - /kick 
	Gui, Commandlist: Add, Text, x8 y536  h20 +0x200, /ai - /auninvite 
    Gui, Commandlist: Add, Text, x8 y552  h20 +0x200, .ôø - /auninvite 
    Gui, Commandlist: Add, Text, x8 y568  h20 +0x200, .àè - /fb 
    Gui, Commandlist: Add, Text, x8 y584  h20 +0x200, /aif - /ainfect  
	Gui, Commandlist: Add, Text, x8 y600  h20 +0x200, .ôøà - /ainfect 
    Gui, Commandlist: Add, Text, x8 y616  h20 +0x200, .ñ - /c  
    Gui, Commandlist: Add, Text, x8 y632  h20 +0x200, .ñè - /cb 
    Gui, Commandlist: Add, Text, x8 y648  h20 +0x200, .ãòüãåó - /unmute 
    Gui, Commandlist: Add, Text, x8 y664  h20 +0x200, .ïøâ - /gid 
    Gui, Commandlist: Add, Text, x8 y680  h20 +0x200, .ôâüøòû - /admins 
    Gui, Commandlist: Add, Text, x8 y696  h20 +0x200, .ôøòàóñå - /ainfect 
    Gui, Commandlist: Add, Text, x8 y712  h20 +0x200, .óìóòåùò - /eventon 
    Gui, Commandlist: Add, Text, x8 y728  h20 +0x200, .óìóòåùàà - /eventoff 
    Gui, Commandlist: Add, Text, x8 y744  h20 +0x200, .ïö - /gw 
	Gui, Commandlist: Add, Text, x8 y760  h20 +0x200, /bch - /bancheck
	
    Gui, Commandlist: Add, Text, x170 y24  h20 +0x200, .àø÷ñôê - /fixcar 
    Gui, Commandlist: Add, Text, x170 y40  h20 +0x200, .óüçäóôâóê - /templeader 
    Gui, Commandlist: Add, Text, x170 y56  h20 +0x200, /tl - /templeader 
    Gui, Commandlist: Add, Text, x170 y72  h20 +0x200, .åä - /templeader 
    Gui, Commandlist: Add, Text, x170 y88  h20 +0x200, .ûëøñë - /skick 
    Gui, Commandlist: Add, Text, x170 y104  h20 +0x200, .êóçôøê - /repair 
    Gui, Commandlist: Add, Text, x170 y120  h20 +0x200, .ôãòøìøåó - /auninvite 
    Gui, Commandlist: Add, Text, x170 y136  h20 +0x200, .ó÷ñôê - /excar 
    Gui, Commandlist: Add, Text, x170 y152  h20 +0x200, .àãóä - /fuel 
    Gui, Commandlist: Add, Text, x170 y168  h20 +0x200, .àêóóÿó - /freeze
    Gui, Commandlist: Add, Text, x170 y200  h20 +0x200, .çãääåêãòë - /pulltrunk 
    Gui, Commandlist: Add, Text, x170 y216  h20 +0x200, .åçñôê - /tpcar 
    Gui, Commandlist: Add, Text, x170 y232  h20 +0x200, .äôûåâêøìóê - /lastdriver 
    Gui, Commandlist: Add, Text, x170 y248  h20 +0x200, .âóäøåóü - /delitem 
    Gui, Commandlist: Add, Text, x170 y264  h20 +0x200, /gc - /getcar 
	Gui, Commandlist: Add, Text, x170 y184  h20 +0x200, .ïèçäåö - Ìîëüáà î ïîìîùè
    Gui, Commandlist: Add, Text, x170 y280  h20 +0x200, .ïñ - /getcar 
    Gui, Commandlist: Add, Text, x170 y296  h20 +0x200, .ôâ - /admins 
    Gui, Commandlist: Add, Text, x170 y312  h20 +0x200, /ad - /admins 
    Gui, Commandlist: Add, Text, x170 y328  h20 +0x200, .ç - /players 
    Gui, Commandlist: Add, Text, x170 y344  h20 +0x200, /p - /players 
    Gui, Commandlist: Add, Text, x170 y360  h20 +0x200, .çäôíóêû - /players 
	Gui, Commandlist: Add, Text, x170 y376  h20 +0x200, .ðåñ - /rescue 
    Gui, Commandlist: Add, Text, x170 y392  h20 +0x200, /htc - /rescue 
    Gui, Commandlist: Add, Text, x170 y408  h20 +0x200, .åç - /tp 
    Gui, Commandlist: Add, Text, x170 y424  h20 +0x200, .ûçóñ - /spec 
    Gui, Commandlist: Add, Text, x170 y440  h20 +0x200, .ûçóñùàà - /specoff
    Gui, Commandlist: Add, Text, x170 y456  h20 +0x200, .ô - /a 
    Gui, Commandlist: Add, Text, x170 y472  h20 +0x200, .ôûüû - /asms 
    Gui, Commandlist: Add, Text, x170 y488  h20 +0x200, /sp - /spec 
    Gui, Commandlist: Add, Text, x170 y504  h20 +0x200, .ûç - /spec 
    Gui, Commandlist: Add, Text, x170 y520  h20 +0x200, /so - /specoff 
	Gui, Commandlist: Add, Text, x170 y536  h20 +0x200, .ûù - /specoff
    Gui, Commandlist: Add, Text, x170 y552  h20 +0x200, /kill - /hp 0
    Gui, Commandlist: Add, Text, x170 y568  h20 +0x200, .ëøää - /hp 0
    Gui, Commandlist: Add, Text, x170 y584  h20 +0x200, .ïð - /gh 
	Gui, Commandlist: Add, Text, x170 y600  h20 +0x200, .øòñôê - /incar 
    Gui, Commandlist: Add, Text, x170 y616  h20 +0x200, .øòì - /inv 
    Gui, Commandlist: Add, Text, x170 y632  h20 +0x200, .ðç - /hp 
    Gui, Commandlist: Add, Text, x170 y648  h20 +0x200, .øâ - /id 
    Gui, Commandlist: Add, Text, x170 y664  h20 +0x200, .îä - /ajail 
    Gui, Commandlist: Add, Text, x170 y680  h20 +0x200, .ôîôøä - /ajail 
    Gui, Commandlist: Add, Text, x170 y696  h20 +0x200, .ëøñë - /kick 
    Gui, Commandlist: Add, Text, x170 y712  h20 +0x200, .âä - /dl 
    Gui, Commandlist: Add, Text, x170 y728  h20 +0x200, .óûç - /esp 
    Gui, Commandlist: Add, Text, x170 y744  h20 +0x200, .óûç2 - /esp2 
	Gui, Commandlist: Add, Text, x170 y760  h20 +0x200, .ìóð - /veh 

    Gui, Commandlist: Add, Text, x332 y24  h20 +0x200, .èôò - /ban 
    Gui, Commandlist: Add, Text, x332 y40  h20 +0x200, .âóäìóð - /delveh 
    Gui, Commandlist: Add, Text, x332 y56  h20 +0x200, .üåç - /mtp 
    Gui, Commandlist: Add, Text, x332 y72  h20 +0x200, .ìóð - /veh 
    Gui, Commandlist: Add, Text, x332 y88  h20 +0x200, .ôìóð - /aveh 
    Gui, Commandlist: Add, Text, x332 y104  h20 +0x200, .ðôêâèôò - /hardban 
    Gui, Commandlist: Add, Text, x332 y120  h20 +0x200, .üãåó - /mute 
    Gui, Commandlist: Add, Text, x332 y136  h20 +0x200, .ïøâ - /gid 
    Gui, Commandlist: Add, Text, x332 y152  h20 +0x200, .ñð - /chide 
    Gui, Commandlist: Add, Text, x332 y168  h20 +0x200, /ch - /chide 
    Gui, Commandlist: Add, Text, x332 y184  h20 +0x200, .êóûñãó - /rescue 
    Gui, Commandlist: Add, Text, x332 y200  h20 +0x200, .ûóåâøü - /setdim 
    Gui, Commandlist: Add, Text, x332 y216  h20 +0x200, /sd - /setdim 
    Gui, Commandlist: Add, Text, x332 y232  h20 +0x200, .è - /b 
    Gui, Commandlist: Add, Text, x332 y248  h20 +0x200, .ö - /w 
    Gui, Commandlist: Add, Text, x332 y264  h20 +0x200, .ûâ - /setdim 
    Gui, Commandlist: Add, Text, x332 y280  h20 +0x200, .ñðøâó - /chide 
    Gui, Commandlist: Add, Text, x332 y296  h20 +0x200, .àôê - /a àôê ìèí
    Gui, Commandlist: Add, Text, x332 y312  h20 +0x200, .ôãòñãàà - /auncuff 
    Gui, Commandlist: Add, Text, x332 y328  h20 +0x200, .ôñãàà - /acuff 
    Gui, Commandlist: Add, Text, x332 y344  h20 +0x200, .àêóóÿìóð - /freezveh
    Gui, Commandlist: Add, Text, x332 y360  h20 +0x200, /scd - /setcardim 
	Gui, Commandlist: Add, Text, x332 y376  h20 +0x200, .ûóåñôêâøü - /setcardim 
    Gui, Commandlist: Add, Text, x332 y392  h20 +0x200, .ûñâ - /setcardim 
    Gui, Commandlist: Add, Text, x332 y408  h20 +0x200, /rst - /resettempname 
    Gui, Commandlist: Add, Text, x332 y424  h20 +0x200, .êûå - /resettempname 
    Gui, Commandlist: Add, Text, x332 y440  h20 +0x200, .êóûóååóüçòôüó - /resettempname 
    Gui, Commandlist: Add, Text, x332 y456  h20 +0x200, .òû - /netstat 
    Gui, Commandlist: Add, Text, x332 y472  h20 +0x200, /ns - /netstat 
    Gui, Commandlist: Add, Text, x332 y488  h20 +0x200, /dv - /delveh 
    Gui, Commandlist: Add, Text, x332 y504  h20 +0x200, .âì - /delveh 
    Gui, Commandlist: Add, Text, x332 y520  h20 +0x200, .ðôêâ - /hardban 
	Gui, Commandlist: Add, Text, x332 y536  h20 +0x200, /hard - /hardban 
    Gui, Commandlist: Add, Text, x332 y552  h20 +0x200, /as - /asms 
    Gui, Commandlist: Add, Text, x332 y568  h20 +0x200, .ôû - /asms 
    Gui, Commandlist: Add, Text, x332 y584  h20 +0x200, .ïåç - /gtp
	Gui, Commandlist: Add, Text, x332 y600  h20 +0x200, .ïü - /gm
    Gui, Commandlist: Add, Text, x332 y616  h20 +0x200, .òñ - /noclip 
    Gui, Commandlist: Add, Text, x332 y632  h20 +0x200, /nc - /noclip 
    Gui, Commandlist: Add, Text, x332 y648  h20 +0x200, /acf - /acuff 
    Gui, Commandlist: Add, Text, x332 y664  h20 +0x200, .ôñà - /acuff 
    Gui, Commandlist: Add, Text, x332 y680  h20 +0x200, /auf - /auncuff 
    Gui, Commandlist: Add, Text, x332 y696  h20 +0x200, .åçð - /tph
    Gui, Commandlist: Add, Text, x332 y712  h20 +0x200, .ôãà - /auncuff 
    Gui, Commandlist: Add, Text, x332 y728  h20 +0x200, .ôìóð - /aveh
    Gui, Commandlist: Add, Text, x332 y744  h20 +0x200, .ôäùñë - /alock
	Gui, Commandlist: Add, Text, x332 y760  h20 +0x200, .ïóåñôê - /getcar 

	Gui, Commandlist: Tab, 2
	Gui, Commandlist: Add, Text, cred x122 y24  h20 +0x200, Äàííûå êîìàíäû ðàáîòàþò ñîâìåñòíî ñ "äèíàìèê"
    Gui, Commandlist: Add, Text, cyellow x8 y40  h20 +0x200, Äèìåíøåíû
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .îáû÷ - /setdim id 0
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .êàïòä - /setdim id 9871 
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .áèçä - /setdim id 222
    Gui, Commandlist: Add, Text, cyellow x8 y104  h20 +0x200, Îðóæèå
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .ìèíèã - /gw id weapon_minigun 9999
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, .ðåâèê - /gw id weapon_revolver 9999
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ðàêåò - /gw id weapon_firework 9999
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, .õåâèê - /gw id weapon_heavysniper_mk2 9999
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .òîïîð - /gw id weapon_hatchet  9999
	Gui, Commandlist: Add, Text, cyellow x8 y200  h20 +0x200, Áèçâàðû
	Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, .ëåñ1 - Òåëåïîðò íà ëîêàöèþ ëåñ (äåô) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, .ëåñ2 - Òåëåïîðò íà ëîêàöèþ ëåñ (àòàêà) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .ïîðò1 - Òåëåïîðò íà ëîêàöèþ ïîðò (äåô) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, .ïîðò2 - Òåëåïîðò íà ëîêàöèþ ïîðò (àòàêà) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .ñâàëêà1 - Òåëåïîðò íà ëîêàöèþ ñâàëêà (äåô) + ñìåíà äèìåíøåíà
	Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, .ñâàëêà2 - Òåëåïîðò íà ëîêàöèþ ñâàëêà (àòàêà) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .ñòðîéêà1 - Òåëåïîðò íà ëîêàöèþ ñòðîéêà (äåô) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, .ñòðîéêà2 - Òåëåïîðò íà ëîêàöèþ ñòðîéêà (àòàêà) + ñìåíà äèìåíøåíà
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, 
    Gui, Commandlist: Show, h782 w512, Êîìàíäû
	Return

	Answers:
	Gui, Answers: -SysMenu
	Gui, Answers: Add, Button, x1075 y2 w25 h16 gguiclose, X
    Gui, Answers: Add, Tab, x0 y0 h766 w1100, 1|2|3|4|5
    Gui, Answers: Color, 1e2124
    Gui, Answers: Font, s8, Segoe UI
    Gui, Answers: Font, cwhite
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .âèç - Âèçóàëüíûé áàã, ïåðåçàéäèòå íà ñåðâåð.
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .ñóä - Ïðèâåòñòâóþ, àäìèíèñòðàöèÿ ñëåäèò èñêëþ÷èòåëüíî çà ñîáëþäåíèå ïðàâèë ñåðâåðà. Âàì íåîáõîäèìî íàéòè îòâåò íà âàø âîïðîñ ñàìîñòîÿòåëüíî, îïèðàÿñü íà çàêîíîäàòåëüíóþ áàçó ñåðâåðà Las Vegas - https://forum.majestic-rp.ru/forums/zakonodatelnaja-baza.820/

    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .áàãâîéñ - Íàæìèòå F2 - Íàñòðîéêè - áëîêèðîâêà âîéñà - çàáëîêèðóéòå äëÿ âñåõ è ñíîâà ðàçáëîêèðóéòå. Â ñëó÷àå, åñëè ïðîáëåìà îñòàëàñü, òî ïåðåçàéäèòå â èãðó.
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .ìåòàë - Ìåòàëëîèñêàòåëü ñòàíîâèòñÿ àêòèâíûì êàê òîëüêî Âû áåðåòå åãî â ðóêè. Êîãäà îí íàéäåò ñîêðîâèùà, òî áóäóò ïðîèñõîäèòü âèçóàëüíûå è çâóêîâûå îïîâåùåíèÿ. Îò çåëåíîãî öâåòà, äî êðàñíîãî. 
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, Ìåñòà ðàñïîëîæåíèÿ ñîêðîâèù: ïëÿæè è àðõèïåëàãè.
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, .ðûáàëêà - Äëÿ òîãî ÷òîáû ðûáà÷èòü, Âàì  íóæíà óäî÷êà è íàæèâêà - ïîêóïàåòñÿ â ëþáîì ìàãèçèíå 24/7. Ïîäõîäèòå ê çîíå ðûáàëêè ñâîåãî óðîâíÿ è íàæèìàåòå êëàâèøó Å. Æä¸òå êë¸âà, êàê ïîÿâèòñÿ
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, ðûáà, îíà áóäåò âèëÿòü â ñòîðîíû âëåâî-âïðàâî. Âàì íóæíî çàæèìàòü êëàâèøè A/D ïðîòèâîïîëîæíîé ñòîðîíû ðûáû. Ïîñëå òîãî êàê ðûáà óòîìèëàñü, Âû å¸ ïîäñåêàåòå ëåâîé êíîïêîé ìûøè.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .ðûá - Âàì íàäî ëîâèòü ðûáó â çîíå, êîòîðàÿ ñîîòâåòñòâóåò âàøåìó óðîâíþ. 1 óðîâåíü - Çîíû: 1, 2, 3, 4. Ðûáà: Ôîðåëü. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 196. .
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, 2 óðîâåíü - Çîíû: 5,6. Ðûáà: Êàìáàëà. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 588. 3 óðîâåíü - Çîíà 7,8. Ðûáà: Òóíåö.  Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 1 225. 4 óðîâåíü - Çîíà 9,10. Ðûáà: Êðàñíûé ñîëäàò. 
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 2 205. 5 óðîâåíü - Çîíà 11. Ðûáà: Êàðàñü. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 3 920. 6 óðîâåíü - Çîíà 12. Ðûáà: Îðàíæåâûé êàðï. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, 6 125. 7 óðîâåíü - Çîíà 13. Ðûáà: Àêâàìàðèí.  Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 8 820. 8 óðîâåíü - Çîíà 14. Ðûáà: Çîëîòàÿ ðûáêà
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, .ñòàâêà - Ðàñ÷¸ò ñòàâêè îáû÷íî ïðîèñõîäèò â òå÷åíèå 6-òè ÷àñîâ. Àäìèíèñòðàöèÿ íå óïðàâëÿåò ðàññ÷åòîì.
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .êëâë - Ïðè äîñòèæåíèè 5-ãî óðîâíÿ: 500 MC Ïðè äîñòèæåíèè 10-ãî óðîâíÿ: 1000 MC Ïðè äîñòèæåíèè 15-ãî óðîâíÿ: 2000 MC Ïðè äîñòèæåíèè 20-ãî óðîâíÿ: 3000 MC Ïðè äîñòèæåíèè 25-ãî óðîâíÿ: 
    Gui, Answers: Add, Text, x8 y216  h20 +0x200, 4000 MC Ïðè äîñòèæåíèè 30-ãî óðîâíÿ: 5000 MC. Êàæäûé ñëåäóþùèé óðîâåíü ïîñëå 30-ãî Âû áóäåòå ïîëó÷àò 1500 MC. 
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .êâåñò - Íà ñåðâåðå äîñòóïíû Ìèðîâûå è Ëè÷íûå êâåñòû. Îçíàêîìèòüñÿ ñ íèìè ìîæíî íà ðûíêå (Íà êàðòå îáîçíà÷åí êàê "Êðàñíûé âîïðîñ"). Êâåñòû äîñòóïíû âñåì.
    Gui, Answers: Add, Text, x8 y248  h20 +0x200,  Òîëüêî 5 ëó÷øèõ èãðîêîâ ñìîãóò ïîïàñòü â òîï 3 è çàëóòàòü äîïîëíèòåëüíûå áîíóñû. - Êàæäóþ íåäåëþ äîñòóïíî ïî 3 ëè÷íûõ è ìèðîâûõ êâåñòà. - Íåêîòîðûå êâåñòû ïî òèïó èíêàñàòîðà/ìóñîðùèêà/
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, ïî÷òàëüîíà ìîæíî âûïîëíÿòü â 2-åì è áîëåå, çàñ÷èòûâàòü áóäåì âñåì.
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, .ôåä - Íà ïåðâîì ýòàæå ñòîèò NPC ó êîòîðîãî ìîæíî âçÿòü çàäàíèå. ×òîáû îòáûòü ñðîê â ôåäåðàëüíîé òþðüìå, íóæíî âûïîëíÿòü çàäà÷è. Íàïðèìåð ïîìûòü òóàëåò - Â îïðåäåëåííîå âðåìÿ òþðüìà 
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, çàêðûâàåò êëåòêè íà 5 ìèíóò, ñîîòâåòñòâåííî, â ýòî âðåìÿ îòáûòü ñðîê íåëüçÿ: -- Îòêðûâàþòñÿ êëåòêè â 00 ìèíóò -- Çàêðûâàþòñÿ êëåòêè â 20 ìèíóò íà 5 ìèíóò -- Îòêðûâàþòñÿ êëåòêè â 25 
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, ìèíóò - Çàêðûâàþòñÿ êëåòêè â 55 ìèíóò íà 5 ìèíóò.
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .ñåéô - Çàêðûâàòü èíòåðôåéñ ñåéôà ìîæíî òîëüêî íà ESC. Â ñåéô ìîæíî êëàñòü äî 5 ìèëëèîíîâ. Äåíüãè èäóò èç íàëè÷êè. Íåëüçÿ ïðîäàòü äîìà â ãîñ, ïðîäàòü èãðîêó, ïðåäëîæèòü îáìåí, âûñòàâèòü 
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, íà àóêöèîí, åñëè â ñåéôå åñòü äåíüãè. Ñíà÷àëà òðåáóåòñÿ èõ çàáðàòü. Åñëè äîì ñëåòàåò ïî íàëîãàì - äåíüãè èç ñåéôà èãðîê ïîëó÷àåò â íàëè÷êó. 
    Gui, Answers: Add, Text, x8 y360  h20 +0x200, .ðàöèÿ - Çà âñåìè ôðàêöèÿìè çàêðåïëåí äèàïàçîí ÷àñòîò, êîòîðûé íå ìîãóò çàíÿòü. Â F2 -> Íàñòðîéêè ìîæíî èçìåíèòü Ãðîìêîñòè ðàöèè.
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, .ëåñîðóá - Óñòðàèâàòüñÿ íåîáõîäèìî âñå ó òîãî æå NPC îêîëî Ïàëåòî-Áåé. Äëÿ íà÷àëà ðàáîòû Âàì ïîíàäîáèòüñÿ Òîïîð, êóïèòü åãî ìîæíî ó NPC íà Ðûíêå. Ïðèíöèï ðàáîòû ñõîæèé ñ Ãðèáíèêàìè, 
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, òî÷êè äëÿ ñðóáà äåðåâüåâ ðàçáðîñàíû ïî âñåé êàðòå, êàæäûé óðîâåíü ïðèâÿçàí ê ñâîé òî÷êå ñáîðà. Äðåâåñèíó ìîæíî ïðîäàòü íà ðûíêå. 
    Gui, Answers: Add, Text, x8 y408  h20 +0x200, .ðàö - Äëÿ èñïîëüçâàíèÿ: Âîçüìèòå ðàöèþ > Ââåäèòå ÷èñòîòó >Íàæìèòå åíòåð >Çàæìèòå "M" è áóäåò ñëûøíî.
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .òàéì - Ýòî âèçóàëüíûé áàã òàéìåðà, ÷àñû èäóò è êîèíû âàì íà÷èñëÿò ïî èñòå÷åíèþ âðåìåíè. 
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, .ñèä - Óêàæèòå static ID íàðóøèòåëÿ.
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .ïóò - Âñþ èíôîðìàöèþ (êîìàíäû/î ôðàêöèÿõ, ðàáîòàõ è òàê äàëåå) ìîæíî óçíàòü íà ôîðóìå majestic-rp.ru - ðàçäåë "Ïóòåâîäèòåëü äëÿ íîâè÷êîâ".
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, .óâàë - Ê ñîæàëåíèþ, íè÷åì íå ìîæåì ïîìî÷ü. Äîæäèòåñü ñâîåãî ëèäåðà/çàìåñòèòåëåé èëè ñâÿæèòåñü ñ êóðàòîðîì ñâîåé ôðàêöèè â ëè÷íûå ñîîáùåíèÿ Discord.
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, .ìàéêè - Äëÿ òîãî, ÷òîáû êóïèòü ìàéêó ïîä âåðõíþþ îäåæäó, âàì íóæíî ñíà÷àëà êóïèòü ýëåìåíò âåðõíåé îäåæäû (íàïðèìåð, ïèäæàê). Ïîñëå ýòîãî âàì áóäó äîñòóïíû âñå ìàéêè, êîòîðûå 
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, ïîäõîäÿò ïîä íåå â ðàçäåëå "Ìàéêè".
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, .ñëóõ - Ôóíêöèÿ "ß íå ñëûøó" ïðåäíàçíà÷åíà äëÿ ëþäåé ñ ïëîõèì ñëóõîì èëè åãî îòñóòñòâèåì. Çëîóïîòðåáëåíèå ýòîé ôóíêöèåé êàðàåòñÿ áàíîì. Îòêëþ÷èòü åå ìîæíî â ìåíþ F2 - Íàñòðîéêè.
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, .áàã - Çíàåì î äàííîé ïðîáëåìå, îíà óæå ïåðåäàíà ðàçðàáîò÷èêàì. Ïðèíîñèì ñâîè èçâèíåíèÿ çà ïðåäîñòàâëåííûå íåóäîáñòâà. 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, .÷àò - Âñå íàñòðîéêè ÷àòà âû ìîæåòå íàéòè â F2 - Íàñòðîéêè - Íàñòðîéêè ÷àòà.
    Gui, Answers: Add, Text, x8 y568  h20 +0x200, .ðåë - Ïîëíîñòþ ïåðåçàéäèòå íà ñåðâåð ÷åðåç F1 - Êðåñòèê â ïðàâîì âåðõíåì óãëó ýêðàíà.
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, .íåîáë - Íå îáëàäàåì äàííîé èíôîðìàöèåé.
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, .ðï - Èçâèíèòå, íî ýòî ÐÏ ïðîöåññ, ìû íå âïðàâå âìåøèâàòüñÿ â íåãî.
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, .óðï - Äàííóþ èíôîðìàöèþ âû ìîæåòå ïîëó÷èòü ïðè âçàèìîäåéñòâèè ñ äðóãèìè èãðîêàìè/ñàìîñòîÿòåëüíûì ïîèñêîì íåïîñðåäñòâåííî âî âðåìÿ èãðîâîãî ïðîöåññà, ëèáî äðóãèì äîñòóïíûì IC ïóòåì. 
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, .âîéñ - ×òîáû ïåðåçàãðóçèòü âîéñ, ïîïðîáóéòå íàæàòü F7. Åñëè íè÷åãî íå ïîìîãàåò - ïåðåçàéäèòå â èãðó.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .òåõ - Íàïèøèòå â òåõíè÷åñêèé ðàçäåë íà ôîðóìå.
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, .òåõäñ - Íàïèøèòå â òåõíè÷åñêèé ðàçäåë îôèöèàëüíîãî äèñêîðä ñåðâåðà "Ïîìîùü ïî èãðå" - "òåõ-ïîääåðæêà".
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, .ôóíê - Äàííûé ôóíêöèîíàë âðåìåííî íåäîñòóïåí, ïðèíîñèì ñâîè èçâèíåíèÿ.
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, .ôóí - Äàííûé ôóíêöèîíàë îòñóòñòâóåò íà íàøåì ïðîåêòå. Îñòàâüòå ñâîå ïðåäëîæåíèå íà ôîðóìå â ñïåöèàëüíîì ðàçäåëå: Ïðåäëîæåíèå ïî óëó÷øåíèþ ñåðâåðà - "Íàïèøèòå âàøå ïðåäëîæåíèå òóò".
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .èçâ - Ïðèíîñèì ñâîè èçâèíåíèÿ çà ïðåäîñòàâëåííûå íåóäîáñòâà.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .òåñò::çàéäèòå â èíòåðüåð ìàðêåòïëåéñà -> íàæìèòå Å -> âûáåðèòå êàòåãîðèþ òðàíñïîðò ->  âûáåðèòå ëþáîé òðàíñïîðò ->  òåñò äðàéâ.
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, .åõï - Êàæäûé ÷àñ (ó êàæäîãî èãðîêà ñâî¸ âðåìÿ) Âàì äàåòñÿ EÕP. ×òîáû óçíàòü, ñêîëüêî Âàì îñòàëîñü äî ñëåäóþùåãî PayDay, íàæìèòå êëàâèøó F2-Ïåðñîíàæ.
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, .àâòî - ×òîáû ýâàêóèðîâàòü Âàøå àâòî âîñïîëüçóéòåñü ìàðêåðîì Ñåðâèñà (Ãàå÷íûé êëþ÷ íà êàðòå).  

	Gui, Answers: Tab, 2
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .áèçîãðàá - ×òîáû îãðàáèòü áèçíåñ, âàì íóæíî: îäåòü ìàñêó, ïðèîáðåñòè îðóæèå è, ïðèäÿ â ìàãàçèí â ñîñòàâå îò 2 äî 35 ÷åëîâåê, íàâåñòèñü íà NPC (ïðîäàâöà) îãíåñòðåëîì.
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .ãàíëèö - Ïîëó÷èòü ëèöåíçèþ íà îðóæèå ìîæíî â LSPD èëè LSCSD. 
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .êàíèñòðà - ×òîáû èñïîëüçîâàòü êàíèñòðó, âîçüìèòå å¸ â ðóêè, íàæìèòå G íà àâòî è çàïðàâèòü. 
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .òèï::Ïðèâåòñòâóþ, Âàì íóæíî çàéòè â F2 - Íàñòðîéêè è ïîìåíÿòü òèï ïîñàäêè íà ïðèîðèòåò âîäèòåëüñêîå.
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .åìñ - Ê ñîæàëåíèþ, àäìèíèñòðàöèÿ íå ïîäíèìàåò è íå ëå÷èò èãðîêîâ, âîñïîëüçóéòåñü óñëóãàìè ÅÌÑ.
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, .ïîäíèì - Ê ñîæàëåíèþ, íå âèäÿ âñåé ñèòóàöèè ìû íå â ïðàâå ëå÷èòü,ïîäíèìàòü èëè äîáèâàòü èãðîêîâ. Äîæäèòåñü ñîòðóäíèêîâ EMS ëèáî æå îêîí÷àíèÿ òàéìåðà ñìåðòè. 
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, .æá - Íå ìîãó âûäàâàòü íàêàçàíèÿ è âûíîñèòü êàêèå-ëèáî âåðäèêòû íå âèäÿ ñèòóàöèè ñ ñàìîãî íà÷àëà. Åñëè ó Âàñ åñòü âèäåîôèêñàöèÿ äàííîãî íàðóøåíèÿ - îôîðìèòå æàëîáó íà ôîðóìå.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .àíàê - Îáðàòèòåñü, ïîæàëóéñòà, â äèñêîðä ê àäìèíèñòðàòîðó, êîòîðûé âûäàë âàì íàêàçàíèå èëè ðàññìîòðåë æàëîáó.
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, .àäç - Äàííûé àäìèíèñòðàòîð ñåé÷àñ çàíÿò äðóãèì äåëîì èëè îòîøåë îò êîìïüþòåðà íà êîðîòêîå âðåìÿ, íàïèøèòå åìó â ëè÷íûå ñîîáùåíèÿ â äèñêîðäå.
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, .àäñ - Äàííûé àäìèíèñòðàòîð ñåé÷àñ îòñóòñòâóåò íà ñåðâåðå, íàïèøèòå åìó â ëè÷íûå ñîîáùåíèÿ â äèñêîðäå.
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, .ïîãîäà - Ê ñîæàëåíèþ, àäìèíèñòðàöèÿ íå êîíòðîëèðóåò äàííûé ïðîöåññ. Ïîãîäà ìåíÿåòñÿ àâòîìàòè÷åñêè.
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, .íåï - Íå ïîíÿë ñóòü âàøåãî îáðàùåíèÿ, îïèøèòå Âàøó ïðîáëåìó/âîïðîñ ïîäðîáíåå äëÿ ìàêñèìàëüíî òî÷íîãî îòâåòà, ïîæàëóéñòà.
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .äîíàò - Îáðàòèòåñü ïî ïî÷òå - help@majestic-rp.ru.
    Gui, Answers: Add, Text, x8 y216  h20 +0x200, .ðåìîíò - Äëÿ íà÷àëà, Âàì íóæíî êóïèòü çàï÷àñòü äëÿ ìàøèíû íà ëþáî ÀÇÑ, ïîñëå ÷åãî îòêðûòü êàïîò , íàæàòü G > Ïî÷èíèòü çàìîê/àêêóìóëÿòîð/çàëèòü ìàñëî. 
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .ôåðì - Íà ôåðìå äëÿ ïîñàäêè êàæäîãî èç ðàñòåíèé íóæíû ñëåäóþùèå íàâûêè: Ïøåíèöà - 225 îïûòà. Êàðòîôåëü - 950 îïûòà. Êàïóñòà - 2000 îïûòà. Êóêóðóçà - 3000 îïûòà. Òûêâà - 6200 îïûòà. Áàíàíû -
    Gui, Answers: Add, Text, x8 y248  h20 +0x200,  10500 îïûòà.
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, .ãîñ - Âû ìîæåòå ñäàòü àâòî íà ñâàëêó. Ïîñëå ñäà÷è âû ïîëó÷èòå 75 ïðîö. îò ãîñ. ñòîèìîñòè àâòî. Ñâàëêà îòìå÷åíà íà êàðòå êàê ïåðå÷åðêíóòûé, êðàñíûé êðóã.
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, .àíèì - Îñòàíîâèòå àíèìàöèþ. Íàæìèòå X > Îñòàíîâèòü àíèìàöèþ èëè Backspace.
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, .èä - Óêàæèòå, ïîæàëóéñòà, ID íàðóøèòåëÿ.
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, .ñòî - Ñòåïåíü èçíîñà îïðåäåëåííûõ äåòàëåé àâòîìîáèëÿ ìîæíî óçíàòü íà àâòîìàñòåðñêîé (èêîíêà ãàå÷íîãî êëþ÷à ñ îòâåðòêîé íà êàðòå).
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .æáà - Âû ìîæåòå íàïèñàòü æàëîáó íà ôîðóì, åñëè íå ñîãëàñíû ñ ðåøåíèåì àäìèíèñòðàòîðà.
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, .äîí - Çàäîíàòèòü ìîæíî íà íàøåì îôèöèàëüíîì ñàéòå - majestic-rp.ru/donate
    Gui, Answers: Add, Text, x8 y360  h20 +0x200, .ãðóïïà - ×òîáû âìåñòå ðàáîòàòü íà êîîïåðàòèâíîé ðàáîòå âàì íåîáõîäèìî ïðèãàëèñü èãðîêîâ ÷åðåç ïðèëîæåíèå "Ãðóïïà" â òåëåôîíå.
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, .ãðèáû - ×òîáû ñîáèðàòü ãðèáû âàì íàäî ïðèåõàòü íà òî÷êó "Ãðèáû" 1/6 è âçÿòü â ðóêè íîæ.
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, .ãðèá - Ïðîäàòü ãðèáû ìîæíî íà ðûíêå.
    Gui, Answers: Add, Text, x8 y408  h20 +0x200, .ðûí - Ðûíîê íàõîäèòñÿ â Ëîñ-Ñàíòîñå íà ïëÿæå ðÿäîì ñ êà÷àëêîé è â Ïàëåòî-Áýé.
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .îðóæðûí - Áîòó íà ðûíêå ìîæíî ñäàòü îðóæèå òîëüêî ñî 100 ïðîöåíòíûì èçíîñîì.
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, .íîâîñòü - Ïðèäèòå ëè÷íî â Weazel News. 
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .ï - Âñåãî äîáðîãî.
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, .íîâ - Ñëåäèòå çà íîâîñòÿìè ñåðâåðà â îôèöèàëüíîì äèñêîðäå ïðîåêòà. 
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, .íîâî - Ñëåäèòå çà íîâîñòÿìè â îôèöèàëüíîì äèñêîðäå ïðîåêòà. 
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, .íèê - Ñìåíèòü íèê Âû ìîæåòå íàæàâ - F2 > Äîíàò > Íàñòðîéêè ïåðñîíàæà.
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, .áàíê - Ó íàñ íà ñåðâåðå åñòü 3 âèäà áàíêîâñêèõ êàðò: Standart, Premium, VIP. Standart êàðòà ñòîèò â îáñëóæèâàíèè 500$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 500.000$ ïîñëå ïðåâûøåíèÿ 
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 5ö ïðîö (Ìàêñèìóì 20.000$), íà ïåðåâîä 4 ïðîö (Ìàêñèìóì 20.000$), êýøáåê â ìàãàçèíàõ îòñóòñòâóåò. Premium êàðòà ñòîèò â îáñëóæèâàíèè 25.000$ â ìåñÿö, ñíÿòèÿ 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, è ïåðåâîäû áåç êîìèññèè äî 2.500.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 4 ïðîö (Ìàêñèìóì 15.000$), íà ïåðåâîä 3 ïðîö (Ìàêñèìóì 15.000$), êýøáåê â ìàãàçèíàõ 1 ïðîö, ëèìèò 
    Gui, Answers: Add, Text, x8 y568  h20 +0x200, êýøáåêà íà îäíó îïåðàöèþ äî 2.500$, ìåñå÷íûé ëèìèò êýøáåêà 50.000$. VIP êàðòà ñòîèò â îáñëóæèâàíèè 75.000$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 20.000.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî 
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, ëèìèòà êîìèññèÿ íà âûâîä 3 ïðîö (Ìàêñèìóì 20.000$), íà ïåðåâîä 2.5 ïðîö (Ìàêñèìóì 20.000$), êýøáåê â ìàãàçèíàõ 3 ïðîö, ëèìèò êýøáåêà íà îäíó îïåðàöèþ äî 10.000$, ìåñå÷íûé ëèìèò êýøáåêà 
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, 150.000$. Äåíüãè çà îáñëóæèâàíèå è ëèìèòû ñíèìàþòñÿ êàæäîå 1 ÷èñëî íîâîãî ìåñÿöà.
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, .äóáëèê - ×òîáû ñäåëàòü äóáëèêàò êëþ÷åé îò àâòî íåîáõîäèìî êóïèòü çàãîòîâêó â ìàãàçèíå 24/7, çàòåì íàæàòü G íà àâòî è ñäåëàòü äóáëèêàò.
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, .êëàä - ×òîáû ñäåëàòü äóáëèêàò îò êëàäîâêè, íåîáõîäèìî êóïèòü çàãîòîâêó â ìàãàçèíå 24/7, çàòåì ÷åðåç G ïåðåäàòü äóáëèêàò íóæíîìó ÷åëîâåêó.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .òåë - Ïîïðîáóéòå êóïèòü òåëåôîí åùå ðàç â ìàãàçèíå 24/7, äåíüãè ñ âàñ íå ñïèøóòñÿ.
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, .ïîäñåë - ×òîáû ïîäñåëèòü èãðîêà ê ñåáå â äîì èëè æå êâàðòèðó, ñòîÿ îêîëî äîìà, íàâåäèòåñü íà èãðîêà è íàæìèòå G, äàëåå íàæìèòå Ïîäñåëèòü.
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, .êðàø2 - Åñëè ó Âàñ åñòü äîêàçàòåëüñòâà êðàøà - ïðåäîñòàâüòå åãî ëþáîìó àäìèíèñòðàòîðó â ëè÷íûå ñîîáùåíèÿ äèñêîðäà. Âàñ âûïóñòÿò.
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, .çàìîê - Âàì íåîáõîäèìî êóïèòü "Äâåðíîé çàìîê" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Ïî÷èíèòü äâåðíîé çàìîê.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .àêóì - Âàì íåîáõîäèìî êóïèòü "Àêêóìóëÿòîð" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Çàìåíèòü àêêóìóëÿòîð.
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, .ìàñëî - Âàì íåîáõîäèìî êóïèòü "Ìîòîðíîå ìàñëî" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Çàìåíèòü ìàñëî.
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, .ìîäåë - Ïóíêò "Ïðîãðóçêà ìîäåëåé" îòâå÷àåò çà áûñòðîòó ïðîãðóçêè òåêñòóð ïðè ïðèáëèæåíèè ê íèì.

	Gui, Answers: Tab, 3
	Gui, Answers: Add, Text, x8 y24  h20 +0x200, .íèí - Íîâàÿ ñèñòåìà èíâåíòàðÿ, áûë èçìåíåí äèçàéí, ïðåäìåòû ìîæíî âðàùàòü íàæàòèåì íà ïðîáåë, åñëè äâàæäû íàæàòü ïî ïðåäìåòû îí èñïîëüçóåòñÿ (áåðåòñÿ â àêòèâíûé ñëîò  èëè íàäåâàåòñÿ).
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .ñïàâí - Ñïàâí íîâè÷êîâ íàõîäèòñÿ â Ïàëåòî-Áåé, ×óìàøàõ, Àýðîïîðòó è íà Àâòîâîêçàëå. 
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .ðåì - ×òîáû ïî÷èíèòü ñâî¸ àâòî êóïèòå ðåì.êîìïëåêò íà ëþáîé ÀÇÑ. ×åðåç ìåíþ G ïî÷èíèòå Âàø àâòîìîáèëü.
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .ñäåëêà - Àäìèíèñòðàöèÿ íå ñëåäèò çà ñäåëêàìè èãðîêîâ.
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, .èìÿ - Âàøå Èìÿ Ôàìèëèÿ íå ïîäõîäèò ïî ïðàâèëàì íàøåãî ñåðâåðà. Âàì íóæíî ñìåíèòü íèê è íàïèñàòü â ðåïîðò ïîâòîðíî, åñëè Âàø íèê áóäåò ñîáëþäàòü ïðàâèëà ñåðâåðà, òî Âàñ âûïóñòÿò.
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, .àêò - Ïðèíîñèì èçâèíåíèÿ çà ñòîëü äîëãîå îæèäàíèå. Ïîæàëóéñòà, åñëè ïðîáëåìà åùå àêòóàëüíà, ïðîäóáëèðóéòå å¸ â ñâîåì îáðàùåíèè. Ñïàñèáî çà ïîíèìàíèå.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .ëå÷ó - Óæå ëå÷ó ê Âàì íà ïîìîùü.
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, .ïîì - Ïðèâåòñòâóþ,ñåé÷àñ ïîìîãó Âàì, îæèäàéòå.
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, .áàãçç - ×òîáû âîññòàíîâèòü ïðåæíþþ ñêîðîñòü, çàåäüòå â çåëåíóþ çîíó è âûåäüòå ñ íåå.
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, .ãîñäîì - ×òîáû ïðîäàòü äîì â ãîñ. ñòîèìîñòü, íóæíî ïîäîéòè ê äâåðè è íàæàòü Å. Âû ïîëó÷èòå 75 ïðîö. îò åãî ãîñ. öåíû. Åñëè Âû íå îïëàòèòå íàëîãè äîì ñëåòèò àâòîìàòè÷åñêè.
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, .ðûáëèö - Ïîëó÷èòü ëèöåíçèþ íà ðûáàëêó âû ìîæåòå â Ìýðèè. 
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .ðåï - Ïîæàëóéñòà, óòî÷íèòå ñâîé âîïðîñ ïîäðîáíåå. Àäìèíèñòðàöèÿ íå ëåòàåò íà ðåïîðòû ïî òèïó "àäìèí òï", "àäìèí ìîæíî ïîãîâîðèòü", "ïîìîãèòå", "àäìèí åñòü âîïðîñ".
    Gui, Answers: Add, Text, x8 y216  h20 +0x200,  Êîëè÷åñòâî ñèìâîëîâ íåîãðàíè÷åíî, âû ìîæåòå ïîëíîñòüþ ðàñïèñàòü Âàøó ïðîáëåìó/âîïðîñ.
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .íåóâèä - Ê ñîæàëåíèþ àäìèíèñòðàöèÿ íå ìîæåò óâèäåòü ýòî íàðóøåíèå. Ïîæàëóéñòà, åñëè ó Âàñ åñòü âèäåîôèêñàöèÿ äàííîãî íàðóøåíèÿ - îôîðìèòå æàëîáó íà ôîðóìå, ñïàñèáî çà ïîíèìàíèå.
    Gui, Answers: Add, Text, x8 y248  h20 +0x200, .êîñòè - ×òîáû èãðàòü â êîñòè âàì íóæíî êóïèòü èõ â ëþáîì 24/7. Ïîñëå òîãî êàê âû êóïèëè êîñòè, âû ìîæåòå ïîäîéòè ê èãðîêó.
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, .ïàðê - ×òîáû ïðèïàðêîâàòü ÒÑ, çà ðóëåì íàæìèòå G - Ïðèïàðêîâàòü.
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, .íîâè÷îê - Ïóòåâîäèòåëü íàõîäèòñÿ íà ñïàâíàõ íîâè÷êîâ. Îíè îáîçíà÷åíû íà êàðòå çíà÷êîì ìàøóùåãî ÷åëîâå÷êà.
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, .äà/íåò - Äà./Íåò.
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, .íåòï - Àäìèíèñòðàöèÿ íå òåëåïîðòèðóåò èãðîêîâ, Âàì íóæíî äîáðàòüñÿ äî ìåñòà ñàìîñòîÿòåëüíî.
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .èíâ - Ýòî áàã èíâåíòàðÿ, ïðåäëîæèòå îáìåíÿòüñÿ ëþáîìó èãðîêó è âàøà ïðîáëåìà áóäåò ðåøåíà. Åñëè ïî áëèçîñòè íèêîãî íåò, îáðàòèòåñü åù¸ ðàç â ðåïîðò è àäìèíèñòðàöèÿ Âàì ïîìîæåò. 
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, .àðûíîê - Äëÿ òîãî, ÷òîáû âûñòàâèòü ñâîå àâòî íà ïðîäàæó, Âàì íåîáõîäèìî ïðèåõàòü íà òåððèòîðèþ àâòîðûíêà, âûáðàòü ìåñòî è íàæàòü íà êëàâèøó "G" - Àâòîðûíîê - Âûñòàâèòü íà ïðîäàæó.
    Gui, Answers: Add, Text, x8 y360  h20 +0x200, .òîëêàòü - Òðàíñïîðò ìîæíî òîëêàòü, íàæàâ G-òîëêàòü. Åñëè òàêîé ôóíêöèè íåò, ïðè íàâåäåíèè íà àâòî, òî ýòîò òðàíñïîðò òîëêàòü íåëüçÿ.
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, .íåñë - Àäìèíèñòðàöèÿ íå ìîæåò ñëåäèòü ïîëíîñòüþ çà âñåì ÐÏ ïðîöåññîì, â ñëó÷àå íàðóøåíèé îò èãðîêîâ - íàïèøèòå ðåïîðò.
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, .ñ÷åò - ×òîáû óçíàòü íîìåð ñ÷åòà îòêðîéòå èíâåíòàðü è íàâåäèòåñü ìûøêîé íà áàíêîâñêóþ êàðòó. 
    Gui, Answers: Add, Text, x8 y408  h20 +0x200, .ïèí - ×òîáû âîññòàíîâèòü ïèí-êîä îòïðàâëÿéòåñü â áàíêîâñêîå îòäåëåíèå.
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .àóò - Äëÿ ïîäêëþ÷åíèÿ Google authenticator âàì íóæíî â ìåíþ âûáîðà ïåðñîíàæà îòêðûòü ðàçäåë íàñòðîåê.
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, .õ2 - Òåïåðü êîèíû âûäàþòñÿ ïî âûõîäíûì, ïî áóäíÿì ïðîêðóòêà ðóëåòêè çà 5 ÷àñîâ èãðû.
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .äðîí - Äðîí êðàôòèòñÿ ó ñèëîâûõ ãîñ.ñòðóêòóð è Weasel News. Ïîëüçîâàòüñÿ èì ìîãóò ýòè æå ãîñ.ñòðóêòóðû. ×òîáû ïîäíÿòüñÿ-ïðîáåë, ÷òîáû îïóñòèòüñÿ-shift. Íà E-òåïëîâèçîð âêëþ÷èòü/âûêëþ÷èòü.
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, .íåóâ - Íå óâèäåë íàðóøåíèé, åñëè ó âàñ åñòü âèäåîäîêàçàòåëüñòâà - îñòàâüòå æàëîáó íà ôîðóìå. 
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, .ôîð - Äàííîå íàðóøåíèå íå ïîäëåæèò ðàññìîòðåíèþ ÷åðåç îáðàùåíèå, îñòàâüòå æàëîáó íà ôîðóìå.
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, .èñ÷ - Âñå òðàíñïîðòíûå ñðåäñòâà èñ÷åçàþò ÷åðåç 30 ìèíóò, åñëè ñ íèìè íèêàê íå âçàèìîäåéñòâîâàòü.
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, .ôîðóì - Â ñâÿçè ñ íàãðóçêîé íà ñåðâåð ìû íå ìîæåì ðàññìîòðåòü âàøó æàëîáó íà èãðîêà ïîñðåäñòâîì îáðàùåíèÿ, ïîæàëóéñòà, îñòàâüòå æàëîáó íà ôîðóìå. Ñïàñèáî çà ïîíèìàíèå.
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, .ôðàê - /f - IC ÷àò, /fb - OOC ÷àò. 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, .ôàì - /c - IC ÷àò, /cb - OOC ÷àò. 
    Gui, Answers: Add, Text, x8 y568  h20 +0x200, .ñïá - Åñëè îäíî îòäåëåíèå ÅÌÑ ñèëüíî çàãðóæåíî, ÷òîáû èçáåæàòü êðàøè âàñ ñïàâíèò â äðóãîì, ìåíåå çàãðóæåííîì îòäåëåíèè.
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, .ïåðåä - Âñå èìóùåñòâî âû ïåðåäàåòå íà ñâîé ñòðàõ è ðèñê.
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, .ðóäà - Ðóäà ñ øàõòû òðåáóåòñÿ òîëüêî â ñåìåéíûõ êîíòðàêòàõ, ïðîäàòü åå íåëüçÿ.
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, .áàãðåï - Â ñëó÷àå íàõîæäåíèÿ áàãà îñòàâüòå ñâîé áàã-ðåïîðò â îôèöèàëüíîì äèñêîðäå ïðîåêòà: Òåêñòîâûå êàíàëû - ñîîáùèòü î áàãå.
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, .íèçê - Ó âàñ âêëþ÷åí ðåæèì íèçêîãî êà÷åñòâà â F2 - Íàñòðîéêè.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .ìàÿê - Ìàÿ÷êè ìîãóò âûïàñòü ñ "AirDrop" èëè æå ïðè îãðàáëåíèè 24/7. Øàíñû âûïàäåíèÿ ó âñåõ ìàÿ÷êîâ ðàçíûé.
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, .õîë - "Õîëîäíûé ñòàðò" - ïðè çàïóñêå ÒÑ èçäà¸ò õàðàêòåðíûé çâóê, äðóãèì ôóíêöèîíàëîì íå îáëàäàåò.
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, .áèíä - Âû ìîæåòå íàñòðîèòü áèíä êëàâèø ïîä ñåáÿ â F2 - Íàñòðîéêè - Áèíä êëàâèø.
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, .ñòðèì - Ðåæèì ñòðèìåðà çàìåíÿåò ñèìâîëû íà çâåçäî÷êè, äëÿ îáû÷íûõ èãðîêîâ îí áåñïîëåçåí. Âûêëþ÷àåòñÿ â F2 - Íàñòðîéêè.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .çàæ - ×òîáû âçëîìàòü çàæèãàíèå ñÿäüòå çà ðóëü ò.ñ., íàæìèòå G - Âçëîìàòü çàæèãàíèå. ÊÄ íà âçëîì - 1 ÷àñ.
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, .äðçîíà - Äðèôò çîíà îòìå÷åíà íà êàðòå êàê èêîíêà ïàäàþùåé êîìåòû, ïðèìåð - îäíà èç çîí îêîëî LS Vagos.
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, .êóð - Ïåðåäàì êóðàòîðàì.

	Gui, Answers: Tab, 4
    Gui, Answers: Add, Text, x8 y24  h20 +0x200, .ïåð - Ïåðåäàì.
    Gui, Answers: Add, Text, x8 y40  h20 +0x200, .íåîô - Íå îôôòîïüòå â îáðàùåíèÿ.
    Gui, Answers: Add, Text, x8 y56  h20 +0x200, .îäâîðê -  Ïðè óñòðîéñòâå íà ðàáîòó Âû ïîëó÷àåòå êîìïëåêò îäåæäû. Îí ñíèìåòñÿ àâòîìàòè÷åñêè ïðè ïðåêðàùåíèè ðàáîòû. Åñëè æå ó Âàñ ìåä êîìïëåêò òî Âàì íóæíî ïðîéòè êóðñ ëå÷åíèÿ.
    Gui, Answers: Add, Text, x8 y72  h20 +0x200, .çîî - Ñèñòåìà æèâîòíûõ. Ìîãóò ñïàâíèòüñÿ ðàçëè÷íûå æèâîòíûå, îò êðûñ äî îëåíåé ïî âñåé êàðòå. Íåêîòîðûå âèäû æèâîòíûõ ìîæíî ðàçäåëàòü è ïîëó÷èòü ìÿñî. Ìÿñî ìîæíî æàðèòü è
    Gui, Answers: Add, Text, x8 y88  h20 +0x200, óïîòðåáëÿòü â ïèùó. Äîìàøíèõ æèâîòíûõ êîòîðûå ãóëÿþò ïî êàðòå, ìîæíî ãëàäèòü.
    Gui, Answers: Add, Text, x8 y104  h20 +0x200, .ìåä - Çà äàííûì ìåäèà ïàðòíåðîì íàáëþäàåò PR àññèñòåíò, ïî ýòîé ïðè÷èíå ÿ íå ìîãó âûäàâàòü íàêàçàíèå, ò.ê. âñÿ îòâåòñòâåííîñòü çà ïðîèñõîäÿùåå íà ýòîé ñèòóàöèè ïåðåíîñèòñÿ íà PR àññèñòåíòà.
    Gui, Answers: Add, Text, x8 y120  h20 +0x200, .çàê - Ýòî ðåãëàìåíòèðóåòñÿ IC çàêîíàìè, èçó÷èòü èõ ìîæåòå â ðàçäåëå Government íà ôîðóìå: Majestic RolePlay | Server 3 - Îðãàíèçàöèè - Ãîñóäàðñòâåííûå îðãàíèçàöèè - Government.
    Gui, Answers: Add, Text, x8 y136  h20 +0x200, .îñê - Æàëîáû íà OOC îñêîðáëåíèå ïðèíèìàåì òîëüêî, åñëè ñêðèíøîò ñäåëàí â òó æå ìèíóòó, ÷òî è îñêîðáëåíèå â ÷àòå + íà ñêðèíå äîëæíî áûòü ïðèñóòñòâèå íàðóøèâøåãî (âèäíî åãî èëè ñòàòèê).
    Gui, Answers: Add, Text, x8 y152  h20 +0x200, .àóêö - Íà àóêöèîí ìîæíî âûñòàâèòü àâòî/áèçíåñ/äîì/êâàðòèðó. Âî âðåìÿ âàøåãî àêòèâíîãî ëîò, âû ìîæåòå ëèøü åçäèòü íà àâòî. Ïðè ïðîäàæå íà àêöèîíå äîìà-êëàäîâêà ïåðåäà¸òñÿ ïîêóïàòåëþ.
    Gui, Answers: Add, Text, x8 y168  h20 +0x200, .áîëãàðêà - Äëÿ òîãî, ÷òîáû ðàñïèëèòü áàãàæíèê íóæíî ïîäîéòè ê áàãàæíèêó G - Íåëåãàëüíîå äëÿ àâòî - Ðàñïèëèòü äâåðíîé çàìîê. Îòêðûâàåòñÿ áàãàæíèê è âû ìîæåòå âçÿòü ñ íåãî êàê êîðîáêè 
    Gui, Answers: Add, Text, x8 y184  h20 +0x200, ñ ìàòåðèàëàìè, òàê è êîðîáêè ñî ñíàðÿæåíèåì. Âçëîìàòü ìîæíî íå òîëüêî ãîñ.ìàòîâîçêè, íî è êðàéì. Áîëãàðêîé íåëüçÿ âçëîìàòü ëè÷íûé òðàíñïîðò.
    Gui, Answers: Add, Text, x8 y200  h20 +0x200, .ïðîìî - Ïðîìîêîä ìîæíî ââåñòè äî 3 óðîâíÿ êîìàíäîé /promo "ïðîìîêîä", íàãðàäà çà íåãî áóäåò âûäàíà ïðè äîñòèæåíèè 3 óðîâíÿ. Ïðèãëàñèâøèé ïîëó÷àåò 7500$. Ïðèãëàøåííûé èãðîê ïîëó÷àåò: 
    Gui, Answers: Add, Text, x8 y216  h20 +0x200, îò îáû÷íîãî èãðîêà - 10 000$ + 3 äíÿ Platinum VIP, îò ìåäèà - 20 000$ + 7 äíåé Platinum VIP.
    Gui, Answers: Add, Text, x8 y232  h20 +0x200, .âîò - Âûáîðû àêòèâíû ñ 10:00 - 10:00 ïî ìîñêîâñêîìó âðåìåíè. Ïðîãîëîñîâàòü ìîæåò êàæäûé îò 3-ãî óðîâíÿ èãðîâîãî ïåðñîíàæà, ïî ïðèíöûïó îäèí ãîëîñ íà îäèí àêêàóíò. ãîëîñîâàíèå ïðîõîäèò â
    Gui, Answers: Add, Text, x8 y248  h20 +0x200,  ëåâîì êðûëå Ìýðèè(Íà êàðòå ôëàã USA).
    Gui, Answers: Add, Text, x8 y264  h20 +0x200, .äðèôò - Äðèôò ñ÷¸ò÷èê ìîæíî âêëþ÷èòü ÷åðåç F2 > Íàñòðîéêè. Îí ïîÿâëÿåòñÿ âî âðåìÿ óïðàâëÿåìîãî çàíîñà è ïîêàçûâàåò, íà ñêîëüêî õîðîøî âû ïðîøëè ïîâîðîò. Íà êàðòå âû ìîæåòå óâèäåòü çîíû, 
    Gui, Answers: Add, Text, x8 y280  h20 +0x200, ãäå ìîæíî äðèôòèòü è ïîïàñòü â ñïèñîê òîï-äðèôòåðîâ. Äëÿ ýòîãî Âàì îáÿçàòåëüíî äðèôòèòü ïî îòìå÷åííîé çîíå. Â ïðîòèâíîì ñëó÷àå î÷êè íå çàñ÷èòàþòñÿ.
    Gui, Answers: Add, Text, x8 y296  h20 +0x200, .ñêèí - Îðóæèå ïîÿâëÿåòñÿ â äîíàò èíâåíòàðå, åãî ìîæíî áóäåò ðàñïûëèòü. Îäíàêî ïðè åãî ïðèìåíåíèè íåâîçìîæíî äàëüíåéøåå ðàñïûëåíèå. ×òîáû ïðèìåíèòü ñêèí íà îðóæèå: F2 - Ìàãàçèí - Cêèíû.
    Gui, Answers: Add, Text, x8 y312  h20 +0x200, Âûáèðàåòå îðóæèå è ñêèí ê íåìó - Ïðèìåíèòü, ñêèí ïðèìåíÿåòñÿ êî âñåì îðóæèÿì âûáðàííîãî òèïà. Ñêèí ïðèâÿçûâàåòñÿ ê èãðîêó, ïîëó÷èòü îðóæèå ñî ñêèíîì - íåâîçìîæíî.
    Gui, Answers: Add, Text, x8 y328  h20 +0x200, .îãð - ×òîáû íà÷àòü îãðàáëåíèå áàíêà, âàì íóæíî ïîçâîíèòü ïî íîìåðó: 28121903. Äëÿ ýòîãî íàäî áûòü â êðàéì îðãàíèçàöèè, è íàõîäèòñÿ ðÿäîì ñ áàíêîì (êàê ìèíèìóì âàñ äîëæíî áûòü 4 îêîëî 
    Gui, Answers: Add, Text, x8 y344  h20 +0x200, èíà÷å íå ñìîæåòå). áàíêà. Äëÿ íà÷àëà îãðàáëåíèÿ òðåáóåòñÿ "Ïëàí îãðàáëåíèé", êîòîðûé âûáèðàåòñÿ â AirDrops èëè ïðè îãðàáëåíèè áèçíåñîâ.Ìîæíî ãðàáèòü 1 ðàç â äåíü êàæäîé îãðàíèçàöèè.
    Gui, Answers: Add, Text, x8 y360  h20 +0x200,  Ïîñëå òîãî, êàê îãðàáëåíèå íà÷àëîñü è áàíê ïîëó÷èë êðàñíóþ èêîíêó, íàäî ïðèöåëèòüñÿ â áîòà è çàïîëíèòü ïðîãðåññ áàð.Äàëüøå áóäåò áîëüøàÿ äâåðü, ÷òî áû åå ðàçáë., íóæíî ïðîéòè ìèíè-
	Gui, Answers: Add, Text, x8 y376  h20 +0x200, èãðó ñî âçëîìîì. Äëÿ ýòîãî èñïîëüçóåì «Ïðîãðàììàòîð ÝÁÓ» + «Êàáåëü ýëåêòðîííûõ äâåðåé». Îí ïðîäàåòñÿ ó òîðãîâöà íà ðûíêå. Ïîñëå âçëîìà ïåðåä âàìè áóäåò ñòîÿòü ñòîéêà ñ äåíüãàìè. Äàëåå 
    Gui, Answers: Add, Text, x8 y392  h20 +0x200, èäåò 2-ÿ äâåðü. Äëÿ åå âçëîìà íàì íåîáõîäèìà «Êëþ÷ êàðòà Fleeca» ëèáî «Òåðìèòíàÿ óñòàíîâêà».«Êëþ÷ êàðòà Fleeca» âûïàäàåò ñ áîòîâ ïðè îãðàáëåíèè áèçíåñîâ, èëè íà àèð äðîïàõ.«Òåðìèòíàÿ
    Gui, Answers: Add, Text, x8 y408  h20 +0x200,  óñòàíîâêà» ïðîäàåòñÿ ó ïèðîòåõíèêà. Ñ åå ïîìîùüþ äâåðü îòêðûâàåòñÿ çà 2 ìèíóòû. 
    Gui, Answers: Add, Text, x8 y424  h20 +0x200, .îãð2 - Äëÿ ýòîãî íàäî âçÿòü â ðóêè îäèí èç ïðåäìåòîâ, ÷òîáû îòêðûòü äâåðü. Íî â õðàíèëèùå åñòü ÿ÷åéêè, äëÿ âçëîìà ÿ÷ååê íåîáõîäèìà «Äðåëü 1500w». Äðåëü êðàôòèòñÿ ó êðèì. îðãàíèçàöèé è 
    Gui, Answers: Add, Text, x8 y440  h20 +0x200, âûïàäàåò ïðè ñìåðòè. Ïîñëå óñïåøíîãî ïðîõîæäåíèÿ ìèíè-èãðû ïî âçëîìó ÿ÷åéêè íà ïîë ïàäàåò íàãðàäà.
    Gui, Answers: Add, Text, x8 y456  h20 +0x200, .çêàéî - Íà îñòðîâå èìååòñÿ íåñêîëüêî òî÷åê çàõâàòà ìåäèöèíñêèõ, âîåííûõ, òåõíè÷åñêèõ ìàòåðèàëîâ. Äëÿ çàõâàòà Âàì íåîáõîäèìî âçÿòü ñ ñîáîé ìàÿ÷êè(Ïîäáåðèòå öâåòà), åñëè æå ó Âàñ ìàÿ÷êè 
    Gui, Answers: Add, Text, x8 y472  h20 +0x200, çåë¸íîãî öâåòà Âû ñìîæåòå çàõâàòèòü âîåííûå ìàòåðèàëû, ñèíåãî Âàøåé öåëüþ ñòàíóò òåõíè÷åñêè ïðè íàëè÷èè êðàñíûõ Âàì îòêðîåòñÿ âîçìîæíîñòü çàõâàòèòü ìåäèöèíñêèå. Çàõâàò ìîæíî íà÷àòü â 
    Gui, Answers: Add, Text, x8 y488  h20 +0x200, ðàäèóñå 50ì îò òî÷êè ïîãðóçêè, ïîñëå àêòèâàöèè ìàÿ÷êà ïîÿâèòñÿ îáîçðèìàÿ çîíà çàõâàòà, åñëè âûéòè çà çîíó çàõâàòà èëè âñå çàõâàò÷èêè óìðóò, ìàÿ÷îê óíè÷òîæàåòñÿ, òî÷êà ïåðåõîäèò â ñïîêîéíîå 
    Gui, Answers: Add, Text, x8 y504  h20 +0x200, ñîñòîÿíèå êàê äî çàõâàòà. Íå ñòîèò çàáûâàòü è ïðî ñèãíàëèçàöèþ, åñëè Âû å¸ íå âûêëþ÷èòå âñå ãîññòðóêòóðû áóäóò â ìîìåíò îïîâåùåíû è Âàñ áóäåò æäàòü ñåðü¸çíîå ñîïðîòèâëåíèå (Ôóíêöèîíàëüíî 
    Gui, Answers: Add, Text, x8 y520  h20 +0x200, íà çàõâàò ìàòåðèàëîâ ýòî íå ïîâëèÿåò). Ïîñëå çàõâàòà áëèï íà êàðòå êðàñèòñÿ â öâåò îðãàíèçàöèè çàõâàò÷èêîâ. Èãðîêè ñìîãóò çàáèðàòü ìàòåðèàëû ñ òî÷êè è ãðóçèòü èõ â ëîäêó - â ãîðîäå ïåðåãðóæàòü.
	Gui, Answers: Add, Text, x8 y536  h20 +0x200, .ïåðèêî - Ó âñåõ ñèëîâûõ ôðàêöèé ïîÿâèëàñü ìåòêà äëÿ òåëåïîðòàöèè, ôðàêöèè EMS/WN/GOV ëèøåíû å¸. Îòäåëåíèå LSCSD â Ñýíäè-Øîðñ òîæå íå èìååò ìåòêè. Êàæäàÿ ôðàêöèè òåëåïîðòèðóåòñÿ â îäíó 
    Gui, Answers: Add, Text, x8 y552  h20 +0x200, òî÷êó íà îñòðîâå, òàêèì ïóò¸ì è îáðàòíî. Îäíàêî Âû íå ñìîæåòå òåëåïîðòèðîâàòüñÿ ñ òî÷êè äðóãîé ôðàêöèè. Ïðèìåð: ß èç FIB è õî÷ó ñäåëàòü òåëåïîðò íà òåððèòîðèè LSCSD - Ó ìåíÿ íå âûéäåò.
    Gui, Answers: Add, Text, x8 y568  h20 +0x200,  Íà îñòðîâå, âáëèçè îñîáíÿêà è íà åãî òåððèòîðèè, åñòü ìàøèíû, âåðòîë¸ò è êâàäðîöèêëû ñ íèìè ìîæåò âçàèìîäåéñòâîâàòü ëèøü SANG, âîçìîæíîñòü çàñïàâíèòü ñâî¸ ÒÑ òàêæå ñîõðàíåíà, äëÿ ýòîãî 
    Gui, Answers: Add, Text, x8 y584  h20 +0x200, âîñïîëüçóéòåñü ìåòêîé. Òàêæå SANG ñòàë îáëàäàòåëåì åù¸ îäíîãî ñêëàäà íà Êàéî-Ïåðèêî, îí àíàëîãè÷åí Âàøåìó íà ôîðòå. Åñëè íà ôîðòå áóäåò çàïîëíåíî 20.000 òî è íà îñòðîâå òîæå.
	Gui, Answers: Add, Text, x8 y600  h20 +0x200, .ñèðåíà - Âûøêó ìîæíî âçëîìàòü, íå áóäåò îáíîâëÿòüñÿ ñòàòóñ êîíòðîëÿ òî÷åê(10 ìèíóò). Äëÿ âçëîìà íóæåí "Ïðîãðàììàòîð ÝÁÓ" è "Êàáåëü ðàäèî ñèãíàëîâ". Êàáåëü ìîæíî ïîëó÷èòü ïðè îãðàáëåíèè 
    Gui, Answers: Add, Text, x8 y616  h20 +0x200, ìàãàçèíà 24/7, âûïàäàåò(Øàíñ ðåäêî-ñðåäíå), îí îäíîðàçîâûé è ïîñëå èñïîëüçîâàíèÿ îí ïðîïàäàåò. Âçëîì ïðîèñõîäèò â ìèíè-èãðå. Ïîñëå óäà÷íîãî âçëîìà, íà ìèíè êàðòå íå áóäåò îòîáðàæàòüñÿ 
    Gui, Answers: Add, Text, x8 y632  h20 +0x200, ñòàòóñ çàõâàòà òî÷åê äëÿ SANG(10 ìèíóò). Ïîñëå íåóäà÷íîãî âçëîìà, ñðàçó ñðàáàòûâàåò ñèðåíà. SANG ìîãóò âîññòàíîâèòü ðàáîòó âûøêè íàæàâ "Å" íà ìåòêå âûøêè.
    Gui, Answers: Add, Text, x8 y648  h20 +0x200, .ëîááè - Ýòî Âàøà èãðà ñîçäàííàÿ Âàìè äëÿ äðóçåé èëè æå îáû÷íûõ èãðîêîâ, âñå ïðàâèëà íàñòðàèâàåòå èìåííî Âû. Äëÿ òîãî ÷òî áû íà÷àòü íóæíî: Äàòü íàçâàíèå ñâîåìó ëîááè, âûáðàòü îäèí èç 
    Gui, Answers: Add, Text, x8 y664  h20 +0x200, äîñòóïíûõ ðåæèìîâ(Ãîíêà âîîðóæåíèé/Áîé íà ñìåðòü/Çàõâàò ôëàãà), âûáðàòü îäíó èç êàðò. Äàëåå Âû ñìîæåòå óñòàíîâèòü ïàðîëü, åñëè æå íå õîòèòå âèäåòü ëèøíèõ èãðîêîâ â ñâîåé èãðå. Ïîñëå âñåõ 
    Gui, Answers: Add, Text, x8 y680  h20 +0x200, ïåðâè÷íûõ íàñòðîåê Âàì îòêðîþòñÿ äîïîëíèòåëüíûå: Òðåáîâàíèå äëÿ ïîáåäû, îðóæèå, âðåìÿ ñóòîê, îäåæäà(Åñëè âûáðàòü "Íåò" èãðîê âðåìåííî ñìåíèò îäåæäó â ìàò÷å), ïîãîäíûå óñëîâèÿ, àâòî-
    Gui, Answers: Add, Text, x8 y696  h20 +0x200, áàëàíñ êîìàíä(Â ñëó÷àå çàõâàòà ôëàãà) è äð. Òîëüêî ïîìíèòå çà ñîçäàíèå ëîááè íóæíî áóäåò çàïëàòèòü îò 1.250$ äî 2.800$.
    Gui, Answers: Add, Text, x8 y712  h20 +0x200, .ôëàã - Êîìàíäíûé ðåæèì áîÿ â êîòîðîì Âû ñìîæåòå ïðîòèâîñòîÿòü ñâîèì îïïîíåíòàì â ðàâíûõ óñëîâèÿõ. Â ýòîì ðåæèìå Âû ìîæåòå ïîäíèìàòü îðóæèå íà "F"(Ïî äåôîëòó), à òàêæå êóïèòü ñåáå îðóæèå 
    Gui, Answers: Add, Text, x8 y728  h20 +0x200, íà çàðàáîòàííûå âî âðåìÿ ìàò÷à äåíüãè, äëÿ ýòîãî íàæìèòå "B". Ìàò÷ çàêîí÷èòüñÿ êàê òîëüêî îäíà èç êîìàíä ïîòåðÿåò âñå î÷êè, ñêîðîñòü èõ ïîòåðè/íàêîïëåíèÿ çàâèñèò îò êîë-âà çàõâà÷åííûõ, 
    Gui, Answers: Add, Text, x8 y744  h20 +0x200, Âàøåé êîìàíäîé, òî÷åê.

	Gui, Answers: Tab, 5
    Gui, Answers: Add, Text, x8 y24  h20 0x200, .ðîç - Äîáàâëåíà ñèñòåìà ïðåñëåäîâàíèÿ. Äëÿ òîãî ÷òîáû íà÷àòü ïðåñëåäîâàíèå íóæíî âûäàòü ðîçûñê -  çàéòè â Ïëàíøåò - Ôðàêöèÿ - Áàçà äàííûõ - Íà÷àòü ïðåñëåäîâàíèå, íà êàðòå ïîÿâëÿåòñÿ ìåòêà
    Gui, Answers: Add, Text, x8 y40  h20 0x200, ìåñòîïîëîæåíèÿ èãðîêà, îáíîâëÿåòñÿ ðàç â 30 ñåêóíä, åñëè èãðîê êîòîðîãî ïðåñëåäóþò çàõîäèò â äðóãîé äèìåíøåí/èíòåðüåð/âûéäåò èç èãðû - ïðîïàäàåò ñ ðàäàðîâ. Åñëè ãîñ. èãðîê ïðèåçæàåò
    Gui, Answers: Add, Text, x8 y56  h20 0x200, íà ìåòêó/ïîäõîäèò ê èãðîêó - ïðåñëåäîâàíèå çàêàí÷èâàåòñÿ.
    Gui, Answers: Add, Text, x8 y72  h20 0x200, .àð - Ïîñëå îêîí÷àíèÿ ñðîêà àðåíäà àâòî ãëóøèòñÿ è ïîÿâëÿåòñÿ äèàëîãîâîå ìåíþ, ãäå ìîæíî ïðîäëèòü àðåíäó. 
    Gui, Answers: Add, Text, x8 y88  h20 0x200, .êîìò - Ðàáî÷èé òðàíñïîðò ìîæíî ñïàâíèòü òîëüêî íà ñïåöèàëüíî àâòîñåðâèñå äëÿ êîììåð÷åñêîãî òðàíñïîðòà. 
    Gui, Answers: Add, Text, x8 y104  h20 0x200, .ãð - Ëèäåð ãðóïïû ìîæåò äàâàòü êîä, ÷òîáû ìàññîâî äîáàâèòü ëþäåé â ãðóïïó, èãðîêè â ðàäèóñå 30 ìåòðîâ ñìîãóò çàéòè. Ëèäåð è ïîìîùíèêè ìîãóò ñòàâèòü óêàçûâàþùèå ìåòêè, íàñòðàèâàåòñÿ â 
    Gui, Answers: Add, Text, x8 y120  h20 0x200, F2 - Íàñòðîéêè - Áèíäû. Ëèäåð ìîæåò ïåðåäàòü ñâîé ñòàòóñ äðóãîìó èãðîêó.
    Gui, Answers: Add, Text, x8 y136  h20 0x200, .òåã - Âîçìîæíîñòü òåãàòü ëþäåé â ÷àòå äëÿ óäîáíîãî ÐÏ ïðîöåññà, äëÿ èñïîëüçîâàíèÿ íàïèøèòå @Äèíàìèê. Åñëè èãðîêà òåãíóòü ó íåãî ïîÿâèòñÿ óâåäîìëåíèå îá ýòîì, òåã. òîëüêî áëèæ. èãðîêè.
    Gui, Answers: Add, Text, x8 y152  h20 0x200, .â÷àò - Ñèñòåìà âèçóàëèçàöèè ÷àòà íàä èãðîêîì - íàä èãðîêîì áóäóò äóáëèðîâàòüñÿ âñå ñîîáùåíèÿ èç ÷àòà. Â íàñòðîéêàõ - Äîïîëíèòåëüíî, ìîæíî âêëþ÷èòü.
    Gui, Answers: Add, Text, x8 y168  h20 0x200, .ìàðê - Ìàðêåòïëåéñ èñïîëüçóåòñÿ äëÿ ðàçìåùåíèÿ ðàçëè÷íûõ òîâàðîâ íà ïðîäàæó, òàêèõ êàê: òðàíñïîðò, æèëàÿ íåäâèæèìîñòü, áèçíåñ, áàíêîìàòû, áèëáîðäû. Êàæäàÿ êàðòî÷êà ñ îáúÿâëåíèåì ôèêñ. 
    Gui, Answers: Add, Text, x8 y184  h20 0x200, êîëè÷åñòâî ïðîñìîòðîâ êàðòî÷êè è êîëè÷åñòâî ëàéêîâ (òåõ êòî äîáàâèë îáúÿâëåíèå â èçáðàííîå). Íàæàâ êíîïêó «Íà÷àòü ñäåëêó» íàì îòêðîåòñÿ ìîäàëüíîå îêíî, â êîòîðîì áóäåò äóáëèðîâàòüñÿ 
    Gui, Answers: Add, Text, x8 y200  h20 0x200, åùå ðàç âñÿ íåîáõîäèìàÿ èíôîðìàöèÿ, ñóììà ê îïëàòå è êíîïêà ñîâåðøèòü ïîêóïêó.  Ãðàôèê êîòîðûé èìååòñÿ îòîáðàæàåò äèíàìèêó öåí è èìååò âîçìîæíîñòü âçàèìîäåéñòâèÿ. Ïîñëå ïîêóïêè ïðåäì. 
    Gui, Answers: Add, Text, x8 y216  h20 0x200, îòïðàâÿòñÿ â «Ñêëàä õðàíåíèÿ». Çà ðàçìåùåíèå ëþáîãî îáúÿâëåíèÿ âçûìàåòñÿ ïëàòà â 1.000$ çà ÷àñ (îò 5ê). Âîçìîæíîñòü ïîêóïàòü ëîò êàê çà íàëè÷êó, òàê è ÷åðåç êàðòó. Àäìèíèñòðàòîð ìîæåò óäàëèòü 
    Gui, Answers: Add, Text, x8 y232  h20 0x200, êàðòî÷êó èãðîêà. Èãðîê ìîæåò ïîæàëîâàòüñÿ íà îáúÿâëåíèå, ñîîáùåíèå ïîïàä¸ò â îáðàùåíèå.
    Gui, Answers: Add, Text, x8 y248  h20 0x200, .ñõð - Ñêëàä õðàíåíèÿ ýòî ìåñòî, â êîòîðîå ïîïàäàþò ïðåäìåòû, êîòîðûå áûëè êóïëåíû èëè ïðåäìåòû, êîòîðûå áûëè çàíåñåíû ñþäà èãðîêîì, ñ öåëüþ èõ ïðîäàæè íà ìàðêåò ïëåéñå. Íà ñêëàä 
    Gui, Answers: Add, Text, x8 y264  h20 0x200, ìîæíî âûãðóçèòü ïðåäìåòû èç èíâåíòàðÿ èëè èç áàãàæíèêà. Ñêëàä õðàíåíèÿ íàõîäèòñÿ ñáîêó çäàíèÿ àóêöèîíà. Ñêëàä íå îãðàíè÷åí ïî õðàíåíèþ ïðåäìåòîâ Ïðåäìåòû ìîãóò íàõîäèòñÿ íà ñêëàäå 30 
    Gui, Answers: Add, Text, x8 y280  h20 0x200, ìèíóò, ïîñëå èñòå÷åíèÿ ýòîãî âðåìåíè îíè èäóò íà àóêöèîí. Èìååòñÿ âîçìîæíîñòü äîáàâèòü êàðòî÷êó â èçáðàííîå. Ïîñëå ïîêóïêè èìóùåñòâî/ïðåäìåòû ìîãóò õðàíèòñÿ íà ñêëàäå 2 äíÿ. Ïðè âõîäå 
    Gui, Answers: Add, Text, x8 y296  h20 0x200, â çîíó ìàðêåòïëåéñà ïîäñâå÷èâàåòñÿ ñêëàä è ïîÿâëÿåòñÿ ìåòêà íà êàðòå.
    Gui, Answers: Add, Text, x8 y312  h20 0x200, .ïàð - Ïîëîæèòå ïàðàøþò â áûñòðûé ñëîò, çàòåì â ïîëåòå íàæìèòå íà 1, 2 èëè 3 (çàâèñèò îò ñëîòà), ïîñëå ýòîãî ËÊÌ, ïàðàøþò îòêðîåòñÿ.
    Gui, Answers: Add, Text, x8 y328  h20 0x200, .äìê - Äåôèáðèëëÿòîð ÌÊ2 íèêàêîãî ôóíêöèîíàëà íå äà¸ò, îí àíàëîãè÷åí îáû÷íîìó äåôèáðèëëÿòîðó.
    Gui, Answers: Add, Text, x8 y344  h20 0x200, .àäð - Àäðåíàëèí ïîäíèìàåò èãðîêà â 2 ðàçà áûñòðåå, ÷åì ýïèíåôðèí.
    Gui, Answers: Add, Text, x8 y360  h20 0x200, .íàãð - Àâòîìîáèëè èç ïðîïóñê ÿâëÿþòñÿ ýêñêëþçèâîì, èõ íåëüçÿ ïåðåäàâàòü äðóãèì èãðîêàì.
	Gui, Answers: Add, Text, x8 y376  h20 0x200, .æàï - Ïðåäìåò "Àïòå÷êà æ¸ëòàÿ" - âîññòàíàâëèâàåò 75 õï.
    Gui, Answers: Add, Text, x8 y392  h20 0x200, .îáâ - Îáâåñû èìåþòñÿ â ïðèçàõ. Ïåðâàÿ óñòàíîâêà áåñïëàòíàÿ. Îáâåñû ìîæíî áóäåò ñíÿòü/ïîñòàâèòü îòäåëüíî. Îáâåñ çàêðåïëÿåòñÿ çà ìàøèíîé. 
    Gui, Answers: Add, Text, x8 y408  h20 0x200, .êóï - Êóïîíû äåéñòâóþò íà âñå àâòî èç Majestic Motors.
    Gui, Answers: Add, Text, x8 y424  h20 0x200, .ñëó÷ - Â íàãðàäàõ èìåþòñÿ "Ñëó÷àéíûå íàáîðû". Ïðè âçÿòèè ïðèçà ó èãðîêà áóäåò âûáîð â îòêðûòèè îäíîé òð¸õ êàðò ñ ðàçíûì ñîäåðæèìûì. 
    Gui, Answers: Add, Text, x8 y440  h20 0x200, .îîñ - ÎÎÑ çîíó âû ìîæåòå âêëþ÷èòü íà F2-Íàñòðîéêè-Áèíä. Ïðè íàæàòèè íà ýòó êëàâèøó, åñëè èãðîê ïåðåä âàìè âûøåë, ó âàñ áóäåò èíôîðìàöèÿ î äàòå è âðåìåíè âûõîäà ýòîãî èãðîêà èç èãðû.
    Gui, Answers: Add, Text, x8 y456  h20 0x200, .êâð - Ó áîòà íà ðàáîòå áóäåò êíîïêà "ß ìîãó ÷åì-òî ïîìî÷ü". Âû íà íå¸ æì¸òå è ó âàñ îòêðîåòñÿ êâåñò, êîòîðûé âûïîëíèòü íóæíî (íà Ô6 ìîæíî ïîñìîòðåòü). 
    Gui, Answers: Add, Text, x8 y472  h20 0x200, .âáï - Áðîíçîâûé ïðîïóñê îòêðûâàåò äîñòóï ê ïðåìèóì íàãðàäàì äî 35 óðîâíÿ, ñåðåáðÿííûé äî 75 óðîâíÿ, çîëîòîé äî 110 óðîâíÿ, ïëàòèíîâûé äî 150 óðîâíÿ. Îïûò äàåò òîëüêî êîðîëåâñêèé ñòàðò.
    Gui, Answers: Add, Text, x8 y488  h20 0x200, .ôæá - Íå ìîãó ðàññìîòðåòü èç-çà íàðóøåíèé ïðàâèë ïîäà÷è. Àâòîðó ðåïîðò-æàëîáû íåîáõîäèìî óêàçûâàòü â íàçâàíèè âèäåî: ñâîé static, static íàðóøèòåëÿ, âðåìÿ è äàòó. 
    Gui, Answers: Add, Text, x8 y504  h20 0x200, .àëèñ - ×òîáû âûêëþ÷èòü GPS àññèñòåíòà íàæìèòå F2 - Íàñòðîéêè è âûêëþ÷èòå GPS Àññèñòåíò.
    Gui, Answers: Add, Text, x8 y520  h20 0x200, .çàêð - Çàêðîéòå îáðàùåíèå è îòêðîéòå ñíîâà, ïîæàëóéñòà. 
	Gui, Answers: Add, Text, x8 y536  h20 0x200, .çï - ×òîáû íà÷èñëÿëñÿ PayDay Âàì íóæíî èìåòü ñâîþ áàíêîâñêóþ êàðòó è áûòü óâîëåíûì ñî âñåõ ðàáîò. Îôîðìèòü å¸ ìîæíî â ëþáîì áàíêå.
    Gui, Answers: Add, Text, x8 y552  h20 0x200, .ïàð - Ïîëîæèòå ïàðàøþò â áûñòðûé ñëîò, çàòåì â ïîëåòå íàæìèòå íà 1, 2 èëè 3 (çàâèñèò îò ñëîòà), ïîñëå ýòîãî ËÊÌ, ïàðàøþò îòêðîåòñÿ.
    Gui, Answers: Add, Text, x8 y568  h20 0x200, .âîä - Àäìèíèñòðàöèÿ íå äîñòàåò àâòîìîáèëè èç âîäû, à ëèøü óäàëÿåò, ÷òîáû âû ìîãëè åå çàñïàâíèòü. Âàì íåîáõîäèìî ñàìîñòîÿòåëüíî äîáðàòüñÿ äî àâòîñåðâèñà/àðåíäû ò.ñ èëè äî íóæíîãî âàì ìåñòà.
    Gui, Answers: Add, Text, x8 y584  h20 0x200, .áåíç - Àäìèíèñòðàöèÿ íå çàïðàâÿëåò ò.ñ. èãðîêîâ. Âû ìîæåòå âûçâàòü òàêñè è äîáðàòüñÿ äî íóæíîãî âàì ìåñòà èëè ïðèîáðåñòè êàíèñòðó, ÷òîáû â äàëüíåéøåì äîåõàòü äî ÀÇÑ.
	Gui, Answers: Add, Text, x8 y600  h20 0x200, .óäàë - Àäìèíèñòðàöèÿ íå óäàëÿåò ò.ñ. èãðîêîâ. Èñêëþ÷åíèå: ò.ñ. óòîíóëî è íå èñ÷åçëî.
    Gui, Answers: Add, Text, x8 y616  h20 0x200, .ñòàò - Â F2 - Ïåðñîíàæ - Ñòàòèñòèêà.
    Gui, Answers: Add, Text, x8 y632  h20 0x200, .ïðåä - /asms Âûêëþ÷èòå ìóçûêó, âû â çåëåíîé çîíå.
    Gui, Answers: Add, Text, x8 y648  h20 0x200, .êâ - Òåêóùèé êâåñò îòîáðàæàåòñÿ íàä òàéìåðîâ Majestic Coins, åñëè åãî íåò - íàæìèòå F6.
    Gui, Answers: Add, Text, x8 y664  h20 0x200, .êìá - ×òîáû óñòðîèòüñÿ â ñèëîâóþ ãîñ. ñòðóêòóðó íåîáõîäèìî ïîëó÷èòü âîåííûé áèëåò. Äëÿ ýòîãî íàäî óñòðîèòüñÿ â SANG è ïðîéòè ÊÌÁ. Èêîíêà çåëåíîãî ñàìîëåòà íà êàðòå.
    Gui, Answers: Add, Text, x8 y680  h20 0x200, .íàðê - Ïàêåòèêè Blue è White íèêàê íå ïîëó÷èòü, ôóíêöèîíàë êàê ó Green, òîëüêî ðàçíûå ýôôåêòû.
    Gui, Answers: Add, Text, x8 y696  h20 0x200, .âåðò - Âåðîòîëåòû ïðîäàþòñÿ â ñàëîíå íåäàëåêî îò àýðîïîðòà.
    Gui, Answers: Add, Text, x8 y712  h20 0x200, .ïîõîä - Èçìåíèòü ïîõîäó è ýìîöèè ëèöà ìîæíî â  F2 - Íàñòðîéêè - Ãëàâíîå.
    Gui, Answers: Add, Text, x8 y728  h20 0x200, .áàãàæ - ×òîáû âûëåçòè èç áàãàæíèêà íàæìèòå íà "E".
    Gui, Answers: Add, Text, x8 y744  h20 0x200, .íàë - ×òîáû îïëàòèòü íàëîãè íà äîì íåîáõîäèìî îòêðûòü ïðèëîæåíèå "Ìîé äîì" â ïëàíøåòå.
	Gui, Answers: Show, h766 w1100, Îòâåòû
	Return

F5:
SendInput, {F5}
return

;Ïàìÿòêà
	Cheatsheet:
    Cheatsheet1:=!Cheatsheet1
    If Cheatsheet1
    {
    CustomColor2 = 	EEAA99
    Gui Cheatsheet: +LastFound +AlwaysOnTop -Caption +ToolWindow
    Gui Cheatsheet: Color, black
    Gui Cheatsheet: Font, s7
    Gui Cheatsheet: Font, w3000
    Gui Cheatsheet: Font, cFFFFFF
    Gui Cheatsheet: Add, Text,,  Ôðàêöèè: 1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara   13 - LCN   14 - RM   15 - YAK   16 - MEX   17 -  LOST   18 - AOD   19 - IM		
    Gui Cheatsheet: Add, Text, x15 y35 cYellow,  DM - Demorgan 100 ìèíóò / WARN / Ban 3 - 30 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Îáìàí â /do - Demorgan 35 ìèíóò / WARN
    Gui Cheatsheet: Add, Text, cYellow,  DB - Demorgan 30 - 90 ìèíóò / WARN / Ban 3 - 30 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Ïîìåõà ðàáîòå àäìèíèñòðàöèè - Kick / Mute 10 - 60 ìèíóò / Demorgan 10 - 100 ìèíóò / WARN / Ban 3 - 30 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  nonRP ïîâåäåíèå - Demorgan 15 - 90 ìèíóò / WARN / Ban 3 - 15 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  SK - Ban 2-5 äíåé / Hardban 2 - 7 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  nonRP Drive - Demorgan 15 - 90 ìèíóò / Ban 3-7 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  TK -  Demorgan 90 ìèíóò / WARN
    Gui Cheatsheet: Add, Text, cYellow,  nonRP Fly - Demorgan 10 - 35 ìèíóò
    Gui Cheatsheet: Add, Text, cYellow,  Êðàéì áåç ìàñêè - Demorgan 15 ìèíóò
    Gui Cheatsheet: Add, Text, cYellow,  PG - Demorgan 35-90 ìèíóò / WARN / Ban 2-7 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Îîãîíü ñ òðàíñïîðòíîãî ñðåäñòâà - Ban 3-5 äíåé / HardBan 7 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Êðèìèíàëüíûå äåéñòâèÿ ïî îòíîøåíèþ ê ñîòðóäíèêàì EMS - Demorgan 90 ìèíóò / WARN
    Gui Cheatsheet: Add, Text, cYellow,  Ïîäíèìàòü ïðåäìåòû âî âðåìÿ ïåðåñòðåëêè - Demorgan 35 ìèíóò / WARN
    Gui Cheatsheet: Add, Text, cYellow,  Íàìåðåííî ìåíÿòü / óáèðàòü îðóæèå ñ öåëüþ åãî ñîõðàíåíèÿ - WARN / Ban 2 äíÿ
    Gui Cheatsheet: Add, Text, x700 y35 cYellow,  Ìóçûêà ÇÇ - Mute 30-60 ìèíóò
    Gui Cheatsheet: Add, Text, cYellow,  Óõîä îò RP - WARN / Ban 4-8 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Ïåðåñòðåëêà / ñòðåëüáà â ÇÇ - Demorgan 35 - 100 ìèíóò / WARN / Ban 3 - 30 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Êðèìèíàëüíûå äåéñòâèÿ ÇÇ - Demorgan 10 - 100 ìèíóò / WARN / Ban 3 äíÿ
    Gui Cheatsheet: Add, Text, cYellow,  Áðèòü áåç ïðè÷èíû - Demorgan 60-100 ìèíóò / WARN / Ban 2-5 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Íå ñíèìàòü ñòÿæêè/ìåøêè - Demorgan 60 ìèíóò
    Gui Cheatsheet: Add, Text, cYellow,  Óíèçèòåëüíûå äåéñòâèÿ - WARN âñåì
    Gui Cheatsheet: Add, Text, cYellow,  Èñïîëüçîâàíèå ïðåäìåòîâ äëÿ âîññòàíîâëåíèÿ çäîðîâüÿ/áðîíè âî âðåìÿ ïåðåñòðåëêè - Demorgan 35 - 90 ìèíóò
    Gui Cheatsheet: Add, Text, cYellow,  Èñïîëüçîâàíèå ïðåäìåòîâ ëå÷åíèÿ / çàìåíû áðîíåæèëåòîâ âî âðåìÿ åçäû íà òðàíñïîðòíîì ñðåäñòâå - Demorgan 15 - 35 ìèíóò
    Gui Cheatsheet: Add, Text, cYellow,  Ïðîâîöèðîâàòü èãðîêîâ íà íàðóøåíèå ïðàâèë ñåðâåðà - Demorgan 35 - 90 ìèíóò / Ban 3-30 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Ïðîâîöèðóþùèå äåéñòâèÿ â ñòîðîíó ãîñóäàðñòâåííûõ ñîòðóäíèêîâ - Ban 2-5 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Çàâóàëèðîâàííûå îñêîðáëåíèå âåðîèñïîâåäàíèÿ, ðåëèãèè è íàöèè - Ban 15 - 30 äíåé / Hardban 15-30 äíåé / Permban
    Gui Cheatsheet: Add, Text, cYellow,  Ïðÿìûå îñêîðáëåíèÿ âåðîèñïîâåäîâàíèÿ, ðåëèãèè , íàöèè - HardBan 30 - 60 äíåé / PermBan
    Gui Cheatsheet: Add, Text, cYellow,  Ïîìåõà ÐÏ ïðîöåññó - Ban 2-5 äíåé
    Gui Cheatsheet: Add, Text, cYellow,  Äåéñòâèÿ, íàïðàâëåííûå íà âîçáóæäåíèå íåíàâèñòè íà ïî÷âå ðàçíîãëàñèÿ î ãåíäåðíîé è ò.ï - Demorgan 90 ìèíóò / Ban 3 - 15 äíåé / HardBan 3 - 15 äíåé
    WinSet, TransColor, %CustomColor2% 200
    Gui Cheatsheet: Show, x%X2% y%Y2% NoActivate, window.
    }
    Else
    Gui Cheatsheet: Destroy
	Return

	Punish:
    Gui, Punish: Color, 1e2124
    Gui, Punish: Font, s8, Segoe UI
    Gui, Punish: Font, cwhite
	Gui, Punish: Add, Text, x8 y8  h20 +0x200, .õàðäî - /hardban 9999 Îáõîä áëîêèðîâêè
    Gui, Punish: Add, Text, x8 y24  h20 +0x200, .õàðä - /hardban 8888 Cheats
    Gui, Punish: Add, Text, x8 y40  h20 +0x200, .õàðä9 - /hardban 9999 Cheats
    Gui, Punish: Add, Text, x8 y56  h20 +0x200, .ñåêñ - /warn Ñåêñ. àíèì. áåç îòûãðîâîê
    Gui, Punish: Add, Text, x8 y72  h20 +0x200, .íðä - /ajail 15 nonRP Drive
    Gui, Punish: Add, Text, x8 y88  h20 +0x200, .íðä25 - /ajail 25 nonRP Drive
    Gui, Punish: Add, Text, x8 y104  h20 +0x200, .íðä45 - /ajail 45 nonRP Drive
    Gui, Punish: Add, Text, x8 y120  h20 +0x200, .íðä70 - /ajail 70 nonRP Drive
    Gui, Punish: Add, Text, x8 y136  h20 +0x200, .íðä90 - /ajail 90 nonRP Drive
    Gui, Punish: Add, Text, x8 y152  h20 +0x200, .íðï - /ajail 15 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x8 y168  h20 +0x200, .íðï25 - /ajail 25 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x8 y184  h20 +0x200, .íðï45 - /ajail 45 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x8 y200  h20 +0x200, .íðï70 - /ajail 70 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x8 y216  h20 +0x200, .íðï90 - /ajail 90 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x8 y232  h20 +0x200, .äá - /ajail 30 DB
    Gui, Punish: Add, Text, x8 y248  h20 +0x200, .äá45 - /ajail 45 DB
    Gui, Punish: Add, Text, x8 y264  h20 +0x200, .äá60 - /ajail 60 DB
    Gui, Punish: Add, Text, x8 y280  h20 +0x200, .äá75 - /ajail 75 DB
    Gui, Punish: Add, Text, x8 y296  h20 +0x200, .äá90 - /ajail 90 DB
    Gui, Punish: Add, Text, x8 y312  h20 +0x200, .äì - /ajail 100 DM
    Gui, Punish: Add, Text, x8 y328  h20 +0x200, .ïã - /ajail 35 PG
    Gui, Punish: Add, Text, x8 y344  h20 +0x200, .ïã55 - /ajail 55 PG
    Gui, Punish: Add, Text, x8 y360  h20 +0x200, .ïã75 - /ajail 75 PG
	Gui, Punish: Add, Text, x8 y376  h20 +0x200, .ïã90 - /ajail 90 PG
    Gui, Punish: Add, Text, x8 y392  h20 +0x200, .ìóç - /mute 30 Music in ZZ
    Gui, Punish: Add, Text, x8 y408  h20 +0x200, .ìóç60 - /mute 60 Music in ZZ
    Gui, Punish: Add, Text, x8 y424  h20 +0x200, .ñìíèê - /ajail 720 Äî ñìåíû íèêà
    Gui, Punish: Add, Text, x8 y440  h20 +0x200, .ñìâí - /ajail 720 Äî ñìåíû âíåøíîñòè
    Gui, Punish: Add, Text, x8 y456  h20 +0x200, .îñà30 - /hardban 30 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x8 y472  h20 +0x200, .îñà15 - /hardban 14 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x8 y488  h20 +0x200, .îñà10 - /hardban 10 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x8 y504  h20 +0x200, .îñà - /hardban 7 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x8 y520  h20 +0x200, .îîñê - /ajail 30 OOC îñê.
	Gui, Punish: Add, Text, x8 y536  h20 +0x200, .ñòð - /ban 3 Ñòðåëüáà ïî ïåøèì
	
	Gui, Punish: Add, Text, x240 y8  h20 +0x240, /[fhlj - /hardban 9999 Îáõîä áëîêèðîâêè
    Gui, Punish: Add, Text, x240 y24  h20 +0x240, /[fhl - /hardban 7777 Cheats
    Gui, Punish: Add, Text, x240 y40  h20 +0x240, /[fhl9 - /hardban 9999 Cheats
    Gui, Punish: Add, Text, x240 y56  h20 +0x240, /ctrc - /warn Ñåêñ. àíèì. áåç îòûãðîâîê
    Gui, Punish: Add, Text, x240 y72  h20 +0x240, /yhl - /ajail 15 nonRP Drive
    Gui, Punish: Add, Text, x240 y88  h20 +0x240, /yhll25 - /ajail 25 nonRP Drive
    Gui, Punish: Add, Text, x240 y104  h20 +0x240, /yhl45 - /ajail 45 nonRP Drive
    Gui, Punish: Add, Text, x240 y120  h20 +0x240, /yhl70 - /ajail 70 nonRP Drive
    Gui, Punish: Add, Text, x240 y136  h20 +0x240, /yhl90 - /ajail 90 nonRP Drive
    Gui, Punish: Add, Text, x240 y152  h20 +0x240, /yhg - /ajail 15 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x240 y168  h20 +0x240, /yhg25 - /ajail 25 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x240 y184  h20 +0x240, /yhg45 - /ajail 45 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x240 y200  h20 +0x240, /yhg70 - /ajail 70 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x240 y216  h20 +0x240, /yhg90 - /ajail 90 nonRP Ïîâåäåíèå
    Gui, Punish: Add, Text, x240 y232  h20 +0x240, /l, - /ajail 30 DB
    Gui, Punish: Add, Text, x240 y248  h20 +0x240, /l,45 - /ajail 45 DB
    Gui, Punish: Add, Text, x240 y264  h20 +0x240, /l,60 - /ajail 60 DB
    Gui, Punish: Add, Text, x240 y280  h20 +0x240, /l,75 - /ajail 75 DB
    Gui, Punish: Add, Text, x240 y296  h20 +0x240, /l,90 - /ajail 90 DB
    Gui, Punish: Add, Text, x240 y312  h20 +0x240, /lv - /ajail 100 DM
    Gui, Punish: Add, Text, x240 y328  h20 +0x240, /gu - /ajail 35 PG
    Gui, Punish: Add, Text, x240 y344  h20 +0x240, /gu55 - /ajail 55 PG
    Gui, Punish: Add, Text, x240 y360  h20 +0x240, /gu75 - /ajail 75 PG
	Gui, Punish: Add, Text, x240 y376  h20 +0x240, /gu90 - /ajail 90 PG
    Gui, Punish: Add, Text, x240 y392  h20 +0x240, /vep - /mute 30 Music in ZZ
    Gui, Punish: Add, Text, x240 y408  h20 +0x240, /vep60 - /mute 60 Music in ZZ
    Gui, Punish: Add, Text, x240 y424  h20 +0x240, /cvybr - /ajail 720 Ñìåíèòå ñìåíû íèêà
    Gui, Punish: Add, Text, x240 y440  h20 +0x240, /cvdy - /ajail 720 Äî ñìåíû âíåøíîñòè
    Gui, Punish: Add, Text, x240 y456  h20 +0x240, /jcf30 - /hardban 30 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x240 y472  h20 +0x240, /jcf15 - /hardban 14 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x240 y488  h20 +0x240, /jcf10 - /hardban 10 Îñê. àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x240 y504  h20 +0x240, /jcf - /hardban 7 Îñê.  àäìèíèñòðàöèè
    Gui, Punish: Add, Text, x240 y520  h20 +0x240, /jjcr - /ajail  30 OOC îñê.
	Gui, Punish: Add, Text, x240 y536  h20 +0x240, /cnh - /ban 3 Ñòðåëüáà ïî ïåøèì
	Gui, Punish: Show, h554 w460, Íàêàçàíèÿ
	Return

	SkillInfo:
    Gui, SkillInfo: Color, 1e2124
    Gui, SkillInfo: Font, s9, Segoe UI
    Gui, SkillInfo: Font, cwhite
	Gui, SkillInfo: Add, Text, x8 y8  h20 +0x240, .âûíîñ - Âûíîñëèâîñòü - íàâûê âûíîñëèâîñòè ïîâûøàåòñÿ îò ïîäâèæíîãî îáðàçà æèçíè. ×åì áîëüøå òû 
    Gui, SkillInfo: Add, Text, x8 y24  h20 +0x240, áåãàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ïðè íèçêîì íàâûêå, ïåðñîíàæ íå ìîæåò ïðûãíóòü 2 ðàçà è ïàäàåò.
    Gui, SkillInfo: Add, Text, x8 y40  h20 +0x240, Ñîîòâåòñòâåííî ïîâûøåíèå íàâûêà âëèÿåò íà äëèòåëüíîñòü áåñïðåðûâíîãî áåãà è êîëè÷åñòâî ïðûæêîâ, 
    Gui, SkillInfo: Add, Text, x8 y56  h20 +0x240, ìàêñèìóì íà ïîñëåäíåì óðîâíå - 2.
    Gui, SkillInfo: Add, Text, x8 y72  h20 +0x240, .ñèëà - Ñèëà - íàâûê ñèëû ïîâûøàåòñÿ îò ôèçè÷åñêèõ íàãðóçîê. ×åì áîëüøå òû çàíèìàåøüñÿ â êà÷àëêå 
    Gui, SkillInfo: Add, Text, x8 y88  h20 +0x240, (èêîíêà áåãóùåãî ÷åëîâåêà íà êàðòå), òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Îò ïðîêà÷êè óâåëè÷èâàåòñÿ 
	Gui, SkillInfo: Add, Text, x8 y104  h20 +0x240, ñîïðîòèâëåíèå ê óðîíó îò ïàäåíèÿ.
    Gui, SkillInfo: Add, Text, x8 y120  h20 +0x240, .äûõ - Äûõàíèå - íàâûê äûõàíèÿ ïîâûøàåòñÿ îò äëèòåëüíîãî íàõîæäåíèÿ ïîä âîäîé. ×åì áîëüøå òû 
    Gui, SkillInfo: Add, Text, x8 y136  h20 +0x240, ïëàâàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ñîîòâåòñòâåííî ïîâûøåíèå íàâûêà âëèÿåò íà äëèòåëüíîñòü 
    Gui, SkillInfo: Add, Text, x8 y152  h20 +0x240, áåñïðåðûâíîãî ïëàâàíèÿ ïîä âîäîé.
    Gui, SkillInfo: Add, Text, x8 y168  h20 +0x240, .âîæäåí - Âîæäåíèå - íàâûê âîæäåíèÿ ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî çà ðóëåì àâòîìîáèëÿ. ×åì 
    Gui, SkillInfo: Add, Text, x8 y184  h20 +0x240, áîëüøå òû âîäèøü òðàíñïîðò, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Îò ïðîêà÷êè óâåëè÷èâàåòñÿ óïðàâëÿåìîñòü 
    Gui, SkillInfo: Add, Text, x8 y200  h20 +0x240, òðàíñïîðòíûì ñðåäîñòâîì.
    Gui, SkillInfo: Add, Text, x8 y216  h20 +0x240, .ïîëåò - Ïîëåò - íàâûê ïèëîòèðîâàíèÿ ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî çà âîçäóøíûì òðàíñïîðòîì. 
    Gui, SkillInfo: Add, Text, x8 y232  h20 +0x240, ×åì áîëüøå òû ëåòàåøü íà ñàìîëåòå èëè âåðòîëåòå, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Òàêæå íàâûê ìîæíî 
    Gui, SkillInfo: Add, Text, x8 y248  h20 +0x240, ïîâûñèòü ïðîéäÿ êóðñû â ëåòíîé øêîëå. Ïðîéòè èõ ìîæíî 1 ðàç â 24 ÷àñà, óâåë÷åíèå íàâûêà îò 1 çàíÿòèÿ - 
    Gui, SkillInfo: Add, Text, x8 y264  h20 +0x240, 10, ñòîèìîñòü îäíîãî çàíÿòèÿ - 2 000$. Îò ïðîêà÷êè íàâûêà óâåëè÷èâàåòñÿ ñòàáèëüíîñòü ïîëåòà è 
    Gui, SkillInfo: Add, Text, x8 y280  h20 +0x240, óïðàâëÿåìîñòü âîçäóøíûì òðàíñïîðòîì.
	Gui, SkillInfo: Add, Text, x8 y296  h20 +0x240, .ñêðûòí - Ñêðûòíîñòü - íàâûê ñêðûòíîñòè ïîâûøàåòñÿ îò êîëè÷åñòâà óñïåøíûõ óõîäîâ îò ïîãîíè 
    Gui, SkillInfo: Add, Text, x8 y312  h20 +0x240, (ïîíèæåíèé óðîâíÿ ðîçûñêà). ×åì ÷àùå òû ñêðûâàåøüñÿ îò ïîëèöèè, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Íè
    Gui, SkillInfo: Add, Text, x8 y328  h20 +0x240,  íà ÷òî íå âëèÿåò.
    Gui, SkillInfo: Add, Text, x8 y344  h20 +0x240, .ñòðåëüáà - Ñòðåëüáà - íàâûê ñòðåëüáû ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî â ïåðåñòðåëêàõ, ëèáî
    Gui, SkillInfo: Add, Text, x8 y360  h20 +0x240,  òðåíèðîâêàõ. ×åì ëó÷øå òû ñòðåëÿåøü è ïîïàäàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ðåêîìåíäóåì 
    Gui, SkillInfo: Add, Text, x8 y376  h20 +0x240, òðåíèðîâàòüñÿ â ñïåöèàëüíî îòâåäåííûõ äëÿ òîãî ìåñòàõ, òèðå â îðóæåéíîì ìàãàçèíå. Îò ïðîêà÷êè íàâûêà 
    Gui, SkillInfo: Add, Text, x8 y392  h20 +0x240, óâåëè÷èâàåòñÿ ñêîðîñòü ïåðåçàðÿäêè è ïåðåêàòîâ, êó÷íîñòü ñòðåëüáû.
	Gui, SkillInfo: Show, h414 w616, Îïèñàíèå ñêèëîâ
	Return

vac:
SendMessage, 0x50,, 0x4190419,, A
SendInput, {t}
sleep 200
SendInput, /ainfect  0{left 2}
return

repm:
counter++
GoSub, UpdateCounter2
Clipboard :=
return

dimcar:
SendMessage, 0x50,, 0x4190419,, A
SendInput, {T}
Input, car, V, {ctrl}{Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput, /getcar %car%{Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput, /repair{Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput, /setcardim %car% 5{Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput, /setcardim %car% 0{Enter}
Return

reshp:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput,/hp %hId% 0{Enter}
Sleep 300
SendInput, {T}
Sleep 300
SendInput,/rescue %hId%{Enter}
Return

delv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /delveh{Enter}
return

killplayer:
SendInput, {T}
Input, hId, V, {ctrl} {Enter}
Sleep 300
SendInput, {T}
Sleep 500
SendInput,/unjail %hId% Àìíèñòèÿ{Enter}
Sleep 500
SendInput, {T}
Sleep 500
SendInput,/ajail %hId% 9 Àìíèñòèÿ{Enter}
Return

;Âûäà÷à

PunishmentHandler:
Process, Exist, PlayGTAV.exe
if(Errorlevel)
{
WinActivate ahk_exe PlayGTAV.exe
Loop, read, %A_WorkingDir%\Punishment.txt
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
w := DllCall("GetForegroundWindow")
pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
l := DllCall("GetKeyboardLayout", "UInt", pid)
if (l != ru)
{
PostMessage 0x50, 0, %ru%,, A
}
Sleep, 2000
Send, {T}
Sleep, 300
Send, %A_LoopField%
Sleep, 305
Send, {Enter}
}
}
MsgBox, 64, Âûäà÷à íàêàçàíèé, Íàêàçàíèÿ âûäàíû.
}
else
{
MsgBox, 16, Âûäà÷à íàêàçàíèé, Çàïóñòèòå èãðó!
}
return

; === Ôóíêöèÿ äëÿ ðàíäîìà ===
Random(min, max) {
    Random, out, %min%, %max%
    return out
}


gcar:
SendInput, {sc14}
Sleep 50
SendInput, /getcar{Space}
return



gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /gm{Enter}
return

resc:
SendInput, {sc14}
Sleep 50
SendInput, /rescue{Space}
return

gh:
SendInput, {sc14}
Sleep 50
SendInput, /gh{Space}
return

chide:
SendInput, {sc14}
Sleep 50
SendInput, /chide{Enter}
return

tp:
SendInput, {T}
Sleep 500
SendInput,/setweatherlocal CLEAR{Enter}
Sleep 750
SendInput, {T}
Sleep 500
SendInput,/togglesnow{Enter}
Return

mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /mtp{Enter}
return

vhod:
SendMessage, 0x50,, 0x4090409
SendInput, {T}
Sleep 300
SendInput, /gm{Enter}
Sleep 300
if (Radio11==1)
{
SendInput, {T}
Sleep 300
SendInput, /esp3{Enter}
Sleep 300
}
if (Radio13==1)
{
SendInput, {T}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
}
if (Radio9==1)
{
SendInput, {T}
Sleep 300
SendInput, /showcheats{Enter}
Sleep 300
}
if (Radio8==1)
{
SendInput, {T}
Sleep 100
SendInput, /hidecheatinfo{Enter}
Sleep 100
}
if (Radio10==1)
{
SendInput, {T}
Sleep 300
SendInput, /dl{Enter}
Sleep 300
}
if (Radio14==1)
{
SendInput, {T}
Sleep 300
SendInput, /zzdebug{Enter}
Sleep 300
}
if (Radio15==1)
{
SendInput, {T}
Sleep 300
SendInput, /objdl{Enter}
Sleep 300
}
if (Radio16==1)
{
SendInput, {T}
Sleep 300
SendInput, /netstat{Enter}
Sleep 300
}
if (Radio12==1)
{
SendInput, {T}
Sleep 300
SendInput, /templeader %Fraction%{Enter}
}
return

rep:
counter++
GoSub, UpdateCounter
Clipboard :=
return

;Òåëåïîðòû
:?:.êëï::/ctp -196.836 6218.708 31.491 
:?:.êëñ::/ctp 1728.313 3717.568 34.109
:?:.êëì::/ctp -361.424 -129.636 38.696
:?:.êëã::/ctp -40.529 -1077.648 26.653 

:?:.ëñïä::/ctp 429 -980 30.50
:?:.áîë::/ctp 287.70 -578.35 50
:?:.øä::/ctp -434.87 6024.54 31.50
:?:.øä2::/ctp 1843.770 3666.384 33.760
:?:.ôç::/ctp -2336 3257 32.50
:?:.ìýð::/ctp -534.70 -222.07 37.60
:?:.âèçë::/ctp -593 -929 24
:?:.ôèá::/ctp 2527 -377 93

:?:.áàë::/ctp -70.06 -1824.64 26.94
:?:.âàã::/ctp 967 -1817 31
:?:.ôýì::/ctp -204.29 -1513.69 31.60
:?:.áëàäñ::/ctp 496 -1330 29.40
:?:.ìàðà::/ctp 1437.61 -1509.64 62.40

:?:.ëêí::/ctp 1385 1154 114.40
:?:.ðì::/ctp -1526 858 181
:?:.ÿê::/ctp -1556.36 113.07 57
:?:.ìåêñ::/ctp 381.03 23.12 91.40
:?:.àì::/ctp -1895.23 2027.19 141
:?:.èð::/ctp -3028.926 100.118 11.614

:?:.ëîñò::/ctp 969.84 -128.40 74.40
:?:.àîä::/ctp 1995.99 3062.44 47.06

:?:.ãðóá::/ctp -3022 105 11.30
:?:.êëàá::/ctp 1588.65 6445.38 25
:?:.ðè÷::/ctp -1302.49 294.52 64.50
:?:.ìàíîð::/ctp -58.20 343.73 111.80
:?:.êîíò::/ctp -1865.51 -355.96 57

:?:.õóì::/ctp 3569.54 3789.48 30
:?:.ìåéç::/ctp -75 -818 326
:?:.êàç::/ctp 916 50 81
:?:.àø::/ctp -620 -2264 6
:?:.ãã::/ctp -257 -2023 30
:?:.áóðãåð::/ctp -1171.31 -890.20 13.90
:?:.áàãàìà::/ctp -1391.30 -585.35 30
:?:.êàéî::/ctp 4488.58 -4493.52 4
:?:.àâèà::/ctp 3035.21 -4688.55 15
:?:.ìîë::/ctp 61.67 -1751.80 47
:?:.òðàñ::/ctp 7400 3946 1124
:?:.òðàññ::/ctp 7400 -656 1124
:?:.àóê::/ctp -833 -699.50 27
:?:.áîêñ::/ctp 8.56 -1658.55 28.71
:?:.áàð::/ctp -305.09 6259.59 30.92
:?:.áê::/ctp 500.44 109.79 96.49
:?:.âàíèëà::/ctp 131.33 -1302.93 29.23
:?:.ïî÷èíêà::/ctp -1430.45 -450.5 35.91
:?:.ëñê4::/ctp 1175.47 2671.33 37.85
:?:.ïîðò::/ctp 417 -2501 13.46
:?:.ñòð::/ctp 1304 1453 98.87
:?:.ëåñ::/ctp -321 6093 31.14
:?:.áìàðà::/ctp 1302 -1646 51.04
:?:.ñàìîë::/ctp 1473 2730 37.38
:?:.÷èë::/ctp 498 5592 795
:?:.ñýíäè::/ctp 1843.770 3666.384 33.760
:?:.ïàëåòî::/ctp -434.87 6024.54 31.50

:?:/rkg::/ctp -196.836 6218.708 31.491 
:?:/rkc::/ctp 1728.313 3717.568 34.109
:?:/rkv::/ctp -361.424 -129.636 38.696
:?:/rku::/ctp -40.529 -1077.648 26.653 


:?:/kcgl::/ctp 429 -980 30.50
:?:/,jk::/ctp 287.70 -578.35 50
:?:/il::/ctp -434.87 6024.54 31.50
:?:/il2::/ctp 1843.770 3666.384 33.760
:?:/ap::/ctp -2336 3257 32.50
:?:/v'h::/ctp -534.70 -222.07 37.60
:?:/dbpk::/ctp -593 -929 24
:?:/ab,::/ctp 2527 -377 93

:?:/,fk::/ctp -70.06 -1824.64 26.94
:?:/dfu::/ctp 967 -1817 31
:?:/a'v::/ctp -204.29 -1513.69 31.60
:?:/,kflc::/ctp 496 -1330 29.40
:?:/vfhf::/ctp 1437.61 -1509.64 62.40

:?:/kry::/ctp 1385 1154 114.40
:?:/hv::/ctp -1526 858 181
:?:/zr::/ctp -1556.36 113.07 57
:?:/vtrc::/ctp 381.03 23.12 91.40
:?:/fv::/ctp -1895.23 2027.19 141
:?:/bh::/ctp -3028.926 100.118 11.614

:?:/kjcn::/ctp 969.84 -128.40 74.40
:?:/ajl::/ctp 1995.99 3062.44 47.06

:?:/[ev::/ctp 3569.54 3789.48 30
:?:/vtqp::/ctp -75 -818 326
:?:/rfp::/ctp 916 50 81
:?:/fi::/ctp -620 -2264 6
:?:/uu::/ctp -257 -2023 30
:?:/,ehuth::/ctp -1171.31 -890.20 13.90
:?:/,fufvf::/ctp -1391.30 -585.35 30
:?:/rfqj::/ctp 4488.58 -4493.52 4
:?:/fdbf::/ctp 3035.21 -4688.55 15
:?:/vjk::/ctp 61.67 -1751.80 47
:?:/nhfc::/ctp 7400 3946 1124
:?:/nhfcc::/ctp 7400 -656 1124
:?:/fec::/ctp -833 -699.50 27
:?:/,jrc::/ctp 8.56 -1658.55 28.71
:?:/,fh::/ctp -305.09 6259.59 30.92
:?:/,r::/ctp 500.44 109.79 96.49
:?:/dfybkf::/ctp 131.33 -1302.93 29.23
:?:/gjxbyrf::/ctp -1430.45 -450.5 35.91
:?:/kcr4::/ctp 1175.47 2671.33 37.85
:?:/gjhn::/ctp 417 -2501 13.46
:?:/cnh::/ctp 1304 1453 98.87
:?:/ktc::/ctp -321 6093 31.14
:?:/,vfhf::/ctp 1302 -1646 51.04
:?:/cfvjk::/ctp 1473 2730 37.38
:?:/xbk::/ctp 498 5592 795
:?:/c'ylb::/ctp 1843.770 3666.384 33.760
:?:/gfktnj::/ctp -434.87 6024.54 31.50

:?:.îáû÷::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /setdim %Dinamic% 0
return

:?:/j,sx::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /setdim %Dinamic% 0
return

; Êàïòû
:?:.êàïòä::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /setdim %Dinamic% 9871 
return 

:?:/rfgnl::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /setdim %Dinamic% 9871 
return 

;áèçâàðû
:?:.áèçä::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /setdim %Dinamic% %Dimension%
return

:?:.ëåñ1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -595.156 5299.820 70.215{Enter}
return

:?:.ëåñ2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -292.054 6068.327 31.332{Enter}
return

:?:.ñòðîéêà1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1058.867 2358.396 44.685{Enter}
return

:?:.ñòðîéêà2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1290.761 1480.779 98.775{Enter}
return

:?:.ñâàëêà1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 2395.213 3103.875 48.152{Enter}
return

:?:.ñâàëêà2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1212.702 2697.979 37.996{Enter}
return

:?:.ïîðò1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 536.451 -3124.175 6.070{Enter}
return

:?:.ïîðò2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 293.276 -2513.677 5.866{Enter}
return

:?:.ìàðà1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1715.024 -1656.429 112.469{Enter}
return

:?:.ìàðà2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput,{T}
sleep 500
SendInput, /ctp 1244.671 -1678.745 42.763{Enter}
return

:?:/,bpl::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /setdim %Dinamic% %Dimension%
return

:?:/ktc1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -595.156 5299.820 70.215{Enter}
return

:?:/ltc2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp -292.054 6068.327 31.332{Enter}
return

:?:/cnhjqrf1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1058.867 2358.396 44.685{Enter}
return

:?:/cnhjqrf2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput, /ctp 1290.761 1480.779 98.775{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput,/setdim %Dinamic% %Dimension%{Enter}
return

:?:/cdfkrf1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 2395.213 3103.875 48.152{Enter}
return

:?:/cdfkrf2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1212.702 2697.979 37.996{Enter}
return

:?:/gjhn1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 536.451 -3124.175 6.070{Enter}
return

:?:/gjhn2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 293.276 -2513.677 5.866{Enter}
return

:?:/vfhf1::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
SendInput, {T}
sleep 500
SendInput, /ctp 1715.024 -1656.429 112.469{Enter}
Sleep 1000
return

:?:/vfhf2::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/setdim %Dinamic% %Dimension%{Enter}
Sleep 1000
SendInput, {T}
sleep 500
SendInput, /ctp 1244.671 -1678.745 42.763{Enter}
return

;ãàí
:?:.ìèíèã::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_minigun 9999
return
:?:.ðåâèê::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_revolver 9999
return
:?:.ðàêåò::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_firework 9999
return
:?:.õåâèê::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_heavysniper_mk2 9999
return
:?:.òîïîð::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_hatchet  9999
return

:?:/vbybu::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_minigun 9999
return
:?:/htdbr::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_revolver 9999
return
:?:/hfrtn::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_firework 9999
return
:?:/[tdbr::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_heavysniper_mk2 9999
return
:?:/njgjh::
IniRead, Dinamic, %A_ScriptDir%\res\Settings.ini, ID, Dinamic 
if Dinamic = 
{
msgbox,16, Îøèáêà, Äèíàìèê íå ââåäåí!
}
else
SendInput,/gw %Dinamic% weapon_hatchet  9999
return

:?:.êó::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Ïðèâåòñòâóþ, ñåé÷àñ çàéìóñü Âàøèì îáðàùåíèåì, îæèäàéòå.
SendInput, {Enter}
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
Return


; Êîìàíäû
:?:/bch::/bancheck
:?:.èñð::/bancheck
:?:/jch::/ajailcheck 
:?:.îñð::/ajailcheck 
:?:.èôòñðóñë::/bancheck
:?:.ôîôøäñðóñë::/ajailcheck 
:?:/tf::/tempfamily 
:?:.åà::/tempfamily 
:?:/sm::/setmaterials 
:?:.ûü::/setmaterials 
:?:/tn::/tempname 
:?:.åò::/tempname 
:?:.åóüçòôüó::.åóüçòôüó 
:?:.ÿÿâ::/zzdebug 
:?:/zzd::/zzdebug 
:?:/Usefull::/addUsefullitheater 
:?:.ôüçð::/addUsefullitheater 
:?:/rUsefull::/removeUsefullitheater 
:?:.êôüçð::/removeUsefullitheater 
:?:/gzone::/togglegreenzone 
:?:.ïÿùòó::/togglegreenzone 
:?:/mcheck::/mutecheck 
:?:.üñðóñë::/mutecheck 
:?:.üãåóñðóñë::/mutecheck 
:?:.ãòîôøä::/unjail 
:?:.öôêò::/warn 
:?:/ld::/lastdriver 
:?:.äâ::/lastdriver 
:?:/af::/ainfect 
:?:.ôà::/ainfect 
:?:/sk::/skick 
:?:.ûë::/skick 
:?:/k::/kick 
:?:.ë::/kick 
:?:/ai::/auninvite 
:?:.ôø::/auninvite 
:?:.àè::/fb 
:?:/aif::/ainfect  
:?:.ôøà::/ainfect 
:?:.ñ::/c  
:?:.ñè::/cb 
:?:.ãòüãåó::/unmute 
:?:.ïøâ::/gid 
:?:.ôâüøòû::/admins 
:?:.ôøòàóñå::/ainfect 
:?:.óìóòåùò::/eventon 
:?:.óìóòåùàà::/eventoff 
:?:.ïö::/gw 
:?:.ìóð::/veh 
:?:.àø÷ñôê::/fixcar 
:?:.óüçäóôâóê::/templeader 
:?:/tl::/templeader 
:?:.åä::/templeader
:?:.åò::/tempname
:?:/tn::/tempname 
:?:.ûëøñë::/skick 
:?:.êóçôøê::/repair 
:?:.ôãòøìøåó::/auninvite 
:?:.ó÷ñôê::/excar 
:?:.àãóä::/fuel 
:?:.çãääåêãòë::/pulltrunk
:?:.åóüçäóôâóê::/templeader
:?:.àêóóÿ::/freez 
:?:.åçñôê::/tpcar 
:?:.äôûåâêøìóê::/lastdriver 
:?:.âóäøåóü::/delitem 
:?:/gc::/getcar 
:?:.ïñ::/getcar 
:?:.ôâ::/admins 
:?:/ad::/admins 
:?:.ç::/players 
:?:/p::/players 
:?:.çäôíóêû::/players 
:?:.ðåñ::/rescue 
:?:/htc::/rescue 
:?:.åç::/tp 
:?:.ûçóñ::/spec 
:?:.ûçóñùàà::/specoff {Enter} {F5}
:?:.ôûüû::/asms 
:?:.ô::/a 
:?:/sp::/spec 
:?:.ûç::/spec 
:?:/so::/specoff {Enter} {F5}
:?:.ûù::/specoff {Enter} {F5}
:?:/kill::/hp 0{left 2}
:?:.ëøää::/hp 0{left 2}
:?:.øòñôê::/incar 
:?:.ïð::/gh 
:?:.ïèçäåö::<@&713044787514703893>, <@&712998057930784798> è <@&712997692581740597>. Óâàæàåìàÿ àäìèíèñòðàöèÿ, ïðîñèì çàéòè âàñ íà ñåðâåð, â äàííûé ìîìåíò íàì î÷åíü íóæíà âàøà ïîìîùü.
:?:.øòì::/inv 
:?:.øâ::/id 
:?:.ðç::/hp 
:?:.îä::/ajail 
:?:.ôîôøä::/ajail 
:?:.ëøñë::/kick 
:?:.ûëøñë::/skick 
:?:.êóçôøê::/repair 
:?:.âä::/dl 
:?:.óûç::/esp 
:?:.óûç2::/esp2 
:?:.ïóåñôê::/getcar 
:?:.èôò::/ban 
:?:.âóäìóð::/delveh 
:?:.üåç::/mtp 
:?:.ìóð::/veh 
:?:.ôìóð::/aveh 
:?:.ðôêâèôò::/hardban 
:?:.üãåó::/mute 
:?:.ïøâ::/gid 
:?:.ñð::/chide 
:?:/ch::/chide 
:?:.êóûñãó::/rescue 
:?:.ûóåâøü::/setdim 
:?:/sd::/setdim 
:?:.è::/b 
:?:.ö::/w 
:?:.ûâ::/setdim 
:?:.ñðøâó::/chide 
:?:.àôê::/a àôê ìèí{left 4}
:?:/far::/a àôê ìèí{left 4}
:?:.ôãòñãàà::/auncuff 
:?:.ôñãàà::/acuff 
:?:.àêóóÿó::/freeze
:?:/scd::/setcardim 
:?:.ûóåñôêâøü::/setcardim 
:?:.ûñâ::/setcardim 
:?:/rst::/resettempname 
:?:.êûå::/resettempname 
:?:.êóûóååóüçòôüó::/resettempname 
:?:.òû::/netstat 
:?:/ns::/netstat 
:?:.âì::/delveh 
:?:/dv::/delveh 
:?:/hard::/hardban 
:?:.ðôêâ::/hardban 
:?:/as::/asms 
:?:.ôû::/asms 
:?:.ïåç::/gtp
:?:.ïü::/gm
:?:.òñ::/noclip 
:?:/nc::/noclip 
:?:/acf::/acuff 
:?:.ôñà::/acuff 
:?:/auf::/auncuff 
:?:.ôãà::/auncuff 
:?:.à::/f 
:?:.ûëøò::/skin
:?:.åçð::/tph
:?:.ôìóð::/aveh
:?:.ôäùñë::/alock
:?:.ãòè::/unban 
:?:/unb::/unban
:?:.ãòî::/unjail
:?:/unj::/unjail
:?:/dvr::/delvehrange 
:?:.âìê::/delvehrange 
:?:.ùè::/objdl
:?:/ob::/objdl

:?:.êðàø::
SendMessage, 0x50,, 0x4090409
SendInput, Åñëè ó Âàñ åñòü äîêàçàòåëüñòâà êðàøà - ïðåäîñòàâüòå åãî ìíå â ëè÷íûå ñîîáùåíèÿ äèñêîðäà. ß âàñ âûïóùó. Ìîé äèñêîðä: %dis%{#}%tag%.
Return

:?:.äñ::
SendMessage, 0x50,, 0x4090409
SendInput, Ïðåäîñòàâüòå âèäåîäîêàçàòåëüñòâî ìíå â ëè÷íûå ñîîáùåíèÿ äèñêîðäà: %dis%{#}%tag%. 
Return

:?:.äñ2::
SendMessage, 0x50,, 0x4090409
SendInput, Ïðåäîñòàâüòå âèäåîäîêàçàòåëüñòâî ëþáîìó àäìèíèñòðàòîðó â ëè÷íûå ñîîáùåðíèÿ äèñêîðäà.
Return

:?:.ãà::
SendMessage, 0x50,, 0x4090409
SendInput, Îáðàòèòåñü â ëè÷íûå ñîîáùåíèÿ äèñêîðäà ê ãëàâíîìó àäìèíèñòðàòîðó: %gadis%{#}%gatag%.
Return

:?:.çãà::
SendMessage, 0x50,, 0x4090409
SendInput, Îáðàòèòåñü â ëè÷íûå ñîîáùåíèÿ äèñêîðäà ê çàìåñòèòåëþ ãëàâíîãî àäìèíèñòðàòîðà: %zgadis%{#}%zgatag%.
Return

:?:.äèñ::
SendMessage, 0x50,, 0x4090409
SendInput, Îáðàòèòåñü êî ìíå â ëè÷íûå ñîîáùåíèÿ äèñêîðäà: %dis%{#}%tag%.
Return

!e::
SendMessage, 0x50,, 0x4190419,, A
Random, Var, 1, 2
SendInput, % TextArray[Var]
TextArray := ["Ïðèâåòñòâóþ, ñåé÷àñ ïîñòàðàþñü âàì ïîìî÷ü."
            , "Ïðèâåòñòâóþ, ñåé÷àñ çàéìóñü âàøèì îáðàùåíèåì."]
return

:?:.àêò::
SendMessage, 0x50,, 0x4190419,, A
Random, Var, 1, 4
SendInput, % TextArray1[Var]
TextArray1 := ["Ïðèíîñèì èçâèíåíèÿ çà ñòîëü äîëãîå îæèäàíèå. Ïîæàëóéñòà, åñëè ïðîáëåìà åùå àêòóàëüíà, ïðîäóáëèðóéòå å¸ â ñâîåì îáðàùåíèè. Ñïàñèáî çà ïîíèìàíèå."
            , "Ïðîäóáëèðóéòå, åñëè âàøà ïðîáëåìà àêòóàëüíà. Ñïàñèáî çà ïîíèìàíèå."
            , "Ïðîäóáëèðóéòå ñâîå îáðàùåíèå, åñëè ïðîáëåìà âñå åùå àêòóàëüíà. Ñïàñèáî çà îæèäàíèå è ïîíèìàíèå."
            , "Åñëè ïðîáëåìà àêòóàëüíà - ïðîäóáëèðóéòå ñâîå îáðàùåíèå."]
return

:?:/frn::
SendMessage, 0x50,, 0x4190419,, A
Random, Var, 1, 4
SendInput, % TextArray1[Var]
TextArray1 := ["Ïðèíîñèì èçâèíåíèÿ çà ñòîëü äîëãîå îæèäàíèå. Ïîæàëóéñòà, åñëè ïðîáëåìà åùå àêòóàëüíà, ïðîäóáëèðóéòå å¸ â ñâîåì îáðàùåíèè. Ñïàñèáî çà ïîíèìàíèå."
            , "Ïðîäóáëèðóéòå, åñëè âàøà ïðîáëåìà àêòóàëüíà. Ñïàñèáî çà ïîíèìàíèå."
            , "Ïðîäóáëèðóéòå ñâîå îáðàùåíèå, åñëè ïðîáëåìà âñå åùå àêòóàëüíî. Ñïàñèáî çà îæèäàíèå è ïîíèìàíèå."
            , "Åñëè ïðîáëåìà àêòóàëüíà - ïðîäóáëèðóéòå ñâîå îáðàùåíèå."]
return

:?:/rhfi::
SendMessage, 0x50,, 0x4090409
SendInput, Åñëè ó Âàñ åñòü äîêàçàòåëüñòâà êðàøà - ïðåäîñòàâüòå åãî ìíå â ëè÷íûå ñîîáùåíèÿ äèñêîðäà. ß âàñ âûïóùó. Ìîé äèñêîðä: %dis%{#}%tag%.
Return

:?:/lc::
SendMessage, 0x50,, 0x4090409
SendInput, Ïðåäîñòàâüòå âèäåîäîêàçàòåëüñòâî ìíå â ëè÷íûå ñîîáùåíèÿ äèñêîðäà: %dis%{#}%tag%. 
Return

:?:/lc2::
SendMessage, 0x50,, 0x4090409
SendInput, Ïðåäîñòàâüòå âèäåîäîêàçàòåëüñòâî ëþáîìó àäìèíèñòðàòîðó â ëè÷íûå ñîîáùåðíèÿ äèñêîðäà.
Return

:?:/uf::
SendMessage, 0x50,, 0x4090409
SendInput, Îáðàòèòåñü â ëè÷íûå ñîîáùåíèÿ äèñêîðäà ê ãëàâíîìó àäìèíèñòðàòîðó: %gadis%{#}%gatag%.
Return

:?:/puf::
SendMessage, 0x50,, 0x4090409
SendInput, Îáðàòèòåñü â ëè÷íûå ñîîáùåíèÿ äèñêîðäà ê çàìåñòèòåëþ ãëàâíîãî àäìèíèñòðàòîðà: %zgadis%{#}%zgatag%.
Return

:?:/lbc::
SendMessage, 0x50,, 0x4090409
SendInput, Îáðàòèòåñü êî ìíå â ëè÷íûå ñîîáùåíèÿ äèñêîðäà: %dis%{#}%tag%.
Return

:?:.çàêð::/asms  Çàêðîéòå îáðàùåíèå è îòêðîéòå ñíîâà, ïîæàëóéñòà. {left 51}
; Îòâåòû
:?:.âçëîì::Òåïåðü äëÿ âçëîìà çàæèãàíèÿ òðàíñïîðòà èãðîêîâ âìåñòî ïðåäìåòà "Îòâ¸ðòêà" òðåáóåòñÿ "Ïðîãðàììàòîð ÝÁÓ".
:?:.âèç::Âèçóàëüíûé áàã, ïåðåçàéäèòå íà ñåðâåð.
:?:.èíãàëÿòîð::Êàðìàííûé èíãàëÿòîð - óíèêàëüíûé ïðåäìåò èç Battle Pass. Äåéñòâóåò êàê green - âîññòàíàâëèâàþò çäîðîâüå â òå÷åíèå îïðåäåëåííîãî âðåìåíè.
:?:.êðåì::Êðåì-ìàñêà - óíèêàëüíûé ïðåäìåò èç Battle Pass. Íà âðåìÿ äåéñòâèÿ ýôôåêòà íå ïîçâîëÿåò ñâåðèòü ôîòîðîáîò è óâèäåòü âàø íèêíåéì íàä ãîëîâîé òåì, êòî ïîçäîðîâàëñÿ ñ âàìè. Çàìåíÿåò ñîáîé ôóíêöèîíàë ìàñêè. Ñðîê äåéñòâèÿ - 30 ìèíóò.
:?:.ñèãíàëêà::Àâòîñèãíàëèçàöèÿ - óíèêàëüíûé ïðåäìåò èç Battle Pass. Óñòàíàâëèâàåòñÿ íà âàø ëè÷íûé òðàíñïîðò. Ïîñëå òîãî, êàê âàøèì àâòî çàâëàäååò òîò, ó êîãî íåò ê íåìó äîñòóïà, âàì íà òåëåôîí ïðèäåò ñîîáùåíèå îá ýòîì.
:?:.êàñòåò::Ñòàëüíîé êàñòåò - óíèêàëüíûé ïðåäìåò èç Battle Pass. Èñïîëüçóåòñÿ êàê îðóæèå. Ïðè èñïîëüçîâàíèè óäàð âûçûâàåò êîíòóçèþ ó âàøåãî ïðîòèâíèêà.
:?:.ãîðí::Âîçäóøíûé ãîðí- óíèêàëüíûé ïðåäìåò èç Battle Pass. Èñïîëüçóåòñÿ èç èíâåíòàðÿ è èìååò ïðîöåíòû èñïîëüçîâàíèÿ. Èñïîëüçîâàíèå âûçûâàåò ýôôåêò "ãëóõîòà" ó âñåõ âîêðóã. Ó ëþäåé ñîâñåì áëèçêî òàêæå ïðîèãðàåòñÿ ñïåöèàëüíàÿ àíèìàöèÿ îãëóøåíèÿ.
:?:.äðîíñêàí::Äðîí Ñêàíåð - óíèêàëüíûé ïðåäìåò èç Battle Pass. Èìååò ôóíêöèîíàë îáû÷íîãî ãðàæäàíñêîãî äðîíà (áåç òåïëîâèçîðà) íî ñ äîïîëíèòåëüíîé âîçìîæíîñòüþ îòìå÷àòü âñåõ ëþäåé âîêðóã íà ìèíèêàðòå ó âàñ è âàøåé ãðóïïû.
:?:.çàìîêøîê::Íàáîð äâåðíûõ øîêåðîâ - óíèêàëüíûé ïðåäìåò èç Battle Pass. Óñòàíàâëèâàåòñÿ íà âàø ëè÷íûé àâòîìîáèëü. Ïðè ïîïûòêè ñåñòü â âàø çàêðûòûé àâòîìîáèëü èãðîê áåç äîñòóïà ïîëó÷èò óðîí è àíèìàöèþ óäàðà òîêîì. 
:?:.áàãâîéñ::Íàæìèòå F2 - Íàñòðîéêè - áëîêèðîâêà âîéñà - çàáëîêèðóéòå äëÿ âñåõ è ñíîâà ðàçáëîêèðóéòå. Â ñëó÷àå, åñëè ïðîáëåìà îñòàëàñü, òî ïåðåçàéäèòå â èãðó.
:?:.ñòàâêà::Ðàñ÷¸ò ñòàâêè îáû÷íî ïðîèñõîäèò â òå÷åíèå 6-òè ÷àñîâ. Àäìèíèñòðàöèÿ íå óïðàâëÿåò ðàññ÷åòîì.
:?:.êëâë::Ïðè äîñòèæåíèè 5-ãî óðîâíÿ: 500 MC Ïðè äîñòèæåíèè 10-ãî óðîâíÿ: 1000 MC Ïðè äîñòèæåíèè 15-ãî óðîâíÿ: 2000 MC Ïðè äîñòèæåíèè 20-ãî óðîâíÿ: 3000 MC Ïðè äîñòèæåíèè 25-ãî óðîâíÿ: 4000 MC Ïðè äîñòèæåíèè 30-ãî óðîâíÿ: 5000 MC. Êàæäûé ñëåäóþùèé óðîâåíü ïîñëå 30-ãî Âû áóäåòå ïîëó÷àòü 1500 MC. 
:?:.êâåñò::Íà ñåðâåðå äîñòóïíû Ìèðîâûå è Ëè÷íûå êâåñòû. Îçíàêîìèòüñÿ ñ íèìè ìîæíî íà ðûíêå (Íà êàðòå îáîçíà÷åí êàê "Êðàñíûé âîïðîñ"). Êâåñòû äîñòóïíû âñåì. Ëè÷íûå êâåñòû âû ìîæåòå ïðîõîäèòü íåîïðåäåëåííûé ñðîê, íî, åñëè Âû çàõîòèòå ó÷àñòâîâàòü â Ìèðîâîì êâåñòå è ïîëó÷èòü äîïîëíèòåëüíûå áîíóñû, òî Âàì íóæíî ïîòîðîïèòüñÿ âûïîëíèòü ëè÷íûé êâåñò. Òîëüêî 5 ëó÷øèõ èãðîêîâ ñìîãóò ïîïàñòü â òîï 3 è çàëóòàòü äîïîëíèòåëüíûå áîíóñû. - Êàæäóþ íåäåëþ äîñòóïíî ïî 3 ëè÷íûõ è ìèðîâûõ êâåñòà. - Íåêîòîðûå êâåñòû ïî òèïó èíêàñàòîðà/ìóñîðùèêà/ïî÷òàëüîíà ìîæíî âûïîëíÿòü â 2-åì è áîëåå, çàñ÷èòûâàòü áóäåì âñåì.
:?:.ôåä::Íà ïåðâîì ýòàæå ñòîèò NPC ó êîòîðîãî ìîæíî âçÿòü çàäàíèå. ×òîáû îòáûòü ñðîê â ôåäåðàëüíîé òþðüìå, íóæíî âûïîëíÿòü çàäà÷è. Íàïðèìåð ïîìûòü òóàëåò - Â îïðåäåëåííîå âðåìÿ òþðüìà çàêðûâàåò êëåòêè íà 5 ìèíóò, ñîîòâåòñòâåííî, â ýòî âðåìÿ îòáûòü ñðîê íåëüçÿ: -- Îòêðûâàþòñÿ êëåòêè â 00 ìèíóò -- Çàêðûâàþòñÿ êëåòêè â 20 ìèíóò íà 5 ìèíóò -- Îòêðûâàþòñÿ êëåòêè â 25 ìèíóò -- Çàêðûâàþòñÿ êëåòêè â 55 ìèíóò íà 5 ìèíóò.
:?:.ñåéô::Çàêðûâàòü èíòåðôåéñ ñåéôà ìîæíî òîëüêî íà ESC. Â ñåéô ìîæíî êëàñòü äî 5 ìèëëèîíîâ. Äåíüãè èäóò èç íàëè÷êè. Íåëüçÿ ïðîäàòü äîìà â ãîñ, ïðîäàòü èãðîêó, ïðåäëîæèòü îáìåí, âûñòàâèòü íà àóêöèîí, åñëè â ñåéôå åñòü äåíüãè. Ñíà÷àëà òðåáóåòñÿ èõ çàáðàòü. Åñëè äîì ñëåòàåò ïî íàëîãàì - äåíüãè èç ñåéôà èãðîê ïîëó÷àåò â íàëè÷êó. 
:?:.ðàöèÿ::Ïðèîáðåñòè ðàöèþ ìîæíî â ëþáîì ìàãàçèíå 24/7, â ðàçäåëå Ýëåêòðîíèêà, çà âñåìè ôðàêöèÿìè çàêðåïëåí äèàïàçîí ÷àñòîò, êîòîðûé íå ìîãóò çàíÿòü. Â F2 -> Íàñòðîéêè ìîæíî èçìåíèòü Ãðîìêîñòè ðàöèè.
:?:.ëåñîðóá::Óñòðàèâàòüñÿ íåîáõîäèìî âñå ó òîãî æå NPC îêîëî Ïàëåòî-Áåé. Äëÿ íà÷àëà ðàáîòû Âàì ïîíàäîáèòüñÿ Òîïîð, êóïèòü åãî ìîæíî ó NPC íà Ðûíêå. Ïðèíöèï ðàáîòû ñõîæèé ñ Ãðèáíèêàìè, òî÷êè äëÿ ñðóáà äåðåâüåâ ðàçáðîñàíû ïî âñåé êàðòå, êàæäûé óðîâåíü ïðèâÿçàí ê ñâîé òî÷êå ñáîðà. Äðåâåñèíó ìîæíî ïðîäàòü íà ðûíêå. 
:?:.ðàö::Äëÿ èñïîëüçâàíèÿ: Âîçüìèòå ðàöèþ > Ââåäèòå ÷èñòîòó >Íàæìèòå åíòåð >Çàæìèòå "M" è áóäåò ñëûøíî.
:?:.òàéì::Ýòî âèçóàëüíûé áàã òàéìåðà, ÷àñû èäóò è êîèíû âàì íà÷èñëÿò ïî èñòå÷åíèþ âðåìåíè. 
:?:.ñèä::Óêàæèòå static ID íàðóøèòåëÿ.
:?:.ìèíè::Ïðîâåðüòå, âêëþ÷åíà ëè ìèíè-êàðòà â íàñòðîéêàõ F2. Îòêëþ÷èòå ñâåðõøèðîêèé ðåæèì â íàñòðîéêàõ F2 è ïîëíîñòüþ ïåðåçàïóñòèòå èãðó. Êîãäà âû íàõîäèòåñü â èãðå, âàì íóæíî âîéòè â èãðîâîå ìåíþ, íàæàâ êëàâèøó "Esc". Â èãðîâîì ìåíþ ñ ïîìîùüþ ñòðåëîê âëåâî è âïðàâî ïåðåéäèòå ê ïóíêòó «Íàñòðîéêè», çàòåì íàæìèòå êëàâèøó «Ââîä». Ïåðåéäèòå â ñòðîêó «Âèäåî» â íàñòðîéêàõ è àêòèâèðóéòå åãî, íàæàâ êëàâèøó «Enter». Â ðàçäåëå «Âèäåî» óñòàíîâèòå çíà÷åíèå «Âêë.» äëÿ âåðõíåãî ýëåìåíòà íàïðîòèâ ñòðîêè «Ðàäàð».
:?:.òåñò::Çàéäèòå â èíòåðüåð ìàðêåòïëåéñà -> íàæìèòå Å -> âûáåðèòå êàòåãîðèþ òðàíñïîðò ->  âûáåðèòå ëþáîé òðàíñïîðò ->  òåñò äðàéâ. 
:?:.àðåí::×òîáû îòêàçàòüñÿ îò àðåíäû âàì íåîáõîäèìî íàõîäèòñÿ îêîëî àðåíäîâàííîãî àâòî - íàâåñòèòü íà àâòî - G - îòêàçàòüñÿ îò àðåíäû.
:?:.ïóò::Âñþ èíôîðìàöèþ (êîìàíäû/î ôðàêöèÿõ, ðàáîòàõ è òàê äàëåå) ìîæíî óçíàòü íà ôîðóìå majestic-rp.ru - ðàçäåë "Ïóòåâîäèòåëü äëÿ íîâè÷êîâ".
:?:.óâàë::Ê ñîæàëåíèþ, íè÷åì íå ìîæåì ïîìî÷ü, óâîëüíÿåì òîëüêî â ñëó÷àå, åñëè ó ôðàêöèè íåò ëèäåðà. Äîæäèòåñü ñâîåãî ëèäåðà/çàìåñòèòåëåé.
:?:.ìàéêè::Äëÿ òîãî, ÷òîáû êóïèòü ìàéêó ïîä âåðõíþþ îäåæäó, âàì íóæíî ñíà÷àëà êóïèòü ýëåìåíò âåðõíåé îäåæäû (íàïðèìåð, ïèäæàê). Ïîñëå ýòîãî âàì áóäó äîñòóïíû âñå ìàéêè, êîòîðûå ïîäõîäÿò ïîä íåå â ðàçäåëå "Ìàéêè".
:?:.êóñ::Ïðèâåòñòâóþ. Êóñà÷êè íóæíû äëÿ âçëîìà êàìåð. Èõ ìîæíî êóïèòü ó NPC-ìåõàíèêà Yongsheng Li íà ðûíêå, à òàê æå îíè åñòü â ïðåäìåòàõ AirDrop. Êóñà÷êè ìîæíî èçúÿòü.
:?:.ðàä::Ïðèâåòñòâóþ. Ðàäàð-äåòåêòîð îòîáðàæàåò êàìåðû êîíòðîëÿ ñêîðîñòè íà êàðòå ïðè äâèæåíèè íà òðàíñïîðòå. Ïðåäìåò ìîæíî ñêðàôòèòü â ìàñòåðñêèõ. Ðàäàð-äåòåêòîð ìîæåò áûòü èçúÿò.
:?:.êàìåðà::Ïðèâåòñòâóþ.Êàìåðà êîíòðîëÿ ñêîðîñòè èñïîëüçóåòñÿ äëÿ óñòàíîâêè êàìåðû ñîòðóäíèêàìè Government. Êðàôòèòñÿ çà òåõíè÷åñêèå ìàòåðèàëû ãîñóäàðñòâåííûìè ñòðóêòóðàìè. Ïðåäìåò ìîæåò áûòü èçúÿò è âûïàäàåò ïðè ñìåðòè.
:?:.êàì::Ïðèâåòñòâóþ.Êàìåðû ìîãóò áûòü óíè÷òîæåíû èãðîêàìè, ñîñòîÿùèìè â áàíäàõ ñ 14:00 äî 01:00. Äëÿ ñòàðòà âçëîìà íåîáõîäèìî íàéòè ó÷àñòîê ñ óñòàíîâëåííûìè êàìåðàìè, èìåÿ â èíâåíòàðå ïðåäìåò "Êóñà÷êè" è "Îòâåðòêà".Êàê òîëüêî ðåçåðâíîå ïèòàíèå áóäåò îòêëþ÷åíî, íóæíî âûñòðåëèòü â êàìåðó ïîñëå óâåäîìëåíèÿ. Â èíîì ñëó÷àå ïèòàíèå âîññòàíîâèòñÿ è êàìåðà ïåðåéäåò â ñòàòóñ íàñòðîéêè.
:?:.ïîâêàìåðà::Ïðèâåòñòâóþ.Ïîâðåæäåííàÿ êàìåðà ïàäàåò íà çåìëþ ïðè óñïåøíîì âçëîìå è âûñòðåëå â êàìåðó. Åå ìîæíî ïðîäàòü íà ðûíêå ó NPC-Ýêîëîãà Greta Thunberg. Ïðåäìåò ìîæåò áûòü èçúÿò è âûïàäàåò ïðè ñìåðòè.
:?:.ðàäàð::Ïðèâåòñòâóþ.Ðàäàð èçìåðåíèÿ ñêîðîñòè ïðè ïðèöåëèâàíèè íàæàâ "ËÊÌ" èçìåðÿåò è îòîáðàæàåò ñêîðîñòü è íîìåð òðàíñïîðòà. Ìîæåò èñïîëüçîâàòüñÿ ïåøêîì èëè èç àâòîìîáèëÿ íà ïàññàæèðñêîì ñèäåíèè òîëüêî â Çåëåíîé Çîíå. Êðàôòèòñÿ çà òåõíè÷åñêèå ìàòåðèàëû ãîñóäàðñòâåííûìè ñòðóêòóðàìè.
:?:.àâòîø::Ïðèâåòñòâóþ. Îïëàòèòü àâòîøòðàô ìîæíî ó NPC â çäàíèè DMV. 
:?:.ñøòðàô::Ïðèâåòñòâóþ.Ïðè çíà÷åíèè âûøå 160 km/h âûïèñûâàåòñÿ øòðàô çà ïðåâûøåíèå ñêîðîñòè.Ñóììà øòðàôà çàâèñèò îò ïðåâûøåíèÿ ñêîðîñòè, øòðàô îäíîìó è òîìó æå âîäèòåëþ íà÷èñëÿåòñÿ íå ÷àùå ÷åì 1 ðàç â 10 ìèíóò. Åñëè íà òðàíñïîðòå ñíÿò íîìåð - øòðàô íå âûïèñûâàåòñÿ.
:?:.âîäø::Ïðèâåòñòâóþ. Øòðàô íà÷èñëÿåòñÿ ïîñëåäíåìó âîäèòåëþ òðàíñïîðòà.
:?:.íîìåðà::Ïðèâåòñòâóþ. Íîìåðà ìîæíî ó NPC â çäàíèè DMV. Ñòîèìîñòü ãåíåðàöèè çàâèñèò îò âûáðàííîãî ÷èñëà ñèìâîëîâ â íîìåðå (4-7), êàæäàÿ íîâàÿ ïîïûòêà îïëà÷èâàåòñÿ îòäåëüíî.Íåçàðåãèñòðèðîâàííûé íîìåð ìîæíî ïðîäàâàòü/îáìåíèâàòü/âûáðàñûâàòü.
:?:.íîì::Ïðèâåòñòâóþ. ×òîáû óñòàíîâèòü íîìåðà íàæìèòå G - Óñòàíîâêà íîìåðà.Êàæäàÿ óñòàíîâêà/ñíÿòèå íîìåðà òðàòèò ïðåäìåò îòâ¸ðòêà.
:?:.ñëóõ::Ôóíêöèÿ "ß íå ñëûøó" ïðåäíàçíà÷åíà äëÿ ëþäåé ñ ïëîõèì ñëóõîì èëè åãî îòñóòñòâèåì. Çëîóïîòðåáëåíèå ýòîé ôóíêöèåé êàðàåòñÿ áàíîì Âàøåãî ïåðñîíàæà. Îòêëþ÷èòü åå ìîæíî â ìåíþ F2 - Íàñòðîéêè. Ñïàñèáî çà ïîíèìàíèå.
:?:.áàã::Çíàåì î äàííîé ïðîáëåìå, îíà óæå ïåðåäàíà ðàçðàáîò÷èêàì. Ïðèíîñèì ñâîè èçâèíåíèÿ çà ïðåäîñòàâëåííûå íåóäîáñòâà. 
:?:.÷àò::Âñå íàñòðîéêè ÷àòà âû ìîæåòå íàéòè â F2 - Íàñòðîéêè - Íàñòðîéêè ÷àòà.
:?:.ðåë::Ïîëíîñòþ ïåðåçàéäèòå íà ñåðâåð ÷åðåç F1 - Êðåñòèê â ïðàâîì âåðõíåì óãëó ýêðàíà.
:?:.íåîáë::Íå îáëàäàåì äàííîé èíôîðìàöèåé.
:?:.ðï::Èçâèíèòå, íî ýòî ÐÏ ïðîöåññ, ìû íå âïðàâå âìåøèâàòüñÿ â íåãî.
:?:.óðï::Äàííóþ èíôîðìàöèþ âû ìîæåòå ïîëó÷èòü ïðè âçàèìîäåéñòâèè ñ äðóãèìè èãðîêàìè/ñàìîñòîÿòåëüíûì ïîèñêîì íåïîñðåäñòâåííî âî âðåìÿ èãðîâîãî ïðîöåññà, ëèáî äðóãèì äîñòóïíûì IC ïóòåì. 
:?:.âîéñ::×òîáû ïåðåçàãðóçèòü âîéñ, ïîïðîáóéòå íàæàòü F7. Åñëè íè÷åãî íå ïîìîãàåò - ïåðåçàéäèòå â èãðó.
:?:.òåõ::Íàïèøèòå â òåõíè÷åñêèé ðàçäåë íà ôîðóìå.
:?:.òåõäñ::Íàïèøèòå â òåõíè÷åñêèé ðàçäåë îôèöèàëüíîãî äèñêîðä ñåðâåðà "Ïîìîùü ïî èãðå" - "òåõ-ïîääåðæêà".
:?:.ôóíê::Äàííûé ôóíêöèîíàë âðåìåííî íåäîñòóïåí, ïðèíîñèì ñâîè èçâèíåíèÿ.
:?:.ôóí::Äàííûé ôóíêöèîíàë îòñóòñòâóåò íà íàøåì ïðîåêòå. Îñòàâüòå ñâîå ïðåäëîæåíèå ïî äîáàâëåíèþ íà ôîðóìå â ñïåöèàëüíîì ðàçäåëå: Ïðåäëîæåíèå ïî óëó÷øåíèþ ñåðâåðà - "Íàïèøèòå âàøå ïðåäëîæåíèå òóò".
:?:.èçâ::Ïðèíîñèì ñâîè èçâèíåíèÿ çà ïðåäîñòàâëåííûå íåóäîáñòâà.
:?:.ðåïòèê::Íàçûâàíèå âèäåî íå ñîîòâåòñòâóåò ôîðìå ïîäà÷è æàëîáû íà èãðîêà: Âàø ñòàòè÷åñêèé ID, ñòàòè÷åñêèé ID íàðóøèòåëÿ, äàòà è âðåìÿ íàðóøåíèÿ.
:?:.åõï::Êàæäûé ÷àñ (ó êàæäîãî èãðîêà ñâî¸ âðåìÿ) Âàì äàåòñÿ EÕP. ×òîáû óçíàòü, ñêîëüêî Âàì îñòàëîñü äî ñëåäóþùåãî PayDay, íàæìèòå êëàâèøó F2-Ñòàòèñòèêà.
:?:.àâòî::×òîáû ýâàêóèðîâàòü Âàøå àâòî âîñïîëüçóéòåñü ìàðêåðîì Ñåðâèñà (Ãàå÷íûé êëþ÷ íà êàðòå). 
:?:.çï::×òîáû íà÷èñëÿëñÿ PayDay Âàì íóæíî èìåòü ñâîþ áàíêîâñêóþ êàðòó è áûòü óâîëåíûì ñî âñåõ ðàáîò. Îôîðìèòü å¸ ìîæíî â ëþáîì áàíêå.
:?:.ãàíëèö::Ïîëó÷èòü ëèöåíçèþ íà îðóæèå ìîæíî â LSPD èëè LSCSD. 
:?:.êàíèñòðà::×òîáû èñïîëüçîâàòü êàíèñòðó, âîçüìèòå å¸ â ðóêè, íàæìèòå G íà àâòî è çàïðàâèòü. 
:?:.åìñ::Ê ñîæàëåíèþ, àäìèíèñòðàöèÿ íå ïîäíèìàåò è íå ëå÷èò èãðîêîâ, âîñïîëüçóéòåñü óñëóãàìè ÅÌÑ.
:?:.ïîäíèì::Ê ñîæàëåíèþ, íå âèäÿ âñåé ñèòóàöèè ìû íå â ïðàâå ëå÷èòü,ïîäíèìàòü èëè äîáèâàòü èãðîêîâ. Äîæäèòåñü ñîòðóäíèêîâ EMS ëèáî æå îêîí÷àíèÿ òàéìåðà ñìåðòè. Ïðèíîñèì ñâîè èçâèíåíèÿ çà âîçìîæíûå íåóäîáñòâà. 
:?:.æá::Àäìèíèñòðàöèÿ íå ìîæåò âûäàâàòü íàêàçàíèÿ è âûíîñèòü êàêèå-ëèáî âåðäèêòû íå âèäÿ âñåé ñèòóàöèè ñ ñàìîãî íà÷àëà. Ïîæàëóéñòà, åñëè ó Âàñ åñòü âèäåîôèêñàöèÿ äàííîãî íàðóøåíèÿ - îôîðìèòå æàëîáó íà ôîðóìå, ñïàñèáî áîëüøîå çà ïîíèìàíèå.
:?:.àíàê::Îáðàòèòåñü, ïîæàëóéñòà, â äèñêîðä ê àäìèíèñòðàòîðó, êîòîðûé âûäàë âàì íàêàçàíèå èëè ðàññìîòðåë æàëîáó.
:?:.àäç::Äàííûé àäìèíèñòðàòîð ñåé÷àñ çàíÿò äðóãèì äåëîì èëè îòîøåë îò êîìïüþòåðà íà êîðîòêîå âðåìÿ, íàïèøèòå åìó â ëè÷íûå ñîîáùåíèÿ â äèñêîðäå.
:?:.àäñ::Äàííûé àäìèíèñòðàòîð ñåé÷àñ îòñóòñòâóåò íà ñåðâåðå, íàïèøèòå åìó â ëè÷íûå ñîîáùåíèÿ â äèñêîðäå.
:?:.ïîãîäà::Ê ñîæàëåíèþ, àäìèíèñòðàöèÿ íå êîíòðîëèðóåò äàííûé ïðîöåññ. Ïîãîäà ìåíÿåòñÿ àâòîìàòè÷åñêè.
:?:.íåï::Íå ïîíÿë ñóòü âàøåãî îáðàùåíèÿ, îïèøèòå Âàøó ïðîáëåìó/âîïðîñ ïîäðîáíåå äëÿ ìàêñèìàëüíî òî÷íîãî îòâåòà, ïîæàëóéñòà.
:?:.äîíàò::Îáðàòèòåñü ïî ïî÷òå - help@majestic-rp.ru.
:?:.õï::Ïåðåçàéäèòå â èãðó, ëèáî êóïèòå òàáëåòêó ó ñîòðóäíèêîâ EMS.
:?:.ðåìîíò::Äëÿ íà÷àëà, Âàì íóæíî êóïèòü çàï÷àñòü äëÿ ìàøèíû íà ëþáî ÀÇÑ, ïîñëå ÷åãî îòêðûòü êàïîò , íàæàòü G > Ïî÷èíèòü çàìîê/àêêóìóëÿòîð/çàëèòü ìàñëî. 
:?:.ôåðì::Íà ôåðìå äëÿ ïîñàäêè êàæäîãî èç ðàñòåíèé íóæíû ñëåäóþùèå íàâûêè: Ïøåíèöà - 225 îïûòà. Êàðòîôåëü - 950 îïûòà. Êàïóñòà - 2000 îïûòà. Êóêóðóçà - 3000 îïûòà. Òûêâà - 6200 îïûòà. Áàíàíû - 10500 îïûòà.
:?:.ãîñ::Âû ìîæåòå ñäàòü àâòî íà ñâàëêó. Ïîñëå ñäà÷è âû ïîëó÷èòå 75% îò ãîñ. ñòîèìîñòè àâòî. Ñâàëêà îòìå÷åíà íà êàðòå êàê ïåðå÷åðêíóòûé, êðàñíûé êðóã.
:?:.àíèì::Îñòàíîâèòå àíèìàöèþ. Íàæìèòå X > Îñòàíîâèòü àíèìàöèþ èëè Backspace.
:?:.èä::Óêàæèòå, ïîæàëóéñòà, ID íàðóøèòåëÿ.
:?:.ñòî::Ñòåïåíü èçíîñà îïðåäåëåííûõ äåòàëåé àâòîìîáèëÿ ìîæíî óçíàòü íà àâòîìàñòåðñêîé (èêîíêà ãàå÷íîãî êëþ÷à ñ îòâåðòêîé íà êàðòå).
:?:.æáà::Âû ìîæåòå íàïèñàòü æàëîáó íà ôîðóì, åñëè íå ñîãëàñíû ñ ðåøåíèåì àäìèíèñòðàòîðà.
:?:.äîí::Çàäîíàòèòü ìîæíî íà íàøåì îôèöèàëüíîì ñàéòå - majestic-rp.ru/donate
:?:.áèíîê::Èñïîëüçîâàòü áèíîêëü ìîæíî ïåðåìåñòèâ åãî â àêòèâíûé ñëîò îðóæèÿ è íàæàâ ÏÊÌ. Èíîãäà îí áàãàåòñÿ è íóæíî åãî óáðàòü èç àêòèâíîãî ñëîòà, âçÿòü îáðàòíî è áûñòðî íàæàòü ÏÊÌ.
:?:.ãðóïïà::×òîáû âìåñòå ðàáîòàòü íà êîîïåðàòèâíîé ðàáîòå âàì íåîáõîäèìî ïðèãàëèñü èãðîêîâ ÷åðåç ïðèëîæåíèå "Ãðóïïà" â òåëåôîíå.
:?:.ãðèáû::×òîáû ñîáèðàòü ãðèáû âàì íàäî ïðèåõàòü íà òî÷êó "Ãðèáû" 1/6 è âçÿòü â ðóêè íîæ.
:?:.ãðèá::Ïðîäàòü ãðèáû ìîæíî íà ðûíêå.
:?:.ðûí::Ðûíîê íàõîäèòñÿ â Ëîñ-Ñàíòîñå íà ïëÿæå ðÿäîì ñ êà÷àëêîé, â Ïàëåòî-Áýé è íà ôåðìå, èêîíêà ïàëàòêè. Òàì âû ìîæåòå ñäàâàòü ïðåäìåòû ñ ôåðìû, äðîâîñåêà, ãðèáíèêà è ðûáàëêè.
:?:.îðóæðûí::Áîòó íà ðûíêå ìîæíî ñäàòü îðóæèå òîëüêî ñî 100% èçíîñîì.
:?:.íîâîñòü::Ïðèäèòå ëè÷íî â Weazel News. 
:?:.îãðàá::Äëÿ ñòàðòà òðåáóåòñÿ âçÿòü çàäàíèå ó NPC áàíäû. Âçëîì äâåðè îñóùåñòâëÿåòñÿ ñ ïîìîùüþ ñïåöèàëüíûõ ïðåäìåòîâ Îòìû÷êà  äëÿ ïðîñòûõ çàìêîâ (ìîæíî êóïèòü íà ðûíêå èëè ñêðàôòèòü â ìàñòåðñêîé). Íàáîð îïûòíîãî âçëîìùèêà  äëÿ ñëîæíûõ çàìêîâ (êðàôòèòñÿ â ìàñòåðñêîé). Ïîñëå ïðîíèêíîâåíèÿ ìîæíî îòêëþ÷èòü ñèãíàëèçàöèþ ñ ïîìîùüþ «Êóñà÷åê» (êðàôòÿòñÿ â ìàñòåðñêîé). Åñëè ñèãíàëèçàöèÿ íå îòêëþ÷åíà  ïîëèöèÿ ïîëó÷àåò âûçîâ.
:?:.ï::Âñåãî äîáðîãî.
:?:.íîâ::Ñëåäèòå çà íîâîñòÿìè ñåðâåðà â îôèöèàëüíîì äèñêîðäå ïðîåêòà. 
:?:.íîâî::Ñëåäèòå çà íîâîñòÿìè â îôèöèàëüíîì äèñêîðäå ïðîåêòà. 
:?:.íèê::Ñìåíèòü íèê èëè âíåøíîñòü Âû ìîæåòå íàæàâ - F2 > Ìàãàçèí > Ïåðñîíàæà.
:?:.áàíê::Ó íàñ íà ñåðâåðå åñòü 3 âèäà áàíêîâñêèõ êàðò: Standart, Premium, VIP. Standart êàðòà ñòîèò â îáñëóæèâàíèè 500$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 500.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 5%(Ìàêñèìóì 20.000$), íà ïåðåâîä 4%(Ìàêñèìóì 20.000$), êýøáåê â ìàãàçèíàõ îòñóòñòâóåò. Premium êàðòà ñòîèò â îáñëóæèâàíèè 25.000$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 2.500.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 4%(Ìàêñèìóì 15.000$), íà ïåðåâîä 3%(Ìàêñèìóì 15.000$), êýøáåê â ìàãàçèíàõ 1%, ëèìèò êýøáåêà íà îäíó îïåðàöèþ äî 2.500$, ìåñå÷íûé ëèìèò êýøáåêà 50.000$. VIP êàðòà ñòîèò â îáñëóæèâàíèè 75.000$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 20.000.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 3%(Ìàêñèìóì 20.000$), íà ïåðåâîä 2.5%(Ìàêñèìóì 20.000$), êýøáåê â ìàãàçèíàõ 3%, ëèìèò êýøáåêà íà îäíó îïåðàöèþ äî 10.000$, ìåñå÷íûé ëèìèò êýøáåêà 150.000$. Äåíüãè çà îáñëóæèâàíèå è ëèìèòû ñíèìàþòñÿ êàæäîå 1 ÷èñëî íîâîãî ìåñÿöà.
:?:.äóáëèê::×òîáû ñäåëàòü äóáëèêàò êëþ÷åé îò àâòî íåîáõîäèìî êóïèòü çàãîòîâêó â ìàãàçèíå 24/7, çàòåì íàæàòü G íà àâòî è ñäåëàòü äóáëèêàò.
:?:.êëàä::×òîáû ñäåëàòü äóáëèêàò îò êëàäîâêè, íåîáõîäèìî êóïèòü çàãîòîâêó â ìàãàçèíå 24/7, çàòåì ÷åðåç G ïåðåäàòü äóáëèêàò íóæíîìó ÷åëîâåêó.
:?:.òåë::Ïîïðîáóéòå êóïèòü òåëåôîí åùå ðàç â ìàãàçèíå 24/7, äåíüãè ñ âàñ íå ñïèøóòñÿ.
:?:.ïîäñåë::×òîáû ïîäñåëèòü èãðîêà ê ñåáå â äîì èëè æå êâàðòèðó, ñòîÿ îêîëî äîìà, íàâåäèòåñü íà èãðîêà è íàæìèòå G, äàëåå íàæìèòå Ïîäñåëèòü.
:?:.êðàø2::Åñëè ó Âàñ åñòü äîêàçàòåëüñòâà êðàøà - ïðåäîñòàâüòå åãî ëþáîìó àäìèíèñòðàòîðó â ëè÷íûå ñîîáùåíèÿ äèñêîðäà. Âàñ âûïóñòÿò.
:?:.çàìîê::Âàì íåîáõîäèìî êóïèòü "Äâåðíîé çàìîê" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Ïî÷èíèòü äâåðíîé çàìîê.
:?:.àêóì::Âàì íåîáõîäèìî êóïèòü "Àêêóìóëÿòîð" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Çàìåíèòü àêêóìóëÿòîð.
:?:.ìàñëî::Âàì íåîáõîäèìî êóïèòü "Ìîòîðíîå ìàñëî" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Çàìåíèòü ìàñëî.
:?:.ìîäåë::Ïóíêò "Ïðîãðóçêà ìîäåëåé" îòâå÷àåò çà áûñòðîòó ïðîãðóçêè òåêñòóð ïðè ïðèáëèæåíèè ê íèì.
:?:.áèçîãðàá::×òîáû îãðàáèòü áèçíåñ, âàì íóæíî: îäåòü ìàñêó, ïðèîáðåñòè îðóæèå è, ïðèäÿ â ìàãàçèí â ñîñòàâå îò 2 äî 35 ÷åëîâåê, íàâåñòèñü íà NPC (ïðîäàâöà) îãíåñòðåëîì (òîëüêî îäèí ÷åëîâåê äîëæåí ãðàáèòü). 
:?:.ñïàâí::Ñïàâí íîâè÷êîâ íàõîäèòñÿ â Ïàëåòî-Áåé, ×óìàøàõ, Àýðîïîðòó è íà Àâòîâîêçàëå. 
:?:.êðåäèò::Ëþáûå ôèíàíñîâûå äîãîâîðû (çàéìû, êðåäèòû è ò.ä) íå îòíîñÿòñÿ ê ÎÎÑ ñäåëêàì. Âñå ïîäîáíûå ñäåëêè èãðîêè ñîâåðøàþò íà ñâîé ñòðàõ è ðèñê. Àäìèíèñòðàöèÿ íå íåñåò îòâåòñòâåííîñòè è íå ÿâëÿåòñÿ ãàðàíòîì ñäåëêè.
:?:.ðåì::×òîáû ïî÷èíèòü ñâî¸ àâòî êóïèòå ðåì.êîìïëåêò íà ëþáîé ÀÇÑ. ×åðåç ìåíþ G ïî÷èíèòå Âàø àâòîìîáèëü.
:?:.ñäåëêà::Àäìèíèñòðàöèÿ íå ñëåäèò çà ñäåëêàìè èãðîêîâ, çàïèøèòå âèäåî íà ñëó÷àé îáìàíà, ÷òîáû îñòàâèòü æàëîáó íà èãðîêà íà ôîðóìå. 
:?:.èìÿ::Âàøå Èìÿ Ôàìèëèÿ íå ïîäõîäèò ïî ïðàâèëàì íàøåãî ñåðâåðà. Âàì íóæíî ñìåíèòü íèê è íàïèñàòü â ðåïîðò ïîâòîðíî, åñëè Âàø íèê áóäåò ñîáëþäàòü ïðàâèëà ñåðâåðà, òî Âàñ âûïóñòÿò.
:?:.ìàéêà::Äëÿ òîãî, ÷òîáû êóïèòü ìàéêó ïîä âåðõíþþ îäåæäó, âàì íóæíî ñíà÷àëà êóïèòü ýëåìåíò âåðõíåé îäåæäû (íàïðèìåð, ïèäæàê). Ïîñëå ýòîãî âàì áóäó äîñòóïíû âñå ìàéêè, êîòîðûå ïîäõîäÿò ïîä íåå â ðàçäåëå "Ìàéêè".
:?:.óíèâ::×òî áû âûïîëíèòü äàííîå çàäàíèå, âàì íóæíî ïðèéòè â Óíèâåðñèòåò íà ïîëå, òàì áóäåò ñòîÿòü NPC â ãîëóáûõ øîðòàõ è ôóòáîëêå. Íóæíî ïîäîéòè ê íåìó è íàæàòü Å , ÷òî áû îòêðûëîñü äèàëîãîâîå îêíî.
:?:.âûíîñ::Âûíîñëèâîñòü - íàâûê âûíîñëèâîñòè ïîâûøàåòñÿ îò ïîäâèæíîãî îáðàçà æèçíè. ×åì áîëüøå òû áåãàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ïðè íèçêîì íàâûêå, ïåðñîíàæ íå ìîæåò ïðûãíóòü 2 ðàçà è ïàäàåò. Ñîîòâåòñòâåííî ïîâûøåíèå íàâûêà âëèÿåò íà äëèòåëüíîñòü áåñïðåðûâíîãî áåãà è êîëè÷åñòâî ïðûæêîâ, ìàêñèìóì íà ïîñëåäíåì óðîâíå - 2.
:?:.ñèëà::Ñèëà - íàâûê ñèëû ïîâûøàåòñÿ îò ôèçè÷åñêèõ íàãðóçîê. ×åì áîëüøå òû çàíèìàåøüñÿ â êà÷àëêå (èêîíêà áåãóùåãî ÷åëîâåêà íà êàðòå), òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Îò ïðîêà÷êè óâåëè÷èâàåòñÿ ñîïðîòèâëåíèå ê óðîíó îò ïàäåíèÿ.
:?:.äûõ::Äûõàíèå - íàâûê äûõàíèÿ ïîâûøàåòñÿ îò äëèòåëüíîãî íàõîæäåíèÿ ïîä âîäîé. ×åì áîëüøå òû ïëàâàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ñîîòâåòñòâåííî ïîâûøåíèå íàâûêà âëèÿåò íà äëèòåëüíîñòü áåñïðåðûâíîãî ïëàâàíèÿ ïîä âîäîé.
:?:.âîæäåí::Âîæäåíèå - íàâûê âîæäåíèÿ ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî çà ðóëåì àâòîìîáèëÿ. ×åì áîëüøå òû âîäèøü òðàíñïîðò, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Îò ïðîêà÷êè óâåëè÷èâàåòñÿ óïðàâëÿåìîñòü òðàíñïîðòíûì ñðåäîñòâîì.
:?:.ïîëåò::Ïîëåò - íàâûê ïèëîòèðîâàíèÿ ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî çà âîçäóøíûì òðàíñïîðòîì. ×åì áîëüøå òû ëåòàåøü íà ñàìîëåòå èëè âåðòîëåòå, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Òàêæå íàâûê ìîæíî ïîâûñèâ ïðîéäÿ êóðñû â ëåòíîé øêîëå. Ïðîéòè èõ ìîæíî 1 ðàç â 24 ÷àñà, óâåë÷åíèå íàâûêà îò 1 çàíÿòèÿ - 10, ñòîèìîñòü îäíîãî çàíÿòèÿ - 2 000$. Îò ïðîêà÷êè íàâûêà óâåëè÷èâàåòñÿ ñòàáèëüíîñòü ïîëåòà è óïðàâëÿåìîñòü âîçäóøíûì òðàíñïîðòîì.
:?:.ñêðûòí::Ñêðûòíîñòü - íàâûê ñêðûòíîñòè ïîâûøàåòñÿ îò êîëè÷åñòâà óñïåøíûõ óõîäîâ îò ïîãîíè (ïîíèæåíèé óðîâíÿ ðîçûñêà). ×åì ÷àùå òû ñêðûâàåøüñÿ îò ïîëèöèè, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Íè íà ÷òî íà âëèÿåò
:?:.ñòðåëüáà::Ñòðåëüáà - íàâûê ñòðåëüáû ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî â ïåðåñòðåëêàõ, ëèáî òðåíèðîâêàõ. ×åì ëó÷øå òû ñòðåëÿåøü è ïîïàäàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ðåêîìåíäóåì òðåíèðîâàòüñÿ â ñïåöèàëüíî îòâåäåííûõ äëÿ òîãî ìåñòàõ, òèðå â îðóæåéíîì ìàãàçèíå. Îò ïðîêà÷êè íàâûêà óâåëè÷èâàåòñÿ ñêîðîñòü ïåðåçàðÿäêè è ïåðåêàòîâ, êó÷íîñòü ñòðåëüáû.
:?:.ëå÷ó::Óæå ëå÷ó ê Âàì íà ïîìîùü.
:?:.ïîì::Ïðèâåòñòâóþ,ñåé÷àñ ïîìîãó Âàì, îæèäàéòå.
:?:.áàãçç::×òîáû âîññòàíîâèòü ïðåæíþþ ñêîðîñòü, çàåäüòå â çåëåíóþ çîíó è âûåäüòå ñ íåå.
:?:.ãîñäîì::×òîáû ïðîäàòü äîì â ãîñ. ñòîèìîñòü, íóæíî ïîäîéòè ê äâåðè è íàæàòü Å. Âû ïîëó÷èòå 75% îò åãî ãîñ. öåíû. Åñëè Âû íåâîâðåìÿ îïëàòèòå íàëîãè èëè çàáóäåòå ýòî ñäåëàòü, äîì ñëåòèò àâòîìàòè÷åñêè.
:?:.ìàéêè::Äëÿ òîãî, ÷òîáû êóïèòü ìàéêó ïîä âåðõíþþ îäåæäó, âàì íóæíî ñíà÷àëà êóïèòü ýëåìåíò âåðõíåé îäåæäû (íàïðèìåð, ïèäæàê). Ïîñëå ýòîãî âàì áóäó äîñòóïíû âñå ìàéêè, êîòîðûå ïîäõîäÿò ïîä íåå â ðàçäåëå "Ìàéêè".
:?:.ðûáëèö::Ïîëó÷èòü ëèöåíçèþ íà ðûáàëêó âû ìîæåòå â Ìýðèè. 
:?:.ïîãîäà::Ê ñîæàëåíèþ àäìèíèñòðàöèÿ íå êîíòðîëèðóåò äàííûé ïðîöåññ. Ïîãîäà ìåíÿåòñÿ àâòîìàòè÷åñêè. 
:?:.ðåï::Ïîæàëóéñòà, óòî÷íèòå ñâîé âîïðîñ ïîäðîáíåå. Àäìèíèñòðàöèÿ íå ëåòàåò íà ðåïîðòû ïî òèïó "àäìèí òï", "àäìèí ìîæíî ïîãîâîðèòü", "ïîìîãèòå", "àäìèí åñòü âîïðîñ". Êîëè÷åñòâî ñèìâîëîâ íåîãðàíè÷åíî, âû ìîæåòå ïîëíîñòüþ ðàñïèñàòü Âàøó ïðîáëåìó/âîïðîñ.
:?:.íåóâèä::Ê ñîæàëåíèþ àäìèíèñòðàöèÿ íå ìîæåò óâèäåòü ýòî íàðóøåíèå. Ïîæàëóéñòà, åñëè ó Âàñ åñòü âèäåîôèêñàöèÿ äàííîãî íàðóøåíèÿ - îôîðìèòå æàëîáó íà ôîðóìå, ñïàñèáî áîëüøîå çà ïîíèìàíèå.
:?:.êîñòè::×òîáû èãðàòü â êîñòè âàì íóæíî êóïèòü èõ â ëþáîì 24/7. Ïîñëå òîãî êàê âû êóïèëè êîñòè, âû ìîæåòå ïîäîéòè ê èãðîêó.
:?:.ïàðê::×òîáû ïðèïàðêîâàòü ÒÑ, çà ðóëåì íàæìèòå G - Ïðèïàðêîâàòü.
:?:.íîâè÷îê::Ïóòåâîäèòåëü íàõîäèòñÿ íà ñïàâíàõ íîâè÷êîâ. Îíè îáîçíà÷åíû íà êàðòå çíà÷êîì ìàøóùåãî ÷åëîâå÷êà.
:?:.äà::Äà. 
:?:.íåò::Íåò. 
:?:.íåòï::Àäìèíèñòðàöèÿ íå òåëåïîðòèðóåò èãðîêîâ, Âàì íóæíî äîáðàòüñÿ äî ìåñòà ñàìîñòîÿòåëüíî. Íà ïðîåêòå äîñòàòî÷íî ñïîñîáîâ, ÷òîáû ýòî ñäåëàòü: òàêñè, àðåíäà òðàíñïîðòà, àâòîñåðâèñû.
:?:.èíâ::Ýòî áàã èíâåíòàðÿ, ïðåäëîæèòå îáìåíÿòüñÿ ëþáîìó èãðîêó è âàøà ïðîáëåìà áóäåò ðåøåíà. Åñëè ïî áëèçîñòè íèêîãî íåò, îáðàòèòåñü åù¸ ðàç â ðåïîðò è àäìèíèñòðàöèÿ Âàì ïîìîæåò. 
:?:.àðûíîê::Äëÿ òîãî, ÷òîáû âûñòàâèòü ñâîå àâòî íà ïðîäàæó, Âàì íåîáõîäèìî ïðèåõàòü íà òåððèòîðèþ àâòîðûíêà, âûáðàòü ìåñòî è íàæàòü íà êëàâèøó "G" - Àâòîðûíîê - Âûñòàâèòü íà ïðîäàæó.
:?:.òîëêàòü::Òðàíñïîðò ìîæíî òîëêàòü, íàæàâ G-òîëêàòü. Åñëè òàêîé ôóíêöèè íåò, ïðè íàâåäåíèè íà àâòî, òî ýòîò òðàíñïîðò òîëêàòü íåëüçÿ.
:?:.íåñë::Àäìèíèñòðàöèÿ íå ìîæåò ñëåäèòü ïîëíîñòüþ çà âñåì ÐÏ ïðîöåññîì, â ñëó÷àå íàðóøåíèé îò èãðîêîâ - íàïèøèòå ðåïîðò.
:?:.ñ÷åò::×òîáû óçíàòü íîìåð ñ÷åòà îòêðîéòå èíâåíòàðü è íàâåäèòåñü ìûøêîé íà áàíêîâñêóþ êàðòó. 
:?:.ïèí::×òîáû âîññòàíîâèòü ïèí-êîä îòïðàâëÿéòåñü â áàíêîâñêîå îòäåëåíèå, â ìåíþ ñìåíû íàæìèòå "Âîññòàíîâèòü".
:?:.àóò::Äëÿ ïîäêëþ÷åíèÿ Google authenticator âàì íóæíî â ìåíþ âûáîðà ïåðñîíàæà îòêðûòü ðàçäåë íàñòðîåê.
:?:.õ2::Òåïåðü êîèíû âûäàþòñÿ ïî âûõîäíûì, ïî áóäíÿì ïðîêðóòêà ðóëåòêè çà 5 ÷àñîâ èãðû.
:?:.îãð::×òîáû íà÷àòü îãðàáëåíèå áàíêà, âàì íóæíî ïîçâîíèòü ïî íîìåðó: 28121903. Äëÿ ýòîãî íàäî áûòü â êðàéì îðãàíèçàöèè, è íàõîäèòñÿ ðÿäîì ñ áàíêîì (êàê ìèíèìóì âàñ äîëæíî áûòü 4 îêîëî áàíêà, èíà÷å íå ñìîæåòå). Äëÿ íà÷àëà îãðàáëåíèÿ òðåáóåòñÿ "Ïëàí îãðàáëåíèé", êîòîðûé âûáèðàåòñÿ â AirDrops èëè ïðè îãðàáëåíèè áèçíåñîâ.Ìîæíî ãðàáèòü 1 ðàç â äåíü êàæäîé îãðàíèçàöèè.Ïîñëå òîãî, êàê îãðàáëåíèå íà÷àëîñü è áàíê ïîëó÷èë êðàñíóþ èêîíêó, íàäî ïðèöåëèòüñÿ â áîòà è çàïîëíèòü ïðîãðåññ áàð.Äàëüøå áóäåò áîëüøàÿ äâåðü, ÷òî áû åå ðàçáëîêèðîâàòü, íóæíî ïðîéòè ìèíè-èãðó ñî âçëîìîì. Äëÿ ýòîãî èñïîëüçóåì «Ïðîãðàììàòîð ÝÁÓ» + «Êàáåëü ýëåêòðîííûõ äâåðåé». Îí ïðîäàåòñÿ ó òîðãîâöà íà ðûíêå. Ïîñëå âçëîìà ïåðåä âàìè áóäåò ñòîÿòü ñòîéêà ñ äåíüãàìè. Äàëåå èäåò 2-ÿ äâåðü. Äëÿ åå âçëîìà íàì íåîáõîäèìà «Êëþ÷ êàðòà Fleeca» ëèáî «Òåðìèòíàÿ óñòàíîâêà».«Êëþ÷ êàðòà Fleeca» âûïàäàåò ñ áîòîâ ïðè îãðàáëåíèè áèçíåñîâ, èëè íà àèð äðîïàõ.«Òåðìèòíàÿ óñòàíîâêà» ïðîäàåòñÿ ó ïèðîòåõíèêà. Ñ åå ïîìîùüþ äâåðü îòêðûâàåòñÿ çà 2 ìèíóòû. 
:?:.îãð2::Äëÿ ýòîãî íàäî âçÿòü â ðóêè îäèí èç ïðåäìåòîâ, ÷òîáû îòêðûòü äâåðü. Íî â õðàíèëèùå åñòü ÿ÷åéêè, äëÿ âçëîìà ÿ÷ååê íåîáõîäèìà «Äðåëü 1500w». Äðåëü êðàôòèòñÿ ó êðèìèíàëüíûõ îðãàíèçàöèé è âûïàäàåò ïðè ñìåðòè. Ïîñëå óñïåøíîãî ïðîõîæäåíèÿ ìèíè-èãðû ïî âçëîìó ÿ÷åéêè íà ïîë ïàäàåò íàãðàäà.
:?:.äðîí::Äðîí êðàôòèòñÿ ó ñèëîâûõ ãîñ.ñòðóêòóð è Weasel News. Ïîëüçîâàòüñÿ èì ìîãóò ñîîòâåòñòâåííî ýòè æå ãîñ.ñòðóêòóðû. ×òîáû ïîäíÿòüñÿ-ïðîáåë, ÷òîáû îïóñòèòüñÿ-shift. Íà E-òåïëîâèçîð âêëþ÷èòü/âûêëþ÷èòü.
:?:.àóêö::Íà àóêöèîí âû ìîæåòå âûñòàâèòü àâòî/áèçíåñ/äîì/êâàðòèðó. Âî âðåìÿ òîãî, êàê âû âûñòàâëÿåòå ëîò, âû ìîæåòå ëèøü åçäèòü íà àâòî. Ïðè ïðîäàæå íà àêöèîíå äîìà/êâàðòèðû-êëàäîâêà ïåðåäà¸òñÿ ïîêóïàòåëþ ïîëíîñòüþ.
:?:.äðèôò::Äðèôò ñ÷¸ò÷èê ìîæíî âêëþ÷èòü ÷åðåç F2 > Íàñòðîéêè > Äîïîëíèòåëüíî. Îí ïîÿâëÿåòñÿ âî âðåìÿ óïðàâëÿåìîãî çàíîñà è ïîêàçûâàåò, íà ñêîëüêî õîðîøî âû ïðîøëè ïîâîðîò.Íà êàðòå âû ìîæåòå óâèäåòü çîíû, ãäå ìîæíî äðèôòèòü è ïîïàñòü â ñïèñîê òîï-äðèôòåðîâ. Äëÿ ýòîãî Âàì îáÿçàòåëüíî äðèôòèòü ïî îòìå÷åííîé çîíå. Â ïðîòèâíîì ñëó÷àå î÷êè íå çàñ÷èòàþòñÿ.Ïîêàæèòå, êòî çäåñü íàñòîÿùèé êîðîëü äðèôòà!
:?:.áîëãàðêà::Äëÿ òîãî, ÷òîáû ðàñïèëèòü áàãàæíèê íóæíî ïîäîéòè ê áàãàæíèêó G - Íåëåãàëüíîå äëÿ àâòî - Ðàñïèëèòü äâåðíîé çàìîê. Îòêðûâàåòñÿ áàãàæíèê è âû ìîæåòå âçÿòü ñ íåãî êàê êîðîáêè ñ ìàòåðèàëàìè, òàê è êîðîáêè ñî ñíàðÿæåíèåì. Âçëîìàòü ìîæíî íå òîëüêî ãîñ.ìàòîâîçêè, íî è êðàéì. Áîëãàðêîé íåëüçÿ âçëîìàòü ëè÷íûé òðàíñïîðò.
:?:.íåóâ::Íå óâèäåë íàðóøåíèé, åñëè ó âàñ åñòü âèäåîäîêàçàòåëüñòâà - îñòàâüòå æàëîáó íà ôîðóìå. 
:?:.ôîð::Äàííîå íàðóøåíèå íå ïîäëåæèò ðàññìîòðåíèþ ÷åðåç îáðàùåíèå, îñòàâüòå æàëîáó íà ôîðóìå.
:?:.ôîðóì::Â ñâÿçè ñ íàãðóçêîé íà ñåðâåð ìû íå ìîæåì ðàññìîòðåòü âàøó æàëîáó íà èãðîêà ïîñðåäñòâîì îáðàùåíèÿ, ïîæàëóéñòà, îñòàâüòå æàëîáó íà ôîðóìå. Ñïàñèáî çà ïîíèìàíèå.
:?:.ôæá::Íå ìîãó ðàññìîòðåòü èç-çà íàðóøåíèé ïðàâèë ïîäà÷è. Àâòîðó ðåïîðò-æàëîáû íåîáõîäèìî óêàçûâàòü â íàçâàíèè âèäåî: ñâîé static, static íàðóøèòåëÿ, âðåìÿ è äàòó. Èçìåíèòå íàçâàíèå è ïðîäóáëèðóéòå âàøó ðåïîðò-æàëîáó.
:?:.èñ÷::Âñå òðàíñïîðòíûå ñðåäñòâà èñ÷åçàþò ÷åðåç 60 ìèíóò, åñëè ñ íèìè íèêàê íå âçàèìîäåéñòâîâàòü.
:?:.ôàì::/c - IC ÷àò, /cb - OOC ÷àò. 
:?:.ôðàê::/f - IC ÷àò, /fb - OOC ÷àò. 
:?:.ìàðê::/mark ÏÎÕÈÙÅÍÈÅ!!!
:?:.ñïá::Åñëè îäíî îòäåëåíèå ÅÌÑ ñèëüíî çàãðóæåíî, ÷òîáû èçáåæàòü êðàøè âàñ ñïàâíèò â äðóãîì, ìåíåå çàãðóæåííîì îòäåëåíèè.
:?:.ïðîìî::Ïðîìîêîä ìîæíî ââåñòè äî 3 óðîâíÿ êîìàíäîé /promo "ïðîìîêîä", íàãðàäà çà íåãî áóäåò âûäàíà ïðè äîñòèæåíèè 3 óðîâíÿ. Ïðèãëàñèâøèé ïîëó÷àåò 7500$. Ïðèãëàøåííûé èãðîê ïîëó÷àåò: îò îáû÷íîãî èãðîêà - 10 000$ + 3 äíÿ Platinum VIP, îò ìåäèà - 20 000$ + 7 äíåé Platinum VIP 
:?:.ïåðåä::Âñå èìóùåñòâî âû ïåðåäàåòå íà ñâîé ñòðàõ è ðèñê.
:?:.îñê::Æàëîáû â ðåïîðò íà OOC îñêîðáëåíèå ïðèíèìàåì òîëüêî òîãäà, åñëè ñêðèíøîò ñäåëàí â òó æå ìèíóòó, ÷òî è ÎÎÑ îñêîðáëåíèå â ÷àòå + îáÿçàòåëüíî íà ñêðèíå äîëæíî áûòü ïðèñóòñòâèå íàðóøèâøåãî (âèäíî åãî èëè ñòàòèê)
:?:.ðóäà::Ðóäà ñ øàõòû òðåáóåòñÿ òîëüêî â ñåìåéíûõ êîíòðàêòàõ, ïðîäàòü åå íåëüçÿ.
:?:.çàê::Ýòî ðåãëàìåíòèðóåòñÿ IC çàêîíàìè, èçó÷èòü èõ ìîæåòå â ðàçäåëå Government íà ôîðóìå: Majestic RolePlay Server Las Vegas - Îðãàíèçàöèè - Ãîñóäàðñòâåííûå îðãàíèçàöèè - Government.
:?:.ïóçî::/asms  Âàì íóæíî èñïîëüçîâàòü àíèìàöèþ â F2 - Àíèìàöèè - ïîçû - Ëåæàòü íà æèâîòå. Ôóíêöèîíàëüíûå "ïîëçàòü" áîëåå íå ñ÷èòàþòñÿ çà èñïîëíåíèå ýòîãî òðåáîâàíèÿ.{left 151}
:?:.áàãðåï::Â ñëó÷àå íàõîæäåíèÿ áàãà îñòàâüòå ñâîé áàã-ðåïîðò â îôèöèàëüíîì äèñêîðäå ïðîåêòà: Òåêñòîâûå êàíàëû - ñîîáùèòü î áàãå.
:?:.ìåä::Çà äàííûì ìåäèà ïàðòíåðîì íàáëþäàåò PR àññèñòåíò, ïî ýòîé ïðè÷èíå ÿ íå ìîãó âûäàâàòü íàêàçàíèå, ò.ê. âñÿ îòâåòñòâåííîñòü çà ïðîèñõîäÿùåå íà ýòîé ñèòóàöèè àâòîìàòè÷åñêè ïåðåíîñèòñÿ íà PR àññèñòåíòà.
:?:.íèçê::Ó âàñ âêëþ÷åí ðåæèì íèçêîãî êà÷åñòâà â F2 - Íàñòðîéêè.
:?:.çêàéî::Íà îñòðîâå èìååòñÿ íåñêîëüêî òî÷åê çàõâàòà ìåäèöèíñêèõ, âîåííûõ, òåõíè÷åñêèõ ìàòåðèàëîâ. Äëÿ çàõâàòà Âàì íåîáõîäèìî âçÿòü ñ ñîáîé ìàÿ÷êè(Ïîäáåðèòå öâåòà), åñëè æå ó Âàñ ìàÿ÷êè çåë¸íîãî öâåòà Âû ñìîæåòå çàõâàòèòü âîåííûå ìàòåðèàëû, ñèíåãî Âàøåé öåëüþ ñòàíóò òåõíè÷åñêè ïðè íàëè÷èè êðàñíûõ Âàì îòêðîåòñÿ âîçìîæíîñòü çàõâàòèòü ìåäèöèíñêèå. Çàõâàò ìîæíî íà÷àòü â ðàäèóñå 50ì îò òî÷êè ïîãðóçêè, ïîñëå àêòèâàöèè ìàÿ÷êà ïîÿâèòñÿ îáîçðèìàÿ çîíà çàõâàòà, åñëè âûéòè çà çîíó çàõâàòà èëè âñå çàõâàò÷èêè óìðóò, ìàÿ÷îê óíè÷òîæàåòñÿ, òî÷êà ïåðåõîäèò â ñïîêîéíîå ñîñòîÿíèå êàê äî çàõâàòà. Íå ñòîèò çàáûâàòü è ïðî ñèãíàëèçàöèþ, åñëè Âû å¸ íå âûêëþ÷èòå âñå ãîññòðóêòóðû áóäóò â ìîìåíò îïîâåùåíû è Âàñ áóäåò æäàòü ñåðü¸çíîå ñîïðîòèâëåíèå(Ôóíêöèîíàëüíî íà çàõâàò ìàòåðèàëîâ ýòî íå ïîâëèÿåò). Ïîñëå çàõâàòà áëèï íà êàðòå êðàñèòñÿ â öâåò îðãàíèçàöèè çàõâàò÷èêîâ. Èãðîêè ñìîãóò çàáèðàòü ìàòåðèàëû ñ òî÷êè è ãðóçèòü èõ â ëè÷íóþ/àðåíäîâàííóþ ëîäêó - â ãîðîäå ïåðåãðóæàòü â ìàòîâîçêó.
:?:.ïåðèêî::Ó âñåõ ñèëîâûõ ôðàêöèé ïîÿâèëàñü ìåòêà äëÿ òåëåïîðòàöèè, ôðàêöèè EMS/WN/GOV ëèøåíû å¸. Îòäåëåíèå LSCSD â Ñýíäè-Øîðñ òîæå íå èìååò ìåòêè. Êàæäàÿ ôðàêöèè òåëåïîðòèðóåòñÿ â îäíó òî÷êó íà îñòðîâå, òàêèì ïóò¸ì è îáðàòíî. Îäíàêî Âû íå ñìîæåòå òåëåïîðòèðîâàòüñÿ ñ òî÷êè äðóãîé ôðàêöèè. Ïðèìåð: ß èç FIB è õî÷ó ñäåëàòü òåëåïîðò íà òåððèòîðèè LSCSD - Ó ìåíÿ íå âûéäåò. Íà îñòðîâå, âáëèçè îñîáíÿêà è íà åãî òåððèòîðèè, åñòü ìàøèíû, âåðòîë¸ò è êâàäðîöèêëû ñ íèìè ìîæåò âçàèìîäåéñòâîâàòü ëèøü SANG, âîçìîæíîñòü çàñïàâíèòü ñâî¸ ÒÑ òàêæå ñîõðàíåíà, äëÿ ýòîãî âîñïîëüçóéòåñü ìåòêîé. Òàêæå SANG ñòàë îáëàäàòåëåì åù¸ îäíîãî ñêëàäà íà Êàéî-Ïåðèêî, îí àíàëîãè÷åí Âàøåìó íà ôîðòå. Åñëè íà ôîðòå áóäåò çàïîëíåíî 20.000 òî è íà îñòðîâå òîæå.
:?:.ñèðåíà::Âûøêó ìîæíî âçëîìàòü, íå áóäåò îáíîâëÿòüñÿ ñòàòóñ êîíòðîëÿ òî÷åê(10 ìèíóò). Äëÿ âçëîìà íóæåí "Ïðîãðàììàòîð ÝÁÓ" è "Êàáåëü ðàäèî ñèãíàëîâ". Êàáåëü ìîæíî ïîëó÷èòü ïðè îãðàáëåíèè ìàãàçèíà 24/7, âûïàäàåò(Øàíñ ðåäêî-ñðåäíå), îí îäíîðàçîâûé è ïîñëå èñïîëüçîâàíèÿ îí ïðîïàäàåò. Âçëîì ïðîèñõîäèò â ìèíè-èãðå. Ïîñëå óäà÷íîãî âçëîìà, íà ìèíè êàðòå íå áóäåò îòîáðàæàòüñÿ ñòàòóñ çàõâàòà òî÷åê äëÿ SANG(10 ìèíóò). Ïîñëå íåóäà÷íîãî âçëîìà, ñðàçó ñðàáàòûâàåò ñèðåíà. SANG ìîãóò âîññòàíîâèòü ðàáîòó âûøêè íàæàâ "Å" íà ìåòêå âûøêè.
:?:.ìóñîðêè::Ôóíêöèîíàëüíûå ìóñîðêè ðàñïîëîæåíû ïî âñåìó øòàòó. Êîãäà ïîäõîäèòå ê íåé ïîÿâëÿåòñÿ ïîäñêàçêà î òîì, ÷òî ñ íåé ìîæíî âçàèìîäåéñòâîâàòü íàæàòèåì E. Ìåñòà ðàñïîëîæåíèÿ ìóñîðîê âû ìîæåòå óçíàòü íà èíòåðàêòèâíîé êàðòå - https://wiki.majestic-rp.ru/map/rubbish. 
:?:.ìåòàë::Äëÿ ïîèñêà êëàäîâ íóæíî èìåòü ìåòàëëîèñêàòåëü è ëîïàòó. Èõ ìîæíî êóïèòü íà ðûíêå. Ìåòàëëîèñêàòåëü ñòàíîâèòñÿ àêòèâíûì êàê òîëüêî Âû áåðåòå åãî â ðóêè. Êîãäà îí íàéäåò ñîêðîâèùà, òî áóäóò ïðîèñõîäèòü âèçóàëüíûå è çâóêîâûå îïîâåùåíèÿ. Îò çåëåíîãî öâåòà, äî êðàñíîãî. Ìåñòà ðàñïîëîæåíèÿ ñîêðîâèù âû ìîæåòå óçíàòü íà èíòåðàêòèâíîé êàðòå - https://wiki.majestic-rp.ru/map/treasure. 
:?:.ìàÿê::Ìàÿ÷êè ìîãóò âûïàñòü ñ "AirDrop" èëè æå ïðè îãðàáëåíèè 24/7. Øàíñû âûïàäåíèÿ ó âñåõ ìàÿ÷êîâ ðàçíûé.
:?:.çîî::Ñèñòåìà æèâîòíûõ. Ìîãóò ñïàâíèòüñÿ ðàçëè÷íûå æèâîòíûå, îò êðûñ äî îëåíåé ïî âñåé êàðòå. Íåêîòîðûå âèäû æèâîòíûõ ìîæíî ðàçäåëàòü è ïîëó÷èòü ìÿñî. Ìÿñî ìîæíî æàðèòü è óïîòðåáëÿòü â ïèùó. Äîìàøíèõ æèâîòíûõ êîòîðûå ãóëÿþò ïî êàðòå, ìîæíî ãëàäèòü.
:?:.ñêèí::Îðóæèå ïîÿâëÿåòñÿ â äîíàò èíâåíòàðå, åãî ìîæíî áóäåò ðàñïûëèòü. Îäíàêî ïðè åãî ïðèìåíåíèè íåâîçìîæíî äàëüíåéøåå ðàñïûëåíèå. ×òîáû ïðèìåíèòü ñêèí íà îðóæèå: F2 - Ìàãàçèí - Cêèíû - Âûáèðàåòå îðóæèå è ñêèí ê íåìó - Ïðèìåíèòü, ñêèí ïðèìåíÿåòñÿ êî âñåì îðóæèÿì âûáðàííîãî òèïà. Ñêèí ïðèâÿçûâàåòñÿ ê èãðîêó, âûáèòü îðóæèå ñî ñêèíîì/ñáðîñèòü/îáìåíÿòü/ïðîäàòü - íåâîçìîæíî.
:?:.èíò::Ïîïóëÿðíûå èíòåðüåðû íà êàðòå: "Îñîáíÿê ó âèíîãðàäíèêîâ" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí ëåâåå îò öåíòðà êàðòû. "Ñóä" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí íåïîäàë¸êó îò LSPD. Çà÷àñòóþ ïðèìåíÿåòñÿ âî âðåìÿ çàñåäàíèé Âåðõîâíîãî èëè æå îêðóæíîãî ñóäà. "Óíèâåðñèòåò" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí íåïîäàë¸êó îò ßïîíñêîé ìàôèè. "Ñòàðûé îôèñ FIB" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí íåïîäàë¸êó îò EMS.
:?:.âîò::Âûáîðû àêòèâíû ñ 10:00 - 10:00 ïî ìîñêîâñêîìó âðåìåíè. Ïðîãîëîñîâàòü ìîæåò êàæäûé îò 3-ãî óðîâíÿ èãðîâîãî ïåðñîíàæà, ïî ïðèíöûïó îäèí ãîëîñ íà îäèí àêêàóíò. ãîëîñîâàíèå ïðîõîäèò â ëåâîì êðûëå Ìýðèè(Íà êàðòå ôëàã USA).
:?:.îäâîðê:: Òåïåðü ïðè êàæäîì óñòðîéñòâå íà ðàáîòó Âû ïîëó÷àåòå ñîîòâåòñòâóþùèé êîìïëåêò îäåæäû. Îí ñíèìåòñÿ àâòîìàòè÷åñêè ïðè óâîëüíåíèè/ïðåêðàùåíèè ðàáîòû. Åñëè æå ó Âàñ ìåä êîìïëåêò òî Âàì íóæíî ïðîéòè êóðñ ëå÷åíèÿ.
:?:.êðàø::Åñëè ó Âàñ åñòü äîêàçàòåëüñòâà êðàøà - ïðåäîñòàâüòå èõ, ëèáî åñëè âû ïîìíèòå ñòàòè÷åñêèé ID òîãî, êòî âàñ çàäåðæèâàë ìîæåòå ñîîáùèòü åãî. ß âàñ âûïóùó è âåðíó â RP ïðîöåññ.
:?:.õîë::"Õîëîäíûé ñòàðò" - ïðè çàïóñêå ÒÑ èçäà¸ò õàðàêòåðíûé çâóê, äðóãèì ôóíêöèîíàëîì íå îáëàäàåò.
:?:.âàê::Îò âàêöèíû, âûäàííîé àäìèíèñòðàöèåé êâåñò íå áóäåò çàñ÷èòàí, îæèäàéòå ïîÿâëåíèÿ ëèäåðà â ÅÌÑ.
:?:.áèíä::Âû ìîæåòå íàñòðîèòü áèíä êëàâèø ïîä ñåáÿ â F2 - Íàñòðîéêè - Áèíä êëàâèø.
:?:.ôëàã::Êîìàíäíûé ðåæèì áîÿ â êîòîðîì Âû ñìîæåòå ïðîòèâîñòîÿòü ñâîèì îïïîíåíòàì â ðàâíûõ óñëîâèÿõ. Â ýòîì ðåæèìå Âû ìîæåòå ïîäíèìàòü îðóæèå íà "F"(Ïî äåôîëòó), à òàêæå êóïèòü ñåáå îðóæèå íà çàðàáîòàííûå âî âðåìÿ ìàò÷à äåíüãè, äëÿ ýòîãî íàæìèòå "B". Ìàò÷ çàêîí÷èòüñÿ êàê òîëüêî îäíà èç êîìàíä ïîòåðÿåò âñå î÷êè, ñêîðîñòü èõ ïîòåðè/íàêîïëåíèÿ çàâèñèò îò êîë-âà çàõâà÷åííûõ, Âàøåé êîìàíäîé, òî÷åê.
:?:.ëîááè::Ýòî Âàøà èãðà ñîçäàííàÿ Âàìè äëÿ äðóçåé èëè æå îáû÷íûõ èãðîêîâ, âñå ïðàâèëà íàñòðàèâàåòå èìåííî Âû. Äëÿ òîãî ÷òî áû íà÷àòü íóæíî: Äàòü íàçâàíèå ñâîåìó ëîááè(Ãðàôà "Íàçâàíèå ëîááè"), âûáðàòü îäèí èç òð¸õ äîñòóïíûõ ðåæèìîâ(Ãîíêà âîîðóæåíèé/Áîé íà ñìåðòü/Çàõâàò ôëàãà), âûáðàòü îäíó èç êàðò. Äàëåå Âû ñìîæåòå óñòàíîâèòü ïàðîëü, åñëè æå íå õîòèòå âèäåòü ëèøíèõ èãðîêîâ â ñâîåé èãðå. Ïîñëå âñåõ ïåðâè÷íûõ íàñòðîåê Âàì îòêðîþòñÿ äîïîëíèòåëüíûå: Òðåáîâàíèå äëÿ ïîáåäû, îðóæèå, âðåìÿ ñóòîê, îäåæäà(Åñëè âûáðàòü "Íåò" èãðîê âðåìåííî ñìåíèò îäåæäó â ìàò÷å), ïîãîäíûå óñëîâèÿ, àâòî-áàëàíñ êîìàíä(Â ñëó÷àå çàõâàòà ôëàãà) è äð. Òîëüêî ïîìíèòå çà ñîçäàíèå ëîááè íóæíî áóäåò çàïëàòèòü îò 1.250$ äî 2.800$.
:?:.äðçîíà::Äðèôò çîíà îòìå÷åíà íà êàðòå êàê èêîíêà ïàäàþùåé êîìåòû, ïðèìåð - îäíà èç çîí îêîëî LS Vagos.
:?:.çàæ::×òîáû âçëîìàòü çàæèãàíèå ñÿäüòå çà ðóëü ò.ñ., íàæìèòå G - Âçëîìàòü çàæèãàíèå. ÊÄ íà âçëîì - 1 ÷àñ.
:?:.ñòðèì::Ðåæèì ñòðèìåðà çàìåíÿåò ñèìâîëû íà çâåçäî÷êè, äëÿ îáû÷íûõ èãðîêîâ îí áåñïîëåçåí. Âûêëþ÷àåòñÿ â F2 - Íàñòðîéêè.
:?:.ïàð::Ïîëîæèòå ïàðàøþò â áûñòðûé ñëîò, çàòåì â ïîëåòå íàæìèòå íà 1, 2 èëè 3 (çàâèñèò îò ñëîòà), ïîñëå ýòîãî ËÊÌ, ïàðàøþò îòêðîåòñÿ.
:?:.âîä::Àäìèíèñòðàöèÿ íå äîñòàåò àâòîìîáèëè èç âîäû, à ëèøü óäàëÿåò, ÷òîáû âû ìîãëè åå çàñïàâíèòü. Âàì íåîáõîäèìî ñàìîñòîÿòåëüíî äîáðàòüñÿ äî àâòîñåðâèñà/àðåíäû ò.ñ èëè äî íóæíîãî âàì ìåñòà, íàïðèìåð, âû ìîæåòå âûçâàòü òàêñè.
:?:.áåíç::Àäìèíèñòðàöèÿ íå çàïðàâÿëåò ò.ñ. èãðîêîâ. Âû ìîæåòå âûçâàòü òàêñè è äîáðàòüñÿ äî íóæíîãî âàì ìåñòà èëè ïðèîáðåñòè êàíèñòðó, ÷òîáû â äàëüíåéøåì äîåõàòü äî ÀÇÑ.
:?:.óäàë::Àäìèíèñòðàöèÿ íå óäàëÿåò ò.ñ. èãðîêîâ. Èñêëþ÷åíèå: ò.ñ. óòîíóëî è íå èñ÷åçëî.
:?:.äèíâ::F2 - Ìàãàçèí - Ïðåäìåòû.
:?:.ïðåä::/asms Âûêëþ÷èòå ìóçûêó, âû â çåëåíîé çîíå.{left 37}
:?:.êâ::Òåêóùèé êâåñò îòîáðàæàåòñÿ íàä òàéìåðîâ Majestic Coins, åñëè åãî íåò - íàæìèòå F6.
:?:.êìá::×òîáû óñòðîèòüñÿ â ñèëîâóþ ãîñ. ñòðóêòóðó íåîáõîäèìî ïîëó÷èòü âîåííûé áèëåò. Äëÿ ýòîãî íàäî óñòðîèòüñÿ â SANG è ïðîéòè ÊÌÁ. Èêîíêà çåëåíîãî ñàìîëåòà íà êàðòå. Ïîäðîáíåå óòî÷íèòå ó ñòàðøåãî ñîñòàâà ôðàêöèè.
:?:.íàðê::Ïàêåòèêè Blue è White íèêàê íå ïîëó÷èòü, ôóíêöèîíàë êàê ó Green, òîëüêî ðàçíûå ýôôåêòû.
:?:.àëèñ::×òîáû âûêëþ÷èòü GPS àññèñòåíòà íàæìèòå F2 - Íàñòðîéêè è âûêëþ÷èòå GPS Àññèñòåíò.
:?:.âåðò::Âåðîòîëåòû ïðîäàþòñÿ â ñàëîíå íåäàëåêî îò àýðîïîðòà.
:?:.ïîõîä::Èçìåíèòü ïîõîäó è ýìîöèè ëèöà ìîæíî â  F2 - Íàñòðîéêè - Ãëàâíîå.
:?:.áàãàæ::×òîáû âûëåçòè èç áàãàæíèêà íàæìèòå íà "E".
:?:.íàë::×òîáû îïëàòèòü íàëîãè íà äîì íåîáõîäèìî îòêðûòü ïðèëîæåíèå "Ìîé äîì" â ïëàíøåòå.

:?:.íèí::Íîâàÿ ñèñòåìà èíâåíòàðÿ, áûë èçìåíåí äèçàéí, ïðåäìåòû ìîæíî âðàùàòü íàæàòèåì íà ïðîáåë, åñëè äâàæäû íàæàòü ïî ïðåäìåòû îí èñïîëüçóåòñÿ (áåðåòñÿ â àêòèâíûé ñëîò èëè íàäåâàåòñÿ).
:?:.ðîç::Äîáàâëåíà ñèñòåìà ïðåñëåäîâàíèÿ. Äëÿ òîãî ÷òîáû íà÷àòü ïðåñëåäîâàíèå íóæíî âûäàòü ðîçûñê -  çàéòè â Ïëàíøåò - Ôðàêöèÿ - Áàçà äàííûõ - Íà÷àòü ïðåñëåäîâàíèå, íà êàðòå ïîÿâëÿåòñÿ ìåòêà ìåñòîïîëîæåíèÿ èãðîêà, îáíîâëÿåòñÿ ðàç â 30 ñåêóíä, åñëè èãðîê êîòîðîãî ïðåñëåäóþò çàõîäèò â äðóãîé äèìåíøåí/èíòåðüåð/âûéäåò èç èãðû - ïðîïàäàåò ñ ðàäàðîâ. Åñëè ãîñ. èãðîê ïðèåçæàåò íà ìåòêó/ïîäõîäèò ê èãðîêó - ïðåñëåäîâàíèå çàêàí÷èâàåòñÿ.
:?:.àð::Ïîñëå îêîí÷àíèÿ ñðîêà àðåíäà àâòî ãëóøèòñÿ è ïîÿâëÿåòñÿ äèàëîãîâîå ìåíþ, ãäå ìîæíî ïðîäëèòü àðåíäó. 
:?:.êîìò::Ðàáî÷èé òðàíñïîðò ìîæíî ñïàâíèòü òîëüêî íà ñïåöèàëüíî àâòîñåðâèñå äëÿ êîììåð÷åñêîãî òðàíñïîðòà. 
:?:.ãð::Ëèäåð ãðóïïû ìîæåò äàâàòü êîä, ÷òîáû ìàññîâî äîáàâèòü ëþäåé â ãðóïïó, èãðîêè â ðàäèóñå 30 ìåòðîâ ñìîãóò çàéòè. Ëèäåð è ïîìîùíèêè ìîãóò ñòàâèòü óêàçûâàþùèå ìåòêè, íàñòðàèâàåòñÿ â F2 - Íàñòðîéêè - Áèíäû. Ëèäåð ìîæåò ïåðåäàòü ñâîé ñòàòóñ äðóãîìó èãðîêó.
:?:.òåã::Âîçìîæíîñòü òåãàòü ëþäåé â ÷àòå äëÿ óäîáíîãî ÐÏ ïðîöåññà, äëÿ èñïîëüçîâàíèÿ íàïèøèòå @Äèíàìèê. Åñëè èãðîêà òåãíóòü ó íåãî ïîÿâèòñÿ óâåäîìëåíèå îá ýòîì, òåãàþòñÿ òîëüêî áëèæàéøèå èãðîêè.
:?:.â÷àò::Ñèñòåìà âèçóàëèçàöèè ÷àòà íàä èãðîêîì - íàä èãðîêîì áóäóò äóáëèðîâàòüñÿ âñå ñîîáùåíèÿ èç ÷àòà. Â íàñòðîéêàõ - Äîïîëíèòåëüíî, ìîæíî âêëþ÷èòü.
:?:.ìàðêåò::Ìàðêåòïëåéñ èñïîëüçóåòñÿ äëÿ ðàçìåùåíèÿ ðàçëè÷íûõ òîâàðîâ íà ïðîäàæó, òàêèõ êàê: òðàíñïîðò, æèëàÿ íåäâèæèìîñòü, áèçíåñ, áàíêîìàòû, áèëáîðäû. Êàæäàÿ êàðòî÷êà ñ îáúÿâëåíèåì ôèêñèðóåò êîëè÷åñòâî ïðîñìîòðîâ êàðòî÷êè è êîëè÷åñòâî ëàéêîâ (òåõ êòî äîáàâèë îáúÿâëåíèå â èçáðàííîå). Íàæàâ êíîïêó «Íà÷àòü ñäåëêó» íàì îòêðîåòñÿ ìîäàëüíîå îêíî, â êîòîðîì áóäåò äóáëèðîâàòüñÿ åùå ðàç âñÿ íåîáõîäèìàÿ èíôîðìàöèÿ, ñóììà ê îïëàòå è êíîïêà ñîâåðøèòü ïîêóïêó.  Ãðàôèê êîòîðûé èìååòñÿ îòîáðàæàåò äèíàìèêó öåí è èìååò âîçìîæíîñòü âçàèìîäåéñòâèÿ. Ïîñëå ïîêóïêè ïðåäìåòû îòïðàâÿòñÿ â «Ñêëàä õðàíåíèÿ». Çà ðàçìåùåíèå ëþáîãî îáúÿâëåíèÿ âçûìàåòñÿ ïëàòà â 1.000$ çà ÷àñ (îò 5ê). Âîçìîæíîñòü ïîêóïàòü ëîò êàê çà íàëè÷êó, òàê è ÷åðåç êàðòó. Àäìèíèñòðàòîð ìîæåò óäàëèòü êàðòî÷êó èãðîêà. Èãðîê ìîæåò ïîæàëîâàòüñÿ íà îáúÿâëåíèå, ñîîáùåíèå ïîïàä¸ò â îáðàùåíèå.
:?:.ìàðêï::Ðàçäåë òîðãîâîé ïëîùàäêè. Ýòî ôîðìàò áèðæè, íà êîòîðîé òîðãóþòñÿ èñêëþ÷èòåëüíî ïðåäìåòû èíâåíòàðÿ. Ïðåäìåòû âûñòàâëÿþòñÿ áåñïëàòíî, íî óäàëåíèå ñòîèò 1.000$. Åñòü âîçìîæíîñòü ïðîäëåíèÿ îáúÿâëåíèÿ.  Íà òîðãîâóþ ïëîùàäêó ìîæíî âûñòàâèòü ïðåäìåòû òîëüêî èç "Ñêëàäà õðàíåíèÿ".  Âîçìîæíîñòü ïîêóïàòü ëîò êàê çà íàëè÷êó, òàê è ÷åðåç êàðòó. Â êàðòî÷êå èìååòñÿ èíôîðìàöèÿ î íàçâàíèè ïðåäìåòà, ìèíèìàëüíîé ñòîèìîñòè îáíîâëÿåìîé â ðåæèìå ðåàëüíîãî âðåìåíè è îáùåå êîëè÷åñòâî ïðîäàâàåìûõ ïðåäìåòîâ íà áèðæå. Èìååòñÿ ãðàôèê «Ìåäèàíà öåí», êîòîðûé âèçóàëèçèðóåò, êàê ìåíÿëàñü öåíà çà ðàçëè÷íûå ïåðèîäû âðåìåíè. 
:?:.ñõð::Ñêëàä õðàíåíèÿ ýòî ìåñòî, â êîòîðîå ïîïàäàþò ïðåäìåòû, êîòîðûå áûëè êóïëåíû èëè ïðåäìåòû, êîòîðûå áûëè çàíåñåíû ñþäà èãðîêîì, ñ öåëüþ èõ ïðîäàæè íà ìàðêåò ïëåéñå. Íà ñêëàä ìîæíî âûãðóçèòü ïðåäìåòû èç èíâåíòàðÿ èëè èç áàãàæíèêà. Ñêëàä õðàíåíèÿ íàõîäèòñÿ ñáîêó çäàíèÿ àóêöèîíà. Ñêëàä íå îãðàíè÷åí ïî õðàíåíèþ ïðåäìåòîâ Ïðåäìåòû ìîãóò íàõîäèòñÿ íà ñêëàäå 30 ìèíóò, ïîñëå èñòå÷åíèÿ ýòîãî âðåìåíè îíè èäóò íà àóêöèîí. Èìååòñÿ âîçìîæíîñòü äîáàâèòü êàðòî÷êó â èçáðàííîå. Ïîñëå ïîêóïêè èìóùåñòâî/ïðåäìåòû ìîãóò õðàíèòñÿ íà ñêëàäå 2 äíÿ. Ïðè âõîäå â çîíó ìàðêåòïëåéñà ïîäñâå÷èâàåòñÿ ñêëàä è ïîÿâëÿåòñÿ ìåòêà íà êàðòå.

:?:.êóð::Ïåðåäàì êóðàòîðàì.
:?:.ïåð::Ïåðåäàì.
:?:.àê::Âèæó íåàêòóàëüíî. Ïðèÿòíîé èãðû è âñåãî íàèëó÷øåãî.
:?:.íåîô::Íå îôôòîïüòå â îáðàùåíèÿ.
:?:.íåïð::Íå ïðåäîñòàâëÿåì ïîäîáíóþ èíôîðìàöèþ.

:?:.äìê::Äåôèáðèëëÿòîð ÌÊ2 íèêàêîãî ôóíêöèîíàëà íå äà¸ò, îí àíàëîãè÷åí îáû÷íîìó äåôèáðèëëÿòîðó.
:?:.àäð::Àäðåíàëèí ïîäíèìàåò èãðîêà â 2 ðàçà áûñòðåå, ÷åì ýïèíåôðèí.
:?:.íàãð::Âñå àâòîìîáèëè è îäåæäà èç ïðîïóñê ÿâëÿþòñÿ ýêñêëþçèâîì, èõ íåëüçÿ ïåðåäàâàòü äðóãèì èãðîêàì.
:?:.æàï::Ïðåäìåò "Àïòå÷êà æ¸ëòàÿ" - âîññòàíàâëèâàåò 75 õï.
:?:.îáâ::Îáâåñû èìåþòñÿ â ïðèçàõ. Ïåðâàÿ óñòàíîâêà áåñïëàòíàÿ. Îáâåñû ìîæíî áóäåò ñíÿòü/ïîñòàâèòü îòäåëüíî. Îáâåñ çàêðåïëÿåòñÿ çà ìàøèíîé. 
:?:.êóï::Êóïîíû äåéñòâóþò íà âñå àâòî èç Majestic Motors.
:?:.ñëó÷::Â íàãðàäàõ èìåþòñÿ "Ñëó÷àéíûå íàáîðû". Ïðè âçÿòèè ïðèçà ó èãðîêà áóäåò âûáîð â îòêðûòèè îäíîé òð¸õ êàðò ñ ðàçíûì ñîäåðæèìûì. 
:?:.îîñ::ÎÎÑ çîíó âû ìîæåòå âêëþ÷èòü íà F2-Íàñòðîéêè-Áèíä. Íàçíà÷àåòå êëàâèøó, è ïðè íàæàòèè íà ýòó êëàâèøó, åñëè èãðîê ïåðåä âàìè âûøåë èç èãðû, ó âàñ áóäåò èíôîðìàöèÿ î äàòå è âðåìåíè âûõîäà ýòîãî èãðîêà èç èãðû.
:?:.êâð::Ó áîòà íà ðàáîòå áóäåò êíîïêà "ß ìîãó ÷åì-òî ïîìî÷ü". Âû íà íå¸ æì¸òå è ó âàñ îòêðîåòñÿ êâåñò, êîòîðûé âûïîëíèòü íóæíî (íà Ô6 ìîæíî ïîñìîòðåòü). Âûïîëíÿåòå ýòîò êâåñò è Âàì çàñ÷èòûâàåò çàäàíèå.
:?:.âáï::Áðîíçîâûé ïðîïóñê îòêðûâàåò äîñòóï ê ïðåìèóì íàãðàäàì äî 35 óðîâíÿ, ñåðåáðÿííûé äî 75 óðîâíÿ, çîëîòîé äî 110 óðîâíÿ, ïëàòèíîâûé äî 150 óðîâíÿ. Îïûò äàåò òîëüêî êîðîëåâñêèé ñòàðò.

:?:/pfrh::/asms  Çàêðîéòå îáðàùåíèå è îòêðîéòå ñíîâà, ïîæàëóéñòà. {left 51}
:?:/dbp::Âèçóàëüíûé áàã, ïåðåçàéäèòå íà ñåðâåð.
:?:/vtnfk::Ìåòàëëîèñêàòåëü ñòàíîâèòñÿ àêòèâíûì êàê òîëüêî Âû áåðåòå åãî â ðóêè. Êîãäà îí íàéäåò ñîêðîâèùà, òî áóäóò ïðîèñõîäèòü âèçóàëüíûå è çâóêîâûå îïîâåùåíèÿ. Îò çåëåíîãî öâåòà, äî êðàñíîãî. Ìåñòà ðàñïîëîæåíèÿ ñîêðîâèù: ïëÿæè è àðõèïåëàãè.
:?:/,fudjqc::Íàæìèòå F2 - Íàñòðîéêè - áëîêèðîâêà âîéñà - çàáëîêèðóéòå äëÿ âñåõ è ñíîâà ðàçáëîêèðóéòå. Â ñëó÷àå, åñëè ïðîáëåìà îñòàëàñü, òî ïåðåçàéäèòå â èãðó.
:?:/hs,fkrf::Äëÿ òîãî ÷òîáû ðûáà÷èòü, Âàì  íóæíà óäî÷êà è íàæèâêà - ïîêóïàåòñÿ â ëþáîì ìàãèçèíå 24/7. Ïîäõîäèòå ê çîíå ðûáàëêè ñâîåãî óðîâíÿ è íàæèìàåòå êëàâèøó Å. Æä¸òå êë¸âà, êàê ïîÿâèòñÿ ðûáà, îíà áóäåò âèëÿòü â ñòîðîíû âëåâî-âïðàâî. Âàì íóæíî çàæèìàòü êëàâèøè A/D ïðîòèâîïîëîæíîé ñòîðîíû ðûáû. Ïîñëå òîãî êàê ðûáà óòîìèëàñü, Âû å¸ ïîäñåêàåòå ëåâîé êíîïêîé ìûøè. 
:?:/cnfdrf::Ðàñ÷¸ò ñòàâêè ïðîèñõîäèò â òå÷åíèå 6-òè ÷àñîâ. Àäìèíèñòðàöèÿ íå óïðàâëÿåò ðàññ÷åòîì.
:?:/cxtn::×òîáû óçíàòü íîìåð ñ÷åòà îòêðîéòå èíâåíòàðü è íàâåäèòåñü ìûøêîé íà áàíêîâñêóþ êàðòó.
:?:/gby::×òîáû âîññòàíîâèòü ïèí-êîä îòïðàâëÿéòåñü â áàíêîâñêîå îòäåëåíèå, â ìåíþ ñìåíû íàæìèòå "Âîññòàíîâèòü".
:?:/rkdk::Ïðè äîñòèæåíèè 5-ãî óðîâíÿ: 500 MC Ïðè äîñòèæåíèè 10-ãî óðîâíÿ: 1000 MC Ïðè äîñòèæåíèè 15-ãî óðîâíÿ: 2000 MC Ïðè äîñòèæåíèè 20-ãî óðîâíÿ: 3000 MC Ïðè äîñòèæåíèè 25-ãî óðîâíÿ: 4000 MC Ïðè äîñòèæåíèè 30-ãî óðîâíÿ: 5000 MC. Êàæäûé ñëåäóþùèé óðîâåíü ïîñëå 30-ãî Âû áóäåòå ïîëó÷àòü 1500 MC. 
:?:/rdtcn::Íà ñåðâåðå äîñòóïíû Ìèðîâûå è Ëè÷íûå êâåñòû. Îçíàêîìèòüñÿ ñ íèìè ìîæíî íà ðûíêå (Íà êàðòå îáîçíà÷åí êàê "Êðàñíûé âîïðîñ"). Êâåñòû äîñòóïíû âñåì. Ëè÷íûå êâåñòû âû ìîæåòå ïðîõîäèòü íåîïðåäåëåííûé ñðîê, íî, åñëè Âû çàõîòèòå ó÷àñòâîâàòü â Ìèðîâîì êâåñòå è ïîëó÷èòü äîïîëíèòåëüíûå áîíóñû, òî Âàì íóæíî ïîòîðîïèòüñÿ âûïîëíèòü ëè÷íûé êâåñò. Òîëüêî 5 ëó÷øèõ èãðîêîâ ñìîãóò ïîïàñòü â òîï 3 è çàëóòàòü äîïîëíèòåëüíûå áîíóñû. - Êàæäóþ íåäåëþ äîñòóïíî ïî 3 ëè÷íûõ è ìèðîâûõ êâåñòà. - Íåêîòîðûå êâåñòû ïî òèïó èíêàñàòîðà/ìóñîðùèêà/ïî÷òàëüîíà ìîæíî âûïîëíÿòü â 2-åì è áîëåå, çàñ÷èòûâàòü áóäåì âñåì.
:?:/atl::Íà ïåðâîì ýòàæå ñòîèò NPC ó êîòîðîãî ìîæíî âçÿòü çàäàíèå. ×òîáû îòáûòü ñðîê â ôåäåðàëüíîé òþðüìå, íóæíî âûïîëíÿòü çàäà÷è. Íàïðèìåð ïîìûòü òóàëåò - Â îïðåäåëåííîå âðåìÿ òþðüìà çàêðûâàåò êëåòêè íà 5 ìèíóò, ñîîòâåòñòâåííî, â ýòî âðåìÿ îòáûòü ñðîê íåëüçÿ: -- Îòêðûâàþòñÿ êëåòêè â 00 ìèíóò -- Çàêðûâàþòñÿ êëåòêè â 20 ìèíóò íà 5 ìèíóò -- Îòêðûâàþòñÿ êëåòêè â 25 ìèíóò -- Çàêðûâàþòñÿ êëåòêè â 55 ìèíóò íà 5 ìèíóò.
:?:/ctqf::Çàêðûâàòü èíòåðôåéñ ñåéôà ìîæíî òîëüêî íà ESC. Â ñåéô ìîæíî êëàñòü äî 5 ìèëëèîíîâ. Äåíüãè èäóò èç íàëè÷êè. Íåëüçÿ ïðîäàòü äîìà â ãîñ, ïðîäàòü èãðîêó, ïðåäëîæèòü îáìåí, âûñòàâèòü íà àóêöèîí, åñëè â ñåéôå åñòü äåíüãè. Ñíà÷àëà òðåáóåòñÿ èõ çàáðàòü. Åñëè äîì ñëåòàåò ïî íàëîãàì - äåíüãè èç ñåéôà èãðîê ïîëó÷àåò â íàëè÷êó. 
:?:/ktcjhe,::Óñòðàèâàòüñÿ íåîáõîäèìî âñå ó òîãî æå NPC îêîëî Ïàëåòî-Áåé. Äëÿ íà÷àëà ðàáîòû Âàì ïîíàäîáèòüñÿ Òîïîð, êóïèòü åãî ìîæíî ó NPC íà Ðûíêå. Ïðèíöèï ðàáîòû ñõîæèé ñ Ãðèáíèêàìè, òî÷êè äëÿ ñðóáà äåðåâüåâ ðàçáðîñàíû ïî âñåé êàðòå, êàæäûé óðîâåíü ïðèâÿçàí ê ñâîé òî÷êå ñáîðà. Äðåâåñèíó ìîæíî ïðîäàòü íà ðûíêå. 
:?:/hfwbz::Ïðèîáðåñòè ðàöèþ ìîæíî â ëþáîì ìàãàçèíå 24/7, â ðàçäåëå Ýëåêòðîíèêà, çà âñåìè ôðàêöèÿìè çàêðåïëåí äèàïàçîí ÷àñòîò, êîòîðûé íå ìîãóò çàíÿòü. Â F2 -> Íàñòðîéêè ìîæíî èçìåíèòü Ãðîìêîñòè ðàöèè.
:?:/hfw::Åñëè êíîïêà âîéñà áûëà íå íà "N", òî ïîñòàâüòå å¸ íà N è ïåðåçàéäèòå, ïîñëå ÷åãî ðàöèÿ çàðàáîòàåò. Êíîïêó ìîæíî âåðíóòü íà ñâîþ. Äëÿ èñïîëüçâàíèÿ: Âîçüìèòå ðàöèþ > Ââåäèòå ÷èñòîòó >Íàæìèòå åíòåð >Çàæìèòå "M" è áóäåò ñëûøíî.
:?:/nfqv::Ýòî âèçóàëüíûé áàã òàéìåðà, ÷àñû èäóò è êîèíû âàì íà÷èñëÿò ïî èñòå÷åíèþ âðåìåíè. 
:?:/cbl::Óêàæèòå static ID íàðóøèòåëÿ.
:?:/gen::Âñþ èíôîðìàöèþ (êîìàíäû/î ôðàêöèÿõ, ðàáîòàõ è òàê äàëåå) ìîæíî óçíàòü íà ôîðóìå majestic-rp.ru - ðàçäåë "Ïóòåâîäèòåëü äëÿ íîâè÷êîâ".
:?:/edfk::Ê ñîæàëåíèþ, íè÷åì íå ìîæåì ïîìî÷ü, óâîëüíÿåì òîëüêî â ñëó÷àå, åñëè ó ôðàêöèè íåò ëèäåðà. Äîæäèòåñü ñâîåãî ëèäåðà/çàìåñòèòåëåé.
:?:/vfqrb::Äëÿ òîãî, ÷òîáû êóïèòü ìàéêó ïîä âåðõíþþ îäåæäó, âàì íóæíî ñíà÷àëà êóïèòü ýëåìåíò âåðõíåé îäåæäû (íàïðèìåð, ïèäæàê). Ïîñëå ýòîãî âàì áóäó äîñòóïíû âñå ìàéêè, êîòîðûå ïîäõîäÿò ïîä íåå â ðàçäåëå "Ìàéêè".
:?:/cke[::Ôóíêöèÿ "ß íå ñëûøó" ïðåäíàçíà÷åíà äëÿ ëþäåé ñ ïëîõèì ñëóõîì èëè åãî îòñóòñòâèåì. Çëîóïîòðåáëåíèå ýòîé ôóíêöèåé êàðàåòñÿ áàíîì Âàøåãî ïåðñîíàæà. Îòêëþ÷èòü åå ìîæíî â ìåíþ F2 - Íàñòðîéêè. Ñïàñèáî çà ïîíèìàíèå.
:?:/,fu::Çíàåì î äàííîé ïðîáëåìå, îíà óæå ïåðåäàíà ðàçðàáîò÷èêàì. Ïðèíîñèì ñâîè èçâèíåíèÿ çà ïðåäîñòàâëåííûå íåóäîáñòâà. 
:?:/xfn::Íà ñåðâåðå åñòü ñëåäóþùèå êîìàíäû äëÿ ÷àòà: /pagesize - óâåëè÷èòü / óìåíüøèòü ðàçìåð ÷àòà; /fontsize - óâåëè÷èòü / óìåíüøèòü ðàçìåð øðèôòà; /chatalpha - ïðîçðà÷íîñòü ÷àòà, /timestamp - âðåìÿ îêîëî êàæäîãî ñîîáùåíèÿ.
:?:/htk::Ïîëíîñòþ ïåðåçàéäèòå íà ñåðâåð ÷åðåç F1 - Êðåñòèê â ïðàâîì âåðõíåì óãëó ýêðàíà.
:?:/ytj,k::Íå îáëàäàåì äàííîé èíôîðìàöèåé.
:?:/hg::Èçâèíèòå, íî ýòî ÐÏ ïðîöåññ, ìû íå âïðàâå âìåøèâàòüñÿ â íåãî.
:?:/ehg::Äàííóþ èíôîðìàöèþ âû ìîæåòå ïîëó÷èòü ïðè âçàèìîäåéñòâèè ñ äðóãèìè èãðîêàìè/ñàìîñòîÿòåëüíûì ïîèñêîì íåïîñðåäñòâåííî âî âðåìÿ èãðîâîãî ïðîöåññà, ëèáî äðóãèì äîñòóïíûì IC ïóòåì. 
:?:/djqc::×òîáû ïåðåçàãðóçèòü âîéñ, ïîïðîáóéòå íàæàòü F7. Åñëè íè÷åãî íå ïîìîãàåò - ïåðåçàéäèòå â èãðó.
:?:/nt[::Íàïèøèòå â òåõíè÷åñêèé ðàçäåë íà ôîðóìå.
:?:/nt[lc::Íàïèøèòå â òåõíè÷åñêèé ðàçäåë îôèöèàëüíîãî äèñêîðä ñåðâåðà "Ïîìîùü ïî èãðå" - "òåõ-ïîääåðæêà".
:?:/aeyr::Äàííûé ôóíêöèîíàë âðåìåííî íåäîñòóïåí, ïðèíîñèì ñâîè èçâèíåíèÿ.
:?:.ôóí::Äàííûé ôóíêöèîíàë îòñóòñòâóåò íà íàøåì ïðîåêòå. Îñòàâüòå ñâîå ïðåäëîæåíèå ïî äîáàâëåíèþ íà ôîðóìå â ñïåöèàëüíîì ðàçäåëå: Ïðåäëîæåíèå ïî óëó÷øåíèþ ñåðâåðà - "Íàïèøèòå âàøå ïðåäëîæåíèå òóò".
:?:/bpd::Ïðèíîñèì ñâîè èçâèíåíèÿ çà ïðåäîñòàâëåííûå íåóäîáñòâà.
:?:/hs,f::Âàì íóæíî íàæàòü F3 > Ðàçíîå > Ïðîäàæà ðûáû.
:?:/t[g::Êàæäûé ÷àñ (ó êàæäîãî èãðîêà ñâî¸ âðåìÿ) Âàì äàåòñÿ EÕP. ×òîáû óçíàòü, ñêîëüêî Âàì îñòàëîñü äî ñëåäóþùåãî PayDay, íàæìèòå êëàâèøó F2-Ñòàòèñòèêà.
:?:/fdnj::×òîáû ýâàêóèðîâàòü Âàøå àâòî âîñïîëüçóéòåñü ìàðêåðîì Ñåðâèñà (Ãàå÷íûé êëþ÷ íà êàðòå). 
:?:/pg::×òîáû íà÷èñëÿëñÿ PayDay Âàì íóæíî èìåòü ñâîþ áàíêîâñêóþ êàðòó è áûòü óâîëåíûì ñî âñåõ ðàáîò. Îôîðìèòü å¸ ìîæíî â ëþáîì áàíêå.
:?:/ufykbw::Ïîëó÷èòü ëèöåíçèþ íà îðóæèå ìîæíî â LSPD èëè LSCSD. 
:?:/hs,::Âàì íàäî ëîâèòü ðûáó â çîíå, êîòîðàÿ ñîîòâåòñòâóåò âàøåìó óðîâíþ. 1 óðîâåíü - Çîíû: 1, 2, 3, 4. Ðûáà: Ôîðåëü. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 196. 2 óðîâåíü - Çîíû: 5,6. Ðûáà: Êàìáàëà. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 588. 3 óðîâåíü - Çîíà 7,8. Ðûáà: Òóíåö.  Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 1 225. 4 óðîâåíü - Çîíà 9,10. Ðûáà: Êðàñíûé ñîëäàò. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 2 205. 5 óðîâåíü - Çîíà 11. Ðûáà: Êàðàñü. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 3 920. 6 óðîâåíü - Çîíà 12. Ðûáà: Îðàíæåâûé êàðï. Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 6 125. 7 óðîâåíü - Çîíà 13. Ðûáà: Àêâàìàðèí.  Êîëè÷åñòâî îïûòà äëÿ ïîâûøåíèÿ: 8 820. 8 óðîâåíü - Çîíà 14. Ðûáà: Çîëîòàÿ ðûáêà.
:?:/rfybcnhf::×òîáû èñïîëüçîâàòü êàíèñòðó, âîçüìèòå å¸ â ðóêè, íàæìèòå G íà àâòî è çàïðàâèòü. 
:?:/tvc::Ê ñîæàëåíèþ, àäìèíèñòðàöèÿ íå ïîäíèìàåò è íå ëå÷èò èãðîêîâ, âîñïîëüçóéòåñü óñëóãàìè ÅÌÑ.
:?:/gjlybv::Ê ñîæàëåíèþ, íå âèäÿ âñåé ñèòóàöèè ìû íå â ïðàâå ëå÷èòü,ïîäíèìàòü èëè äîáèâàòü èãðîêîâ. Äîæäèòåñü ñîòðóäíèêîâ EMS ëèáî æå îêîí÷àíèÿ òàéìåðà ñìåðòè. Ïðèíîñèì ñâîè èçâèíåíèÿ çà âîçìîæíûå íåóäîáñòâà. 
:?:/fyfr::Îáðàòèòåñü, ïîæàëóéñòà, â äèñêîðä ê àäìèíèñòðàòîðó, êîòîðûé âûäàë âàì íàêàçàíèå èëè ðàññìîòðåë æàëîáó.
:?:/flp::Äàííûé àäìèíèñòðàòîð ñåé÷àñ çàíÿò äðóãèì äåëîì èëè îòîøåë îò êîìïüþòåðà íà êîðîòêîå âðåìÿ, íàïèøèòå åìó â ëè÷íûå ñîîáùåíèÿ â äèñêîðäå.
:?:/flc::Äàííûé àäìèíèñòðàòîð ñåé÷àñ îòñóòñòâóåò íà ñåðâåðå, íàïèøèòå åìó â ëè÷íûå ñîîáùåíèÿ â äèñêîðäå.
:?:/gjujlf::Ê ñîæàëåíèþ, àäìèíèñòðàöèÿ íå êîíòðîëèðóåò äàííûé ïðîöåññ. Ïîãîäà ìåíÿåòñÿ àâòîìàòè÷åñêè.
:?:/ytg::Íå ïîíÿë ñóòü âàøåãî îáðàùåíèÿ, îïèøèòå Âàøó ïðîáëåìó/âîïðîñ ïîäðîáíåå äëÿ ìàêñèìàëüíî òî÷íîãî îòâåòà, ïîæàëóéñòà.
:?:/ljyfn::Îáðàòèòåñü ïî ïî÷òå - help@majestic-rp.ru.
:?:/[g::Ïåðåçàéäèòå â èãðó, ëèáî êóïèòå òàáëåòêó ó ñîòðóäíèêîâ EMS.
:?:/htvjyn::Äëÿ íà÷àëà, Âàì íóæíî êóïèòü çàï÷àñòü äëÿ ìàøèíû íà ëþáî ÀÇÑ, ïîñëå ÷åãî îòêðûòü êàïîò , íàæàòü G > Ïî÷èíèòü çàìîê/àêêóìóëÿòîð/çàëèòü ìàñëî. 
:?:/athv::Íà ôåðìå äëÿ ïîñàäêè êàæäîãî èç ðàñòåíèé íóæíû ñëåäóþùèå íàâûêè: Ïøåíèöà - 225 îïûòà. Êàðòîôåëü - 950 îïûòà. Êàïóñòà - 2000 îïûòà. Êóêóðóçà - 3000 îïûòà. Òûêâà - 6200 îïûòà. Áàíàíû - 10500 îïûòà.
:?:/ujc::Âû ìîæåòå ñäàòü àâòî íà ñâàëêó. Ïîñëå ñäà÷è âû ïîëó÷èòå 75% îò ãîñ. ñòîèìîñòè àâòî. Ñâàëêà îòìå÷åíà íà êàðòå êàê ïåðå÷åðêíóòûé, êðàñíûé êðóã.
:?:/fybv::Îñòàíîâèòå àíèìàöèþ. Íàæìèòå X > Îñòàíîâèòü àíèìàöèþ èëè Backspace.
:?:/bl::Óêàæèòå, ïîæàëóéñòà, ID íàðóøèòåëÿ.
:?:/cnj::Ñòåïåíü èçíîñà îïðåäåëåííûõ äåòàëåé àâòîìîáèëÿ ìîæíî óçíàòü íà àâòîìàñòåðñêîé (èêîíêà ãàå÷íîãî êëþ÷à ñ îòâåðòêîé íà êàðòå).
:?:/ljy::Çàäîíàòèòü ìîæíî íà íàøåì îôèöèàëüíîì ñàéòå - majestic-rp.ru/donate
:?:/byrfc::×òîáû ñîâìåñòíî ðàáîòàòü Âàì íåîáõîäèìî áûòü óñòðîåíûì íà ðàáîòó (âñåì), çàãðóçèòüñÿ, à çàòåì ÷åðåç G ïðèãëàñèòü íà ðàáîòó.
:?:/uhb,s::×òîáû ñîáèðàòü ãðèáû âàì íàäî ïðèåõàòü íà òî÷êó "Ãðèáû" 1/6 è âçÿòü â ðóêè íîæ.
:?:/uhb,::Ïðîäàòü ãðèáû ìîæíî íà ðûíêå.
:?:/hsy::Ðûíîê íàõîäèòñÿ â Ëîñ-Ñàíòîñå íà ïëÿæå ðÿäîì ñ êà÷àëêîé, â Ïàëåòî-Áýé è íà ôåðìå, èêîíêà ïàëàòêè. Òàì âû ìîæåòå ñäàâàòü ïðåäìåòû ñ ôåðìû, äðîâîñåêà, ãðèáíèêà è ðûáàëêè.
:?:/yjdjcnm::Ïðèäèòå ëè÷íî â Weazel News. 
:?:/g::Ïðèÿòíîé èãðû è õîðîøåãî íàñòðîåíèÿ.
:?:/yjd::Ñëåäèòå çà íîâîñòÿìè ñåðâåðà â îôèöèàëüíîì äèñêîðäå ïðîåêòà. 
:?:/ybr::Ñìåíèòü íèê èëè âíåøíîñòü Âû ìîæåòå íàæàâ - F2 > Ìàãàçèí > Ïåðñîíàæà.
:?:/,fyr::Ó íàñ íà ñåðâåðå åñòü 3 âèäà áàíêîâñêèõ êàðò: Standart, Premium, VIP. Standart êàðòà ñòîèò â îáñëóæèâàíèè 500$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 500.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 5%(Ìàêñèìóì 20.000$), íà ïåðåâîä 4%(Ìàêñèìóì 20.000$), êýøáåê â ìàãàçèíàõ îòñóòñòâóåò. Premium êàðòà ñòîèò â îáñëóæèâàíèè 25.000$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 2.500.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 4%(Ìàêñèìóì 15.000$), íà ïåðåâîä 3%(Ìàêñèìóì 15.000$), êýøáåê â ìàãàçèíàõ 1%, ëèìèò êýøáåêà íà îäíó îïåðàöèþ äî 2.500$, ìåñå÷íûé ëèìèò êýøáåêà 50.000$. VIP êàðòà ñòîèò â îáñëóæèâàíèè 75.000$ â ìåñÿö, ñíÿòèÿ è ïåðåâîäû áåç êîìèññèè äî 20.000.000$ ïîñëå ïðåâûøåíèÿ ìåñå÷íîãî ëèìèòà êîìèññèÿ íà âûâîä 3%(Ìàêñèìóì 20.000$), íà ïåðåâîä 2.5%(Ìàêñèìóì 20.000$), êýøáåê â ìàãàçèíàõ 3%, ëèìèò êýøáåêà íà îäíó îïåðàöèþ äî 10.000$, ìåñå÷íûé ëèìèò êýøáåêà 150.000$. Äåíüãè çà îáñëóæèâàíèå è ëèìèòû ñíèìàþòñÿ êàæäîå 1 ÷èñëî íîâîãî ìåñÿöà.
:?:/le,kbr::×òîáû ñäåëàòü äóáëèêàò êëþ÷åé îò àâòî íåîáõîäèìî êóïèòü çàãîòîâêó â ìàãàçèíå 24/7, çàòåì íàæàòü G íà àâòî è ñäåëàòü äóáëèêàò.
:?:/rkfl::×òîáû ñäåëàòü äóáëèêàò îò êëàäîâêè, íåîáõîäèìî êóïèòü çàãîòîâêó â ìàãàçèíå 24/7, çàòåì ÷åðåç G ïåðåäàòü äóáëèêàò íóæíîìó ÷åëîâåêó.
:?:/ntk::Ïîïðîáóéòå êóïèòü òåëåôîí åùå ðàç â ìàãàçèíå 24/7, äåíüãè ñ âàñ íå ñïèøóòñÿ.
:?:/gjlctk::×òîáû ïîäñåëèòü èãðîêà ê ñåáå â äîì èëè æå êâàðòèðó, ñòîÿ îêîëî äîìà, íàâåäèòåñü íà èãðîêà è íàæìèòå G, äàëåå íàæìèòå Ïîäñåëèòü.
:?:/rhfi2::Åñëè ó Âàñ åñòü äîêàçàòåëüñòâà êðàøà - ïðåäîñòàâüòå åãî ëþáîìó àäìèíèñòðàòîðó â ëè÷íûå ñîîáùåíèÿ äèñêîðäà. Âàñ âûïóñòÿò.
:?:/pfvjr::Âàì íåîáõîäèìî êóïèòü "Äâåðíîé çàìîê" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Ïî÷èíèòü äâåðíîé çàìîê.
:?:/frev::Âàì íåîáõîäèìî êóïèòü "Àêêóìóëÿòîð" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Çàìåíèòü àêêóìóëÿòîð.
:?:/vfckj::Âàì íåîáõîäèìî êóïèòü "Ìîòîðíîå ìàñëî" è "Íàáîð èíñòðóìåíòîâ" íà áëèæàéøåé çàïðàâêå, çàòåì ïîäîéòè ê ñâîåìó òðàíñïîðòó G -> Êàïîò, ïîñëå ýòîãî G -> Çàìåíèòü ìàñëî.
:?:/vjltk::Ïóíêò "Ïðîãðóçêà ìîäåëåé" îòâå÷àåò çà áûñòðîòó ïðîãðóçêè òåêñòóð ïðè ïðèáëèæåíèè ê íèì.
:?:/,bpjuhf,::×òîáû îãðàáèòü áèçíåñ, âàì íóæíî: îäåòü ìàñêó, ïðèîáðåñòè îðóæèå è, ïðèäÿ â ìàãàçèí â ñîñòàâå îò 2 äî 35 ÷åëîâåê, íàâåñòèñü íà NPC (ïðîäàâöà) îãíåñòðåëîì (òîëüêî îäèí ÷åëîâåê äîëæåí ãðàáèòü). 
:?:/cgfdy::Ñïàâí íîâè÷êîâ íàõîäèòñÿ â Ïàëåòî-Áåé, ×óìàøàõ, Àýðîïîðòó è íà Àâòîâîêçàëå. 
:?:/rhtlbn::Ëþáûå ôèíàíñîâûå äîãîâîðû (çàéìû, êðåäèòû è ò.ä) íå îòíîñÿòñÿ ê ÎÎÑ ñäåëêàì. Âñå ïîäîáíûå ñäåëêè èãðîêè ñîâåðøàþò íà ñâîé ñòðàõ è ðèñê. Àäìèíèñòðàöèÿ íå íåñåò îòâåòñòâåííîñòè è íå ÿâëÿåòñÿ ãàðàíòîì ñäåëêè.
:?:/htv::×òîáû ïî÷èíèòü ñâî¸ àâòî êóïèòå ðåì.êîìïëåêò íà ëþáîé ÀÇÑ. ×åðåç ìåíþ G ïî÷èíèòå Âàø àâòîìîáèëü.
:?:/cltkrf::Àäìèíèñòðàöèÿ íå ñëåäèò çà ñäåëêàìè èãðîêîâ, çàïèøèòå âèäåî íà ñëó÷àé îáìàíà, ÷òîáû îñòàâèòü æàëîáó íà èãðîêà íà ôîðóìå. 
:?:/bvz::Âàøå Èìÿ Ôàìèëèÿ íå ïîäõîäèò ïî ïðàâèëàì íàøåãî ñåðâåðà. Âàì íóæíî ñìåíèòü íèê è íàïèñàòü â ðåïîðò ïîâòîðíî, åñëè Âàø íèê áóäåò ñîáëþäàòü ïðàâèëà ñåðâåðà, òî Âàñ âûïóñòÿò.
:?:/dsyjc::Âûíîñëèâîñòü - íàâûê âûíîñëèâîñòè ïîâûøàåòñÿ îò ïîäâèæíîãî îáðàçà æèçíè. ×åì áîëüøå òû áåãàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ïðè íèçêîì íàâûêå, ïåðñîíàæ íå ìîæåò ïðûãíóòü 2 ðàçà è ïàäàåò. Ñîîòâåòñòâåííî ïîâûøåíèå íàâûêà âëèÿåò íà äëèòåëüíîñòü áåñïðåðûâíîãî áåãà è êîëè÷åñòâî ïðûæêîâ, ìàêñèìóì íà ïîñëåäíåì óðîâíå - 2.
:?:/cbkf::Ñèëà - íàâûê ñèëû ïîâûøàåòñÿ îò ôèçè÷åñêèõ íàãðóçîê. ×åì áîëüøå òû çàíèìàåøüñÿ â êà÷àëêå (èêîíêà áåãóùåãî ÷åëîâåêà íà êàðòå), òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Îò ïðîêà÷êè óâåëè÷èâàåòñÿ ñîïðîòèâëåíèå ê óðîíó îò ïàäåíèÿ.
:?:/ls[::Äûõàíèå - íàâûê äûõàíèÿ ïîâûøàåòñÿ îò äëèòåëüíîãî íàõîæäåíèÿ ïîä âîäîé. ×åì áîëüøå òû ïëàâàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ñîîòâåòñòâåííî ïîâûøåíèå íàâûêà âëèÿåò íà äëèòåëüíîñòü áåñïðåðûâíîãî ïëàâàíèÿ ïîä âîäîé.
:?:/gjktn::Ïîëåò - íàâûê ïèëîòèðîâàíèÿ ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî çà âîçäóøíûì òðàíñïîðòîì. ×åì áîëüøå òû ëåòàåøü íà ñàìîëåòå èëè âåðòîëåòå, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Òàêæå íàâûê ìîæíî ïîâûñèâ ïðîéäÿ êóðñû â ëåòíîé øêîëå. Ïðîéòè èõ ìîæíî 1 ðàç â 24 ÷àñà, óâåë÷åíèå íàâûêà îò 1 çàíÿòèÿ - 10, ñòîèìîñòü îäíîãî çàíÿòèÿ - 2 000$. Îò ïðîêà÷êè íàâûêà óâåëè÷èâàåòñÿ ñòàáèëüíîñòü ïîëåòà è óïðàâëÿåìîñòü âîçäóøíûì òðàíñïîðòîì.
:?:/crhsny::Ñêðûòíîñòü - íàâûê ñêðûòíîñòè ïîâûøàåòñÿ îò êîëè÷åñòâà óñïåøíûõ óõîäîâ îò ïîãîíè (ïîíèæåíèé óðîâíÿ ðîçûñêà). ×åì ÷àùå òû ñêðûâàåøüñÿ îò ïîëèöèè, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Íè íà ÷òî íå âëèÿåò.
:?:/cnhtkm,f::Ñòðåëüáà - íàâûê ñòðåëüáû ïîâûøàåòñÿ îò âðåìåíè, ïðîâåäåííîãî â ïåðåñòðåëêàõ, ëèáî òðåíèðîâêàõ. ×åì ëó÷øå òû ñòðåëÿåøü è ïîïàäàåøü, òåì áûñòðåå ïîâûøàåòñÿ íàâûê. Ðåêîìåíäóåì òðåíèðîâàòüñÿ â ñïåöèàëüíî îòâåäåííûõ äëÿ òîãî ìåñòàõ, òèðå â îðóæåéíîì ìàãàçèíå. Îò ïðîêà÷êè íàâûêà óâåëè÷èâàåòñÿ ñêîðîñòü ïåðåçàðÿäêè è ïåðåêàòîâ, êó÷íîñòü ñòðåëüáû.
:?:/ktxe::Óæå ëå÷ó ê Âàì íà ïîìîùü.
:?:/gjv::Ñåé÷àñ ïîìîãó Âàì, îæèäàéòå.
:?:/,fupp::×òîáû âîññòàíîâèòü ïðåæíþþ ñêîðîñòü, çàåäüòå â çåëåíóþ çîíó è âûåäüòå ñ íåå.
:?:/ujcljv::×òîáû ïðîäàòü äîì â ãîñ. ñòîèìîñòü, íóæíî ïîäîéòè ê äâåðè è íàæàòü Å. Âû ïîëó÷èòå 75% îò åãî ãîñ. öåíû. Åñëè Âû íåâîâðåìÿ îïëàòèòå íàëîãè èëè çàáóäåòå ýòî ñäåëàòü, äîì ñëåòèò àâòîìàòè÷åñêè.
:?:/vfqrb::Äëÿ òîãî, ÷òîáû êóïèòü ìàéêó ïîä âåðõíþþ îäåæäó, âàì íóæíî ñíà÷àëà êóïèòü ýëåìåíò âåðõíåé îäåæäû (íàïðèìåð, ïèäæàê). Ïîñëå ýòîãî âàì áóäó äîñòóïíû âñå ìàéêè, êîòîðûå ïîäõîäÿò ïîä íåå â ðàçäåëå "Ìàéêè".
:?:/hs,kbw::Ïîëó÷èòü ëèöåíçèþ íà ðûáàëêó âû ìîæåòå â Ìýðèè. 
:?:/gjujlf::Ê ñîæàëåíèþ àäìèíèñòðàöèÿ íå êîíòðîëèðóåò äàííûé ïðîöåññ. Ïîãîäà ìåíÿåòñÿ àâòîìàòè÷åñêè. 
:?:/htg::Ïîæàëóéñòà, óòî÷íèòå ñâîé âîïðîñ ïîäðîáíåå. Àäìèíèñòðàöèÿ íå ëåòàåò íà ðåïîðòû ïî òèïó "àäìèí òï", "àäìèí ìîæíî ïîãîâîðèòü", "ïîìîãèòå", "àäìèí åñòü âîïðîñ". Êîëè÷åñòâî ñèìâîëîâ íåîãðàíè÷åíî, âû ìîæåòå ïîëíîñòüþ ðàñïèñàòü Âàøó ïðîáëåìó/âîïðîñ.
:?:/ytedbl::Ê ñîæàëåíèþ àäìèíèñòðàöèÿ íå ìîæåò óâèäåòü ýòî íàðóøåíèå. Ïîæàëóéñòà, åñëè ó Âàñ åñòü âèäåîôèêñàöèÿ äàííîãî íàðóøåíèÿ - îôîðìèòå æàëîáó íà ôîðóìå, ñïàñèáî áîëüøîå çà ïîíèìàíèå.
:?:/rjcnb::÷òîáû èãðàòü â êîñòè âàì íóæíî êóïèòü èõ â ëþáîì 24/7. Ïîñëå òîãî êàê âû êóïèëè êîñòè, âû ìîæåòå ïîäîéòè ê èãðîêó.
:?:/gfhr::×òîáû ïðèïàðêîâàòü ÒÑ, çà ðóëåì íàæìèòå G - Ïðèïàðêîâàòü.
:?:/yjdbxjr::Ïóòåâîäèòåëü íàõîäèòñÿ íà ñïàâíàõ íîâè÷êîâ. Îíè îáîçíà÷åíû íà êàðòå çíà÷êîì ìàøóùåãî ÷åëîâå÷êà.
:?:/lf::Äà. 
:?:/ytn::Íåò. 
:?:/ytng::Àäìèíèñòðàöèÿ íå òåëåïîðòèðóåò èãðîêîâ, Âàì íóæíî äîáðàòüñÿ äî ìåñòà ñàìîñòîÿòåëüíî. Íà ïðîåêòå äîñòàòî÷íî ñïîñîáîâ, ÷òîáû ýòî ñäåëàòü: òàêñè, àðåíäà òðàíñïîðòà, àâòîñåðâèñû.
:?:/byd:::?:.èíâ::Ýòî áàã èíâåíòàðÿ, ïðåäëîæèòå îáìåíÿòüñÿ ëþáîìó èãðîêó è âàøà ïðîáëåìà áóäåò ðåøåíà. Åñëè ïî áëèçîñòè íèêîãî íåò, îáðàòèòåñü åù¸ ðàç â ðåïîðò è àäìèíèñòðàöèÿ Âàì ïîìîæåò.
:?:/fhsyjr::Äëÿ òîãî, ÷òîáû âûñòàâèòü ñâîå àâòî íà ïðîäàæó, Âàì íåîáõîäèìî ïðèåõàòü íà òåððèòîðèþ àâòîðûíêà, âûáðàòü ìåñòî è íàæàòü íà êëàâèøó "G" - Àâòîðûíîê - Âûñòàâèòü íà ïðîäàæó.
:?:/njkrfnm::Òðàíñïîðò ìîæíî òîëêàòü, íàæàâ G-òîëêàòü. Åñëè òàêîé ôóíêöèè íåò, ïðè íàâåäåíèè íà àâòî, òî ýòîò òðàíñïîðò òîëêàòü íåëüçÿ.
:?:/ytck::Àäìèíèñòðàöèÿ íå ìîæåò ñëåäèòü ïîëíîñòüþ çà âñåì ÐÏ ïðîöåññîì, â ñëó÷àå íàðóøåíèé îò èãðîêîâ - íàïèøèòå ðåïîðò.
:?:/fen::Äëÿ ïîäêëþ÷åíèÿ Google authenticator âàì íóæíî â ìåíþ âûáîðà ïåðñîíàæà îòêðûòü ðàçäåë íàñòðîåê.
:?:/x2::Òåïåðü êîèíû âûäàþòñÿ ïî âûõîäíûì, ïî áóäíÿì ïðîêðóòêà ðóëåòêè çà 5 ÷àñîâ èãðû.
:?:/juh::×òîáû íà÷àòü îãðàáëåíèå áèçíåñà, âàì íóæíî ïîçâîíèòü ïî íîìåðó: 28121903. Äëÿ ýòîãî íàäî áûòü â êðàéì îðãàíèçàöèè, è íàõîäèòñÿ ðÿäîì ñ áàíêîì (êàê ìèíèìóì âàñ äîëæíî áûòü 4 îêîëî áàíêà, èíà÷å íå ñìîæåòå). Äëÿ íà÷àëà îãðàáëåíèÿ òðåáóåòñÿ "Ïëàí îãðàáëåíèé", êîòîðûé âûáèðàåòñÿ â AirDrops èëè ïðè îãðàáëåíèè áèçíåñîâ.Ìîæíî ãðàáèòü 1 ðàç â äåíü êàæäîé îãðàíèçàöèè.Ïîñëå òîãî, êàê îãðàáëåíèå íà÷àëîñü è áàíê ïîëó÷èë êðàñíóþ èêîíêó, íàäî ïðèöåëèòüñÿ â áîòà è çàïîëíèòü ïðîãðåññ áàð.Äàëüøå áóäåò áîëüøàÿ äâåðü, ÷òî áû åå ðàçáëîêèðîâàòü, íóæíî ïðîéòè ìèíè-èãðó ñî âçëîìîì. Äëÿ ýòîãî èñïîëüçóåì «Ïðîãðàììàòîð ÝÁÓ» + «Êàáåëü ýëåêòðîííûõ äâåðåé». Îí ïðîäàåòñÿ ó òîðãîâöà íà ðûíêå. Ïîñëå âçëîìà ïåðåä âàìè áóäåò ñòîÿòü ñòîéêà ñ äåíüãàìè. Äàëåå èäåò 2-ÿ äâåðü. Äëÿ åå âçëîìà íàì íåîáõîäèìà «Êëþ÷ êàðòà Fleeca» ëèáî «Òåðìèòíàÿ óñòàíîâêà».«Êëþ÷ êàðòà Fleeca» âûïàäàåò ñ áîòîâ ïðè îãðàáëåíèè áèçíåñîâ, èëè íà àèð äðîïàõ.«Òåðìèòíàÿ óñòàíîâêà» ïðîäàåòñÿ ó ïèðîòåõíèêà. Ñ åå ïîìîùüþ äâåðü îòêðûâàåòñÿ çà 2 ìèíóòû. 
:?:/juh2::Äëÿ ýòîãî íàäî âçÿòü â ðóêè îäèí èç ïðåäìåòîâ, ÷òîáû îòêðûòü äâåðü. Íî â õðàíèëèùå åñòü ÿ÷åéêè, äëÿ âçëîìà ÿ÷ååê íåîáõîäèìà «Äðåëü 1500w». Äðåëü êðàôòèòñÿ ó êðèìèíàëüíûõ îðãàíèçàöèé è âûïàäàåò ïðè ñìåðòè. Ïîñëå óñïåøíîãî ïðîõîæäåíèÿ ìèíè-èãðû ïî âçëîìó ÿ÷åéêè íà ïîë ïàäàåò íàãðàäà.
:?:/lhjy::Äðîí êðàôòèòñÿ ó ñèëîâûõ ãîñ.ñòðóêòóð è Weasel News. Ïîëüçîâàòüñÿ èì ìîãóò ñîîòâåòñòâåííî ýòè æå ãîñ.ñòðóêòóðû. ×òîáû ïîäíÿòüñÿ-ïðîáåë, ÷òîáû îïóñòèòüñÿ-shift. Íà E-òåïëîâèçîð âêëþ÷èòü/âûêëþ÷èòü.
:?:/ferw::Íà àóêöèîí âû ìîæåòå âûñòàâèòü àâòî/áèçíåñ/äîì/êâàðòèðó. Âî âðåìÿ òîãî, êàê âû âûñòàâëÿåòå ëîò, âû ìîæåòå ëèøü åçäèòü íà àâòî. Ïðè ïðîäàæå íà àêöèîíå äîìà/êâàðòèðû-êëàäîâêà ïåðåäà¸òñÿ ïîêóïàòåëþ ïîëíîñòüþ.
:?:/lhban::Äðèôò ñ÷¸ò÷èê ìîæíî âêëþ÷èòü ÷åðåç F2 > Íàñòðîéêè. Îí ïîÿâëÿåòñÿ âî âðåìÿ óïðàâëÿåìîãî çàíîñà è ïîêàçûâàåò, íà ñêîëüêî õîðîøî âû ïðîøëè ïîâîðîò.Íà êàðòå âû ìîæåòå óâèäåòü çîíû, ãäå ìîæíî äðèôòèòü è ïîïàñòü â ñïèñîê òîï-äðèôòåðîâ. Äëÿ ýòîãî Âàì îáÿçàòåëüíî äðèôòèòü ïî îòìå÷åííîé çîíå. Â ïðîòèâíîì ñëó÷àå î÷êè íå çàñ÷èòàþòñÿ.Ïîêàæèòå, êòî çäåñü íàñòîÿùèé êîðîëü äðèôòà!
:?:/,jkufhrf::Äëÿ òîãî, ÷òîáû ðàñïèëèòü áàãàæíèê íóæíî ïîäîéòè ê áàãàæíèêó G - Íåëåãàëüíîå äëÿ àâòî - Ðàñïèëèòü äâåðíîé çàìîê. Îòêðûâàåòñÿ áàãàæíèê è âû ìîæåòå âçÿòü ñ íåãî êàê êîðîáêè ñ ìàòåðèàëàìè, òàê è êîðîáêè ñî ñíàðÿæåíèåì. Âçëîìàòü ìîæíî íå òîëüêî ãîñ.ìàòîâîçêè, íî è êðàéì. Áîëãàðêîé íåëüçÿ âçëîìàòü ëè÷íûé òðàíñïîðò.
:?:/yted::Íå óâèäåë íàðóøåíèé, åñëè ó âàñ åñòü âèäåîäîêàçàòåëüñòâà - îñòàâüòå æàëîáó íà ôîðóìå. 
:?:/ajh::Äàííîå íàðóøåíèå íå ïîäëåæèò ðàññìîòðåíèþ ÷åðåç îáðàùåíèå, îñòàâüòå æàëîáó íà ôîðóìå.
:?:/a;,::Íå ìîãó ðàññìîòðåòü èç-çà íàðóøåíèé ïðàâèë ïîäà÷è. Àâòîðó ðåïîðò-æàëîáû íåîáõîäèìî óêàçûâàòü â íàçâàíèè âèäåî: ñâîé static, static íàðóøèòåëÿ, âðåìÿ è äàòó. Èçìåíèòå íàçâàíèå è ïðîäóáëèðóéòå âàøó ðåïîðò-æàëîáó.
:?:/ajhev::Â ñâÿçè ñ íàãðóçêîé íà ñåðâåð ìû íå ìîæåì ðàññìîòðåòü âàøó æàëîáó íà èãðîêà ïîñðåäñòâîì îáðàùåíèÿ, ïîæàëóéñòà, îñòàâüòå æàëîáó íà ôîðóìå. Ñïàñèáî çà ïîíèìàíèå.
:?:/bcx::Âñå òðàíñïîðòíûå ñðåäñòâà èñ÷åçàþò ÷åðåç 60 ìèíóò, åñëè ñ íèìè íèêàê íå âçàèìîäåéñòâîâàòü.
:?:/afv::/c - IC ÷àò, /cb - OOC ÷àò.
:?:/ahfr::/f - IC ÷àò, /fb - OOC ÷àò. 
:?:/cg,:: Åñëè îäíî îòäåëåíèå ÅÌÑ ñèëüíî çàãðóæåíî, ÷òîáû èçáåæàòü êðàøè âàñ ñïàâíèò â äðóãîì, ìåíåå çàãðóæåííîì îòäåëåíèè.
:?:/ghjvj:: Ïðîìîêîä ìîæíî ââåñòè äî 3 óðîâíÿ êîìàíäîé /promo "ïðîìîêîä", íàãðàäà çà íåãî áóäåò âûäàíà ïðè äîñòèæåíèè 3 óðîâíÿ. Ïðèãëàñèâøèé ïîëó÷àåò 7500$. Ïðèãëàøåííûé èãðîê ïîëó÷àåò: îò îáû÷íîãî èãðîêà - 10 000$ + 3 äíÿ Platinum VIP, îò ìåäèà - 20 000$ + 7 äíåé Platinum VIP 
:?:/gthtl::Âñå èìóùåñòâî âû ïåðåäàåòå íà ñâîé ñòðàõ è ðèñê.
:?:/jcr::Æàëîáû â ðåïîðò íà OOC îñêîðáëåíèå ïðèíèìàåì òîëüêî òîãäà, åñëè ñêðèíøîò ñäåëàí â òó æå ìèíóòó, ÷òî è ÎÎÑ îñêîðáëåíèå â ÷àòå + îáÿçàòåëüíî íà ñêðèíå äîëæíî áûòü ïðèñóòñòâèå íàðóøèâøåãî (âèäíî åãî èëè ñòàòèê)
:?:/helf::Ðóäà ñ øàõòû òðåáóåòñÿ òîëüêî â ñåìåéíûõ êîíòðàêòàõ, ïðîäàòü åå íåëüçÿ.
:?:/pfr::Ýòî ðåãëàìåíòèðóåòñÿ IC çàêîíàìè, èçó÷èòü èõ ìîæåòå â ðàçäåëå Government íà ôîðóìå: Majestic RolePlay | Server #3 - Îðãàíèçàöèè - Ãîñóäàðñòâåííûå îðãàíèçàöèè - Government.
:?:/,fuhtg::Â ñëó÷àå íàõîæäåíèÿ áàãà îñòàâüòå ñâîé áàã-ðåïîðò â îôèöèàëüíîì äèñêîðäå ïðîåêòà: Òåêñòîâûå êàíàëû - ñîîáùèòü î áàãå.
:?:/vtl::Çà äàííûì ìåäèà ïàðòíåðîì íàáëþäàåò PR àññèñòåíò, ïî ýòîé ïðè÷èíå ÿ íå ìîãó âûäàâàòü íàêàçàíèå, ò.ê. âñÿ îòâåòñòâåííîñòü çà ïðîèñõîäÿùåå íà ýòîé ñèòóàöèè àâòîìàòè÷åñêè ïåðåíîñèòñÿ íà PR àññèñòåíòà.
:?:/ybpr::Ó âàñ âêëþ÷åí ðåæèì íèçêîãî êà÷åñòâà â F2 - Íàñòðîéêè.
:?:/dfr::Îò âàêöèíû, âûäàííîé àäìèíèñòðàöèåé êâåñò íå áóäåò çàñ÷èòàí, îæèäàéòå ïîÿâëåíèÿ ëèäåðà â ÅÌÑ.
:?:/,byl::Âû ìîæåòå íàñòðîèòü áèíä êëàâèø ïîä ñåáÿ â F2 - Íàñòðîéêè - Áèíä êëàâèø.

:?:/prfqj::Íà îñòðîâå èìååòñÿ íåñêîëüêî òî÷åê çàõâàòà ìåäèöèíñêèõ, âîåííûõ, òåõíè÷åñêèõ ìàòåðèàëîâ. Äëÿ çàõâàòà Âàì íåîáõîäèìî âçÿòü ñ ñîáîé ìàÿ÷êè(Ïîäáåðèòå öâåòà), åñëè æå ó Âàñ ìàÿ÷êè çåë¸íîãî öâåòà Âû ñìîæåòå çàõâàòèòü âîåííûå ìàòåðèàëû, ñèíåãî Âàøåé öåëüþ ñòàíóò òåõíè÷åñêè ïðè íàëè÷èè êðàñíûõ Âàì îòêðîåòñÿ âîçìîæíîñòü çàõâàòèòü ìåäèöèíñêèå. Çàõâàò ìîæíî íà÷àòü â ðàäèóñå 50ì îò òî÷êè ïîãðóçêè, ïîñëå àêòèâàöèè ìàÿ÷êà ïîÿâèòñÿ îáîçðèìàÿ çîíà çàõâàòà, åñëè âûéòè çà çîíó çàõâàòà èëè âñå çàõâàò÷èêè óìðóò, ìàÿ÷îê óíè÷òîæàåòñÿ, òî÷êà ïåðåõîäèò â ñïîêîéíîå ñîñòîÿíèå êàê äî çàõâàòà. Íå ñòîèò çàáûâàòü è ïðî ñèãíàëèçàöèþ, åñëè Âû å¸ íå âûêëþ÷èòå âñå ãîññòðóêòóðû áóäóò â ìîìåíò îïîâåùåíû è Âàñ áóäåò æäàòü ñåðü¸çíîå ñîïðîòèâëåíèå(Ôóíêöèîíàëüíî íà çàõâàò ìàòåðèàëîâ ýòî íå ïîâëèÿåò). Ïîñëå çàõâàòà áëèï íà êàðòå êðàñèòñÿ â öâåò îðãàíèçàöèè çàõâàò÷èêîâ. Èãðîêè ñìîãóò çàáèðàòü ìàòåðèàëû ñ òî÷êè è ãðóçèòü èõ â ëè÷íóþ/àðåíäîâàííóþ ëîäêó - â ãîðîäå ïåðåãðóæàòü â ìàòîâîçêó.
:?:/gthbrj::Ó âñåõ ñèëîâûõ ôðàêöèé ïîÿâèëàñü ìåòêà äëÿ òåëåïîðòàöèè, ôðàêöèè EMS/WN/GOV ëèøåíû å¸. Îòäåëåíèå LSCSD â Ñýíäè-Øîðñ òîæå íå èìååò ìåòêè. Êàæäàÿ ôðàêöèè òåëåïîðòèðóåòñÿ â îäíó òî÷êó íà îñòðîâå, òàêèì ïóò¸ì è îáðàòíî. Îäíàêî Âû íå ñìîæåòå òåëåïîðòèðîâàòüñÿ ñ òî÷êè äðóãîé ôðàêöèè. Ïðèìåð: ß èç FIB è õî÷ó ñäåëàòü òåëåïîðò íà òåððèòîðèè LSCSD - Ó ìåíÿ íå âûéäåò. Íà îñòðîâå, âáëèçè îñîáíÿêà è íà åãî òåððèòîðèè, åñòü ìàøèíû, âåðòîë¸ò è êâàäðîöèêëû ñ íèìè ìîæåò âçàèìîäåéñòâîâàòü ëèøü SANG, âîçìîæíîñòü çàñïàâíèòü ñâî¸ ÒÑ òàêæå ñîõðàíåíà, äëÿ ýòîãî âîñïîëüçóéòåñü ìåòêîé. Òàêæå SANG ñòàë îáëàäàòåëåì åù¸ îäíîãî ñêëàäà íà Êàéî-Ïåðèêî, îí àíàëîãè÷åí Âàøåìó íà ôîðòå. Åñëè íà ôîðòå áóäåò çàïîëíåíî 20.000 òî è íà îñòðîâå òîæå.
:?:/cbhtyf::Âûøêó ìîæíî âçëîìàòü, íå áóäåò îáíîâëÿòüñÿ ñòàòóñ êîíòðîëÿ òî÷åê(10 ìèíóò). Äëÿ âçëîìà íóæåí "Ïðîãðàììàòîð ÝÁÓ" è "Êàáåëü ðàäèî ñèãíàëîâ". Êàáåëü ìîæíî ïîëó÷èòü ïðè îãðàáëåíèè ìàãàçèíà 24/7, âûïàäàåò(Øàíñ ðåäêî-ñðåäíå), îí îäíîðàçîâûé è ïîñëå èñïîëüçîâàíèÿ îí ïðîïàäàåò. Âçëîì ïðîèñõîäèò â ìèíè-èãðå. Ïîñëå óäà÷íîãî âçëîìà, íà ìèíè êàðòå íå áóäåò îòîáðàæàòüñÿ ñòàòóñ çàõâàòà òî÷åê äëÿ SANG(10 ìèíóò). Ïîñëå íåóäà÷íîãî âçëîìà, ñðàçó ñðàáàòûâàåò ñèðåíà. SANG ìîãóò âîññòàíîâèòü ðàáîòó âûøêè íàæàâ "Å" íà ìåòêå âûøêè.
:?:/vfzr::Ìàÿ÷êè ìîãóò âûïàñòü ñ "AirDrop" èëè æå ïðè îãðàáëåíèè 24/7. Øàíñû âûïàäåíèÿ ó âñåõ ìàÿ÷êîâ ðàçíûé.
:?:/pjj::Ñèñòåìà æèâîòíûõ. Ìîãóò ñïàâíèòüñÿ ðàçëè÷íûå æèâîòíûå, îò êðûñ äî îëåíåé ïî âñåé êàðòå. Íåêîòîðûå âèäû æèâîòíûõ ìîæíî ðàçäåëàòü è ïîëó÷èòü ìÿñî. Ìÿñî ìîæíî æàðèòü è óïîòðåáëÿòü â ïèùó. Äîìàøíèõ æèâîòíûõ êîòîðûå ãóëÿþò ïî êàðòå, ìîæíî ãëàäèòü.
:?:/crby::Îðóæèå ïîÿâëÿåòñÿ â äîíàò èíâåíòàðå, åãî ìîæíî áóäåò ðàñïûëèòü. Îäíàêî ïðè åãî ïðèìåíåíèè íåâîçìîæíî äàëüíåéøåå ðàñïûëåíèå. ×òîáû ïðèìåíèòü ñêèí íà îðóæèå: F2 - Ìàãàçèí - Cêèíû - Âûáèðàåòå îðóæèå è ñêèí ê íåìó - Ïðèìåíèòü, ñêèí ïðèìåíÿåòñÿ êî âñåì îðóæèÿì âûáðàííîãî òèïà. Ñêèí ïðèâÿçûâàåòñÿ ê èãðîêó, âûáèòü îðóæèå ñî ñêèíîì/ñáðîñèòü/îáìåíÿòü/ïðîäàòü - íåâîçìîæíî.
:?:/byn::Ïîïóëÿðíûå èíòåðüåðû íà êàðòå: "Îñîáíÿê ó âèíîãðàäíèêîâ" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí ëåâåå îò öåíòðà êàðòû. "Ñóä" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí íåïîäàë¸êó îò LSPD. Çà÷àñòóþ ïðèìåíÿåòñÿ âî âðåìÿ çàñåäàíèé Âåðõîâíîãî èëè æå îêðóæíîãî ñóäà. "Óíèâåðñèòåò" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí íåïîäàë¸êó îò ßïîíñêîé ìàôèè. "Ñòàðûé îôèñ FIB" - îòêðûòûé èíòåðüåð íå èìåþùèé ôóíêöèîíàëà, ðàñïîëîæåí íåïîäàë¸êó îò EMS.
:?:/djn::Âûáîðû àêòèâíû ñ 10:00 - 10:00 ïî ìîñêîâñêîìó âðåìåíè. Ïðîãîëîñîâàòü ìîæåò êàæäûé îò 3-ãî óðîâíÿ èãðîâîãî ïåðñîíàæà, ïî ïðèíöûïó îäèí ãîëîñ íà îäèí àêêàóíò. ãîëîñîâàíèå ïðîõîäèò â ëåâîì êðûëå Ìýðèè(Íà êàðòå ôëàã USA).
:?:/jldjhr:: Òåïåðü ïðè êàæäîì óñòðîéñòâå íà ðàáîòó Âû ïîëó÷àåòå ñîîòâåòñòâóþùèé êîìïëåêò îäåæäû. Îí ñíèìåòñÿ àâòîìàòè÷åñêè ïðè óâîëüíåíèè/ïðåêðàùåíèè ðàáîòû. Åñëè æå ó Âàñ ìåä êîìïëåêò òî Âàì íóæíî ïðîéòè êóðñ ëå÷åíèÿ.
:?:/[jk::"Õîëîäíûé ñòàðò" - ïðè çàïóñêå ÒÑ èçäà¸ò õàðàêòåðíûé çâóê, äðóãèì ôóíêöèîíàëîì íå îáëàäàåò.
:?:/akfu::Êîìàíäíûé ðåæèì áîÿ â êîòîðîì Âû ñìîæåòå ïðîòèâîñòîÿòü ñâîèì îïïîíåíòàì â ðàâíûõ óñëîâèÿõ. Â ýòîì ðåæèìå Âû ìîæåòå ïîäíèìàòü îðóæèå íà "F"(Ïî äåôîëòó), à òàêæå êóïèòü ñåáå îðóæèå íà çàðàáîòàííûå âî âðåìÿ ìàò÷à äåíüãè, äëÿ ýòîãî íàæìèòå "B". Ìàò÷ çàêîí÷èòüñÿ êàê òîëüêî îäíà èç êîìàíä ïîòåðÿåò âñå î÷êè, ñêîðîñòü èõ ïîòåðè/íàêîïëåíèÿ çàâèñèò îò êîë-âà çàõâà÷åííûõ, Âàøåé êîìàíäîé, òî÷åê.
:?:/kj,,b::Ýòî Âàøà èãðà ñîçäàííàÿ Âàìè äëÿ äðóçåé èëè æå îáû÷íûõ èãðîêîâ, âñå ïðàâèëà íàñòðàèâàåòå èìåííî Âû. Äëÿ òîãî ÷òî áû íà÷àòü íóæíî: Äàòü íàçâàíèå ñâîåìó ëîááè(Ãðàôà "Íàçâàíèå ëîááè"), âûáðàòü îäèí èç òð¸õ äîñòóïíûõ ðåæèìîâ(Ãîíêà âîîðóæåíèé/Áîé íà ñìåðòü/Çàõâàò ôëàãà), âûáðàòü îäíó èç êàðò. Äàëåå Âû ñìîæåòå óñòàíîâèòü ïàðîëü, åñëè æå íå õîòèòå âèäåòü ëèøíèõ èãðîêîâ â ñâîåé èãðå. Ïîñëå âñåõ ïåðâè÷íûõ íàñòðîåê Âàì îòêðîþòñÿ äîïîëíèòåëüíûå: Òðåáîâàíèå äëÿ ïîáåäû, îðóæèå, âðåìÿ ñóòîê, îäåæäà(Åñëè âûáðàòü "Íåò" èãðîê âðåìåííî ñìåíèò îäåæäó â ìàò÷å), ïîãîäíûå óñëîâèÿ, àâòî-áàëàíñ êîìàíä(Â ñëó÷àå çàõâàòà ôëàãà) è äð. Òîëüêî ïîìíèòå çà ñîçäàíèå ëîááè íóæíî áóäåò çàïëàòèòü îò 1.250$ äî 2.800$.
:?:/lhpjyf::Äðèôò çîíà îòìå÷åíà íà êàðòå êàê èêîíêà ïàäàþùåé êîìåòû, ïðèìåð - îäíà èç çîí îêîëî LS Vagos.
:?:/pf;::×òîáû âçëîìàòü çàæèãàíèå ñÿäüòå çà ðóëü ò.ñ., íàæìèòå G - Âçëîìàòü çàæèãàíèå. ÊÄ íà âçëîì - 1 ÷àñ.
:?:/cnhbv::Ðåæèì ñòðèìåðà çàìåíÿåò ñèìâîëû íà çâåçäî÷êè, äëÿ îáû÷íûõ èãðîêîâ îí áåñïîëåçåí. Âûêëþ÷àåòñÿ â F2 - Íàñòðîéêè.
:?:/rd::Òåêóùèé êâåñò îòîáðàæàåòñÿ íàä òàéìåðîâ Majestic Coins, åñëè åãî íåò - íàæìèòå F6.
:?:/rv,::×òîáû óñòðîèòüñÿ â ñèëîâóþ ãîñ. ñòðóêòóðó íåîáõîäèìî ïîëó÷èòü âîåííûé áèëåò. Äëÿ ýòîãî íàäî óñòðîèòüñÿ â SANG è ïðîéòè ÊÌÁ. Èêîíêà çåëåíîãî ñàìîëåòà íà êàðòå. Ïîäðîáíåå óòî÷íèòå ó ñòàðøåãî ñîñòàâà ôðàêöèè.
:?:/yfhr::Ïàêåòèêè Blue è White íèêàê íå ïîëó÷èòü, ôóíêöèîíàë êàê ó Green, òîëüêî ðàçíûå ýôôåêòû.
:?:/fkbc::×òîáû âûêëþ÷èòü GPS àññèñòåíòà íàæìèòå F2 - Íàñòðîéêè è âûêëþ÷èòå GPS Àññèñòåíò.
:?:/dthn::Âåðîòîëåòû ïðîäàþòñÿ â ñàëîíå íåäàëåêî îò àýðîïîðòà.
:?:/gj[jl::Èçìåíèòü ïîõîäó è ýìîöèè ëèöà ìîæíî â  F2 - Íàñòðîéêè - Ãëàâíîå.
:?:/,fuf;::×òîáû âûëåçòè èç áàãàæíèêà íàæìèòå íà "E".
:?:/yfk::×òîáû îïëàòèòü íàëîãè íà äîì íåîáõîäèìî îòêðûòü ïðèëîæåíèå "Ìîé äîì" â ïëàíøåòå.


:?:/gfh::Ïîëîæèòå ïàðàøþò â áûñòðûé ñëîò, çàòåì â ïîëåòå íàæìèòå íà 1, 2 èëè 3 (çàâèñèò îò ñëîòà), ïîñëå ýòîãî ËÊÌ, ïàðàøþò îòêðîåòñÿ.
:?:/djl::Àäìèíèñòðàöèÿ íå äîñòàåò àâòîìîáèëè èç âîäû, à ëèøü óäàëÿåò, ÷òîáû âû ìîãëè åå çàñïàâíèòü. Âàì íåîáõîäèìî ñàìîñòîÿòåëüíî äîáðàòüñÿ äî àâòîñåðâèñà/àðåíäû ò.ñ èëè äî íóæíîãî âàì ìåñòà, íàïðèìåð, âû ìîæåòå âûçâàòü òàêñè.
:?:/,typ::Àäìèíèñòðàöèÿ íå çàïðàâÿëåò ò.ñ. èãðîêîâ. Âû ìîæåòå âûçâàòü òàêñè è äîáðàòüñÿ äî íóæíîãî âàì ìåñòà èëè ïðèîáðåñòè êàíèñòðó, ÷òîáû â äàëüíåéøåì äîåõàòü äî ÀÇÑ.
:?:/elfk::Àäìèíèñòðàöèÿ íå óäàëÿåò ò.ñ. èãðîêîâ. Èñêëþ÷åíèå: ò.ñ. óòîíóëî è íå èñ÷åçëî.
:?:/cnfn::Â F2 - Ïåðñîíàæ - Ñòàòèñòèêà.
:?:/ghtl::/asms Âûêëþ÷èòå ìóçûêó, âû â çåëåíîé çîíå.{left 37}

:?:/yby::Íîâàÿ ñèñòåìà èíâåíòàðÿ, áûë èçìåíåí äèçàéí, ïðåäìåòû ìîæíî âðàùàòü íàæàòèåì íà ïðîáåë, åñëè äâàæäû íàæàòü ïî ïðåäìåòû îí èñïîëüçóåòñÿ (áåðåòñÿ â àêòèâíûé ñëîò èëè íàäåâàåòñÿ).
:?:/hjp::Äîáàâëåíà ñèñòåìà ïðåñëåäîâàíèÿ. Äëÿ òîãî ÷òîáû íà÷àòü ïðåñëåäîâàíèå íóæíî âûäàòü ðîçûñê -  çàéòè â Ïëàíøåò - Ôðàêöèÿ - Áàçà äàííûõ - Íà÷àòü ïðåñëåäîâàíèå, íà êàðòå ïîÿâëÿåòñÿ ìåòêà ìåñòîïîëîæåíèÿ èãðîêà, îáíîâëÿåòñÿ ðàç â 30 ñåêóíä, åñëè èãðîê êîòîðîãî ïðåñëåäóþò çàõîäèò â äðóãîé äèìåíøåí/èíòåðüåð/âûéäåò èç èãðû - ïðîïàäàåò ñ ðàäàðîâ. Åñëè ãîñ. èãðîê ïðèåçæàåò íà ìåòêó/ïîäõîäèò ê èãðîêó - ïðåñëåäîâàíèå çàêàí÷èâàåòñÿ.
:?:/fh::Ïîñëå îêîí÷àíèÿ ñðîêà àðåíäà àâòî ãëóøèòñÿ è ïîÿâëÿåòñÿ äèàëîãîâîå ìåíþ, ãäå ìîæíî ïðîäëèòü àðåíäó. 
:?:/rjvn::Ðàáî÷èé òðàíñïîðò ìîæíî ñïàâíèòü òîëüêî íà ñïåöèàëüíî àâòîñåðâèñå äëÿ êîììåð÷åñêîãî òðàíñïîðòà. 
:?:/uh::Ëèäåð ãðóïïû ìîæåò äàâàòü êîä, ÷òîáû ìàññîâî äîáàâèòü ëþäåé â ãðóïïó, èãðîêè â ðàäèóñå 30 ìåòðîâ ñìîãóò çàéòè. Ëèäåð è ïîìîùíèêè ìîãóò ñòàâèòü óêàçûâàþùèå ìåòêè, íàñòðàèâàåòñÿ â F2 - Íàñòðîéêè - Áèíäû. Ëèäåð ìîæåò ïåðåäàòü ñâîé ñòàòóñ äðóãîìó èãðîêó.
:?:/ntu::Âîçìîæíîñòü òåãàòü ëþäåé â ÷àòå äëÿ óäîáíîãî ÐÏ ïðîöåññà, äëÿ èñïîëüçîâàíèÿ íàïèøèòå @Äèíàìèê. Åñëè èãðîêà òåãíóòü ó íåãî ïîÿâèòñÿ óâåäîìëåíèå îá ýòîì, òåãàþòñÿ òîëüêî áëèæàéøèå èãðîêè.
:?:/dxfn::Ñèñòåìà âèçóàëèçàöèè ÷àòà íàä èãðîêîì - íàä èãðîêîì áóäóò äóáëèðîâàòüñÿ âñå ñîîáùåíèÿ èç ÷àòà. Â íàñòðîéêàõ - Äîïîëíèòåëüíî, ìîæíî âêëþ÷èòü.
:?:/vfhr::Ìàðêåòïëåéñ èñïîëüçóåòñÿ äëÿ ðàçìåùåíèÿ ðàçëè÷íûõ òîâàðîâ íà ïðîäàæó, òàêèõ êàê: òðàíñïîðò, æèëàÿ íåäâèæèìîñòü, áèçíåñ, áàíêîìàòû, áèëáîðäû. Êàæäàÿ êàðòî÷êà ñ îáúÿâëåíèåì ôèêñèðóåò êîëè÷åñòâî ïðîñìîòðîâ êàðòî÷êè è êîëè÷åñòâî ëàéêîâ (òåõ êòî äîáàâèë îáúÿâëåíèå â èçáðàííîå). Íàæàâ êíîïêó «Íà÷àòü ñäåëêó» íàì îòêðîåòñÿ ìîäàëüíîå îêíî, â êîòîðîì áóäåò äóáëèðîâàòüñÿ åùå ðàç âñÿ íåîáõîäèìàÿ èíôîðìàöèÿ, ñóììà ê îïëàòå è êíîïêà ñîâåðøèòü ïîêóïêó.  Ãðàôèê êîòîðûé èìååòñÿ îòîáðàæàåò äèíàìèêó öåí è èìååò âîçìîæíîñòü âçàèìîäåéñòâèÿ. Ïîñëå ïîêóïêè ïðåäìåòû îòïðàâÿòñÿ â «Ñêëàä õðàíåíèÿ». Çà ðàçìåùåíèå ëþáîãî îáúÿâëåíèÿ âçûìàåòñÿ ïëàòà â 1.000$ çà ÷àñ (îò 5ê). Âîçìîæíîñòü ïîêóïàòü ëîò êàê çà íàëè÷êó, òàê è ÷åðåç êàðòó. Àäìèíèñòðàòîð ìîæåò óäàëèòü êàðòî÷êó èãðîêà. Èãðîê ìîæåò ïîæàëîâàòüñÿ íà îáúÿâëåíèå, ñîîáùåíèå ïîïàä¸ò â îáðàùåíèå.
:?:/vfhrg::Ðàçäåë òîðãîâîé ïëîùàäêè. Ýòî ôîðìàò áèðæè, íà êîòîðîé òîðãóþòñÿ èñêëþ÷èòåëüíî ïðåäìåòû èíâåíòàðÿ. Ïðåäìåòû âûñòàâëÿþòñÿ áåñïëàòíî, íî óäàëåíèå ñòîèò 1.000$. Åñòü âîçìîæíîñòü ïðîäëåíèÿ îáúÿâëåíèÿ.  Íà òîðãîâóþ ïëîùàäêó ìîæíî âûñòàâèòü ïðåäìåòû òîëüêî èç "Ñêëàäà õðàíåíèÿ".  Âîçìîæíîñòü ïîêóïàòü ëîò êàê çà íàëè÷êó, òàê è ÷åðåç êàðòó. Â êàðòî÷êå èìååòñÿ èíôîðìàöèÿ î íàçâàíèè ïðåäìåòà, ìèíèìàëüíîé ñòîèìîñòè îáíîâëÿåìîé â ðåæèìå ðåàëüíîãî âðåìåíè è îáùåå êîëè÷åñòâî ïðîäàâàåìûõ ïðåäìåòîâ íà áèðæå. Èìååòñÿ ãðàôèê «Ìåäèàíà öåí», êîòîðûé âèçóàëèçèðóåò, êàê ìåíÿëàñü öåíà çà ðàçëè÷íûå ïåðèîäû âðåìåíè. 
:?:/c[h::Ñêëàä õðàíåíèÿ ýòî ìåñòî, â êîòîðîå ïîïàäàþò ïðåäìåòû, êîòîðûå áûëè êóïëåíû èëè ïðåäìåòû, êîòîðûå áûëè çàíåñåíû ñþäà èãðîêîì, ñ öåëüþ èõ ïðîäàæè íà ìàðêåò ïëåéñå. Íà ñêëàä ìîæíî âûãðóçèòü ïðåäìåòû èç èíâåíòàðÿ èëè èç áàãàæíèêà. Ñêëàä õðàíåíèÿ íàõîäèòñÿ ñáîêó çäàíèÿ àóêöèîíà. Ñêëàä íå îãðàíè÷åí ïî õðàíåíèþ ïðåäìåòîâ Ïðåäìåòû ìîãóò íàõîäèòñÿ íà ñêëàäå 30 ìèíóò, ïîñëå èñòå÷åíèÿ ýòîãî âðåìåíè îíè èäóò íà àóêöèîí. Èìååòñÿ âîçìîæíîñòü äîáàâèòü êàðòî÷êó â èçáðàííîå. Ïîñëå ïîêóïêè èìóùåñòâî/ïðåäìåòû ìîãóò õðàíèòñÿ íà ñêëàäå 2 äíÿ. Ïðè âõîäå â çîíó ìàðêåòïëåéñà ïîäñâå÷èâàåòñÿ ñêëàä è ïîÿâëÿåòñÿ ìåòêà íà êàðòå.

:?:/reh::Ïåðåäàì êóðàòîðàì.
:?:/gth::Ïåðåäàì.
:?:/ytja::Íå îôôòîïüòå â îáðàùåíèÿ.
:?:/ytgh::Íå ïðåäîñòàâëÿåì ïîäîáíóþ èíôîðìàöèþ.

:?:/lvr::Äåôèáðèëëÿòîð ÌÊ2 íèêàêîãî ôóíêöèîíàëà íå äà¸ò, îí àíàëîãè÷åí îáû÷íîìó äåôèáðèëëÿòîðó.
:?:/flh::Àäðåíàëèí ïîäíèìàåò èãðîêà â 2 ðàçà áûñòðåå, ÷åì ýïèíåôðèí.
:?:/yfuh::Âñå àâòîìîáèëè è îäåæäà èç ïðîïóñê ÿâëÿþòñÿ ýêñêëþçèâîì, èõ íåëüçÿ ïåðåäàâàòü äðóãèì èãðîêàì.
:?:/;fg::Ïðåäìåò "Àïòå÷êà æ¸ëòàÿ" - âîññòàíàâëèâàåò 75 õï.
:?:/j,d::Îáâåñû èìåþòñÿ â ïðèçàõ. Ïåðâàÿ óñòàíîâêà áåñïëàòíàÿ. Îáâåñû ìîæíî áóäåò ñíÿòü/ïîñòàâèòü îòäåëüíî. Îáâåñ çàêðåïëÿåòñÿ çà ìàøèíîé. 
:?:/reg::Êóïîíû äåéñòâóþò íà âñå àâòî èç Majestic Motors. Ïîñëå âçÿòèÿ îíè äåéñòâóåò 3 äíÿ.
:?:/ckex::Â íàãðàäàõ èìåþòñÿ "Ñëó÷àéíûå íàáîðû". Ïðè âçÿòèè ïðèçà ó èãðîêà áóäåò âûáîð â îòêðûòèè îäíîé òð¸õ êàðò ñ ðàçíûì ñîäåðæèìûì. 
:?:/jjc::ÎÎÑ çîíó âû ìîæåòå âêëþ÷èòü íà F2-Íàñòðîéêè-Áèíä. Íàçíà÷àåòå êëàâèøó, è ïðè íàæàòèè íà ýòó êëàâèøó, åñëè èãðîê ïåðåä âàìè âûøåë èç èãðû, ó âàñ áóäåò èíôîðìàöèÿ î äàòå è âðåìåíè âûõîäà ýòîãî èãðîêà èç èãðû.
:?:/rdh::Ó áîòà íà ðàáîòå áóäåò êíîïêà "ß ìîãó ÷åì-òî ïîìî÷ü". Âû íà íå¸ æì¸òå è ó âàñ îòêðîåòñÿ êâåñò, êîòîðûé âûïîëíèòü íóæíî (íà Ô6 ìîæíî ïîñìîòðåòü). Âûïîëíÿåòå ýòîò êâåñò è Âàì çàñ÷èòûâàåò çàäàíèå.

; Íàêàçàíèÿ

:?:.ãò::/unescort
:?:.ôñ::/acuff
:?:.ôã::/auncuff  
:?:.ðåïäá::/ajail 30 DB (Ðåïîðò æàëîáà){left 22}
:?:.ðåïäì::/ajail 120 DM (Ðåïîðò æàëîáà ){left 24}
:?:.ðåïíðä::/ajail 15 nonRP Drive (Ðåïîðò æàëîáà ){left 32}
:?:.ðåïäìã::/gunban 5 DM (Ðåïîðò æàëîáà ){left 22}
:?:.ðåïçï::/ban 5 3.5 Îñíîâíûå ïðàâèëà ïðîåêòà (Ðåïîðò æàëîáà ){left 48}
:?:.ðåïîñê::/ajail 15 ÎÎÑ îñêîðáëåíèå (Ðåïîðò æàëîáà ){left 36}
:?:.õàðäî::/hardban 9999 Îáõîä áëîêèðîâêè{left 21}
:?:.õàðä::/hardban 8888 Cheats{left 12}
:?:.õàðä9::/hardban 9999 Cheats{left 12}
:?:.ñåêñ::/warn Ñåêñ. àíèì. áåç îòûãðîâîê{Left 26}
:?:.íðä::/ajail 15 nonRP Drive{Left 15}
:?:.íðä25::/ajail 25 nonRP Drive{Left 15}
:?:.íðä45::/ajail 45 nonRP Drive{Left 15}
:?:.íðä70::/ajail 70 nonRP Drive{Left 15}
:?:.íðä90::/ajail 90 nonRP Drive{Left 15}
:?:.íðï::/ajail 15 nonRP Ïîâåäåíèå{Left 19}
:?:.íðï25::/ajail 25 nonRP Ïîâåäåíèå{Left 19}
:?:.íðï45::/ajail 45 nonRP Ïîâåäåíèå{Left 19}
:?:.íðï70::/ajail 70 nonRP Ïîâåäåíèå{Left 19}
:?:.íðï90::/ajail 90 nonRP Ïîâåäåíèå{Left 19}
:?:.äá::/ajail 30 DB{Left 6}
:?:.äá45::/ajail 45 DB{Left 6}
:?:.äá60::/ajail 60 DB{Left 6}
:?:.äá75::/ajail 75 DB{Left 6}
:?:.äá90::/ajail 90 DB{Left 6}
:?:.äìã::/gunban 5 DM{Left 5}
:?:.ïã::/ajail 35 PG{Left 6}
:?:.äì::/ajail 120 DM{Left 7}
:?:.ïã55::/ajail 55 PG{Left 6}
:?:.ïã75::/ajail 75 PG{Left 6}
:?:.ïã90::/ajail 90 PG{Left 6}
:?:.ìóç::/mute 30 Music in GZ{Left 15}
:?:.ìóç60::/mute 60 Music in ZZ{Left 15}
:?:.ñìíèê::/ajail 720 Ñìåíèòå Èìÿ_Ôàìèëèÿ ñîãëàñíî ïðàâèëàì ñåðâåðà{Left 50}
:?:.ñìâí::/ajail 720 Ñìåíèòå âíåøíîñòü ñîãëàñíî ïðàâèëàì ñåðâåðà{Left 48}
:?:.ãîë::/mute 30 Ïðîãðàììà äëÿ èçìåíåíèÿ òîíàëíîñòè ãîëîñà{Left 45}
:?:.îñà30::/hardban 30 Îñêîðáëåíèå àäìèíèñòðàöèè{left 29}
:?:.îñà15::/hardban 14 Îñêîðáëåíèå àäìèíèñòðàöèè{left 29}
:?:.îñà10::/hardban 10 Îñêîðáëåíèå àäìèíèñòðàöèè{left 29}
:?:.îñà::/hardban 7 Îñêîðáëåíèå àäìèíèñòðàöèè{left 28}
:?:.îîñê::/ajail 30 OOC îñêîðáëåíèå{left 19}
:?:.ñòð::/ban 3 Ñòðåëüáà ïî ïåøèì{left 20}

:?:/[fhlj::/hardban 9999 Îáõîä áëîêèðîâêè{left 21}
:?:/[fhl::/hardban 7777 Cheats{left 12}
:?:/[fhl9::/hardban 9999 Cheats{left 12}
:?:/ctrc::/warn Ñåêñ. àíèì. áåç îòûãðîâîê{Left 26}
:?:/yhl::/ajail 15 nonRP Drive{Left 15}
:?:/yhll25::/ajail 25 nonRP Drive{Left 15}
:?:/yhl45::/ajail 45 nonRP Drive{Left 15}
:?:/yhl70::/ajail 70 nonRP Drive{Left 15}
:?:/yhl90::/ajail 90 nonRP Drive{Left 15}
:?:/yhg::/ajail 15 nonRP Ïîâåäåíèå{Left 19}
:?:/yhg25::/ajail 25 nonRP Ïîâåäåíèå{Left 19}
:?:/yhg45::/ajail 45 nonRP Ïîâåäåíèå{Left 19}
:?:/yhg70::/ajail 70 nonRP Ïîâåäåíèå{Left 19}
:?:/yhg90::/ajail 90 nonRP Ïîâåäåíèå{Left 19}
:?:/l,::/ajail 30 DB{Left 6}
:?:/l,45::/ajail 45 DB{Left 6}
:?:/l,60::/ajail 60 DB{Left 6}
:?:/l,75::/ajail 75 DB{Left 6}
:?:/l,90::/ajail 90 DB{Left 6}
:?:/lv::/ajail 120 DM{Left 7}
:?:/lvu:/gunban 5 DM{Left 5}
:?:/gu::/ajail 35 PG{Left 6}
:?:/gu55::/ajail 55 PG{Left 6}
:?:/gu75::/ajail 75 PG{Left 6}
:?:/gu90::/ajail 90 PG{Left 6}
:?:/vep::/mute 30 Music in ZZ{Left 15}
:?:/vep60::/mute 60 Music in ZZ{Left 15}
:?:/cvybr::/ajail 720 Ñìåíèòå Èìÿ_Ôàìèëèÿ ñîãëàñíî ïðàâèëàì ñåðâåðà{Left 50}
:?:/cvdy::/ajail 720 Ñìåíèòå âíåøíîñòü ñîãëàñíî ïðàâèëàì ñåðâåðà{Left 48}
:?:/jcf30::/hardban 30 Îñêîðáëåíèå àäìèíèñòðàöèè{left 29}
:?:/jcf15::/hardban 14 Îñêîðáëåíèå àäìèíèñòðàöèè{left 29}
:?:/jcf10::/hardban 10 Îñêîðáëåíèå àäìèíèñòðàöèè{left 29}
:?:/jcf::/hardban 7 Îñêîðáëåíèå àäìèíèñòðàöèè{left 28}
:?:/jjcr::/ajail  30 OOC îñêîðáëåíèå{left 19}
:?:/cnh::/ban 3 Ñòðåëüáà ïî ïåøèì{left 20}

Reload:
reload
return

^F9::reload
^F10::Exitapp

Close:
exitapp

Hide:
Gui, Main: Hide
return

Show:
Gui, Main: Show
return

guiclose2:
gui, Main:hide

guiclose:
Gui, Answers:Destroy
return

guiclose3:
Gui, Commandlist:Destroy
return

#SingleInstance                    
#Persistent                     

^E::                        
SoundBeep 300, 50                  
	


Loop                                

{ 

Random, randHoldTime, 1, 3        
SendInput, {LButton down}	       
Sleep, %randHoldTime%               

SendInput, {LButton up}            
Random, delay, 15, 25             
 Sleep, % delay                    

}


F7::Pause                          
                              
                                  

F10::                          
SoundBeep 300, 50              
Sleep, 10                           
SoundBeep 300, 50                 
ExitApp, 0                         

guiclose4:
Gui, Usefull:Destroy
return
