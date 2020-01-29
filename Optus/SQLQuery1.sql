--DDL

CREATE DATABASE Optus_Manha;

USE Optus_Manha;

CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome	  VARCHAR (200)
);

CREATE TABLE Estilos (
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR (200)
);

CREATE TABLE Albuns (
	IdAlbum INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200),
	DataLancamento DATE,
	QtdMinutos INT,
	Visualizacao CHAR,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

CREATE TABLE TiposUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200)
);

CREATE TABLE Usuarios (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuario (IdTipoUsuario)
);

ALTER TABLE Albuns
ALTER COLUMN Visualizacao INT;

SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Albuns;

-- DML

INSERT INTO Artistas (Nome)
VALUES ('BABYMETAL'),
	   ('Kagamine Rin'),
	   ('Utsu-P'),
	   ('PSYQUI'),
	   ('OMOI');

INSERT INTO Estilos (Nome)
VALUES ('Metal'),
	   ('Happy Hardcore'),
	   ('Rock'),
	   ('Dance'),
	   ('Hands Up');

INSERT INTO Albuns (Nome, DataLancamento, QtdMinutos, Visualizacao, IdArtista, IdEstilo)
VALUES ('Metal Resistance','29/03/2016',48,10000,1,1),
	   ('PTSD','14/08/2016',37,7000,3,3),
	   ('Kagamination','24/12/2017',32,3720,2,4),
	   ('Hype','13/04/2015',40,6000,4,2),
	   ('Snow Drive','30/07/2016',39,3200,5,5);