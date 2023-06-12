--Criar tabela:

CREATE TABLE teste_nulos (
id smallint PRIMARY KEY auto_increment,
item varchar(20),
quantidade smallint NULL);

--Inserir dados para testes:

INSERT INTO teste_nulos (id, item, quantidade)
VALUES (1, 'Pendrive', 5);
INSERT INTO teste_nulos (id, item, quantidade)
VALUES (2, 'Monitor', 7);
INSERT INTO teste_nulos (id, item, quantidade)
VALUES (3, 'Teclado', NULL);

--Efetuar consulta para verificar funcionalidade da tabela:
 
SELECT * FROM teste_nulos;

--Função CONCAT--

--CONCAT(string ou nome_coluna, <string | nome_coluna)

SELECT CONCAT('Fabio ', 'dos Reis', 'fefe') AS 'Meu Nome';

SELECT CONCAT(Nome_autor, ' ', Sobrenome_autor) AS 'Nome Completo'
FROM tbl_autores;

SELECT CONCAT('Eu gosto do livro ', Nome_Livro)
FROM tbl_Livro WHERE ID_autor = 2;

--Função IFNULL--
--Efetua a concatenação de strings e, caso a string concatenada seja nula, a substitui por um valor padrão (substituição).
--IFNULL (valor, substituição)

SELECT CONCAT('A quantidade adquirida e ', ' ', IFNULL(quantidade, 0)) AS Quantidade
FROM teste_nulos
WHERE  item = 'Teclado';

--Função COALESCE--
--Essa função retornará o primeiro valor não-nulo encontrado em seus argumentos.

--COALESCE (valor1, valor2, …, valorN)

SELECT CONCAT('A quantidade adquirida é ', ' ', COALESCE(NULL, quantidade, NULL, 0))
FROM teste_nulos
WHERE  item = 'Teclado';

