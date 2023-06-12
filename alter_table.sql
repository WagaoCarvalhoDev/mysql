USE db_Biblioteca;

--DROP coluna
ALTER TABLE tbl_livro
DROP COLUMN ID_autor;

SELECT * FROM tbl_livro;

ALTER TABLE tbl_livro
DROP PRIMARY KEY;

--ADD coluna ID_Autor
ALTER TABLE tbl_livro
ADD  ID_Autor  SMALLINT NOT NULL;

--ADD FOREIGN KEY ID_autor
ALTER TABLE tbl_livro
ADD CONSTRAINT fk_ID_Autor
FOREIGN KEY (ID_Autor)
REFERENCES tbl_autores (ID_autor);

--ADD coluna ID_editora
ALTER TABLE tbl_livro
ADD  ID_editora  SMALLINT NOT NULL;

--ADD FOREIGN KEY ID_editora
ALTER TABLE tbl_livro
ADD CONSTRAINT fk_id_editora
FOREIGN KEY (ID_editora)
REFERENCES tbl_editoras (ID_editora);

--ADD FOREIGN KEY ID_Categoria
ALTER TABLE tbl_livro
ADD CONSTRAINT fk_id_categoria
FOREIGN KEY (ID_Categoria)
REFERENCES tbl_categorias (ID_Categoria);

--MODIFY COLUMN
ALTER TABLE tbl_Livro
MODIFY COLUMN ID_Autor SMALLINT;

--ADD PK
ALTER TABLE tbl_livro
ADD PRIMARY KEY (ID_Cliente)