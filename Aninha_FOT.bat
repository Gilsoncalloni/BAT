FOR %%A IN (1 2 3) DO start CMD /C FOR %%B IN (A B C) DO ECHO %A%B >>c:\temp\listaruas.lst
start C:\temp\listaruas.lst