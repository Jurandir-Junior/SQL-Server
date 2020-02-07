USE Gufi_Manha;

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'),
	   ('Comum')

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'),
	   ('React'),
	   ('SQL')

INSERT INTO Instituicao (CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111','Escola SENAI de Informática','Alameda Barão de Limeira, 538')

INSERT INTO Usuario (Nome, Email, Senha, DataCadastro, Genero, IdTipousuario)
VALUES ('Administrador','adm@adm.com','adm123','06/02/2020','Não Informado',1),
	   ('Carol','carol@carol.com','carol123','06/02/2020','Feminino',2),
	   ('Saulo','saulo@saulo.com','saulo123','06/02/2020','Masculino',2)

INSERT INTO Evento (NomeEvento, DataEvento, Descricao, AcessoLivre, IdInstituicao, IdTipoEvento)
VALUES ('Orientação a objetos','07/02/2020','Conceitos sobre os pilares da programação orientada a objetos',1,1,1),
	   ('Ciclo de vida','08/02/2020','Como utilizar os ciclos de vida com a biblioteca ReactJs',0,1,2),
	   ('Introdução a SQL','09/02/2020','Comandos básicos utilizando SQL Server',1,1,3)

INSERT INTO Presenca (IdUsuario, IdEvento, Situacao)
VALUES (2,2,'Confirmada'),
	   (2,3,'Não Confirmada'),
	   (3,1,'Confirmada')
