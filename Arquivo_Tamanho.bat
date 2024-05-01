for %%a in (dir "C:\temp\Patrimonios__13042020_71290.csv") do set /a tamanho=%%~za
echo tamanho do arquivo = %tamanho% 
timeout 10
if %tamanho% LSS 17860230000  echo Arquivo >>C:\temp\Tamanho.txt
rem  \\s3\Basico_TI\Instaladores_Basicos\curl.exe  --insecure "https://api.telegram.org/bot735330179:AAHbd-XBVyhJ3JvvAV9kovKP0RLmuCoxhkg/sendmessage?chat_id=-336287119&text= Opa,o tamnaho do arquivo %tamanho%"
rem ("https://api.telegram.org/bot735330179:AAHbd-XBVyhJ3JvvAV9kovKP0RLmuCoxhkg/sendmessage?chat_id=-336287119&text= Opa,olha tamanho arquivo")
rem else ( "https://api.telegram.org/bot735330179:AAHbd-XBVyhJ3JvvAV9kovKP0RLmuCoxhkg/sendmessage?chat_id=-336287119&text= tamanho ok%" )
rem 