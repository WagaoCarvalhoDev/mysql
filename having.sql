-- SELECT colunas, função_agregação()
-- FROM tabela
-- WHERE filtro
-- GROUP BY colunas
-- HAVING filtro_agrupamento

--Consulta retornando total de vendas das cidades com menos de 2500 produtos vendidos:
SELECT Cidade, SUM(Quantidade) As Total
FROM tbl_vendas
GROUP BY Cidade
HAVING SUM(Quantidade) < 2500;

--Consulta retornando total de vendas do produto ‘Teclado’ das cidades com menos de 1500 teclados vendidos:
SELECT Cidade, SUM(Quantidade) As TotalTeclados
FROM tbl_vendas
WHERE Produto = 'Teclado'
GROUP BY Cidade
HAVING SUM(Quantidade) < 1500;