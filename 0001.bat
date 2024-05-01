SET ESTAB="for each bco_empres where bco_empres.cod_bco_fisic = |"
SET LOCAL=ems2his
SET BLOCO= "and cod_empresa = |"
SET COLUNA=1 2 3 4 5 90 91 95 
SET RUA=": ASSIGN bco_empres.cod_param_conex ="
SET NIVEL="|-S 30015 -H 10.1.1.203 -N tcp|. end." "|-S 30005 -H 10.1.1.203 -N tcp|. end." 
SET CAPACIDADE=1200
SET UA=100
SET PICK=NAO

FOR %%A IN ( %ESTAB% ) 	DO FOR %%B IN (%LOCAL%) DO FOR %%C IN (%BLOCO%) DO FOR %%D IN (%COLUNA%) DO FOR %%E IN (%RUA%) DO FOR %%F IN (%NIVEL%) DO FOR %%G IN (%CAPACIDADE%) DO FOR %%H IN (%UA%) DO FOR %%I IN (%PICK%) DO ECHO %%A;%%B;%%C;%%D;%%E;%%F;%%G;%%H;%%I >>c:\temp\LISTA_ENDERECOS4.lst
START c:\temp\LISTA_ENDERECOS4.lst