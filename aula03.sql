CREATE DATABASE aula2;
CREATE DATABASE IF NOT  EXISTS aula2;
USE aula2;
CREATE TABLE alunos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(90) NOT NULL
);
SHOW TABLES; --  mostra as tabelas existentes dentro de uma database selecionada
DROP TABLE alunos; -------- permite visualizar os dados existentes dentro de uma tabela
SELECT * FROM alunos;
INSERT INTO alunos (nome,email)
VALUES
('FABRICIO','FABRICIO@GMAIL.COM'),
('FABRICIO','FABRICIO@GMAIL.COM'),
('JOSE','JOSE@GMAIL.COM');
-- ALTERAR A ESTRUTURA DE UMA TABELA -> alter table add
ALTER TABLE alunos ADD COLUMN idade INT NOT NULL;

ALTER TABLE alunos MODIFY COLUMN idade INT ;
ALTER TABLE alunos DROP COLUMN idade;
INSERT INTO alunos(nome,email)
VALUES
('UAGUavavavvavv','ava45@gmail.com');

DESCRIBE alunos;
-- operacoes
--	WHERE
SELECT * FROM alunos;
SELECT * FROM alunos
WHERE id=2;
-- OPERADORES LOGICOS (AND,OR,NOT)
SELECT * FROM alunos
WHERE id=1 AND nome ='FABRICIO'; -- 1 RESULTADO DUAS CONDIÇÕES SEJAM VERDADEIRAS
SELECT * FROM alunos
WHERE id=1 OR nome ='FABRICIO'; -- 2 RESULTADOS
SELECT * FROM alunos
WHERE NOT nome='FABRICIO';

-- DELETE
DELETE FROM alunos; -- NUNCA FAÇA EM PRODUÇÃO E NUNCA FAÇA O DELETE SEM O WHERE

DELETE FROM alunos
WHERE id=3;

-- UPDATE
UPDATE alunos
SET email='jose@1234567890'-- NUNCA FAÇA EM PRODUÇÃO E NUNCA FAÇA O UPDATE SEM O WHERE
WHERE id=1;
SELECT * FROM alunos;



