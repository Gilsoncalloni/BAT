@echo on
if exist "f:\logs" format F: /q /y
timeout 120

if not exist "f:\logs" mkdir "f:\logs"

if not exist "f:\backup-db"     mkdir "f:\backup-db"
xcopy "\\s4\d$\Bancos\backup\*.*"  /y /e  "f:\backup-db\" > "f:\logs\bancos-totvs12.log"

if not exist "f:\backup-sql\Protheus11_Prod"     mkdir "f:\backup-sql\Protheus11_Prod"
if not exist "f:\backup-sql\Quirius"             mkdir "f:\backup-sql\Quirius"
if not exist "f:\backup-sql\TSSPROD_SQLEXPRESS"  mkdir "f:\backup-sql\TSSPROD_SQLEXPRESS"
if not exist "f:\Backup_SrvWin"                  mkdir "f:\Backup_SrvWin"

xcopy "\\s4\E$\backup-sql\Protheus11_Prod\*.*"     /y /e  "f:\backup-sql\Protheus11_Prod\"    > "f:\logs\Protheus11_Prod.log"
xcopy "\\s4\E$\Backup_SrvWin\*.*"                  /y /e  "f:\Backup_SrvWin\"                 > "f:\logs\Backup_SrvWin.log"
xcopy "\\s4\E$\backup-sql\Mercador-Quirius\*.*"    /y /e  "f:\backup-sql\Quirius\"            > "f:\logs\Quirius.log"
xcopy "\\s4\E$\backup-sql\TSSPROD_SQLEXPRESS\*.*"  /y /e  "f:\backup-sql\TSSPROD_SQLEXPRESS\" > "f:\logs\TSSPROD_SQLEXPRESS.log"
xcopy "\\s6\Mercador\*.*"                          /y /e "f:\fileserver\s6_mercador\"         > "f:\logs\fileserver_mercador.log"
xcopy "\\s6\wfm2\*.*"                              /y /e "f:\fileserver\s6_wfm\"              > "f:\logs\fileserver_s6_wfm.log"
timeout 120
freeeject f:

exit
