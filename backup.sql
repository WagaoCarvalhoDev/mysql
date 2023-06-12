--Backup Banco de Dados
--mysqldump -u root -p nome_banco > arquivo_backup.sql
mysqldump -u root -p db_Biblioteca > /home/db_Biblioteca.sql

--Restauração do Banco de Dados
--mysql -u root -p banco_criado < backup.sql
mysql -u root -p teste_restore < /home/db_Biblioteca.sql

CREATE DATABASE IF NOT EXISTS teste_restore;

DROP DATABASE IF EXISTS teste_restore;
