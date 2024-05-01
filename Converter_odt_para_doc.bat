REM Comando deve ser executado na pasta ondem vão ser salvos os arquivos
REM Converte arquivos de um formato para outro , necessario ter libreoffice instalado na maquina, 
REM pasta = pasta que comtem os arquivos a serem transformados
REM neste caso, estão sendo convertidos de .odt para .dod, para transformar de .ods para xls usar  "C:\Program Files\LibreOffice\program\scalc.exe" --headless --convert-to xls "c:\temp\Semtítulo1.ods"
REM Gilson Calloni 2020/12/28
set pasta=C:\temp\apagar
md %pasta%\old
copy %pasta%\*.odt %pasta%\old\ /y  
for /f  "tokens=1* delims=|" %%b in ('"dir /b %pasta%\*.odt "') do "C:\Program Files\LibreOffice\program\swriter.exe" --headless --convert-to doc "%pasta%\%%b"
pause