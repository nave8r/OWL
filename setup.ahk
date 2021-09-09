#SingleInstance Force
msgbox, create desktop shortcut ?
IfMsgBox, Yes
{
FileCreateShortcut, OWL points.ahk, %A_Desktop%\OWL points.lnk, icon.ico
}
msgbox, run a test run ? (Esc will exit)
IfMsgBox, Yes
{
Run, testrun.ahk
}