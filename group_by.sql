-- SELECT colunas, função_agregação()
-- FROM tabela
-- WHERE filtro
-- GROUP BY coluna


--Criar uma tabela para testarmos o GROUP BY:
CREATE TABLE tbl_vendas (
ID Smallint Primary Key,
Nome_Vendedor Varchar(20),
Quantidade Int,
Produto Varchar(20),
Cidade Varchar(20)
);

--Inserir registros na tabela criada para teste de GROUP BY:
INSERT INTO tbl_vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade)
  VALUES
(10,'Jorge',1400,'Mouse','São Paulo'),
(12,'Tatiana',1220,'Teclado','São Paulo'),
(14,'Ana',1700,'Teclado','Rio de Janeiro'),
(15,'Rita',2120,'Webcam','Recife'),
(18,'Marcos',980,'Mouse','São Paulo'),
(19,'Carla',1120,'Webcam','Recife'),
(22,'Roberto',3145,'Mouse','São Paulo');

--Consulta usando agregação para obter o total de vendas de Mouses (sem o GROUP BY):
SELECT SUM(Quantidade) As TotalMouses
FROM tbl_vendas
WHERE Produto = 'Mouse';

--Consulta totalizando as vendas de todos os produtos por cidade:
SELECT Cidade, SUM(Quantidade) As Total
FROM tbl_vendas
GROUP BY Cidade;

--Consulta contando o número de registros de vendas (quantidade de vendas) por cidade:
SELECT Cidade, COUNT(*) As Total
FROM tbl_vendas
GROUP BY Cidade;

--Consulta com o total de vendas realizadas por cada vendedor:
SELECT Nome_Vendedor, SUM(Quantidade)
FROM tbl_vendas
GROUP BY Nome_Vendedor;
