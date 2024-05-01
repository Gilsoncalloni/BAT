SET COLUNA=coluna1 coluna2 coluna3 coluna4 coluna5 coluna6 coluna7 coluna8 coluna9 coluna10 coluna11 coluna12 coluna13 coluna14 coluna15 coluna16 coluna17 coluna18 coluna19 coluna20 coluna21 coluna22 coluna23 coluna24 coluna25 coluna26 coluna27 coluna28 coluna29 coluna30 coluna31 coluna32 coluna33 coluna34 coluna35 coluna36 coluna37 coluna38 coluna39 coluna40 coluna41 coluna42 coluna43 coluna44 coluna45 coluna46
SET RUA=RUA_A RUA_B RUA_C RUA_D RUA_E RUA_F RUA_G RUA_H RUA_I RUA_J RUA_K RUA_L RUA_M
SET NIVEL=N1 N2 N3 N4 N5

FOR %%A IN ( %RUA% ) DO FOR %%B IN (%COLUNA%) DO FOR %%C IN (%NIVEL%) DO ECHO %%A;%%B;%%C >>c:\temp\LISTA_ENDERECOS.lst
