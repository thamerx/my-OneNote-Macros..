#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 2


#IfWinActive - OneNote for Windows 10
!i::
SendInput ^{left}+^{right}
sleep 50
Send +{F10}
sleep 200
Send {tab}
sleep 150
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {enter}
return


#IfWinActive - OneNote for Windows 10
^Tab::
SendInput ^{left}+^{right}
sleep 50
Send +{F10}
sleep 200
Send {tab}
sleep 100
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {down}
sleep 50
send {enter}
return


#IfWinActive - OneNote for Windows 10
+!`::
sleep 50
Send +{F10}
sleep 200
Send {tab}
sleep 100
send {down}
sleep 50
send {down}
sleep 30
send {down}
sleep 20
send {down}
sleep 20
send {down}
sleep 20
send {down}
sleep 30
send {down}
sleep 30
send {enter}
sleep 50

return




sleep 500

FoundX := 0
FoundY := 0

#IfWinActive - OneNote for Windows 10
Esc::
CoordMode Pixel
ImageSearch, FoundX, FoundY, 1463,0, 1919, 300, %A_WorkingDir%\imgtest\test.bmp

;if (ErrorLevel = 2)
   ; MsgBox Could not conduct the search.
;else if (ErrorLevel = 1)
    ;MsgBox Icon could not be found on the screen.
;else
   ;MsgBox The icon was found at %FoundX%x%FoundY%.
MouseGetPos, xpos, ypos 
MouseClick, left, FoundX+10, FoundY+10
sleep 10
MouseMove, xpos, ypos

;msgbox %FoundX% + %FoundY%

return

#IfWinActive - OneNote for Windows 10
!pgdn::
SendInput {WheelDown}

return

#IfWinActive - OneNote for Windows 10
!pgup::
SendInput {WheelUp}

return


eraser := false

#IfWinActive - OneNote for Windows 10
F9::
CoordMode Pixel
ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, %A_WorkingDir%\imgtest\eraser.bmp

;if (ErrorLevel = 2)
   ; MsgBox Could not conduct the search.
;else if (ErrorLevel = 1)
    ;MsgBox Icon could not be found on the screen.
;else
   ;MsgBox The icon was found at %FoundX%x%FoundY%.
   
if !eraser
{
MouseGetPos, xpos, ypos 
MouseClick, left, FoundX+60, FoundY+20



;msgbox %CursorHandle%

	;MouseMove, FoundX+60, FoundY+20


;sleep 2000
MouseMove, xpos, ypos
	eraser := true
} else
	{
	

	
	MouseGetPos, xpos, ypos 
	;MouseMove, FoundX+130, FoundY+20


	MouseClick, left, FoundX+130, FoundY+20
	;sleep 2000
	MouseMove, xpos, ypos
		eraser := false
	}
   


;msgbox %FoundX% + %FoundY%

return
