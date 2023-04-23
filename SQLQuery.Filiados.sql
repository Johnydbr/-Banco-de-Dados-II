CREATE DATABASE BdFiliado_PTC

USE BdFiliado_PTC

--EXERCICÍO 1--
SELECT  * FROM Filiados_PTC
SELECT nomeFiliado FROM Filiados_PTC
WHERE nomeFiliado LIKE 'ANTONIO%'

--EXERCICÍO 2--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado FROM Filiados_PTC
WHERE nomeFiliado LIKE '%SEBASTIAO'

--EXERCICÍO 3--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado FROM Filiados_PTC
WHERE nomeFiliado LIKE 'OS%'

--EXERCICÍO 4--
SELECT * FROM
SELECT nomeFiliado, nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio LIKE '%LIX'

--EXERCICÍO 5--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado, nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio LIKE 'INHAMBUPE'

--EXERCICÍO 6--
SELECT * FROM Filiados_PTC
SELECT nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio LIKE 'SANTA%'

--EXERCICÍO 7--
SELECT * FROM Filiados_PTC
SELECT nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio LIKE 'E%'

--EXERCICÍO 8--
SELECT * FROM Filiados_PTC
SELECT nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio LIKE '%CRUZ%'

--EXERCICÍO 9--
SELECT * FROM Filiados_PTC
SELECT nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio LIKE '%DE%'

--EXERCICÍO 10--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao, nomeFiliado FROM Filiados_PTC
WHERE dataFiliacao BETWEEN '01/01/1990' and '01/01/2000';  


--EXERCICIO 11--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao, nomeFiliado FROM Filiados_PTC
WHERE dataFiliacao BETWEEN '02/01/2010' and '01/03/2010'; 

--EXERCICIO 12--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao,nomeFiliado,siglaPartido,codInscricao  FROM Filiados_PTC
WHERE dataFiliacao BETWEEN '01/06/2007' and '31/12/2007'; 

--EXERCICIO 13--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao,nomeFiliado,siglaPartido,codInscricao,situacaoRegistro  FROM Filiados_PTC
WHERE situacaoRegistro LIKE '%REGULAR%'

--EXERCICIO 14--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao,nomeFiliado,siglaPartido,codInscricao,zonaEleitoral  FROM Filiados_PTC
WHERE zonaEleitoral LIKE '%203%'

--EXERCICIO 15--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao,nomeFiliado,siglaPartido,codInscricao,zonaEleitoral  FROM Filiados_PTC
WHERE zonaEleitoral LIKE '%180%'


--EXERCICIO 16--
SELECT * FROM Filiados_PTC
SELECT dataFiliacao,nomeFiliado,siglaPartido,codInscricao,zonaEleitoral  FROM Filiados_PTC
WHERE zonaEleitoral LIKE '%199%'


--EXERCICIO 17--
SELECT * FROM Filiados_PTC
SELECT MAX (zonaEleitoral)  zonaEleitoral FROM Filiados_PTC

--EXERCICIO 18--
SELECT * FROM Filiados_PTC
SELECT MIN (zonaEleitoral)  zonaEleitoral FROM Filiados_PTC

--EXERCICIO 19--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET siglaPartido = 'PT'
WHERE codigoMunicipio = '36471'

SELECT nomeFiliado,siglaPartido FROM Filiados_PTC
WHERE siglaPartido like 'PT'

--EXERCICIO 20--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET siglaPartido = 'PMDB'
WHERE codigoMunicipio = '38490'

SELECT nomeFiliado,siglaPartido FROM Filiados_PTC
WHERE siglaPartido like 'PMDB'

--EXERCICIO 21--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET siglaPartido = 'PC'
WHERE nomeMunicipio like 'SANTA%' and nomeMunicipio like '%LIS';

SELECT nomeFiliado,siglaPartido,nomeMunicipio FROM Filiados_PTC
WHERE nomeMunicipio like 'SANTA%LIS%';

--EXERCICIO 22--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET siglaPartido = 'PV'
WHERE nomeMunicipio like 'S%LIX%' and nomeMunicipio like '%LIX';

UPDATE Filiados_PTC
SET nomePartido = 'PARTIDO VERDE DOS FILIADOS'
WHERE nomeMunicipio like 'S%LIX%' and nomeMunicipio like '%LIX';


--EXERCICIO 23--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET siglaPartido = 'PSDB'
WHERE nomeMunicipio like '%ENCRUZILHADA%';

UPDATE Filiados_PTC
SET nomePartido = 'PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA'
WHERE nomeMunicipio like '%ENCRUZILHADA%';

SELECT nomeFiliado,siglaPartido,nomeMunicipio,nomePartido FROM Filiados_PTC
WHERE nomeMunicipio like '%ENCRUZILHADA%';

--EXERCICIO 24--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET nomeFiliado = 'JORGE LUIS MAGALHÃES DOS SANTOS'
WHERE nomeFiliado like '%JORGE LUIS FERREIRA DOS SANTOS%';

SELECT nomeFiliado FROM Filiados_PTC
WHERE nomeFiliado like '%JORGE LUIS MAGALHÃES DOS SANTOS%';

--EXERCICIO 25--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET nomeFiliado = 'RENATA XAVIER RODRIGUES'
WHERE nomeFiliado like '%BENTA XAVIER RODRIGUES%';

SELECT nomeFiliado FROM Filiados_PTC
WHERE nomeFiliado like '%RENATA XAVIER RODRIGUES%';

--EXERCICIO 26--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET nomeFiliado = 'NOEL LEITE DA SILVA'
WHERE nomeFiliado like '%NOE LEITE DA SILVA%';

SELECT nomeFiliado FROM Filiados_PTC
WHERE nomeFiliado like 'NOEL% LEITE DA SILVA%';

--EXERCICIO 27--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET situacaoRegistro = 'REGULAR'
WHERE nomeFiliado like '%JOSIENE ANDRADE DE SOUZA%';

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado like '%JOSIENE ANDRADE DE SOUZA%';

--EXERCICIO 28--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET situacaoRegistro = 'REGULAR'
WHERE nomeFiliado like '%ELIEL ALMEIDA SILVA%';

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado like '%ELIEL ALMEIDA SILVA%';

--EXERCICIO 29--
SELECT * FROM Filiados_PTC
SELECT nomeFiliado,siglaPartido,codigoMunicipio zonaEleitoral FROM Filiados_PTC
UPDATE Filiados_PTC
SET situacaoRegistro = 'DESFILIADO'
WHERE nomeFiliado like '%ALINE DE SOUZA%';

SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
WHERE nomeFiliado like '%ALINE DE SOUZA%';

--EXERCICIO 30--

ALTER TABLE Filiados_PTC
ADD sexo char(15)

SELECT * FROM Filiados_PTC
