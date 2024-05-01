﻿rem bat para fazer a instalação de programas básicos em estações de trabalho ambiente Conservas Oderich S/A


rem # verifica a existencia da pasta temp, caso nao exista cria e copia os programas para a pasta 
start \\s3\basico_TI\bat\marca_proxy.vbs
start \\s3\Basico_TI\Bat\pagina_inicial.vbs
start iexplore
if not exist "c:\temp" md c:\temp
xcopy "\\s3\Basico_TI\bat\LibreOffice.msi"  /y /e "C:\temp\"
xcopy "\\s3\Basico_TI\bat\lightshot.exe" /y /e "C:\temp\"
xcopy "\\s3\Basico_TI\bat\npp.exe" /y /e "C:\temp\"
xcopy "\\s3\Basico_TI\bat\ChromeSetup.exe" /y /e "C:\temp\"
rem xcopy "\\s3\Basico_TI\bat\fusioninventory.vbs" /y /e "C:\temp\"
rem xcopy "\\s3\Basico_TI\bat\fusioninventory-agent_windows-i386_2.2.7-4.exe" /y /e "C:\temp\"
rem xcopy "\\s3\Basico_TI\bat\Ramais.url" /y /e "C:\Users\%username%\Desktop\"
xcopy "\\s3\Basico_TI\bat\Adobe.exe" /y /e "C:\temp\"
xcopy "\\s3\Basico_TI\bat\Firefox.exe" /y /e "C:\temp\"
xcopy "\\s3\Basico_TI\bat\Thunderbird.exe" /y /e "C:\temp\"
rem xcopy "\\s3\Basico_TI\bat\spark.exe" /y /e "C:\temp\"
rem xcopy "\\Srvav\klshare\PkgInst\NetAgent_10.5.1781_KES_11.0.0.6499\installer.exe" /y /e "C:\temp\"

rem #vai para a pasta temp
cd c:\temp

rem #inicia a instalação dos programas 
start lightshot.exe /SILENT
start \\s3\basico_TI\bat\marca_proxy.vbs
start npp.exe /S
rem rem start spark.exe /q
start ChromeSetup.exe
rem start Firefox.exe /SILENT
start Adobe.exe /sAll
rem start Thunderbird /SILENT
rem start installer.exe /s
rem start Thunderbird.exe -ms -ma 
rem # define tempo de tela em 15 minutos, caso não tenha atividade desliga o monitor.
POWERCFG /CHANGE monitor-timeout-ac 15

rem # cria atalho para lista de ramais 
echo [InternetShortcut] > "C:\Users\Public\Desktop\Ramais.URL"
echo URL=http://mercador.oderich.com.br/inst/lista_ramais.pdf >> "C:\Users\Public\Desktop\Ramais.URL"
echo IconIndex=0 >> "C:\Users\Public\Desktop\Ramais.URL


rem msiexec /I "c:\temp\LibreOffice.msi"  /quiet REGISTER_DOC=1 REGISTER_XLS=1
 

rem #apaga todo conteudo da pasta c:\temp
del /q c:\temp\*.exe
del /q c:\temp\*.msi

pause
