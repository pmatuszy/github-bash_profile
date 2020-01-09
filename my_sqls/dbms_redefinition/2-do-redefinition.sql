set feedback off

alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
select sid,serial# from v$session where sid=(select unique sid from v$mystat);
set head off
select sysdate from dual;

set timing on serveroutput on

--- PROCEDURE START_REDEF_TABLE
---  Argument Name                  Type                    In/Out Default?
---  ------------------------------ ----------------------- ------ --------
---  UNAME                          VARCHAR2                IN
---  ORIG_TABLE                     VARCHAR2                IN
---  INT_TABLE                      VARCHAR2                IN
---  COL_MAPPING                    VARCHAR2                IN     DEFAULT
---  OPTIONS_FLAG                   BINARY_INTEGER          IN     DEFAULT
---  ORDERBY_COLS                   VARCHAR2                IN     DEFAULT
---  PART_NAME                      VARCHAR2                IN     DEFAULT

alter session force parallel dml parallel 32;
alter session force parallel query parallel 32;

BEGIN
  DBMS_REDEFINITION.START_REDEF_TABLE(
   uname        => 'sis2',
   orig_table   => 'ksinsmessages',
   int_table    => 'KSINSMESSAGES_PGM_INTERIM',
   col_mapping  => '',
   OPTIONS_FLAG => dbms_redefinition.cons_use_pk,
   ORDERBY_COLS => '',
   PART_NAME    => ''
);

END;
/

select sysdate from dual;
exit
