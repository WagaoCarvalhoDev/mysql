-- SELECT colunas
-- FROM tabela1
-- INNER JOIN tabela2
-- ON tabela1.coluna=tabela2.coluna;

SELECT * FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

SELECT tbl_livro.Nome_Livro, tbl_livro.ISBN13, tbl_autores.Nome_Autor
FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

--nao existe ID_editoras
SELECT L.Nome_Livro AS Livros, E.Nome_editora AS Editoras
FROM tbl_livro AS L
INNER JOIN tbl_editoras AS E
ON L.ID_editoras = E.ID_editoras
WHERE E.Nome_Editora LIKE 'M%';

--nao existe ID_editoras
SELECT L.Nome_Livro AS Livro,
A.Nome_autor AS Autor,
E.Nome_Editora AS Editora,
L.Preco_Livro AS 'Preço do Livro'
FROM tbl_livro AS L
INNER JOIN tbl_autores AS A
ON L.ID_autor = A.ID_autor
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_editora
WHERE E.Nome_Editora LIKE 'O%'
ORDER BY L.Preco_Livro DESC;

