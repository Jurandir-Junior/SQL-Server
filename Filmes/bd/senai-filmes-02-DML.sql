USE Filmes_manha;
GO

INSERT INTO Generos	(Nome)
VALUES				('A��o')
					,('Drama');
GO

INSERT INTO Filmes	(Titulo, IdGenero)
VALUES				('A vida � bela', 2)
					,('Rambo', 1);
GO