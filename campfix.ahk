NumberOfLoops := 1
AFK := 1
msgBox, Welcome to C.A.M.P fix! Use alt+F7 to set how many items you want to scrap and alt+F8 to scrap the items. Make sure you have the game set to the active window when you push alt+F8 Or, to pump dirty water, press alt + F9.
InputBox, NumberOfLoops, How Many Items?, Please enter the amount of items you want to scrap`, be careful! you dont want to scrap something else on accident., ,340,180
if ErrorLevel
    MsgBox, CANCEL was pressed.
!F7::
InputBox, NumberOfLoops, How Many Items?, Please enter the amount of items you want to scrap`, be careful! you dont want to scrap something else on accident., ,340,180
if ErrorLevel
    MsgBox, CANCEL was pressed.
return
!F8::

loop, %NumberOfLoops%
{
Random, rand1, 15, 25
Random, rand2, 45, 65
Send, {r DOWN}
Sleep, rand1
Send, {r UP}
Sleep, rand2
Send, {space DOWN}
Sleep, rand1
Send, {space UP}
Sleep, rand2
}
return


!F9::
loop, %NumberOfLoops%
{
Random, rand1, 15, 25
Random, rand2, 3300, 3700
Send, {r DOWN}
Sleep, rand1
Send, {r UP}
Sleep, rand2
}
return

!F10::
AFK := 1
while(AFK > 0){
tenMin := 1000 * 60 * 10
Random, rand1, 15, 25
Random, rand2, 1500, 3700
Send, {Up DOWN}
Sleep, rand1
Send, {Up UP}
Sleep, rand2
Send, {Down DOWN}
Sleep, rand1
Send, {Down UP}
Sleep, rand2
Send, {Up DOWN}
Sleep, rand1
Send, {Up UP}
Sleep, rand2
Send, {Down DOWN}
Sleep, rand1
Send, {Down UP}
Sleep, rand2
Sleep, %tenMin%
}
return

!F11::
AFK := 0
return
