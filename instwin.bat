@echo off
echo Este programa instalara os arquivos de interface PDF no seu sistema
echo Pressione control-c para cancelar ou

echo This program will install the PDF support files in this system
echo Press control-c to cancel or
pause


if exist %windir% goto relative
if exist c:\winnt goto nt
if exist c:\windows goto win9x
goto error



:relative
copy procryptlib.dll %windir%
copy md5.exe %windir%

goto end

:nt
copy procryptlib.dll c:\winnt
copy md5.exe c:\winnt

goto end

:win9x
copy procryptlib.dll c:\windows
copy md5.exe c:\windows


:error
echo Pasta do sistema Operacional nao encontrada


:end

