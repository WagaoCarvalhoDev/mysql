--Criar Procedimentos Armazenados

--CREATE PROCEDURE nome_procedimento (parâmetros)
--declarações;

--Executando um Procedimento:
--CALL nome_procedimento (parâmetros);

CREATE PROCEDURE verPreço(varLivro smallint)
SELECT CONCAT('O preço do livro ', Nome_Livro, ' é ', Preco_Livro) AS Preço
FROM tbl_livro
WHERE ID_Livro = varLivro;

CALL verPreço(1);

CREATE PROCEDURE consultaLivros (varEditora VARCHAR(50))
SELECT CONCAT('O livro ', Nome_Livro, ' custa ', Preco_Livro) AS Preço
FROM tbl_livro
INNER JOIN tbl_editoras
ON tbl_livro.ID_editora = tbl_editoras.ID_Editora
WHERE tbl_editoras.Nome_Editora = varEditora;

CALL consultaLivros('O´Reilly');

DROP PROCEDURE nome_procedimento;



