CREATE DATABASE EstiloMusical;

USE EstiloMusical;

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

-- Altera��o adicionar coluna nova
ALTER TABLE Artista
ADD DataNascimento DATE;

-- Altera��o modificar coluna
ALTER TABLE Artista
ALTER COLUMN NomeArtista CHAR;

-- Exclus�o de coluna
ALTER TABLE Artista
DROP COLUMN NomeArtista;

-- Excluir
DROP TABLE Artista;

DROP DATABASE EstiloMusical;