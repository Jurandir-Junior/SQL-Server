USE Locadora_Manha;

INSERT INTO Marca (Nome)
VALUES ('GM'),
	   ('Ford'),
	   ('Fiat');

INSERT INTO Modelo (Nome)
VALUES ('Onix'),
	   ('Fiesta'),
	   ('Argo');

INSERT INTO Empresa (Nome)
VALUES ('Empresa1'),
	   ('Empresa2');

INSERT INTO Cliente (Nome, CPF)
VALUES ('Junior','12345678901'),
	   ('Nathan', '98765432102');

INSERT INTO Veiculo (Placa, IdEmpresa, IdModelo)
VALUES ('BJK-2869',2,1),
	   ('GJR-8869',1,3),
	   ('BZR-5723',1,2),
	   ('EBR-0105',2,1),
	   ('OBJ-7042',1,3);

INSERT INTO Aluguel (DataInicio, DataFim, IdCliente, IdVeiculo)
VALUES ('03/02/2020','10/02/2020',2,5),
	   ('05/02/2020','12/02/2020',5,1);



































