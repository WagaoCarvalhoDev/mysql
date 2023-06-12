-- MIN = Valor Mínimo de um conjunto de valores
-- MAX = Valor Máximo de um conjunto de valores
-- AVG = Média Aritmética de um conjunto de valores
-- SUM = Total (Soma) de um conjunto de valores
-- COUNT = Contar quantidade total de itens

SELECT COUNT(*) FROM tbl_autores;

SELECT COUNT(DISTINCT id_autor) FROM tbl_livro;

SELECT MAX(Preco_Livro) FROM tbl_livro;

SELECT MIN(Data_Pub) FROM tbl_livro;

SELECT AVG(Preco_Livro) FROM tbl_livro;

SELECT SUM(Preco_Livro) FROM tbl_livro;