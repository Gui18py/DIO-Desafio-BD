-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM Filmes
WHERE (Duracao > 100) AND (Duracao < 150)
ORDER BY Duracao

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(ANO) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Atores.Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Atores.Genero = 'F'
ORDER BY Atores.PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT Nome, Genero from FilmesGenero, Filmes, Generos
WHERE IDGenero = Generos.Id AND Filmes.Id = IdFilme

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Nome, Genero from FilmesGenero, Filmes, Generos
WHERE IDGenero = Generos.Id AND Filmes.Id = IdFilme AND Genero = 'Misterio'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes, Atores, ElencoFilme
WHERE Atores.Id = IdAtor AND IdFilme = Filmes.Id
