--criar a tabela
CREATE TABLE contatos (
id number CONSTRAINT contatos PRIMARY KEY,
primeiro_nome varchar2(100),
ultimo_nome varchar2(100),
sexo varchar2(1),
email varchar2(100),
data_nascimento DATE,
salario number(20)
);

--criar a tabela
CREATE TABLE compra (
id_compra number CONSTRAINT compra PRIMARY KEY,
produto varchar2(100),
contato_id number,
valor number,
data_compra DATE
);


--inserir dados na tabela
INSERT INTO contato VALUES (1,'Diogo','Moura','M','diogomou@gmail.com','01-FEB-1984','10000');
INSERT INTO contato VALUES (2,'Debora','Teixeira','F','deborarteixeira@gmail.com','27-JUL-1979','100000');
INSERT INTO contato VALUES (3,'Jordan','Santos','M','jordan@gmail.com','10-MAR-1962','100000');
INSERT INTO contato VALUES (4,'Camila','Pontiguar','F','camila@gmail.com','12-OCT-2000','50000');


INSERT INTO compra VALUES (1,'Cebola',1,10,'20-MAY-2022');
INSERT INTO compra VALUES (2,'Abacate',1,5,'20-MAY-2022');
INSERT INTO compra VALUES (3,'Alface',1,3,'20-MAY-2022');

--consutar a tabela
SELECT * FROM contato;
SELECT * FROM compra;

--deletar registro da tabela
DELETE FROM contato WHERE primeiro_nome='Debora';
DELETE FROM contato WHERE primeiro_nome='Jordan';

--deletar tabela
DROP TABLE contatos;
DROP TABLE compra;

--renomear tabela
ALTER TABLE contatos RENAME TO contato;

--contar o total de regitros na tabela
SELECT 'Total de registros na tabela: ' || count(*) FROM contato ;

--totalizar com soma um campo da tabela
SELECT SUM(salario) FROM contato

--relacionar tabelas
SELECT * FROM compra INNER JOIN contato ON compra.contato_id=contato.id;




