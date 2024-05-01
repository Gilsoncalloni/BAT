color 1e
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\ems2adt"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23600 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\ems2mp"   -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23602 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\neogrid"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23603 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\emsinc"   -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23604 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\srcadger" -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23608 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\srmovfin" -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23609 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\totvsgen" -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23699 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000

pause

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\ems2sor"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23610 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\ems2sor"  -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23611 

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\finance"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23614 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\finance"  -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23615

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\payroll"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23616 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\payroll"  -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23617 

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\payroll2"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23666 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\payroll2"  -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23777

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\emsdev"   -Mf 66 -B 4000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23618 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\emsdev"   -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23619 

pause


call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\emsfnd"   -Mf 66 -B 11000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23620 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\emsfnd"   -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23621 
call C:\Progress\OpenEdge\bin\probiw   "D:\bancos\database-8080\emsfnd"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\emsfnd"

pause

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mdtfrw"   -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23624 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000 
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mdtfrw"   -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23625 

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mdmerge"  -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23626 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mdmerge"  -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23627 

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mdtcrm"   -Mf 66 -B 1000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23628 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mdtcrm"   -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23629 



call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\hcm210" -aiarcdircreate -aiarcdir D:\Bancos\no-stop\bkp-ai\totvs12\hcm -aiarcinterval 10800 -Mf 66 -aibufs 1200 -bibufs 600 -B 45000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23700 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\probiw   "D:\bancos\database-8080\oderich\hcm210"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\hcm210"
call C:\Progress\OpenEdge\bin\proaiw   "D:\bancos\database-8080\oderich\hcm210"

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\emsmov" -aiarcdircreate -aiarcdir D:\Bancos\no-stop\bkp-ai\totvs12\emsmov -aiarcinterval 10800 -Mf 66 -aibufs 1200 -bibufs 600 -B 150000 -spin 35000 -L 600000 -Mm 4096 -N tcp -S 23710 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\emsmov" -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23711 
call C:\Progress\OpenEdge\bin\probiw   "D:\bancos\database-8080\oderich\emsmov"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\emsmov"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\emsmov"
call C:\Progress\OpenEdge\bin\proaiw   "D:\bancos\database-8080\oderich\emsmov"


call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\emscad" -aiarcdircreate -aiarcdir D:\Bancos\no-stop\bkp-ai\totvs12\emscad -aiarcinterval 10800 -Mf 66 -aibufs 1200 -bibufs 600 -B 150000 -spin 35000 -L 600000 -Mm 4096 -N tcp -S 23720 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\emscad" -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23721 
call C:\Progress\OpenEdge\bin\probiw   "D:\bancos\database-8080\oderich\emscad"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\emscad"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\emscad"
call C:\Progress\OpenEdge\bin\proaiw   "D:\bancos\database-8080\oderich\emscad"

call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\ems5" -aiarcdircreate -aiarcdir D:\Bancos\no-stop\bkp-ai\totvs12\ems5 -aiarcinterval 10800 -Mf 66 -aibufs 1200 -bibufs 600 -B 120000 -spin 35000 -L 600000 -Mm 4096 -N tcp -S 23730 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\probiw   "D:\bancos\database-8080\oderich\ems5"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\ems5"
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\oderich\ems5"
call C:\Progress\OpenEdge\bin\proaiw   "D:\bancos\database-8080\oderich\ems5"



call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\eai"  -Mf 66 -B 2000  -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23740 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\eai"  -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23741 


call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\oderich\movnfe" -Mf 66 -B 4000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23760 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000



call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mgesp-hcm\oderich" -Mf 66 -aiarcdircreate -aiarcdir D:\Bancos\no-stop\bkp-ai\totvs12\oderich -aiarcinterval 10800 -aibufs 1200 -bibufs 600 -B 25000 -spin 8000 -L 300000 -Mm 4096 -N tcp -S 23770 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000 -tablebase 1 -tablerangesize 5000
call C:\Progress\OpenEdge\bin\proserve "D:\bancos\database-8080\mgesp-hcm\oderich" -ServerType SQL -m3 -Ma 7 -Mi 3 -Mpb 5 -S 23888
call C:\Progress\OpenEdge\bin\proapw   "D:\bancos\database-8080\mgesp-hcm\oderich"
call C:\Progress\OpenEdge\bin\probiw   "D:\bancos\database-8080\mgesp-hcm\oderich"
call C:\Progress\OpenEdge\bin\proaiw   "D:\bancos\database-8080\mgesp-hcm\oderich"


call C:\Progress\OpenEdge\bin\proserve "D:\Bancos\database-8080\historico\emshis" -B 2000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 23790 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000

call C:\Progress\OpenEdge\bin\proserve "D:\Bancos\database-8080\dv\dtviewer" -B 2000 -spin 8000 -L 200000 -Mm 4096 -N tcp -S 15700 -n 190 -Mn 23 -Ma 14 -Mi 8 -Mpb 17 -minport 4000 -maxport 5000




pause