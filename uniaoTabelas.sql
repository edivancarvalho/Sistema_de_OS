use dbinfox;


-- o bloco de intruções abaixo faz a seleção e união de dados de duas tabelas
-- OSER é uma varivel que contém os campos desejados da tabelas OS
-- CLI e ouutra varivel que contem os campos desejados da tbela clientes
select
OSER.os,data_os,tipo,situacao,equipamento,valor,
CLI.nomecli,fonecli
from tbos as OSER
inner join tbclientes as CLI
on (CLI.idcli = OSER.idcli);

select * from tbos;

select * from tbos where os=5;