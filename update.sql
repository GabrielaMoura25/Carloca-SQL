-- -------------------------------------------------------------------
-- 2. Tentando definir uma cor diferente de branco, preto e prata:
-- -------------------------------------------------------------------
	update carloca.Carro set cor = 'roxo' where id_carro = 2; 
	--saída: Erro Code [1265]: Data truncated for column 'cor' at row 1

-- ---------------------------------------------------------------------------------------------        
-- 6. Enquanto um carro estiver locado por um cliente não pode ser ofetado para outro ou seja is_available = 0:
-- ---------------------------------------------------------------------------------------------
	--tornando um carro indisponivel quando locado:

	update carloca.Carro set is_available = 0 where id_carro = 3;
	update carloca.Carro set is_available = 0 where id_carro = 7;
	update carloca.Carro set is_available = 0 where id_carro = 1;
	update carloca.Carro set is_available = 0 where id_carro = 2;
    
    --devolvendo o carro/finalizando um aluguel. O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros:
	update carloca.Aluguel set km_final = 6500, km_total = km_final - km_inicial where id_carro = 3;
	update carloca.Aluguel set km_final = 7930, km_total = km_final - km_inicial where id_carro = 7;
	update carloca.Aluguel set km_final = 9940, km_total = km_final - km_inicial where id_carro = 1;
	update carloca.Aluguel set km_final = 8124, km_total = km_final - km_inicial where id_carro = 2;
    
    --tornando o carro disponivel:
	update carloca.Carro set is_available = 1 where id_carro = 3;
	update carloca.Carro set is_available = 1 where id_carro = 7;
	update carloca.Carro set is_available = 1 where id_carro = 1;
	update carloca.Carro set is_available = 1 where id_carro = 2;