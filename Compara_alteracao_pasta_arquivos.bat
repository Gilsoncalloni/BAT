rem comparar arquivos
REM Criar arquivo agora, e um arquivo anterior,  a cada execução troca de nome para data-hora , 
REM compara-se agora e anteriror , se alterar gera um  log e salva na pasta com nome alteração e 
REM manda aviso com o que foi alterado no telegram


REM ##### Melhorias :
REM colocar segundo ou outro parametro para poder rodar no mosmo minuto
REM poder adicionar mais de uma pasta para analisar
REM limpeza de logs antigos 

For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set dia=%%a)
For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mes=%%b)
For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set ano=%%c)
For /f "tokens=1-4 delims=: " %%h in ('time /t') do (set hra=%%h)
For /f "tokens=1-4 delims=: " %%h in ('time /t') do (set min=%%i)


cd c:\temp
if exist c:\temp\anterior.log ren anterior.log anterior_%ano%_%mes%_%dia%_%hra%_%min%.log
if exist c:\temp\agora.log ren agora.log  anterior.log


set pasta1="d:\temp\apagar\Spam_20211206-2358" 
REM set pasta2="c:\temp\apagar\Spam_20211206-2358" 
dir /S %pasta1%  | find /v "<DIR" >c:\temp\agora.log     
REM dir /S %pasta2%  | find /v "<DIR" >c:\temp\2.log
fc c:\temp\agora.log c:\temp\anterior.log > c:\temp\diferenca.log
 if %errorlevel% neq 0 (
 curl --insecure "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendMessage?chat_id=-418124706&text=Arquivos_Diferentes"
 curl -F document=@"c:\temp\diferenca.log" "https://api.telegram.org/bot1652949401:AAFops2pPzphgles8U5J-gt5vTXmohoCsl4/sendDocument?chat_id=-418124706"
  )



REM if Errorlevels =  1 log + alerta
REM if Errorlevels =  0 log


