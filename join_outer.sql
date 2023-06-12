-- LEFT JOIN: Retorna todas as linhas da tabela à esquerda, mesmo se não houver nenhuma correspondência na tabela à direita.
-- RIGHT JOIN: Retorna todas as linhas da tabela à direita, mesmo se não houver nenhuma correspondência na tabela à esquerda.
-- FULL JOIN: Retorna linhas quando houver uma correspondência em qualquer uma das tabelas. É uma combinação de LEFT e RIGHT JOINS.

--LEFT JOIN--

-- SELECT colunas
-- FROM tabela_esq
-- LEFT (OUTER) JOIN tabela_dir
-- ON tabela_esq.coluna=tabela_dir.coluna;

SELECT * FROM tbl_autores
LEFT JOIN tbl_livro
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

--LEFT JOIN sem correspondências:

-- SELECT coluna
-- FROM tabela_esq
-- LEFT (OUTER) JOIN tabela_dir
-- ON tabela_esq.coluna=tabela_dir.coluna
-- WHERE tabela_dir.coluna IS NULL;

SELECT * FROM tbl_autores
LEFT JOIN tbl_livro
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_livro.ID_Autor IS NULL;

--RIGHT JOIN--

-- SELECT colunas
-- FROM tabela_esq
-- RIGHT (OUTER) JOIN tabela_dir
-- ON tabela_esq.coluna=tabela_dir.coluna;

SELECT * FROM tbl_livro AS Li
RIGHT JOIN tbl_editoras AS Ed
ON Li.ID_editora = Ed.ID_editora;

--RIGHT JOIN excluindo correspondências:

-- SELECT colunas
-- FROM tabela_esq
-- RIGHT (OUTER) JOIN tabela_dir
-- ON tabela_esq.coluna=tabela_dir.coluna;

SELECT coluna
FROM tabela_esq
RIGHT (OUTER) JOIN tabela_dir
ON tabela_esq.coluna=tabela_dir.coluna
WHERE tabela_esq.coluna IS NULL;

--FULL JOIN--

-- SELECT colunas
-- FROM tabela1
-- FULL (OUTER) JOIN tabela2
-- ON tabela1.coluna=tabela2.coluna;

--FULL JOIN excluindo correspondências:

-- SELECT colunas
-- FROM tabela1
-- FULL (OUTER) JOIN tabela2
-- ON tabela1.coluna=tabela2.coluna
-- WHERE tabela1.coluna IS NULL
-- OR tabela2.coluna IS NULL;

--CROSS JOIN--
-retorna um produto cartesiano entre as tabelas, mostrando todas as combinações possíveis entre os registros.

Sintaxe:

-- SELECT colunas FROM tabela1
-- CROSS JOIN tabela2;

SELECT Nome_Livro, Preco_Livro
FROM tbl_livro
CROSS JOIN tbl_autores;