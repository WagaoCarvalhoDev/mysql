-- CREATE VIEW Nome_visão
-- AS SELECT colunas
-- FROM tabela
-- WHERE condições;

CREATE VIEW vw_LivrosAutores
AS SELECT tbl_livro.Nome_Livro AS Livro, tbl_autores.Nome_Autor AS Autor
FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

--consulta nela como se estivéssemos consultando uma tabela real do banco de dados:
SELECT Livro, Autor
FROM vw_LivrosAutores
ORDER BY Autor;

--alterar uma View
ALTER  VIEW vw_LivrosAutores AS
SELECT tbl_livro.Nome_Livro AS Livro, tbl_autores.Nome_Autor AS Autor, Preco_Livro AS Valor
FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

SELECT * FROM vw_LivrosAutores;

--consultar as views existentes 
SHOW FULL TABLES IN db_Biblioteca
WHERE TABLE_TYPE LIKE 'VIEW';

DROP VIEW vw_LivrosAutores;