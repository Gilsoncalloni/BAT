for /f "delims=" %%a in ('"dir /b c:\temp\ | find  "%username%""') do xcopy c:\temp\%%a /y /e "\\vms-fss01\e$\usuario\%username%\temp\"
timeout 15
