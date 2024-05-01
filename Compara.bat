comp /m c:\temp\1h.bat c:\temp\1h.bat
if %errorlevel% neq 0 (
	echo verificar %computername% %DATE%>>c:\temp\Verificar.txt
	)
