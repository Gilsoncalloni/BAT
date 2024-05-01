REM timeout 600
taskkill /f /im FortiClient.exe
taskkill /f /im 3CXPhone.exe
taskkill /f /im mRemoteNG.exe
taskkill /f /im spark.exe
rem taskkill /f /im stremio.exe
taskkill /f /im skype.exe
taskkill /f /im Telegram.exe
taskkill /f /im sqlservr.exe
taskkill /fi "Windowtitle eq 10.1.1.114 - Google Chrome"
timeout 5
taskkill /fi "Windowtitle eq GLPI - Chamados - Google Chrome"
timeout 5
timeout 5taskkill /fi "Windowtitle eq 10.1.1.114 - Google Chrome"
timeout 5
taskkill /fi "Windowtitle eq GLPI - Chamados - Google Chrome"
timeout 5