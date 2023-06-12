USE db_Biblioteca;

SELECT Nome_Livro, Data_Pub
FROM tbl_livro
WHERE ID_Autor = 1;

SELECT ID_Autor, Nome_Autor
FROM tbl_autores
WHERE Sobrenome_Autor = 'Stanek';

SELECT Nome_Livro, Preco_Livro
FROM tbl_livro
WHERE ID_Editora = 3;