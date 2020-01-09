drop table t1;

create table t1 (id number);

insert into t1
with v1 as (select rownum n from dual connect by level <= 10000)
select rownum id
from   v1, v1
where  rownum <= 10000000
;
commit;

select count(*) from t1;

exit
