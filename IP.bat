ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
netsh interface ip delete arpcache
netsh advfirewall reset
netsh branchcache reset
netsh int ip reset c:\resetlog.txt
netsh int ipv4 reset
netsh int ipv6 reset
netsh winsock reset
netsh winsock reset catalog
netsh winsock reset all
netsh int ip reset all
netsh int ip reset
pause