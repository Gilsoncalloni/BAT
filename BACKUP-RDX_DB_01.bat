
@echo on
if exist "f:\logs" format F: /q /y
timeout 120

if not exist "f:\logs"           mkdir "f:\logs"

if not exist "f:\backup-db"      mkdir "f:\backup-db"
xcopy "\\s3\e$\Backup_P11\backup\*.*"  /y /e  "f:\backup-db\" > "f:\logs\bancos-totvs12.log"


if not exist "f:\backup-sql"      mkdir "f:\backup-sql"
if not exist "f:\Backup_SrvWin"   mkdir "f:\Backup_SrvWin"

xcopy "\\s4\E$\backup-sql\*.*"                                   /y /e  "f:\backup-sql\"                    > "f:\logs\SQL.log"
xcopy "\\s4\E$\Backup_SrvWin\datasul\dts-0\ERP\especificos\*.*"  /y /e  "f:\Backup_SrvWin\"                 > "f:\logs\Backup_SrvWin.log"
xcopy "\\s19\Mercador\*.*"                                       /y /e  "f:\fileserver\s19_mercador\"       > "f:\logs\fileserver_mercador.log"
xcopy "\\s17\wfm2\*.*"                                           /y /e  "f:\fileserver\s17_wfm\"            > "f:\logs\fileserver_s17_wfm.log"
xcopy "\\s3\Totvs\*.*"                                           /y /e  "f:\fileserver\S3_TOTVS\"           > "f:\logs\fileserver_S3_TOTVS.log"
xcopy "f:\logs\*.*"                                              /y /e  "\\s4\E$\LOG\" 
timeout 60
xcopy "e:\logs\*.*"                                              /y /e  "\\10.1.1.156\backup\Log_Fita\" 
timeout 600

freeeject f:
rem envia mensagem referente ao termino da rotina
msg /server:note-ti-gilson gilson Fita sendo ejetada !

rem ## Fita não está ejetando pelo bat, mas pelo cmd sim, ajustado 1o espera de 2 para 5 min e uma nova tentativa de ejetar após 2 min
rem timeout 120
rem freeeject f:
exit
