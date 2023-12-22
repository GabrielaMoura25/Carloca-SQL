# Sistema de Locadora de Carros CARLOCA

Bem-vindo ao projeto CARLOCA - um sistema de locadora de carros simples e eficiente.

## Sobre o Projeto

O CARLOCA é um sistema que gerencia o aluguel de carros em diversas unidades da franquia. Com recursos como histórico de clientes, controle de quilometragem e gestão de disponibilidade de veículos, proporciona uma experiência completa para os usuários.

## Requisitos Funcionais

- Um carro possui modelo, montadora, cor, versão e categoria.
- As cores disponíveis são branco, preto e prata.
- Categorias incluem hatch, sedan compacto, sedan médio, SUV, etc.
- O aluguel é possível apenas na modalidade "diária".
- Um cliente não pode alugar mais de um carro simultaneamente.
- Carros locados não podem ser oferecidos para outro cliente.
- Registro do histórico de clientes que locaram um carro.
- Histórico de quilometragem por cliente e status atual dos carros.

## Requisitos Não Funcionais

- Normalização de dados aplicada em todo o projeto.
- Scripts SQL para validação dos requisitos.
- Foco exclusivo nos requisitos funcionais, excluindo pagamento por enquanto.

## Instruções de Uso

1. Clone o repositório: ```git clone https://github.com/GabrielaMoura25/Carloca-SQL.git```
2. Execute os scripts SQL no seu banco de dados.

## Exemplos de Uso

A seguir, exemplos de inserção e consulta para validar os requisitos:

```sql
-- Exemplo de Insert para Carro:
INSERT INTO carro (modelo, cor, versao, categoria, montadora, is_available) VALUES
    ('Fiesta', 'azul', 'SE', 'Hatch', 'Ford', 1),
    ('Civic', 'vermelho', 'Touring', 'Sedan Médio', 'Honda', 1);

-- Exemplo de Select para verificar disponibilidade:
SELECT * FROM carro WHERE is_available = 1;
```

### Observação:
- Para criar o banco de dados execute o script SQL contido no arquivo ```create.sql```.
- Pra inserção dos dados execute o script SQL contido no arquivo ```ìnsert.sql```.
- E para validar os requisitos funcionais execute os selects e updates contidos nos arquivos ```update.sql``` e ```select.sql```.

## Aproveite!

Desenvolvido por Gabriela Moura, © 2023.
