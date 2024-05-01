if not exist "f:\logs" mkdir "f:\logs"

if not exist "f:\backup-sql\Protheus11_Prod"     mkdir "f:\backup-sql\Protheus11_Prod"
if not exist "f:\backup-sql\Quirius"             mkdir "f:\backup-sql\Quirius"
if not exist "f:\backup-sql\TSSPROD_SQLEXPRESS"  mkdir "f:\backup-sql\TSSPROD_SQLEXPRESS"


xcopy "\\s4\e$\backup-sql\Protheus11_Prod\*.*"     /y /e  "f:\backup-sql\Protheus11_Prod\"    > "f:\logs\Protheus11_Prod.log"
xcopy "\\s4\e$\backup-sql\Mercador-Quirius\*.*"    /y /e  "f:\backup-sql\Quirius\"            > "f:\logs\Quirius.log"
xcopy "\\s4\e$\backup-sql\TSSPROD_SQLEXPRESS\*.*"  /y /e  "f:\backup-sql\TSSPROD_SQLEXPRESS\" > "f:\logs\TSSPROD_SQLEXPRESS.log"

