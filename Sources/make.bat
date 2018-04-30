@echo off

set WHERE=
:TryAgain
  set WHERE=..\%WHERE%
if not exist %WHERE%Applis GOTO TryAgain

call %WHERE%Applis\WinAVR\environ.bat %~d0

make.exe %1 %2 %3 %4 %5 %6 %7 %8 %9