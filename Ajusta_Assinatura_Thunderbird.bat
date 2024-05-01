@echo off
for /f "delims=" %%a in ('"dir /b %userprofile%\appdata\Roaming\Thunderbird\Profiles | find "relea""') do set "name=%%a"
start %userprofile%\appdata\Roaming\Thunderbird\Profiles\%name%\"
rem
REM fazer copia antes de alterar
set ffile='%userprofile%\appdata\Roaming\Thunderbird\Profiles\%name%\prefs_new.js'
set fold='endereco_email'
set fnew='%username%'
powershell -Command "(gc %ffile%) -replace %fold%, %fnew% | Out-File %ffile% -encoding utf8"



for /f "tokens=3 delims=;" %%b in ('findstr  "%username%"    c:\temp\contatos.csv') do set "nome_usuario=%%b"
echo %nome_usuario%
for /f "tokens=6 delims=;" %%c in ('findstr  "%username%"    c:\temp\contatos.csv') do set "setor=%%c"
for /f "tokens=1 delims=;" %%d in ('findstr  "%username%"    c:\temp\contatos.csv') do set "unidade=%%d"
for /f "tokens=5 delims=;" %%e in ('findstr  "%username%"    c:\temp\contatos.csv') do set "telefone=%%e"

REM timeout 15
set fold2='nome_usuario'
set fnew2='%nome_usuario%'
powershell -Command "(gc %ffile%) -replace %fold2%, %fnew2% | Out-File %ffile% -encoding utf8"
set fold2='setor'
set fnew2='%setor%'
powershell -Command "(gc %ffile%) -replace %fold2%, %fnew2% | Out-File %ffile% -encoding utf8"
set fold2='unidade'
set fnew2='%unidade%'
powershell -Command "(gc %ffile%) -replace %fold2%, %fnew2% | Out-File %ffile% -encoding utf8"
set fold2='telefone'
set fnew2='%telefone%'
powershell -Command "(gc %ffile%) -replace %fold2%, %fnew2% | Out-File %ffile% -encoding utf8"



REM timeout 15




REM Use powershell in .bat - for Windows 7+

REM encoding utf8 is optional, good for web sites

REM @echo off
REM set ffile='myfile.txt'
REM set fold='FOO'
REM set fnew='BAR'
REM powershell -Command "(gc %ffile%) -replace %fold%, %fnew% | Out-File %ffile% -encoding utf8"