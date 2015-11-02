#F5::
IfWinNotExist, De MonsterDebugger
  Run, "D:\sbin\air\De MonsterDebugger\De MonsterDebugger.exe"

IfWinNotExist, Adobe Flash Player 10
  Run, "D:\bin\flashplayer_10_sa_debug.exe"

WinWait, De MonsterDebugger, , 3
if ErrorLevel
{
  MsgBox, De MonsterDebugger timed out.
  return
}
else
{
  WinActivate, De MonsterDebugger
}
      
WinWait, Adobe Flash Player 10, , 3
if ErrorLevel
{
  MsgBox, Adobe Flash Player 10 timed out.
  return
}
else
{
  WinActivate, Adobe Flash Player 10
  Send, !f 1
}
return