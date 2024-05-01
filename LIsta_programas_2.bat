REM acessa pasta thunderbird
REM @echo off
REM if not exist "%userprofile%\appdata\Roaming\Thunderbird" goto outro
REM else goto tem

REM reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\ /s | find "DisplayName" "

REM :Tem

for /f "delims=" %%a in (' reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\ /s /F  DisplayName /v  DisplayName ') do echo %computername%;%%a  >>c:\temp\Programas.txt
timeout 15




start C:\temp\Programas.txt
