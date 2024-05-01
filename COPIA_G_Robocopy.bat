if not exist "f:\logs" mkdir "f:\logs"

if not exist "f:\fileserver\AA_Fiscal"                           mkdir "f:\fileserver\AA_Fiscal"
if not exist "f:\fileserver\AUDITORES"                           mkdir "f:\fileserver\AUDITORES"
if not exist "f:\fileserver\Financeiro"                          mkdir "f:\fileserver\Financeiro"
if not exist "f:\fileserver\SGA"                                 mkdir "f:\fileserver\SGA"
if not exist "f:\fileserver\Fichas"                              mkdir "f:\fileserver\Fichas"
if not exist "f:\fileserver\totvs\datasul\dts-0\ERP\especificos"     mkdir "f:\fileserver\totvs\datasul\dts-0\ERP\especificos"
if not exist "f:\fileserver\totvs\ems206b"                           mkdir "f:\fileserver\totvs\ems206b"
if not exist "f:\fileserver\totvs\ems506"                            mkdir "f:\fileserver\totvs\ems506"
if not exist "f:\fileserver\Escritorio de Projetos"                  mkdir "f:\fileserver\Escritorio de Projetos"


call D:\Backup\robocopy "\\s3\d$\Totvs\AA_Fiscal"                       "f:\fileserver\AA_Fiscal"              /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_AA_Fiscal_RDX.txt"
call D:\Backup\robocopy "\\s3\d$\Escritorio de Projetos"                "f:\fileserver\Escritorio de Projetos" /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_Escritorio de Projetos.txt"   
call D:\Backup\robocopy "\\s3\d$\Totvs\AUDITORES"                       "f:\fileserver\AUDITORES"              /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_AUDITORES_RDX.txt"
call D:\Backup\robocopy "\\s3\d$\Totvs\Financeiro"                      "f:\fileserver\Financeiro"             /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_Financeiro_RDX.txt"
call D:\Backup\robocopy "\\s3\d$\Totvs\SGA"                             "f:\fileserver\SGA"                    /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_SGA.txt"
call D:\Backup\robocopy "\\s3\d$\Totvs\FichasTecnicas"                  "f:\fileserver\Fichas"                 /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_FichasTecnicas_RDX.txt"
call D:\Backup\robocopy "\\10.1.1.116\erp\especificos"  		"f:\fileserver\10.1.1.116\erp\especificos" /MIR /R:2 /W:5 /LOG:"f:\logs\especificos.txt"
call D:\Backup\robocopy "\\s3\totvs\ems206b\spool"                      "f:\fileserver\totvs\ems206b"         /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_ems206b.txt"
call D:\Backup\robocopy "\\s3\totvs\ems506\spool"                       "f:\fileserver\totvs\ems506"          /MIR /R:2 /W:5 /LOG:"f:\logs\fileserver_ems506b.txt"

