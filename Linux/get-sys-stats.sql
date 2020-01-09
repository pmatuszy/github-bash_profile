col pval1 format 999G999G999 justify center
col pval2 format a20 justify center

set head off
set feedback off
set timing off
SET TERMOUT on

clear screen
--select '   SYSSTATS_INFO is the set containing the status of system statistics and when they were gathered.' 
--from dual;

prompt SYSSTATS_INFO is the set containing the status of system statistics and when they were gathered;;


SET TERMOUT off

set head on
set feedback on

SET TERMOUT on
SELECT pname, pval1, pval2
FROM sys.aux_stats$
WHERE sname = 'SYSSTATS_INFO';

SET TERMOUT off
set head off
set feedback off
set timing off

set termout on
--select '   SYSSTATS_MAIN is the set containing the system statistics themselves.' from dual;

prompt    SYSSTATS_MAIN is the set containing the system statistics themselves;;

set head on
set feedback on
set timing on

SELECT pname, pval1
FROM sys.aux_stats$
WHERE sname = 'SYSSTATS_MAIN' order by pname;

exit;
