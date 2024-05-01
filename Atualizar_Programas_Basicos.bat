REM  bat para fazer a instalação de programas básicos em estações de trabalho ambiente Conservas Oderich S/A
REM versao 20190627 - ajuste para istalar programas de forma separada para sistemas  32 e 64 Bits
REM versao 20200429 - ajuste para novo servidor de FileServer
REM versao 20200813 - Ajuste para fazer a instalação sem copiar libreoffice, validar se 



REM tarefas que não dependem da versao do sistema Operacional 
Color 02
rem # define tempo de tela em 15 minutos, caso não tenha atividade desliga o monitor.
POWERCFG /CHANGE monitor-timeout-ac 15
POWERCFG -h off  


REM abre painel de controle para add impressoras
rem ABRE PROGRAMAS E RECURSOS
APPWIZ.CPL
rem # cria atalho para lista de ramais 
echo [InternetShortcut] > "C:\Users\Public\Desktop\Ramais.URL"
echo URL=http://mercador.oderich.com.br/inst/lista_ramais.pdf >> "C:\Users\Public\Desktop\Ramais.URL"
echo IconIndex=0 >> "C:\Users\Public\Desktop\Ramais.URL


rem start /wait \\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\pagina_inicial.vbs

start \\vms-fss01\e$\Setor\Ti\Basico_TI\_Ajuda.txt
start \\vms-printer\
REM start iexplore http://nac.oderich.com.br:6060
if not exist "c:\temp" md c:\temp

			



if exist "C:\Program Files (x86)"      goto 64Bits
if not exist "C:\Program Files (x86)"  goto 32Bits


:32Bits
echo Sistema 32
pause
goto end



REM ### Desistala programas
taskkill /f /im OneDrive.exe
%SystemRoot%\System32\OneDriveSetup.exe /uninstall

if exist "C:\Program Files\WinRAR"  start /wait "C:\Program Files\WinRAR\uninstall.exe" /S


REM Programas que devem ser 64Bits 
:64Bits
echo Sistema 64


rem # verifica a existencia da pasta temp, caso nao exista cria e copia os programas para a pasta 

REM xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\LibreOffice.msi"  /y /e "C:\temp\"
REM xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Instaladores_Basicos\Bitdefender\epskit_x64"  /y /e "C:\temp\"
REM xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Instaladores_Basicos\Bitdefender\epskit_x64\installer.xml"  /y /e "C:\temp\"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\7z1900-x64.exe"  /y /e "C:\temp\"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\lightshot.exe" /y /e "C:\temp\"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\npp.exe" /y /e "C:\temp\"
REM xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\UltraVNC_1_2_24_X64_Setup.exe" /y /e "C:\temp\"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\ChromeSetup.exe" /y /e "C:\temp\"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\readerdc_br_fb_crd_install.exe" /y /e "C:\temp\"
rem xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\Firefox.exe" /y /e "C:\temp\"
REM xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\Thunderbird.exe" /y /e "C:\temp\"
REM xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\spark.exe" /y /e "C:\temp\"
REM xcopy "\\10.1.1.202\Basico_TI\Instaladores_Basicos\TeamViewer.exe" /y /e "C:\Users\Public\Desktop\"
md

REM Remove aplicativso Microsoft
REM powershell.exe -noexit -file "S:\Ti\Basico_TI\Bat\Remove_programas_loja_Windows.ps1" 

rem # vai para a pasta temp
cd c:\temp

rem #inicia a instalação dos programas 
start /wait UltraVNC_1_2_24_X64_Setup.exe /silent /loadinf="\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\UltraVNC.txt"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\ultravnc.ini" /y /e "C:\Program Files\uvnc bvba\UltraVNC\"
call "" "C:\Program Files\uvnc bvba\UltraVNC\winvnc.exe"
REM Atualza as politicas de grupo para carregar membros que podem fazer acesso remoto
gpupdate /force
start /wait lightshot.exe /SILENT
start \\10.1.1.202\Ti\Basico_TI\Instaladores_Basicos\TreeSizeFreeSetup.exe /silent
start /wait npp.exe /S
start /wait 7z1900-x64.exe /S
rem start /wait spark.exe /q -q -c
start /wait spark.exe -q -c
start ChromeSetup.exe
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://nac.oderich.com.br:6060/
rem start /wait Firefox.exe /SILENT
start /wait c:\temp\readerdc_br_fb_crd_install.exe /sAll
start /wait Thunderbird.exe -ms -ma 
start /wat \\10.1.1.202\Ti\Basico_TI\Instaladores_Basicos\TreeSizeFreeSetup.exe /lang=portuguese-br /verysilent
start /wait epskit_x64.exe
msiexec /I "\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\64\LibreOffice.msi"  /qn REGISTER_DOC=1 REGISTER_XLS=1
rem msiexec /I "c:\temp\LibreOffice.msi"  /quiet REGISTER_DOC=1 REGISTER_XLS=1  rem MUDA CONFORME VERSAO LIBREOFFICE


rem setar teclado para iniciar com numlock 
rem HKEY_USERS\.Default\Control Panel\Keyboard.
rem Altere o valor de InitialKeyboardIndicators de 0 para 2.


REM ### Desistala programas
taskkill /f /im OneDrive.exe
start %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall



if exist "C:\Program Files (x86)\WinRAR" start /wait "C:\Program Files (x86)\WinRAR\uninstall.exe" /S


goto end




:end




Color 07

rem #apaga todo conteudo da pasta c:\temp
del /q c:\temp\*.exe
del /q c:\temp\*.msi
\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\NaoMexer\Telegram.bat Instalados_programas_em_%computername%_%date%
pause