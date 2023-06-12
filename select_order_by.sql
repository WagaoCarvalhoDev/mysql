-- similar pwd
SELECT DATABASE();

USE db_Biblioteca;

--SELECT
SELECT Nome_Autor FROM tbl_autores;

SELECT * FROM tbl_autores;

SELECT Nome_Livro FROM tbl_livro;

SELECT Nome_Livro, ID_Autor FROM tbl_livro;

SELECT Nome_Livro, ISBN13
FROM tbl_livro;

--ORDER BY
SELECT * FROM tbl_livro
ORDER BY Nome_Livro ASC;

SELECT Nome_Livro, ID_Editora
FROM tbl_livro
ORDER BY ID_Editora;

SELECT Nome_Livro, Preco_Livro
FROM tbl_livro
ORDER BY Preco_Livro DESC;