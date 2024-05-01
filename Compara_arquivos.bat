REM copia dois arquivos, se nao forem identicos salva resultado em arquivo especifico
set a=C:\temp\gilson-Copia.txt
set b=C:\temp\gilson_.txt
comp %a% %b%
if %errorlevel% neq 0 ( 
	echo Arquivos %a% e %b% não sao iguais >>c:\temp\comparador.log
	start c:\temp\comparador.log
)

