-- SELECT colunas FROM tabela
-- WHERE coluna BETWEEN valor1 AND valor2;

SELECT * FROM tbl_livro
WHERE Data_Pub BETWEEN '20040517' AND '20110517';

SELECT Nome_Livro AS Livro, Preco_Livro AS Preco
FROM tbl_livro
WHERE Preco_Livro BETWEEN 40.00 AND 60.00;