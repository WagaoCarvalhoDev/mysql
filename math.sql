-- +  Soma
-- –   Subtração
-- /   Divisão
-- *   Multiplicação
-- % ou MOD   Módulo
-- DIV   Divisão inteira

-- CEILING()   Arredondar para cima
-- FLOOR()     Arredondar para baixo
-- PI() Retorna o valor de Pi
-- POW(x,y) Retorna x elevado a y
-- SQRT()   Raiz quadrada de um argumento
-- SIN() Retorna o seno de um número dado em radianos
-- HEX() Retorna a representação hexadecimal de um valor decimal.

SELECT 3 * 9;

SELECT Nome_Livro, Preco_Livro * 5  AS 'Preço de 5 Unidades'
FROM tbl_livro;

SELECT 2 * 9 / 3;

SELECT Nome_Livro, Preco_Livro / 2 AS 'Preço com 50% de desconto'
FROM tbl_livro;

SELECT 10 MOD 3;

UPDATE tbl_livro
SET Preco_livro = Preco_livro * 1.1;

SELECT Nome_Livro, CEILING(Preco_Livro * 5)  AS  'Preço Arredondado'
FROM tbl_livro;

SELECT PI();
SELECT POW(2,4);
SELECT SQRT(81);
SELECT SIN(PI());
SELECT HEX(1200);