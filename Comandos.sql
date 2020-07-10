-- comentários
-- a linha abaixo criar um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados;
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela;
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


select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
foneli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Edivan carvallho','rua santa','4444-4444','ed@local.com');

select * from tbclientes;

use dbinfox;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);
 
describe tbos;
-- faz a união de duas tabelas
insert into tbos(equipamento,defeito,servico,tecnico,valor,idcli)
values ('Notebook','não liga','troca da fonte','Pedro','90.00',1);

select * from tbos;

-- o código abaixo traz informações de duas tabelas;
select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);

select * from tbusuarios;
select * from tbusuarios where login='admin' and senha='123';

select * from tbusuarios;
-- cadastrando no usuario;
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(4,'carla','2222-2222','carla','12345');