REM instala BitDefender por versao sistema operacional
control

@echo off
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto :7_E_10
if "%version%" == "6.3" goto 7_E_10
if "%version%" == "6.2" goto 7_E_10
if "%version%" == "6.1" goto 7_E_10
if "%version%" == "6.0" goto 7_E_10
if "%version%" == "5.1" goto Legado
rem etc etc
endlocal

:Legado
\\s13\d$\Basico TI\BitDefender\legado\legado-epskit_x86
pause

:7_E_10
if exist "C:\Program Files (x86)"      goto 64Bits
if not exist "C:\Program Files (x86)"  goto 32Bits
pause
:32Bits
start. "\\s13\d$\Basico TI\BitDefender\epskit_x86"
start "\\s13\d$\Basico TI\BitDefender\epskit_x86\epskit_x86.exe"
pause
goto end


:64Bits
start. "\\s13\d$\Basico TI\BitDefender\pskit_x64"
start "\\s13\d$\Basico TI\BitDefender\pskit_x64\epskit_x64.exe"
pause

goto end

:end
pause