#NoEnv
#InstallKeybdHook
#InstallMouseHook
SendMode Input

while true
{
	Sleep, 10000
	Process, Exist, Origin.exe
	if ErrorLevel
	{
		WinGet, id, list, ahk_pid %ErrorLevel%
		Loop, %id%
		{
			this_id := id%A_Index%
			ControlSend, , {Enter}, ahk_id %this_id%
		}
	}
	else ExitApp
}
