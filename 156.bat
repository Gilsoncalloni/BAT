
@echo on

rem if not exist "f:\logs"           mkdir "f:\logs"

rem xcopy "\\s3\e$\Backup_P11\backup\*.*"                            /y /e  "\\10.1.1.156\backup\Fita\backup-db\"                     > "\\10.1.1.156\backup\Log_Fita\logs\bancos-totvs12.log"
rem xcopy "\\s4\E$\backup-sql\*.*"                                   /y /e  "\\10.1.1.156\backup\Fita\backup-sql\"                    > "\\10.1.1.156\backup\Log_Fita\logs\SQL.log"
rem xcopy "\\s4\E$\Backup_SrvWin\datasul\dts-0\ERP\especificos\*.*"  /y /e  "\\10.1.1.156\backup\Fita\Backup_SrvWin\"                 > "\\10.1.1.156\backup\Log_Fita\logs\Backup_SrvWin.log"
xcopy "\\s19\Mercador\*.*"                                       /y /e  "\\10.1.1.156\backup\Fita\fileserver\s19_mercador\"       > "\\10.1.1.156\backup\Log_Fita\logs\fileserver_mercador.log"
xcopy "\\s17\wfm2\*.*"                                           /y /e  "\\10.1.1.156\backup\Fita\fileserver\s17_wfm\"            > "\\10.1.1.156\backup\Log_Fita\logs\fileserver_s17_wfm.log"
xcopy "\\s3\Totvs\*.*"                                           /y /e  "\\10.1.1.156\backup\Fita\fileserver\S3_TOTVS\"           > "\\10.1.1.156\backup\Log_Fita\logs\fileserver_S3_TOTVS.log"

rem xcopy "f:\logs\*.*"                                              /y /e  "\\s4\E$\LOG\" 
timeout 60
rem xcopy "e:\logs\*.*"                                              /y /e  "\\10.1.1.156\backup\Log_Fita\" 
timeout 600

rem freeeject f:
rem envia mensagem referente ao termino da rotina
msg /server:note-ti-gilson gilson Backup Pronto !

rem ## Fita não está ejetando pelo bat, mas pelo cmd sim, ajustado 1o espera de 2 para 5 min e uma nova tentativa de ejetar após 2 min
rem timeout 120
rem freeeject f:
exit
