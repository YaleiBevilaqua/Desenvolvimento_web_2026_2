CREATE TABLE orcamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    endereco VARCHAR(200),
    cidade VARCHAR(100),
    uf CHAR(2),
    data_desejada DATE NOT NULL,
    observacoes TEXT,
    servico VARCHAR(150) NOT NULL,
    data_solicitacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    mensagem TEXT NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE depoimentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    depoimento TEXT NOT NULL,
    data_depoimento DATE NOT NULL,
    foto VARCHAR(255) DEFAULT NULL
);