CREATE TABLE Pedidos (
  pedido_id integer PRIMARY KEY,
  nome_pedido varchar(50) NOT NULL,
  dono_pedido varchar(50) NOT NULL
);

CREATE TABLE Entregadores (
  entregador_id integer PRIMARY KEY,
  nome_entregador varchar(50) NOT NULL,
  entrega_quantidade integer NOT NULL,                                       -- Corrigi o nome da coluna para fazer sentido
  pedido_id integer,                    -- Coluna que armazenará a referência

  CONSTRAINT fk_pedido
  FOREIGN KEY (pedido_id)
  REFERENCES Pedidos (pedido_id)        -- Referenciando a Chave Primária
);

CREATE TABLE peças_no_almoxarifado (
  peça_id integer PRIMARY KEY,
  peça_nome VARCHAR (50) NOT NULL,
  peça_quantidade integer NOT NULL
);

INSERT INTO Pedidos
(pedido_id, nome_pedido, dono_pedido) VALUES
(1, 'Peça', 'Nome'),
(2, 'Peça', 'Nome'),
(3, 'Peça', 'Nome'),
(4, 'Peça', 'Nome'),
(5, 'Peça', 'Nome'),
(6, 'Peça', 'Nome'),
(7, 'Peça', 'Nome'),
(8, 'Peça', 'Nome'),
(9, 'Peça', 'Nome'),
(10, 'Peça', 'Nome'),
(11, 'Peça', 'Nome');

INSERT INTO Entregadores
(entregador_id, nome_entregador, entrega_quantidade) VALUES
(1, 'Nome', 0),
(2, 'Nome', 0),
(3, 'Nome', 0),
(4, 'Nome', 0),
(5, 'Nome', 0),
(6, 'Nome', 0),
(7, 'Nome', 0),
(8, 'Nome', 0),
(9, 'Nome', 0),
(10, 'Nome', 0),
(11, 'Nome', 0);

INSERT INTO peças_no_almoxarifado
(peça_id, peça_nome, peça_quantidade) VALUES
(1, 'Nome', 0),
(2, 'Nome', 0),
(3, 'Nome', 0),
(4, 'Nome', 0),
(5, 'Nome', 0),
(6, 'Nome', 0),
(7, 'Nome', 0),
(8, 'Nome', 0),
(9, 'Nome', 0),
(10, 'Nome', 0),
(11, 'Nome', 0);

-- SELECT * FROM peças_no_almoxarifado;
