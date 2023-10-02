USE secao04;

CREATE TABLE tipos_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);


INSERT INTO tipos_produto (descricao) VALUES ('computadores');
INSERT INTO tipos_produto (descricao) VALUES ('impressora');
INSERT INTO tipos_produto (descricao) VALUES ('ar-condicionado');


INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('desktop', 1000, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('laptop', 1000, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato de Tinta', 1500, 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', 1800, 2);

# DQL
SELECT * FROM tipos_produto;
SELECT * FROM produtos;
SELECT descricao FROM tipos_produto;
SELECT descricao, codigo FROM tipos_produto;
SELECT codigo, descricao FROM tipos_produto;
SELECT p.codigo AS cod, p.descricao AS descri, p.preco AS pre FROM produtos AS p;