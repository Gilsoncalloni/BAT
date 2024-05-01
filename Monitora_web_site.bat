:start
 Ping -n 1 example.com | find "TTL=" >>c:\temp\pingtest.txt
 Echo .
 Ping -n 16 8.8.8.8>nul
goto start