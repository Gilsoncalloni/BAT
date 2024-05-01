REM call netstat -ano | find /c  "146.112" >>c:\temp\testestat.txt && echo %date%;%time% >>c:\temp\testestat.txt
REM timeout 15



FOR /f "tokens=*" %%G IN ( ' "call netstat -ano | find /c  "146.112" " ' ) DO ( echo %date%;%time%;%%G >>c:\temp\lognetstat.log)

timeout 15


