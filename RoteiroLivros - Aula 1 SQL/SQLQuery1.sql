-- DDL Linguagem de Definição de Dados
CREATE DATABASE RoteiroLivros_Manha;

USE RoteiroLivros_Manha;

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR(200)
);

CREATE TABLE Livros (
	IdLivro INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255),
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor)
);

-- DQL Comando de Consulta
SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;

ALTER TABLE Autores
ADD NomeAutor VARCHAR (200);

ALTER TABLE Autores
ALTER COLUMN NomeAutor CHAR;

ALTER TABLE Autores
DROP COLUMN NomeAutor;

DROP TABLE Autores;
DROP TABLE Livros;

INSERT INTO Autores (NomeAutor)
VALUES ('Junior'),
	   ('Alex'),
	   ('Joao'),
	   ('Nathan'),
	   ('Pedro');

INSERT INTO Generos (Nome)
VALUES ('Comedia'),
	   ('Supense'),
	   ('Ficcao Cientifica'),
	   ('Romance'),
	   ('Acao');

INSERT INTO Livros (Titulo, IdAutor, IdGenero)
VALUES ('Paconha',2,4),
	   ('Coxinha',1,1),
	   ('Balao',4,3),
	   ('Flango',5,5),
	   ('Churros',3,2);

UPDATE Generos
SET Nome = 'Aventura'
WHERE IdGenero = 3;

UPDATE Livros
SET IdGenero = 1
WHERE IdLivro = 1;

DELETE FROM Livros
WHERE IdLivro = 4;

DELETE FROM Autores
WHERE IdAutor = 5;

SELECT IdLivro, IdAutor FROM Livros;
SELECT IdLivro, IdGenero FROM Livros;
SELECT IdLivro, IdAutor, IdGenero FROM Livros;	