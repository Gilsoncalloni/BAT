for /f "delims=|" %%G in (c:\temp\trocar.bat) do call :s_subrotina %%G echo %nome% >>c:\temp\trocaddr.txt
:s_subrotina
set "pasta=%~nx0"
REM %pasta:~-1%
REM echo "C:\Program Files\LibreOffice\program\swriter.exe" --headless --convert-to doc %1 >>c:\temp\trocar.txt
echo %pasta% >>c:\temp\trocar.txt



