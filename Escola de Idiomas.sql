CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	,nomeAluno VARCHAR (100)
	,dataNascAluno DATE
	,rgAluno CHAR (12)
	,naturalidadeAluno CHAR (2)
)
CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (40)
	,cargaHorariaCurso VARCHAR (10)
	,valorCurso MONEY
)
CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY(1,1)
	,nomeTurma VARCHAR (50)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,horarioTurma TIME
)
CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dataMatricula DATE
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)

SELECT * FROM tbAluno
INSERT INTO tbAluno 
(nomeAluno,dataNascAluno,rgAluno,naturalidadeAluno)
VALUES
('Paulo Santos', '2000-03-10','82.282.122-0','SP'),
('Maria da Glória', '1999-10-03','45.233.123-0','SP'),
('Pedro Nogueira da Silva', '1998-04-04','23.533.211-9','SP'),
('Gilson Barros da Silva', '1995-09-09','34.221.111-x','PE'),
('Mariana Barbosa Santos','2001-10-10','54.222.122-9','RJ'),
('Alessandro Pereira','2003-10-11','24.402.454-9','ES'),
('Aline Melo', '2002-10-08','88.365.012-3','RJ')

SELECT * FROM tbCurso
INSERT INTO tbCurso
(nomeCurso,cargaHorariaCurso,valorCurso)
VALUES 
('Inglês','2000','356'),
('Alemão','3000','478'),
('Espanhol','4000','500')

SELECT * FROM tbTurma
INSERT INTO tbTurma
(nomeTurma,horarioTurma,idCurso)
VALUES 
('1IA','12:00','1'),
('1IC','18:00','3'),
('1IB','18:00','1'),
('1AA','19:00','2')

SELECT * FROM tbMatricula
INSERT INTO tbMatricula
(dataMatricula,idAluno,idTurma)
VALUES 
('2015-10-03','1','1'),
('2014-05-04','2','1'),
('2014-05-04','2','4'),
('2012-05-03','3','2'),
('2016-03-03','1','3'),
('2015-05-07','4','2'),
('2015-07-05','4','3')


--1-
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.idMatricula=tbMatricula.idAluno
		INNER JOIN tbTurma ON tbTurma.idCurso=tbTurma.idTurma
			INNER JOIN tbCurso ON tbCurso.idCurso=tbCurso.idCurso

--2--
SELECT tbCurso.nomeCurso, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso
GROUP BY tbCurso.nomeCurso;

--3--
SELECT tbTurma.nomeTurma, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
GROUP BY tbTurma.nomeTurma;

--4--
SELECT COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
WHERE MONTH(tbMatricula.dataMatricula) = 5 AND YEAR(tbMatricula.dataMatricula) = 2016;

--5--
SELECT tbAluno.nomeAluno, tbTurma.nomeTurma
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
ORDER BY tbAluno.nomeAluno;

--6--
SELECT tbCurso.nomeCurso, tbTurma.horarioTurma
FROM tbCurso
INNER JOIN tbTurma ON tbCurso.idCurso = tbTurma.idCurso;

--7--
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

--8--
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

--9--
SELECT tbAluno.nomeAluno
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso
WHERE tbAluno.nomeAluno LIKE 'A%' AND tbCurso.nomeCurso = 'Inglês';

--10--
SELECT COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
WHERE YEAR(tbMatricula.dataMatricula) = 2016;
