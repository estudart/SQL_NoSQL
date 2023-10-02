USE teste_2;

SELECT * FROM tipo_produto;


INSERT INTO tipo_produto (descricao) VALUES ('Televisão');
INSERT INTO tipo_produto (descricao) VALUES ('Ar-condicionado');
INSERT INTO tipo_produto (descricao) VALUES ('Video-game');
INSERT INTO tipo_produto (descricao) VALUES ('Fogão');

SELECT * FROM produtos;
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('PS4', '2000', '6');
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('SONY Bravia', '4000', '4');
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Sprinter', '2500', '5');
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Brastemp', '1500', '7');