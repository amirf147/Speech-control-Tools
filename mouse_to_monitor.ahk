; Monitor locations: 
; In a four quadrant plane, primary monitor as defined by windows is in
; quadrant 1 While the secondary monitor is in quadrant three 

#Requires AutoHotkey v2.0-beta

CoordMode "Mouse", "Screen"

^!F1:: ; Move mouse to the center of monitor number one 
{
    MonitorGetWorkArea 1, &Left, &Top, &Right, &Bottom
    MouseMove (Left + Right) / 2, (Top + Bottom) / 2
}

^!F2:: ; Move mouse to the center of the secondary monitor
{
    MonitorGetWorkArea 2, &Left, &Top, &Right, &Bottom
    MouseMove (Left + Right) / 2, (Top + Bottom) / 2
}
