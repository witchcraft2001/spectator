@echo off
set appname=SPECTR

if EXIST %appname%.exe (
	del %appname%.exe
)
..\asm\sjasmplus\sjasmplus.exe %appname%.asm --lst=%appname%.lst
if errorlevel 1 goto ERR
echo Ok!
goto END

:ERR
del %appname%.exe
pause
echo ошибки компиляции...
pause
goto END

:END
