--1
select Nome, Ano from Filmes

--2
select Nome, Ano from Filmes order by Ano ASC

--3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

--4
select Nome, Ano, Duracao from Filmes where Ano = '1997'

==5
select Nome, Ano, Duracao from Filmes where Ano > 2000

--6
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao ASC

--7
select Ano, count(*) as Quantidade, sum(Duracao) as DuracaoTotal from Filmes group by Ano order by DuracaoTotal DESC;

--8
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

--9
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome ASC

--10
select f.Nome, g.Genero as Genero from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero

--11
select f.Nome, g.Genero as Genero from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

--12
select f.Nome, a.PrimeiroNome as PrimeiroNome, a.UltimoNome as UltimoNome, ef.Papel as Papel from Filmes f
join ElencoFilme ef on f.Id = ef.IdFilme
join Atores a on a.Id = ef.IdAtor
