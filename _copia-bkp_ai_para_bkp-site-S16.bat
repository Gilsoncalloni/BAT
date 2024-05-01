@echo off
color 1f
echo.

echo *****  Copiando os bkp-ai's para Backup Site  ***** >> D:\Bancos\no-stop\log\log-copia-bkp-ai-s16.log
echo *****  Copiando os bkp-ai's para Backup Site  *****
date /t >> D:\Bancos\no-stop\log\log-copia-bkp-ai-s16.log
time /t >> D:\Bancos\no-stop\log\log-copia-bkp-ai-s16.log

C:\WINDOWS\system32\xcopy D:\Bancos\no-stop\bkp-ai\totvs12\*.*   \\s16\d$\bancos\no-stop\bkp-ai\totvs12\ /Y /A /E       >> D:\Bancos\no-stop\log\log-copia-bkp-ai-s16.log

time /t >> D:\Bancos\no-stop\log\log-copia-bkp-ai-s16.log














