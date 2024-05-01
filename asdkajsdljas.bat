@echo off    
@SET /P COD01=Cod_01
@SET /P COD02=Cod_02

@call:DoReplace %COD01% %COD02% arquivooriginal.txt arquivomodificado.txt
@exit /b

::Cria o arquivo do PowerShell para ser executado conforme parâmetros acima.
:DoReplace
@echo ^(Get-Content "%3"^) ^| ForEach-Object { $_ -replace %1, %2 } ^| Set-Content %4>Rep.ps1
::Executa o arquivo criado.
@Powershell.exe -executionpolicy ByPass -File Rep.ps1
::Deleta o arquivo.
@if exist Rep.ps1 del Rep.ps1
:: Renomeia.
@RENAME arquivooriginal.txt c:\temp\arquivooriginal_old.txt
@RENAME arquivomodificado.txt c:\temp\arquivooriginal.txt
pause