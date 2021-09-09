#SingleInstance Force
CurrentBrightness 	:= GetCurrentBrightNess()
if FileExist("Brightness.txt")
	FileDelete, Brightness.txt
sleep 100
FileAppend, %CurrentBrightness%, Brightness.txt

GetCurrentBrightNess()
{
	For property in ComObjGet( "winmgmts:\\.\root\WMI" ).ExecQuery( "SELECT * FROM WmiMonitorBrightness" )
		currentBrightness := property.CurrentBrightness	

	return currentBrightness
}