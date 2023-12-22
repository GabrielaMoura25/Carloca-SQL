-- -----------------------------------------------------
-- Insert para a tabela carro:
-- -----------------------------------------------------
INSERT INTO Carro (modelo, cor, versao, categoria, montadora, is_available) VALUES
    ('Fiesta', 'branco', 'SE', 'Hatch', 'Ford', 1),
    ('Civic', 'preto', 'Touring', 'Sedan Médio', 'Honda', 1),
    ('Corolla', 'prata', 'XRS', 'Sedan Médio', 'Toyota', 1),
    ('Renegade', 'prata', 'Sport', 'SUV', 'Jeep', 1),
    ('Fusion', 'branco', 'SEL', 'Sedan Grande', 'Ford', 1),
    ('Golf', 'preto', 'Highline', 'Hatch', 'Volkswagen', 1),
    ('Palio', 'preto', 'Adventure', 'Hatch', 'Fiat', 1);

-- -----------------------------------------------------
-- Insert para a tabela endereco:
-- -----------------------------------------------------
INSERT INTO Endereco (cep, rua, numero, bairro, complemento, cidade, estado) VALUES
    ('76543210', 'Rua 1', '456', 'Vila Esperança', 'Casa 3', 'São Paulo', 'SP'),
    ('98765432', 'Avenida Y', '789', 'Liberdade', 'Bloco 4', 'Rio de Janeiro', 'RJ'),
    ('87654321', 'Rua X', '1011', 'Pelourinho', 'Andar 6', 'Bahia', 'SSA'),
    ('65432109', 'Avenida W', '1213', 'Serra', 'Sala 8', 'Curitiba', 'PR'),
    ('54321098', 'Rua V', '1415', 'Sobrado', 'Apartamento 21', 'João Pessoa', 'PB'),
    ('43210987', 'Avenida R', '1617', 'Poço', 'Loja 7', 'Maceió', 'AL'),
    ('32109876', 'Rua T', '1819', 'Vila Mone', 'Cobertura 9', 'Recife', 'PE');
    
-- -----------------------------------------------------
-- Insert para tabela cliente:
-- -----------------------------------------------------
INSERT INTO Cliente (nome, email, telefone, id_endereco) VALUES 
    ('Paula Souza', 'paula.souza@example.com', '1112223333', 4),
    ('Ricardo Santos', 'ricardo.santos@example.com', '5556667777', 6),
    ('Fernanda Lima', 'fernanda.lima@example.com', '9998887777', 5),
    ('Vinícius Oliveira', 'vinicius.oliveira@example.com', '3332221111', 7),
    ('Tatiane Costa', 'tatiane.costa@example.com', '7778889999', 2),
    ('Henrique Pereira', 'henrique.pereira@example.com', '2221113333', 3),
    ('Camila Oliveira', 'camila.oliveira@example.com', '6665554444', 1);

-- -----------------------------------------------------
-- Insert para tabela franquia:
-- -----------------------------------------------------
INSERT INTO Franquia (nome, id_endereco) VALUES 
    ('Franquia Nordeste', 3),
    ('Franquia Sudeste', 5),
    ('Franquia Sul', 2),
    ('Franquia Norte', 1),
    ('Franquia Centro-oeste', 7);

-- -----------------------------------------------------
-- Insert para tabela aluguel:
-- -----------------------------------------------------
INSERT INTO Aluguel 
    (data_devolucao, km_inicial, franquia_aluguel, franquia_devolucao, id_cliente, id_carro) 
VALUES
    ('2024-02-01 09:00:00', 5000, 1, 3, 1, 3),
    ('2024-02-03 15:30:00', 6300, 2, 5, 5, 5),
    ('2024-02-05 11:45:00', 8200, 3, 1, 7, 1),
    ('2024-02-04 12:40:00', 7000, 4, 2, 2, 2),
    ('2024-02-08 14:20:00', 3000, 5, 4, 3, 6),
    ('2024-02-04 12:40:00', 7000, 3, 1, 6, 4),
    ('2024-02-04 12:40:00', 7000, 2, 2, 4, 7);