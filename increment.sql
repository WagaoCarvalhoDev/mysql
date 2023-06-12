USE db_Biblioteca;

CREATE TABLE tbl_teste_incremento (
Codigo SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 15;

INSERT INTO tbl_teste_incremento (Nome) VALUES ('Ana');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('Maria');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('Julia');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('Joana');

SELECT * FROM tbl_teste_incremento;

--Verificar o valor atual do auto incremento
SELECT MAX(Codigo)
FROM tbl_teste_incremento;

--Alterar o próximo valor no campo de  Auto-Incremento
AALTER TABLE tbl_teste_incremento
AUTO_INCREMENT = 90;

DROP TABLE IF EXISTS tbl_teste_incremento;