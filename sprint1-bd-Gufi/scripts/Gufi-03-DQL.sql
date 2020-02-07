USE Gufi_Manha;

SELECT Nome, Email, DataCadastro, Genero, TituloTipoUsuario AS TipoUsuario FROM Usuario
INNER JOIN TipoUsuario ON Usuario.IdTipousuario = TipoUsuario.IdTipousuario;

SELECT CNPJ, NomeFantasia, Endereco FROM Instituicao;

SELECT TituloTipoEvento AS TipoEvento FROM TipoEvento;

SELECT NomeEvento, DataEvento, Descricao, AcessoLivre, NomeFantasia AS Instituiçao, Endereco, TituloTipoEvento AS TipoEvento FROM Evento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento;


SELECT NomeEvento, DataEvento, Descricao, AcessoLivre, NomeFantasia AS Instituiçao, Endereco, TituloTipoEvento AS TipoEvento FROM Evento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
WHERE AcessoLivre = 1;

SELECT NomeEvento, TituloTipoEvento AS TipoEvento,DataEvento, CASE WHEN AcessoLivre = 1 THEN 'Publico' ELSE 'Privado' END AS AcessoLivre, Descricao, Nome, Email,
TituloTipoUsuario AS TipoUsuario, DataCadastro, Genero, NomeFantasia, CNPJ, Endereco FROM Presenca
INNER JOIN Usuario ON Presenca.IdUsuario = Usuario.IdUsuario
INNER JOIN Evento ON Presenca.IdEvento = Evento.IdEvento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN TipoUsuario ON Usuario.IdTipousuario = TipoUsuario.IdTipousuario
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
WHERE Usuario.IdUsuario = 2 AND Situacao = 'Confirmada'