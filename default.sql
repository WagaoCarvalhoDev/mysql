--Sintaxe para criar um padrão em uma nova tabela onde uma coluna tem o valor padrão São Paulo:
-- CREATE TABLE nome_tabela
-- (coluna1 tipo restrição,
-- coluna1 tipo DEFAULT ‘São Paulo’
-- colunaN tipo restrição
-- )

-- Sintaxe para criar um padrão em uma tabela já existente:
-- ALTER TABLE nome_tabela
-- MODIFY COLUMN nome_coluna tipo_dados DEFAULT ‘valor_padrão’;


--criar o padrão de sobrenome “da Silva” na coluna Sobrenome_autor da tabela tbl_autores:
ALTER TABLE tbl_autores
MODIFY COLUMN Sobrenome_Autor Varchar(60)
DEFAULT 'da Silva';

--Inserir registro para teste:
INSERT INTO tbl_autores (ID_Autor, Nome_autor)
VALUES (15, 'João');

SELECT * FROM tbl_autores;