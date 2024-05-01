REM Comando deve ser executado na pasta ondem vão ser salvos os arquivos
REM Converte arquivos de um formato para outro , necessario ter libreoffice instalado na maquina, 
REM pasta = pasta que comtem os arquivos a serem transformados
REM neste caso, estão sendo convertidos de .odt para .dod, para transformar de .ods para xls usar  "C:\Program Files\LibreOffice\program\scalc.exe" --headless --convert-to xls "c:\temp\Semtítulo1.ods"
REM Gilson Calloni 2020/12/28
set pasta=C:\temp
REM dir /s %pasta%\*.odt
for /f  "tokens=1* delims=|" %%b in ('"dir /s /b %pasta%\*.odt "') do echo "C:\Program Files\LibreOffice\program\swriter.exe" --headless --convert-to doc "%%b" --outdir  "%%~dpb" >>c:\temp\trocar.bat

( For /F "tokens=* delims=" %%A  In (c:\temp\trocar.bat) Do @Set "_=%%A"&Call Echo ^%_:~0,-3^%)>c:\temp\outputFilebat.txt
 REM %PATH:~10,5% 

REM dir /s %pasta%\*.odt
REM dir /s %pasta%\*.doc
timeout 10



REM (For /F "tokens=* delims=" %A  In (c:\temp\trocar.bat) Do @Set "_=%A"&Call Echo ^%_:~0,-3^%)>c:\temp\outputFilebat.txt