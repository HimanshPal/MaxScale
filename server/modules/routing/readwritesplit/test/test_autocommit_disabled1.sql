use test;
drop table if exists t1;
create table t1 (id integer);
set autocommit=0;               -- open transaction
insert into t1 values(1);       -- write to master
select count(*) from t1;        -- read from master
drop table t1;
