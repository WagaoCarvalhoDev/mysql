-- SELECT coluna(s)
-- FROM tabela
-- WHERE expressão | coluna NOT IN (valor1, valor2,...);

-- SELECT coluna(s)
-- FROM tabela
-- WHERE expressão | coluna IN (
--   SELECT coluna(s)
--   FROM tabela
--   WHERE | GROUP BY | HAVING | ORDER BY
-- );

USE db_Biblioteca;

SELECT Nome_Livro, Id_Editora
FROM tbl_livro
WHERE Id_Editora IN (2,4);

SELECT Nome_Livro, Id_Editora
FROM tbl_livro
WHERE Id_Editora NOT IN (1,2);

SELECT Nome_Livro, Id_Editora
FROM tbl_livro
WHERE Id_editora IN (
  SELECT Id_editora
  FROM tbl_editoras
  WHERE Nome_Editora = 'Wiley' OR Nome_Editora = 'Microsoft Press'
);