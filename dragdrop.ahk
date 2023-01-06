; A modification to the mouse drag script written by @leeorhelps in
; https://github.com/leeorhelps/SpeechBird 
#Requires AutoHotkey v2.0

;release Lmouse button if pressed, and drag
LSHIFT & F12:: 
{
MouseClick "left", , , , , "U"
Sleep 100
MouseClick "left", , , , , "D"
return 
}

;release Rmouse button if pressed, and drag
RSHIFT & F12::
{
MouseClick "right", , , , , "U"
Sleep 100
MouseClick "right", , , , , "D"
return
}

;release Lmouse and / or Rmouse buttons if pressed
F12::
{
if( GetKeyState("LButton") )
	MouseClick "left", , , , , "U"
if( GetKeyState("RButton") )
	MouseClick "right", , , , , "U"
return
}
