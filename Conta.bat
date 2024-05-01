
for /f "delims=" %%a in ('"dir /b %userprofile%\appdata\Roaming\Thunderbird\Profiles | find  "relea""') do set "name=%%a"
for /f "tokens=2 delims=," %%b in ('findstr  "lastUpdateTime.search-engine-update-timer"    %userprofile%\appdata\Roaming\Thunderbird\Profiles\%name%\prefs.js') do set "exib=%%b"
set r_exibir=%exib:);=%
echo %r_exibir%
rem 1590797544
set var=%r_exibir%
set /a ano=(( %var% - 10800) / (( 86400*365 )) + 1970)
set /a meses=( %var% - 10800) %% ( 86400*365 ) + 1970)
set /a mes= %meses%/2592000 
echo %ano%/%mes%


timeout 20


