-- Criar a tabela de cidades
CREATE TABLE cidades (
    id INTEGER PRIMARY KEY,
    nome_cidade VARCHAR(100) NOT NULL
);

-- Criar a tabela de usuarios
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER NOT NULL,
    cidade_id INTEGER,
    FOREIGN KEY (cidade_id) REFERENCES cidades(id)
);

-- Inserir cidades
INSERT INTO cidades (id, nome_cidade) VALUES
(1, 'Ribeirão Preto'),
(2, 'Campinas'),
(3, 'São Paulo'),
(4, 'Sertãozinho');

-- Inserir usuarios
INSERT INTO usuarios (id, nome, idade, cidade_id) VALUES
(1, 'Ana', 25, 1),
(2, 'Carlos', 32, 2),
(3, 'Mariana', 29, 1),
(4, 'Pedro', 41, 3),
(5, 'Juliana', 35, 2),
(6, 'Rafael', 30, 3),
(7, 'Fernanda', 27, 4),
(8, 'Lucas', 38, 1),
(9, 'Beatriz', 33, 2),
(10, 'Gabriel', 24, 3);