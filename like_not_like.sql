--Começa com a letra F:
SELECT * FROM tbl_livro
WHERE Nome_Livro LIKE 'F%'; 

--Não começa com a letra S:
SELECT * FROM tbl_livro
WHERE Nome_Livro NOT LIKE 'S%';

--Inicie com uma letra qualquer e a segunda letra seja a letra i:
SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro LIKE '_i%';