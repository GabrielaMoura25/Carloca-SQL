-- ---------------------------------------------------------------------------------------------
-- 6. Enquanto um carro estiver locado por um cliente não pode ser ofetado para outro:
-- ---------------------------------------------------------------------------------------------
select * from carloca.Carro where is_available = 1;

-- ---------------------------------------------------------------------------------------------
-- 7. Histórico dos clientes que locaram carros:
-- ---------------------------------------------------------------------------------------------
select 	Cliente.id_cliente, Cliente.nome, 
		Carro.modelo, Carro.cor, Carro.versao, 
		Aluguel.km_inicial, Aluguel.km_final, Aluguel.data_aluguel, Aluguel.data_devolucao 
    from Aluguel 
	inner join Cliente on Aluguel.id_cliente = Cliente.id_cliente
	inner join Carro on Aluguel.id_carro = Carro.id_carro
	order by Cliente.id_cliente asc;

-- ---------------------------------------------------------------------------------------------
-- 8. Histórico de quilometros rodados do cliente e quilometragem atual de cada um dos carros:
-- ---------------------------------------------------------------------------------------------
select 	Cliente.id_cliente, Cliente.nome, 
		Carro.modelo, Carro.cor,
		Aluguel.km_total, Aluguel.km_final as 'km_atual', Aluguel.data_aluguel, Aluguel.data_devolucao from Aluguel 
		inner join Cliente on Aluguel.id_cliente = Cliente.id_cliente
		inner join Carro on Carro.id_carro = Aluguel.id_carro
		order by Aluguel.id_aluguel asc;

-- --------------------------------------------------------------------------------------------------
-- 9. Onde o carro foi locado e onde foi devolvido cada veículo:
-- --------------------------------------------------------------------------------------------------
--LOCADO:
select Aluguel.id_aluguel as 'id_aluguel', Cliente.nome, Carro.modelo, Franquia.nome as 'fr_aluguel', Endereco.* from Aluguel
	inner join Cliente on Aluguel.id_cliente = Cliente.id_cliente
	inner join Carro on Aluguel.id_carro = Carro.id_carro
	inner join Franquia on Aluguel.franquia_aluguel = Franquia.id_franquia
	inner join Endereco on Franquia.id_endereco  = Endereco.id_endereco
	order by Aluguel.id_aluguel asc;

--DEVOLVIDO:
select Aluguel.id_aluguel, Cliente.nome, Carro.modelo, Franquia.nome as 'fr_devolucao', Endereco.* from Aluguel
	inner join Cliente on Aluguel.id_cliente = Cliente.id_cliente
	inner join Carro on Aluguel.id_carro = Carro.id_carro
	inner join Franquia on Aluguel.franquia_devolucao  = Franquia.id_franquia
	inner join Endereco on Franquia.id_endereco  = Endereco.id_endereco
	order by Aluguel.id_aluguel asc;