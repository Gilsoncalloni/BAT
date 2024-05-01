 del  c:\temp\lista_mail.txt
set file=C:\temp\Apagar\Spam_20211206-2358\messages.csv
rem for /f "delims=" %%a in ('"dir /b %userprofile%\appdata\Roaming\Thunderbird\Profiles | find  "relea""') do set "name=%%a"

 echo Aberto;De;Para;Data;Assunto  >> c:\temp\lista_mail.csv
for /f "tokens=2,3,4,6 delims=," %%a in ('findstr  "@" %file% ') do echo Aberto;%%b;%%c;%%d;%%e  >> c:\temp\lista_mail.csv
REM start c:\temp\contatos5.txt
timeout 7
REM  fazer no linux 
start  c:\temp\lista_mail.csv


REM Tentar fazer com o powerahell
REM sendo o arquivo gerado pelo ng export tools  , melhor fazer direto  C:\Users\gilso\AppData\Roaming\Thunderbird\Profiles\lpwqitv6.default-release\ImapMail\imap.gmail-1.com\[Gmail].sbd\Spam.msf