set file=C:\temp\Sent
rem for /f "delims=" %%a in ('"dir /b %userprofile%\appdata\Roaming\Thunderbird\Profiles | find  "relea""') do set "name=%%a"

for /f "tokens=2 delims=<" %%b in ('findstr  "@" %file% ') do echo %%b;;;%%b >> c:\temp\contatos5.txt
REM start c:\temp\contatos5.txt
timeout 10
REM  fazer no linux 

