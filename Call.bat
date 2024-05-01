
set mensagem=C:\TEMP
SET SITE=http:\\www.google.com.br
rem echo %mensagem%
START %mensagem%
TIMEOUT 10
start iexplore.exe "%site%"
TIMEOUT 10
start iexplore.exe "www.terra.com.br"
pause 