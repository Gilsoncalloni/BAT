@echo off
title Desligamento Programado
echo.
echo.
echo 
rem systeminfo
pause


echo Define Tempo de Desligamento em minutos
echo [1] 30_Minutos
echo [2] 60_Minutos
set /p opcao=Digite a opcao:
if "%opcao%" == "1" goto T30
if "%opcao%" == "2" goto T60
if "%opcao%" == "3" goto Tc

:T30
shutdown -s -t 1800

:T60
shutdown -s -t 3600

:Tc
shutdown -a

pausa