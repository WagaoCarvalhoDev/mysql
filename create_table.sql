--CREATE TABLE [IF NOT EXISTS] nome_tabela (
--        coluna tipo_dados constraints
--        coluna tipo_dados constraints
--        coluna tipo_dados constraints
--        ...
-- );

USE db_Biblioteca;

CREATE TABLE IF NOT EXISTS tbl_livro (
ID_Livro SMALLINT  AUTO_INCREMENT PRIMARY KEY,
Nome_Livro VARCHAR(70) NOT NULL,
ISBN13 CHAR(13),
ISBN10 CHAR(10),
ID_Categoria SMALLINT,
ID_Autor SMALLINT NOT NULL,
Data_Pub DATE NOT NULL,
Preco_Livro DECIMAL(6,2) NOT NULL
);

CREATE TABLE tbl_autores (
ID_Autor SMALLINT PRIMARY KEY,
Nome_Autor VARCHAR(50) NOT NULL,
Sobrenome_Autor VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_categorias (
ID_Categoria SMALLINT PRIMARY KEY,
Categoria VARCHAR(30) NOT NULL
);

CREATE TABLE tbl_editoras (
ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome_Editora VARCHAR(50) NOT NULL
);

-- CREATE TABLE Compras(
-- ID_Compra SMALLINT PRIMARY KEY,
-- Codigo_Produto VARCHAR(50),
-- Data_Compra DATE,
-- FOREIGN KEY(Codigo_Produto) REFERENCES
-- Produtos(Codigo_Produto)
-- );
