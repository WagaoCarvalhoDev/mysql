-- CREATE [UNIQUE] INDEX nome_índice
-- ON nome_tabela (
--   coluna1 [ASC | DESC],
--   [coluna2 [ASC | DESC]]...
-- );

USE db_Biblioteca;

SHOW INDEX FROM tbl_editoras;

CREATE TABLE IF NOT EXISTS tbl_editoras (
IdEditora SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome_Editora VARCHAR(40) NOT NULL,
INDEX (Nome_Editora)
);

EXPLAIN SELECT * FROM tbl_editoras WHERE Nome_Editora = 'Springer';

CREATE INDEX idx_editora ON tbl_editoras(Nome_Editora);

DROP INDEX idx_editora ON tbl_editoras;




CREATE TABLE tbl_editoras (
IdEditora SMALLINT PRIMARY KEY AUTO_INCREMENT,
NomeEditora VARCHAR(40) NOT NULL,
INDEX (NomeEditora)
);

