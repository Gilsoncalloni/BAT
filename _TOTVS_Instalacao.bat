rem Instalador do TOTVS via linha de comado
rem alterado em 17/04/2020 para considerar novo servidor das aplcacoes (10.1.1.204 )
color 02
TITLE Instala_TOTVS


\\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Progress\PROGRESS_OE_11.7.3\setup.exe -psc_s -psc_f1=\\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Progress\response.ini.1  -psc_f2=C:\temp\oesetup_p117.log
timeout 5
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Progress\proextra.dll"  /y /e "C:\Windows\System32\"
xcopy "\\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Progress\proextra.dll"  /y /e "C:\Windows\SysWow64\"
msiexec /I "\\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Progress\DesktopLauncher.msi" /quiet
timeout 3
mklink /D C:\Users\Public\Desktop\TOTVS_LOCAL \\10.1.1.204\IconesTOTVS
call /wait \\10.1.1.204\erp\fnd\interfac\ActiveX\SoftButton\setup.exe
timeout 3
start /wait \\10.1.1.204\erp\fnd\interfac\ActiveX\TreeView\setup.exe
timeout 20
start /wait \\10.1.1.204\erp\fnd\interfac\barra\setup.exe
timeout 3
\\10.1.1.204\erp\fnd\interfac\pdf\instwin.bat
echo %errorlevel% >>c:\temp\TOTVS_Instala.log
pause
\\10.1.1.204\erp\fnd\interfac\imagem\setup.exe
\\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Chartfix.bat
echo %errorlevel% >>c:\temp\TOTVS_Instala.log
start notepad.exe \\vms-fss01\e$\Setor\Ti\Basico_TI\TOTVS\Validacao.txt 
echo %errorlevel% >>c:\temp\TOTVS_Instala.log
\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\NetFrameworkVersao.bat
timeout 3
start iexplore.exe http:\\10.1.1.9:31080\menu-html
echo %errorlevel% >>c:\temp\TOTVS_Instala.log
pause 5



                  

\\vms-fss01\e$\Setor\Ti\Basico_TI\Bat\NaoMexer\Telegram.bat Instalado_TOTVS_em_%computername%_%date%

Echo off



REM [InstallShield Information]
REM Version=22.0.0.330

REM [Application]
REM Name=OpenEdge
REM Version=11.7
REM Company=Progress Software
REM File=Response File

REM ;
REM ; DESCRIPTION of Welcome Dialog
REM ;
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [Welcome Dialog]
REM Result=1

REM ;
REM ; DESCRIPTION of Serial Number And Control Codes Dialog
REM ;
REM ;  ProductCount - the number of products being installed.
REM ;  SerialNumber - the serial number of the product being installed.
REM ;  ControlNumber_1-0 - the first  control code for the product being installed, where -0 indicates the first  product.
REM ;  ControlNumber_2-0 - the second control code for the product being installed, where -0 indicates the first  product.
REM ;  ControlNumber_3-0 - the third  control code for the product being installed, where -0 indicates the first  product.
REM ;  ControlNumber_1-1 - the first  control code for the product being installed, where -1 indicates the second product.
REM ;  ControlNumber_2-1 - the second control code for the product being installed, where -1 indicates the second product.
REM ;  ControlNumber_3-1 - the third  control code for the product being installed, where -1 indicates the second product.
REM ;  UseColorEditor - The only valid values are yes and no. This may be set to no when installing on operating system that allows bi-directional typing, such as Arabic or Hebrew.
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [Serial Number And Control Codes Dialog]
REM ProductName-0=Client Networking
REM SerialNumber-0=004292935
REM ControlNumber_1-0=X8CSR
REM ControlNumber_2-0=XPEAM
REM ControlNumber_3-0=NMM?P
REM UseColorEditor=NULL
REM ProductCount=1
REM Result=1

REM ;
REM ; DESCRIPTION of TargetDirectory Dialog
REM ;
REM ;  DestinationDirectory - identifies the directory in which you install your OpenEdge product software.
REM ;  WorkDirectory - identifies the directory in which your applications, databases, and log files will reside.
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [TargetDirectory Dialog]
REM DestinationDirectory=C:\dlc117
REM WorkDirectory=C:\temp
REM Result=1

REM ;
REM ; DESCRIPTION of UserInstallationType Dialog
REM ;
REM ;  InstallationType - identifies the type of product installation you plan to perform. The valid values are complete and custom.
REM ;  - A Complete installation installs all mandatory, recommended, and optional components and subcomponents of the OpenEdge products you are installing.
REM ;  - A Custom installation provides advanced users the opportunity to selectively install recommended and optional components and subcomponents on a product-by-product basis.
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [UserInstallationType Dialog]
REM InstallationType=complete
REM Result=1

REM ;
REM ; DESCRIPTION of Configuring / Installing Components Dialog
REM ;
REM ;  ConfigureSonicESBAdapter - used to indicate whether or not you want to manually configure the
REM ;                             OpenEdge Adapter for Sonic ESB, or use default values.
REM ;    - a value of 0 indicates default values will be used.
REM ;    - a value of 1 indicates the SonicEsbProperties dialog will be used to set values.
REM ;  ConfigureWebSpeedMessenger - used to indicate whether or not you want to manually configure
REM ;                               WebSpeed Messenger, or use default values.
REM ;    - a value of 0 indicates default values will be used.
REM ;    - a value of 1 indicates the WebServer Type dialog will be used to set values.
REM ;  InstallingProgressDynamics - used to indicate whether or not you want to install Progress Dynamics files.
REM ;    - a value of 0 indicates Progress Dynamics files will NOT be installed.
REM ;    - a value of 1 indicates Progress Dynamics files WILL be installed.
REM ;  ConfigureOEM - used to indicate whether or not you want to configure OEM.
REM ;    - a value of 0 indicates OEM will not be configured
REM ;    - a value of 1 indicates OEM will be configured
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [Configuring / Installing Components Dialog]
REM ConfigureSonicESBAdapter=0
REM ConfigureWebSpeedMessenger=0
REM InstallingProgressDynamics=0
REM ConfigureOEM=0
REM InstallingBP=0
REM Result=1

REM ;
REM ; DESCRIPTION of Select Program Folder Dialog
REM ;
REM ;  ShortcutFolder - the program folder in which your OpenEdge program shortcuts will appear.
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [Select Program Folder Dialog]
REM ShortcutFolder=Progress\OpenEdge 11.7 (32-bit)
REM Result=1

REM ;
REM ; DESCRIPTION of LanguageChoice Dialog
REM ;
REM ;  DefaultLanguage - identifies the language in which PROMSGS appears by default.
REM ;  DefaultCountry - identifies the country of the language in which PROMSGS appears by default.
REM ;  -Valid values are:
REM ;      Australia
REM ;      Austria
REM ;      Belgium
REM ;      Brazil
REM ;      Canada
REM ;      Czech_Republic
REM ;      Finland
REM ;      France
REM ;      Germany
REM ;      Italy
REM ;      Netherlands
REM ;      Poland
REM ;      Portugal
REM ;      Spain
REM ;      Sweden
REM ;      Switzerland
REM ;      United_Kingdom
REM ;      United_States
REM ;  Languages - used to choose additional languages.
REM ;  -Valid values are:
REM ;      Czech
REM ;      Dutch
REM ;      English - American
REM ;      English - International
REM ;      French
REM ;      German
REM ;      Italian
REM ;      Polish
REM ;      Portuguese
REM ;      Portuguese - Brazilian
REM ;      Spanish
REM ;      Spanish - Latin
REM ;      Swedish
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [LanguageChoice Dialog]
REM DefaultLanguage=Portuguese - Brazilian
REM DefaultCountry=Brazil
REM Languages=,,,,,,,,,Portuguese - Brazilian,,,,
REM Result=1

REM ;
REM ; DESCRIPTION of International Settings Dialog
REM ;
REM ;  NOTE: For specific information please refer to the intlsets.txt file located at the root level of the cdrom from which this information is derived.
REM ;  CharacterSet - identifies the -cpinternal and -cpstream values included in the startup.pf file.
REM ;  Collation - identifies the -cpcoll value included in the startup.pf file.
REM ;  Case - identifies the -cpcase value included in the startup.pf file.
REM ;  DateFormat - identifies the -d value included in the startup.pf file.
REM ;  NumberFormat - identifies the number format value.
REM ;  NumberSeparator - identifies the -numsep value included in the startup.pf file.
REM ;  NumberDecimalPoint - identifies the -numdec value included in the startup.pf file.
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [International Settings Dialog]
REM NumberFormat=1,234.56   (comma, period)
REM NumberSeparator=44
REM NumberDecimalPoint=46
REM Result=1




REM CharacterSet=ISO8859-1
REM Collation=Basic
REM Case=Basic
REM DateFormat=dmy

REM ;
REM ; DESCRIPTION of Summary Dialog
REM ;
REM ;  Result - is used as the return code for this section. Only a value of 1 is acceptable.
REM ;
REM [Summary Dialog]
REM Result=1

REM [Installed Products]
REM ProductCount=2
REM Product 217=Client Networking (153 USERS)

REM Product 248=Query/RESULTS (12 USERS)
REM [Product 217]
REM _Component_NetSetup=1
REM _Component_Oracle DataServer Client - Optio=1
REM _Component_Character Database Admin Tools -=1
REM _Component_Character Base Tools - Optional=1
REM __SubComponent_ADM Runtime - CHAR=1
REM _Component_Character Image - Dev - Optional=1
REM _Component_OpenEdge SQL ODBC Clients=1
REM _Component_OpenEdge SQL JDBC Clients=1
REM _Component_OpenEdge ESQL/C Clients=1
REM _Component_Open Client Adapter Options Basic (r)=1
REM __SubComponent_AppServer Internet Adapter (r)=1
REM __SubComponent_OpenEdge Adapter for SonicMQ (r)=1
REM __SubComponent_Java Client Support (r)=1
REM __SubComponent_DotNET Messages (r)=1
REM _Component_Data Direct ODBC Driver Support (r)=1
REM _Component_OEBuild Utility (r)=1
REM __SubComponent_Client-Side Security (r)=1
REM _Component_Client-Side Web Services Deploy (r)=1
REM __SubComponent_Web Services Basic (r)=1
REM __SubComponent_Web Services Schema (r)=1

REM [Product 248]
REM _Component_NetSetup=1
REM _Component_Oracle DataServer Client - Optio=1
REM _Component_Database Administration Tools - Opt=1
REM _Component_Character Database Admin Tools -=1
REM _Component_Character Base Tools - Optional=1
REM __SubComponent_ADM Runtime - CHAR=1
REM _Component_Character Image - Dev - Optional=1
REM _Component_Open Client Adapter Options Basic (r)=1
REM __SubComponent_AppServer Internet Adapter (r)=1
REM __SubComponent_OpenEdge Adapter for SonicMQ (r)=1
REM __SubComponent_Java Client Support (r)=1
REM __SubComponent_DotNET Messages (r)=1
REM _Component_OEBuild Utility (r)=1
REM __SubComponent_Client-Side Security (r)=1
REM _Component_Client-Side Web Services Deploy (r)=1
REM __SubComponent_Web Services Basic (r)=1
REM __SubComponent_Web Services Schema (r)=1
