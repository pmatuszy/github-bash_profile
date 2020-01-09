set feedback off pagesize 200 line 200

alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
select sid,serial# from v$session where sid=(select unique sid from v$mystat);
set head off
select sysdate from dual;

set timing on serveroutput on

BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIS2'
     ,TabName        => 'KSINSMESSAGES'
    ,Estimate_Percent  => dbms_stats.auto_sample_size
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE AUTO'
    ,Degree            => 32
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

select sysdate from dual;
exit
