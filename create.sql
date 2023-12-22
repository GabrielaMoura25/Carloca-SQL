DROP DATABASE IF EXISTS carloca;
CREATE DATABASE IF NOT EXISTS carloca;

USE carloca;

-- -----------------------------------------------------
-- Tabela Carro
-- -----------------------------------------------------
CREATE TABLE Carro (
    id_carro INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    modelo VARCHAR(255) NOT NULL,
    cor ENUM('branco', 'preto', 'prata'),
    versao VARCHAR(255),
    categoria VARCHAR(255),
    is_available TINYINT NOT NULL DEFAULT 1,
    montadora VARCHAR(255) NOT NULL
);

-- -----------------------------------------------------
-- Tabela Endereco
-- -----------------------------------------------------
CREATE TABLE Endereco (
    id_endereco INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cep VARCHAR(8) NOT NULL,
    rua VARCHAR(255) NOT NULL,
    numero VARCHAR(10),
    bairro VARCHAR(255),
    complemento VARCHAR(255),
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL
);

-- -----------------------------------------------------
-- Tabela Cliente
-- -----------------------------------------------------
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    telefone VARCHAR(12),
    id_endereco INT NOT NULL,
    CONSTRAINT cliente_fk FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco)
);

-- -----------------------------------------------------
-- Tabela Franquia
-- -----------------------------------------------------
CREATE TABLE Franquia (
    id_franquia INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_endereco INT NOT NULL,
    CONSTRAINT franquia_fk FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco),
    CONSTRAINT franquia_un UNIQUE KEY (id_endereco)
);

-- -----------------------------------------------------
-- Tabela Aluguel
-- -----------------------------------------------------
CREATE TABLE Aluguel (
    id_aluguel INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    data_aluguel DATETIME DEFAULT NOW() NOT NULL,
    data_devolucao DATETIME,
    km_inicial INT NOT NULL,
    km_final INT,
    franquia_aluguel INT NOT NULL,
    franquia_devolucao INT NOT NULL,
    id_cliente INT NOT NULL,
    id_carro INT NOT NULL,
    km_total INT,
    CONSTRAINT franquia_aluguel_fk FOREIGN KEY (franquia_aluguel) REFERENCES Franquia(id_franquia),
    CONSTRAINT franquia_devolucao_fk FOREIGN KEY (franquia_devolucao) REFERENCES Franquia(id_franquia),
    CONSTRAINT cliente_aluguel_fk FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    CONSTRAINT carro_fk FOREIGN KEY (id_carro) REFERENCES Carro(id_carro)
);
