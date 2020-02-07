CREATE DATABASE Locadora_Manha;

USE Locadora_Manha;

CREATE TABLE Marca (
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);

CREATE TABLE Modelo (
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdMarca INT FOREIGN KEY REFERENCES Marca (IdMarca)
);

CREATE TABLE Empresa (
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);

CREATE TABLE Cliente (
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	CPF INT
);

CREATE TABLE Veiculo (
	IdVeiculo INT PRIMARY KEY IDENTITY,
	Placa VARCHAR (200),
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa (IdEmpresa),
	IdModelo INT FOREIGN KEY REFERENCES Modelo (IdModelo)
);

CREATE TABLE Aluguel (
	IdAluguel INT PRIMARY KEY IDENTITY,
	DataInicio DATE,
	DataFim DATE,
	IdCliente INT FOREIGN KEY REFERENCES Cliente (IdCliente),
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo (IdVeiculo)
);

ALTER TABLE Cliente
ALTER COLUMN CPF BIGINT;