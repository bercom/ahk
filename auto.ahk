#SingleInstance Force
#installKeybdHook
#Persistent
Menu, Tray, Icon , Shell32.dll, 25, 1
TrayTip, AutoHotKey, Started, 1
SoundBeep, 300, 150
Return


;auto.ahk
#n::
Run Notepad
return

^j::
Send, sudo service apache2 start{Enter}
Sleep 2000
Send, pb{Enter}
Sleep 1000
Send, sudo service mysql start
return

::dat::
Send %A_DD%.%A_MM%.%A_YYYY%
SendRaw %A_EndChar% ; Optional.
return


^#!r::
Send, ^s ; To save a changed script
Sleep, 300 ; give it time to save the script
Reload
Return

^!#e::Edit
