@echo off
setlocal enabledelayedexpansion enableextensions

set myPath=C:\temp\apagar\0001.bmp
call :file_name_from_path result !myPath!
echo %result%

goto :eof

:file_name_from_path <resultVar> <pathVar>
(
    set "%~1=%~dp0"
    exit /b
)

:eof
endlocal