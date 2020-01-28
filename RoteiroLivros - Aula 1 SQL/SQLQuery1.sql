-- DDL Linguagem de Definição de Dados
CREATE DATABASE RoteiroLivros;

USE RoteiroLivros;

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY,
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
ADD DataNascimento DATE;

ALTER TABLE Autores
ALTER COLUMN NomeAutor CHAR;

ALTER TABLE Autores
DROP COLUMN NomeAutor;

