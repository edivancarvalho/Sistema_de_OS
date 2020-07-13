use dbinfox;
describe tbos;
select * from tbclientes;

select idcli,nomecli,fonecli from tbclientes where nomecli like 'jo%';
-- a linha abaixo cria um apelido aos campos da tabela;
select idcli as Id, nomecli as Nome, fonecli as Fone from tbclientes where nomecli like 'jo%';
-- a linha abaixo altera a tabela adicionado uum campo em uma deterinada posição
alter table tbos add tipo varchar(15) not null after data_os;
describe tbos;

alter table tbos add situacao varchar(20) not null after tipo;
select * from tbos;

