-- 1
SELECT nome, ano FROM filmes;

-- 2
SELECT nome, ano FROM filmes ORDER BY ano;

-- 3
SELECT nome, ano, duracao FROM Filmes WHERE nome = 'De Volta para o Futuro';

-- 4
SELECT * FROM Filmes WHERE ano = 1997;

-- 5
SELECT * FROM Filmes WHERE ano > 2000;

-- 6
SELECT * FROM Filmes WHERE duracao > 100 AND duracao < 150 ORDER BY duracao;

-- 7
SELECT ano, COUNT(*) quantidade FROM Filmes GROUP BY ano ORDER BY quantidade DESC;

-- 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10
SELECT 
  fil.Nome, 
  gen.Genero 
FROM Filmes fil 
  INNER JOIN FilmesGenero filg ON fil.Id = filg.IdFilme 
  INNER JOIN Generos gen ON filg.IdGenero = gen.Id;

-- 11
SELECT 
  fil.Nome, 
  gen.Genero 
FROM Filmes fil 
  INNER JOIN FilmesGenero filg ON fil.Id = filg.IdFilme 
  INNER JOIN Generos gen ON filg.IdGenero = gen.Id 
  WHERE gen.Genero = 'Mistério';

-- 12
SELECT 
	f.Nome, 
	e.PrimeiroNome, 
	e.UltimoNome, 
	ef.Papel 
FROM Filmes f 
	INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme 
	INNER JOIN Atores e ON ef.IdAtor = e.Id;