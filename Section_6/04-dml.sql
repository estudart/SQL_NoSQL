# DML

-- Insert
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Dell Laptop', 1200, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('MacBook Pro', 7200, 1);

INSERT INTO produtos VALUES (NULL, 'Lenovo Pro', 6000, 4);
INSERT INTO tipos_produto VALUES (NULL, 'fogão');
SELECT * FROM produtos;
SELECT * FROM tipos_produto;

-- UPDATE
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;
UPDATE produtos SET descricao = 'Impressora Laser' WHERE codigo = 4; 
UPDATE produtos SET descricao = 'Impressora Jato de Tinta' WHERE codigo = 3;

# Nunca esquece de filtrar o registro com o WHERE!
UPDATE produtos SET preco = 150;

-- DELETE
DELETE FROM produtos WHERE codigo = 4;