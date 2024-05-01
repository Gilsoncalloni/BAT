REM **Move arquivos do usuario para a pasta de destino

REM Não feito usando a userprofile, pois para notas de demais itens não sensivies não é bom mover para não atrapalhar usuario


for /f "tokens=5 delims= " %%a in ('"dir /q \\10.1.1.205\temp\*.* | find "cassia""') do  (move "\\10.1.1.205\temp\%%a"  "\\10.1.1.202\rpw\cassia\")


REM for /f "tokens=6 delims=" %%a in ('"dir /q c:\temp\*.* | find "Rede_""') do ( copy "c:\temp\%%a" "C:\temp\Apagar\")
REM dir /q c:\temp\*.* | find "Rede_"

REM for /f "tokens=2 delims=" %%a in ('"dir /q c:\temp\*.* | find "Rede_""') do ( copy "c:\temp\%%a" "C:\temp\Apagar\")
REM for /f "tokens=5 delims= " %%a in ('"dir /q c:\temp\*.* | find "Rede_""') do  echo %%a" 

REM for /f "tokens=5 delims= " %%a in ('"dir /q c:\temp\*.* | find "Rede_""') do  (copy "c:\temp\%%a"  "C:\temp\Apagar\")



