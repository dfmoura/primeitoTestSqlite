-- TABLE
CREATE TABLE compra (
id_compra number CONSTRAINT compra PRIMARY KEY,
produto varchar2(100),
contato_id number,
valor number,
data_compra DATE
);
CREATE TABLE "contato" (
id number CONSTRAINT pk_contatos PRIMARY KEY,
primeiro_nome varchar2(100),
ultimo_nome varchar2(100),
sexo varchar2(1),
email varchar2(100),
data_nascimento DATE,
salario number(20)
);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
