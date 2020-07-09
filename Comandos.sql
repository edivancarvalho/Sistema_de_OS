-- comentários
-- a linha abaixo criar um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados;
use dbinfox;
-- o bloco de instruuções abaixo cria uma tabela;
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela;
describe tbusuarios;
-- a linha abaixo inserir dados na tabela (CRUD);
-- Create --> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Edivan Carvalho','3341-2378','edivan','123');
-- alinha abaixo exibe os dados da tabela; (CRUD)
-- read --> select
select * from tbusuarios;
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador','3341-2378','admin','123');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'suporte','3341-2378','suporte','123');

-- a linha abaixo modifica dados na tabela (CRUD)
-- update --> update;
update tbusuarios set fone='1122-3344' where iduser=3;

-- a linha abaixo apaga um registro da tabela. (CRUD)
-- delete --> delete
delete from tbusuarios where iduser=3;
