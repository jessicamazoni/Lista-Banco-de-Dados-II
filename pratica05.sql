create database pratica05;

use pratica05;

create table dados_multimidia(
codigo integer primary key not null,
nome varchar(30),
tipo varchar(20),
dados longblob
);

insert into dados_multimidia values(1,"mabel", "jpg", load_file('C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\mabel.jpg'));
insert into dados_multimidia values(2,"dipper", "jpg", load_file('C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\dipper.jpg'));
insert into dados_multimidia values(3,"waddles", "jpg", load_file('C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\waddles.jpg'));

select * from dados_multimidia;
select dados into dumpfile'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\girl.jpg' from dados_multimidia where codigo = 1;
select dados into dumpfile'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\men.jpg' from dados_multimidia where codigo = 2;
select dados into dumpfile'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\porc.jpg' from dados_multimidia where codigo = 3;
