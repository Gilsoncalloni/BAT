@echo off
chcp 1252 > Nul

:: Informe aqui o caminho para as pastas compactadas e a senha:
set "Caminho=c:\temp\apagar"
REM set "Senha=toni21"

if /i exist "%Programfiles%\7-Zip\7z.exe" set "Pro=%Programfiles%\7-Zip\7z.exe"
if /i exist "%Programfiles% (x86)\7-Zip\7z.exe" set "Pro=%Programfiles% (x86)\7-Zip\7z.exe"

for /r "%Caminho%" %%a in (*.zip) do "%Pro%" e "%%a" -y  -o"%%~dpa" *.*
cls
echo.
set /p "Deletar=Deseja deletar os arquivos *.7z originais? (s)im (n)ão: "
if /i "%Deletar%"=="S" del %Caminho%\*.7z /q /s