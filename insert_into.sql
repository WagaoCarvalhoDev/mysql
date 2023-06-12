USE db_Biblioteca;

-- INSERT INTO nome_tabela (coluna1, coluna2,...)
-- VALUES (valor1, valor2,...);

INSERT INTO tbl_autores
VALUES
(1, 'Daniel', 'Barret'),
(2, 'Gerald', 'Carter'),
(3, 'Mark', 'Sobell'),
(4, 'William', 'Stanek'),
(5, 'Richard', 'Blum'),
(6, 'Jostein', 'Gaarder'),
(7, 'Umberto', 'Eco'),
(8, 'Neil', 'De Grasse Tyson'),
(9, 'Stephen', 'Hawking'),
(10, 'Stephen', 'Jay Gould'),
(11, 'Charles', 'Darwin'),
(12, 'Alan', 'Turing'),
(13, 'Simon', 'Monk'),
(14, 'Paul', 'Scherz');

SELECT * FROM tbl_autores;

INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Prentice Hall');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('O´Reilly');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Microsoft Press');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Wiley');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('McGraw-Hill Education');

SELECT * FROM tbl_editoras;


INSERT INTO tbl_categorias
VALUES
(1, 'Tecnologia'),
(2, 'História'),
(3, 'Literatura'),
(4, 'Astronomia'),
(5, 'Botânica');

SELECT * FROM tbl_categorias;

INSERT INTO tbl_livro (Nome_Livro, ISBN13, ISBN10, Data_Pub, Preco_Livro, ID_Autor)
VALUES
('Linux Command Line and Shell Scripting','9781118983843', '111898384X', '20150109', 68.35, 5),
('SSH, the Secure Shell','9780596008956', '0596008953', '20050517', 58.30, 1),
('Using Samba','9780596002565', '0596002564', '20031221', 61.45, 2),
('Fedora and Red Hat Linux', '9780133477436', '0133477436', '20140110', 62.24, 3),
('Windows Server 2012 Inside Out','9780735666313', '0735666318', '20130125', 66.80, 4),
('Microsoft Exchange Server 2010','9780735640610', '0735640610', '20101201', 45.30, 4),
('Practical Electronics for Inventors', '9781259587542', '1259587541', '20160324', 67.80, 13);

SELECT * FROM tbl_livro;