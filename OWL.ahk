#SingleInstance Force
CoordMode, Mouse, Screen
SetTitleMatchMode, 2
Run, %A_Desktop%\Check Brightness.ahk
sleep 100
Run, %A_Desktop%\lowest brightness.ahk
SoundGet, master_mute,, Mute
if (master_mute = "Off")
{
    SoundSet, +1,, Mute
}
Run, https://www.youtube.com/c/overwatchleague/videos?view=2&live_view=501
sleep 10000
ImageSearch, Fx, Fy, 300, 600, 1200, 900, D:\AutoHotKey Scripts\live.png
if ErrorLevel = 1
{
Send, !{F4}
sleep 100
Reload
}
if ErrorLevel = 0
{
mousemove, 540, 800
sleep 200
click
Mousemove, 0, 500
sleep 150000
}
loop {
Run, https://www.youtube.com/c/overwatchleague/videos?view=2&live_view=501
sleep 10000
ImageSearch, Fx, Fy, 300, 600, 1200, 900, D:\AutoHotKey Scripts\live.png
if ErrorLevel = 1
{
Send, !{F4}
Reload
}
if ErrorLevel = 0
{
mousemove, 540, 800
sleep 200
click
Mousemove, 0, 500
sleep 5000
Send, ^+{A}
sleep 1000
Send, {Enter}
sleep 1000
Send, ^{F4}
sleep 150000
}
}


Esc::
SoundGet, master_mute,, Mute
if (master_mute = "On")
{
    SoundSet, +1,, Mute
}
Run, %A_Desktop%\restore brightness.ahk
sleep 10
ExitApp
