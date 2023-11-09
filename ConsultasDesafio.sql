--1
SELECT Nome,Ano FROM Filmes;

--2
SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome='De Volta para o futuro';

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano=1997;

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano>2000;

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao>100 AND Duracao<150 ORDER BY Duracao ASC;

--7
SELECT  Ano, COUNT(*) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--8
SELECT * FROM Atores WHERE Genero='M';

--9
SELECT * FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome ASC;

--10
SELECT Filmes.Nome, Generos.Genero  FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT Filmes.Nome, Generos.Genero  FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12
SELECT Filmes.Nome, 
Atores.PrimeiroNome, 
Atores.UltimoNome, 
ElencoFilme.Papel 
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor





