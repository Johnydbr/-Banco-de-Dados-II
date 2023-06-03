
USE bdLivraria

SELECT * FROM tblivro


--1
SELECT nomeLivro, nomeEditora,nomeAutor FROM tblivro 
LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codLivro	
	LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codLivro

--2
SELECT nomeLivro, nomeAutor, nomeEditora FROM tbLivro
LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codLivro
	LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codLivro
		WHERE nomeEditora LIKE '%Companhia das Letras%'



--3
SELECT nomeLivro,nomeAutor FROM tbLivro
FULL JOIN tbAutor ON tbAutor.codAutor=tbLivro.codLivro
	WHERE nomeAutor  <>    '%ERICO VERISSIMO%'

--4
SELECT nomeAutor, nomeLivro  FROM tbAutor
FULL JOIN tbLivro ON tbLivro.codAutor=tbAutor.codAutor

--5
SELECT nomeAutor, nomeLivro  FROM tbAutor
FULL JOIN tbLivro ON tbLivro.codLivro=tbAutor.codAutor

--6
SELECT nomeAutor, nomeLivro FROM tbAutor
 FULL JOIN tbLivro ON tbLivro.codLivro=tbAutor.codAutor
  AND tbLivro.codAutor=tbAutor.codAutor
	

 
 --7
 SELECT nomeLivro,nomeEditora FROM tbLivro
CROSS JOIN tbEditora WHERE nomeEditora = 'ATICA'

--8
SELECT nomeAutor,nomeLivro FROM tbAutor
LEFT JOIN tbLivro ON tbLivro.codAutor=tbAutor.codAutor
WHERE  nomeLivro  IS NULL

--9
SELECT nomeGenero, nomeLivro FROM tbGenero
LEFT JOIN tbLivro ON tbLivro.codGenero=tbGenero.codGenero
WHERE nomeLivro IS NULL











                                      


 