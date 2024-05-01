rem  ## Script para mover periodicamente arquivos xml de uma pasta para outra facilitando as pesquisas / envios 
rem  ##  Gilson Calloni,  20190227


@echo off
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\1" "C:\TOTVS\NFe\XML-PROD\1\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\1_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\2" "C:\TOTVS\NFe\XML-PROD\2\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\2_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\3" "C:\TOTVS\NFe\XML-PROD\3\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\3_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\4" "C:\TOTVS\NFe\XML-PROD\4\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\4_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\5" "C:\TOTVS\NFe\XML-PROD\5\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\5_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\9" "C:\TOTVS\NFe\XML-PROD\9\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\9_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\10" "C:\TOTVS\NFe\XML-PROD\10\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\10_log.txt" /TEE
ROBOCOPY "C:\TOTVS\NFe\XML-PROD\11" "C:\TOTVS\NFe\XML-PROD\11\antigo" /MOVE /E /R:2 /W:2 /XD antigo /MINAGE:45 /LOG+:"C:\temp\11_log.txt" /TEE

rem # 45 é o numero de dias a ser considerado

