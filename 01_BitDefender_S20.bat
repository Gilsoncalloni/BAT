REM instala BitDefender por versao sistema operacional
control

if exist "C:\Program Files (x86)"      goto 64Bits
if not exist "C:\Program Files (x86)"  goto 32Bits

:32Bits
\\10.1.1.74\bitdefender$\epskit_x86\epskit_x86.exe

goto end


:64Bits
\\10.1.1.74\bitdefender$\epskit_x64\epskit_x64.exe


goto end

:end
pause