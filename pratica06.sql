create database pratica06;

use pratica06;

create table exemplo1(
c1 integer not null,
c2 integer,
c3 integer,
c4 integer
);

select * from exemplo1;

select * from exemplo1 where c3 = 4801 and c2 = 4899 and c4 = 4750;

create index idx_c2 ON exemplo1 (c2);
create index idx_c3 ON exemplo1 (c3);
create index idx_c4 ON exemplo1 (c4);

analyze table exemplo1;

select * from exemplo1;

select * from exemplo1 where c1 = 5020;
select * from exemplo1 where c2 = 5020;