#SingleInstance
!m::
Loop, 100
{
MouseGetPos, xpos, ypos 
MouseMove xpos + 5, ypos
Sleep, 1000
MouseMove xpos - 5, ypos
Sleep, 60000
}

!S::
Loop, 1
{
Suspend
Return
}