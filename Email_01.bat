::email.bat:::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
setlocal
:: defaults
set From=polenta6555@gmail.com
set To=gilsoncalloni@gmail.com
set Subj="email test   %date% %time%"
set Body="did it work? %date% %time%"
set Serv=smtp.gmail.com
set Auth=polenta6555@gmail.com
set Pass=bozzano48horas
set fileattach=c:\temp\informacoes01.txt
:: if command line arguments are supplied then use them
if "%~7" NEQ "" (
set From=%1
set To=%2
set Subj="%~3"
set Body="%~4"
set Serv=%5
set "Auth=%~6"
set "Pass=%~7"
set "fileattach=%~8"
)
call :createVBS "email-bat.vbs"
call :send %From% %To% %Subj% %Body% %Serv% %Auth% %Pass%
echo email has been sent (if parameters were correct)
pause
del "%vbsfile%" 2>nul
goto :EOF
:send
cscript.exe /nologo "%vbsfile%" %1 %2 %3 %4 %5 %6 %7
goto :EOF

:createVBS
set "vbsfile=%~1"
del "%vbsfile%" 2>nul
set cdoSchema=http://schemas.microsoft.com/cdo/configuration
echo >>"%vbsfile%" Set objArgs       = WScript.Arguments
echo >>"%vbsfile%" Set objEmail      = CreateObject("CDO.Message")
echo >>"%vbsfile%" objEmail.From     = objArgs(0)
echo >>"%vbsfile%" objEmail.To       = objArgs(1)
echo >>"%vbsfile%" objEmail.Subject  = objArgs(2)
echo >>"%vbsfile%" objEmail.Textbody = objArgs(3)
if defined fileattach echo >>"%vbsfile%" objEmail.AddAttachment "%fileattach%"
echo >>"%vbsfile%" with objEmail.Configuration.Fields
echo >>"%vbsfile%"  .Item ("%cdoSchema%/sendusing")        = 2 ' not local, smtp
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpserver")       = objArgs(4)
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpserverport")   = 465
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpauthenticate") = 1 ' cdobasic
echo >>"%vbsfile%"  .Item ("%cdoSchema%/sendusername")     = objArgs(5)
echo >>"%vbsfile%"  .Item ("%cdoSchema%/sendpassword")     = objArgs(6)
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpusessl")       = True
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpconnectiontimeout") = 25
echo >>"%vbsfile%"  .Update
echo >>"%vbsfile%" end with
echo >>"%vbsfile%" objEmail.Send
:end