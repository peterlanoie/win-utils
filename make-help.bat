@echo off


if "%1"=="" goto help
set helpdir=%~dp0
set commandname=%1
echo Generating help for: %commandname%
set helpfile=%helpdir%%1.help.txt
echo Generated help file: %helpfile%
%* > %helpfile%
npp %helpfile%

goto end

:help
echo Please provide a command to run.
echo Example:
echo     make-help del /?

:end
