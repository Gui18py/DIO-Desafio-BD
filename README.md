# DIO - Trilha .NET - Banco de Dados
www.dio.me

As tabelas sao descritas conforme a seguir:

**Filmes**

Tabela responsável por armazenar informações dos filmes.

**Atores**

Tabela responsável por armazenar informações dos atores.

**Generos**

Tabela responsável por armazenar os gêneros dos filmes.

**ElencoFilme**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e atores, ou seja, um ator pode trabalhar em muitos filmes, e filmes
podem ter muitos atores.

**FilmesGenero**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e gêneros, ou seja, um filme pode ter mais de um gênero, e um genêro pode fazer parte de muitos filmes.

## Preparando o banco de dados
Você deverá executar o arquivo **Script Filmes.sql** em seu banco de dados SQL Server, presente na pasta Scripts deste repositório ([ou clique aqui](Script%20Filmes.sql)). Esse script irá criar um banco chamado **Filmes**, contendo as tabelas e os dados necessários para você realizar este desafio.

## Objetivo
Você deverá criar diversas consultas, com o objetivo de retornar os dados a seguir. Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

## 1 - Buscar o nome e ano dos filmes

```sql
SELECT Nome, Ano FROM Filmes
```

## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

```sql
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano
```

## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

```sql
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
```

## 4 - Buscar os filmes lançados em 1997

```sql
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997
```

## 5 - Buscar os filmes lançados APÓS o ano 2000

```sql
SELECT Nome, Ano, Duracao FROM Filmes
--WHERE Ano > 2000
```

## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

```sql
SELECT Nome, Ano, Duracao FROM Filmes
WHERE (Duracao > 100) AND (Duracao < 150)
ORDER BY Duracao
```

## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

```sql
SELECT Ano, COUNT(ANO) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC
```

## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

```sql
SELECT * FROM Atores
WHERE Atores.Genero = 'M'
```

## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

```sql
SELECT * FROM Atores
WHERE Atores.Genero = 'F'
ORDER BY Atores.PrimeiroNome
```

## 10 - Buscar o nome do filme e o gênero

```sql
SELECT Nome, Genero from FilmesGenero, Filmes, Generos
WHERE IDGenero = Generos.Id AND Filmes.Id = IdFilme
```

## 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

```sql
SELECT Nome, Genero from FilmesGenero, Filmes, Generos
WHERE IDGenero = Generos.Id AND Filmes.Id = IdFilme AND Genero = 'Misterio'
```

## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

```sql
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes, Atores, ElencoFilme
WHERE Atores.Id = IdAtor AND IdFilme = Filmes.Id
```
