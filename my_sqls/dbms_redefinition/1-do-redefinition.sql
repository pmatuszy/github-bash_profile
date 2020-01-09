set feedback off

alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
select sid,serial# from v$session where sid=(select unique sid from v$mystat);
set head off
select sysdate from dual;

set timing on serveroutput on

begin
   dbms_redefinition.can_redef_table('sis2','ksinsmessages',DBMS_REDEFINITION.CONS_USE_PK);
end;
/

select sysdate from dual;
exit
