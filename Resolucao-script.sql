-- Consulta 1

SELECT 
	Nome,
	Ano
FROM Filmes

-- Consulta 2

SELECT *
FROM Filmes
ORDER BY Ano ASC

-- Consulta 3

SELECT *
FROM Filmes
WHERE Nome LIKE 'De volta%'

-- Consulta 4

SELECT *
FROM Filmes 
WHERE Ano = 1997

-- Consulta 5

SELECT * 
FROM Filmes
WHERE Ano > 2000

-- Consulta 6

SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Consulta 7

SELECT 
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Consulta 8

SELECT *
FROM Atores
WHERE Genero = 'M'

-- Consulta 9

SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Consulta 10

SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- Consulta 11

SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- Consulta 12

SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM ElencoFilme AS EF
INNER JOIN Filmes AS F ON EF.IdFilme = F.Id
INNER JOIN Atores AS A ON EF.IdFilme = A.Id