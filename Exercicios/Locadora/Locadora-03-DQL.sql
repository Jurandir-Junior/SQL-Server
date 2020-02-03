USE Locadora_Manha;

SELECT Nome,DataInicio,DataFim FROM Aluguel
INNER JOIN Cliente ON Aluguel.IdCliente = Cliente.IdCliente



SELECT DataInicio, DataFim, Placa, Cliente.Nome, Marca.Nome AS Marca, Modelo.Nome AS Modelo FROM Aluguel
INNER JOIN Veiculo	ON	Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Cliente	ON	Veiculo.IdVeiculo = Cliente.IdCliente
INNER JOIN Modelo	ON	Veiculo.IdVeiculo = Modelo.IdModelo
INNER JOIN Marca	ON	Veiculo.IdVeiculo = Marca.IdMarca
