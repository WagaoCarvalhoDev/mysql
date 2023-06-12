Padrão	Significado

[…]	    Qualquer caracter único no intervalo ou conjunto especificado ([a-h]; [aeiou])
[^…]  	Qualquer caracter único  que não esteja no intervalo ou conjunto especificado ([^a-h]; [^aeiou])
^	    Início da string (fora dos colchetes); Negação (dentro dos colchetes)
$	    Fim da string
a|b|c	Alternação (a ou b ou c) (caractere pipe – |)
*	    Zero ou mais ocorrências do elemento precedente
+	    Uma ou mais ocorrências do elemento precedente
{n}	    N instâncias do elemento precedente
{m,n}	De M até N instâncias do elemento precedente


--inicie com uma das letras F ou S
SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro REGEXP '^[FS]';

--não se iniciam nem com o caractere F, nem com o caractere S
SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro REGEXP '^[^FS]';

--finalizem com as letras n ou g:
SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro REGEXP '[ng]$';

--comecem com as letras F ou S, ou ainda com a sequência de caracteres Mi
SELECT Nome_Livro
FROM tbl_livro
WHERE Nome_Livro REGEXP '^[FS]|Mi';