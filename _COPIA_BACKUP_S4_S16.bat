@echo off
color 1f
echo.
echo ****************************************************
echo *    Copia dos Backup's do S4 para S16             *
echo ****************************************************
echo.
echo.
echo Inicio da copia >> D:\bancos\log\copia_backup_s4-s16.log

time /t >> D:\bancos\log\copia_backup_s4-s16.log
date /t >> D:\bancos\log\copia_backup_s4-s16.log

xcopy D:\Bancos\backup\*.bkp  /y /e  \\s16\d$\backup >> D:\bancos\log\copia_backup_s4-s16.log


time /t >> D:\bancos\log\copia_backup_s4-s16.log
date /t >> D:\bancos\log\copia_backup_s4-s16.log

echo Fim da copia  >> D:\bancos\log\copia_backup_s4-s16.log




