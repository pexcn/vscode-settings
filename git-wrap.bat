@echo off
setlocal

set PATH=%~dp0usr\bin;%PATH%

:loop
if "%~1" equ "rev-parse" goto rev_parse
shift
if not "%~1"=="" goto loop

git.exe %*
goto :eof

:rev_parse
git.exe %* | cygpath -w -f -
