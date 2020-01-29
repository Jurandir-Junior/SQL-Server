CREATE DATABASE EstiloMusical_Manha;

USE EstiloMusical_Manha;

CREATE TABLE EstilosMusicais (
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200) NOT NULL
);

CREATE TABLE Artista (
	IdArtista INT PRIMARY KEY IDENTITY,
	NomeArtista VARCHAR(200) NOT NULL,
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstiloMusical)
);

SELECT * FROM EstilosMusicais;
SELECT * FROM Artista;

-- Alteração adicionar coluna nova
ALTER TABLE Artista
ADD DataNascimento DATE;
ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR (200);

-- Alteração modificar coluna
ALTER TABLE Artista
ALTER COLUMN NomeArtista CHAR;

-- Exclusão de coluna
ALTER TABLE Artista
DROP COLUMN DataNascimento;

-- Excluir
DROP TABLE Artista;

DROP DATABASE EstiloMusical_Manha;

-- DML Linguagem de manipulação de dados

-- Inserir dados
INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('Samba', 'Estilo Musical'),
	   ('Jazz', 'Estilo Top'),
	   ('Pop', 'Estilo Popular');

INSERT INTO Artista (NomeArtista, IdEstiloMusical)
VALUES ('Zeca Pagodinho', 2),
	   ('Frank', 3);

-- Atualizar dado de tabela
UPDATE Artista
SET NomeArtista = 'Alcione'
WHERE IdArtista = 1;

UPDATE Artista
SET IdEstiloMusical = 1
WHERE IdArtista = 2;

-- Apagar dados de tabela
DELETE FROM Artista
WHERE IdArtista = 2;