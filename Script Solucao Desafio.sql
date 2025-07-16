SELECT [Nome]
      ,[Ano]
FROM [Filmes].[dbo].[Filmes]

-- 2
SELECT [Nome]
      ,[Ano]
      ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
ORDER BY Ano

- - 3
SELECT [Nome]
      ,[Ano]
      ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE Nome = 'De Volta para o Futuro'

- - 4
SELECT [Nome]
      ,[Ano]
      ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE Ano = 1997

- - 5
SELECT [Nome]
      ,[Ano]
      ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE Ano > 2000

- - 6
SELECT [Nome]
      ,[Ano]
      ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE Duracao > 100 and Duracao < 150
order by duracao

- - 7
SELECT [Ano]
      ,count(Ano) Quantidade
FROM [Filmes].[dbo].[Filmes]
group by ano
order by Quantidade desc

- - 8
Select * 
from Atores
where Genero = 'M'

- - 9
Select * 
from Atores
where Genero = 'F'
order by PrimeiroNome

- - 10
SELECT F.Nome,
       G.Genero
FROM Filmes F, FilmesGenero FG, Generos G
WHERE F.Id = FG.IdFilme
 AND  FG.IdGenero = G.Id

 - - 11
 SELECT F.Nome,
       G.Genero
FROM Filmes F, FilmesGenero FG, Generos G
WHERE F.Id = FG.IdFilme
 AND  FG.IdGenero = G.Id
 AND G.Genero = 'Mistério'

 - - 12
 SELECT F.Nome
       ,A.PrimeiroNome
       ,A.UltimoNome
       ,EF.Papel
FROM Filmes F, ElencoFilme EF, Atores A
WHERE F.Id = EF.IdFilme
 AND  EF.IdAtor = A.Id
 


