REM Parece que o thunderbird é quem executa e acaba não achando o curl que por fora roda, de forma correta, tentar :
REM passar para uma segunda rotina apenas as variavies call telegram ;;;
REM ou trocar de -- para as opçoes do curl 
chcp 65001
echo off
set var01=%1
set var02=%2
REM curl --insecure "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text=1_"%var01%" "
set Requerente=%var01:@oderich.com.br=%

REM for /f "tokens=1  delims=< " %%d in ('findstr  "mail.smtpserver.smtp1.port"    %userprofile%\appdata\Roaming\Thunderbird\Profiles\%name%\prefs.js') do set "porta=%%d" 

REM set "Assunto1=%var02:Nós=%"
REM set xx="fish"
set "str=%var02:Nós recebemos seu ticket - =%"
set "tele=%str:-=%"
REM call set str=%%var02:%str%%%
REM set "Assunto2=%Assunto1:recebemos=%"
REM set "Assunto3=%Assunto2:seu=%"
REM set "Assunto4=%Assunto3:ticket=%"
REM echo %str%


REM set word=table
REM set str="jump over the chair"
REM call set str=%%str:the chair=%word%%%



REM set "Assunto=%var02:Matr¡cula=%"
REM --curl --insecure "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text=%var01%" 
timeout 1

REM --powershell.exe -command " Invoke-WebRequest -Uri  "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text=🔥" "

curl --insecure "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text= Opa"
curl -k         "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text=Opa %data% %tele% "
timeout 1
echo Aberto ; %date% ; %Requerente% ;Chamado;link;Setor;Usuario;%str%;GLPI;link;Status >>c:\temp\apagar\teste2.lst

REM curl --insecure "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text= Opa%0a,O%20computador %computername% %date% %time% %name% "

timeout 1
REM Nós recebemos seu ticket - 

REM REM C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe, D:\OneDrive\Trabalho\Scripts\PowerShell\Telegram_teste.ps1


REM set r_userprofile=%userprofile:C:\Users\=%
REM D:\OneDrive\Trabalho\Scripts\BAT\arquivo.bat,@RECIPIENTS@,@SUBJECT@
rem REM D:\OneDrive\Trabalho\Scripts\BAT\arquivo.bat,@DATE@,@RECIPIENTS@,@SUBJECT@

REM Status	Data Abertura	Aberto por	Chamado	Portal	Setor	Usuário	Assunto	GLPI	Chamado Link	Status
 REM @SUBJECT@ subject
 REM @MESSAGEID@ message Id
 REM @AUTHOR@ author
 REM @RECIPIENTS@ recipients
 REM @DATE@ date (local string)
 REM @CCLIST@ cc list
 REM @DATEINSECONDS@ date in seconds
 REM @MESSAGEURI@ URI for the message
 REM @PROPERTY@somedbproperty@ uses .getStringProperty(“somedbproperty”)