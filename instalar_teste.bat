echo 00_ok >> c:\temp\log.txt
\\s3\totvs\programas\PROGRESS_OE_11.7_WIN_32\setup.exe -psc_s -psc_f1=\\s3\totvs\programas\response.ini.1 -psc_f2=C:\temp\oesetup_p117.log

echo 01_ok >> c:\temp\log.txt
\\s3\totvs\programas\PROGRESS_OE_11.7.1_WIN_32\setup.exe -psc_s -psc_f1=\\s3\totvs\programas\response.ini -psc_f2=C:\temp\oesetup_p1171.log

echo 02_ok >> c:\temp\log.txt
shutdown t/ 300 /s