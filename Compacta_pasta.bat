if not exist c:\temp\Bahia md c:\temp\Bahia
cd c:\temp\Bahia
move c:\temp\3-3-*.pdf  c:\temp\Bahia\
timeout 5
call "C:\Program Files\7-Zip\7z.exe" a -tzip Bahia.zip Bahia
timeout 5
del c:\temp\Bahia\*.pdf
REM chamar rotina para mandar email