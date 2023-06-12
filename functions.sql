--Sintaxe para criação de uma Função

-- CREATE FUNCTION nome_função (parâmetros)
-- RETURNS tipo_dados
-- código_da_função;

--Como invocar (chamar) uma Função:

--SELECT nome_função(parâmetros);

CREATE FUNCTION fn_teste(a DECIMAL(10,2), b INT)
RETURNS INT
DETERMINISTIC
RETURN a * b;

SELECT fn_teste(2.5, 4) AS Resultado;

SELECT Nome_Livro, fn_teste(Preco_Livro, 6) AS ‘Preço de 6 unidades’
FROM tbl_Livro
WHERE ID_Livro = 2;

CREATE FUNCTION fn_verPreço (a SMALLINT)
RETURNS VARCHAR(60)
DETERMINISTIC
RETURN
(SELECT CONCAT('O preço do livro ', Nome_Livro, ' é ', Preco_Livro)
FROM tbl_livro
WHERE ID_livro = a);

SELECT fn_verPreço(9);

DROP FUNCTION nome_função;
