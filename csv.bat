del c:\temp\usuarios_apagar.tmp /q
del c:\temp\Teste2.txt /q
timeout 5
for /f "usebackq tokens=1-3 delims= " %%a in ("c:\temp\sample.csv") do (
      echo %%c >>c:\temp\usuarios_apagar.tmp )
	  start c:\temp\usuarios_apagar.tmp
	  
  REM for /F "tokens=1 delims= " %%A in (c:\temp\usuarios_apagar.tmp) do (
  REM echo %%A >> c:\temp\Teste2.txt )
call %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
rem -noexit "& 'c:\temp\removeespaco.ps1'
REM type "c:\temp\usuarios_apagar.tmp" | repl.bat "[ \t]+(?:(\|)|$)" "$1" >"c:\temp\Teste3.txt"
  
  REM start c:\temp\Teste3.txt
  
  pause
timeout 10
REM for /f "tokens=1-4 delims=.^*" %I in ("%test%") do @set test=%I.%J.%K.%L
	  
	  REM  
	  REM pause
	  REM del c:\temp\usuarios_apagar.tmp