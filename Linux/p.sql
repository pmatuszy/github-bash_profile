col p_name head NAME format a50 justify center
col p_value head VALUE for a70 justify center
col p_descr head DESCRIPTION for a80 justify center

set line 180

select n.ksppinm p_name, c.ksppstvl p_value
from sys.x$ksppi n, sys.x$ksppcv c
where n.indx=c.indx
and lower(n.ksppinm) like lower('%&1%')
order by p_name;

exit
