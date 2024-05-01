@echo off
:::::::::::::: Lets set some variables ::::::::::::::
set eMail=polenta6555@gmail.com
set subj=-s "Test Blat"
set server=-server mail.oderich.com.br
set x=-x "X-Header-Test: Can Blat do it? Yes it Can!"
set debug=-debug -log c:\temp\blat.log -timestamp 
::::::::::::::::: Now we run Blat!  :::::::::::::::::
blat %0 -to %eMail% -f %eMail% %subj% %server% %debug% %x%