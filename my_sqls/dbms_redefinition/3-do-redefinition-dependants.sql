set feedback off pagesize 200 line 200

alter session set nls_date_format='yyyy-mm-dd hh24:mi:ss';
select sid,serial# from v$session where sid=(select unique sid from v$mystat);
set head off
select sysdate from dual;

set timing on serveroutput on

--- PROCEDURE COPY_TABLE_DEPENDENTS
--- Argument Name                  Type                    In/Out Default?
--- ------------------------------ ----------------------- ------ --------
--- UNAME                          VARCHAR2                IN
---  ORIG_TABLE                     VARCHAR2                IN
---  INT_TABLE                      VARCHAR2                IN

---  COPY_INDEXES                   BINARY_INTEGER          IN     DEFAULT
---  COPY_TRIGGERS                  BOOLEAN                 IN     DEFAULT
---  COPY_CONSTRAINTS               BOOLEAN                 IN     DEFAULT
---  COPY_PRIVILEGES                BOOLEAN                 IN     DEFAULT

---  IGNORE_ERRORS                  BOOLEAN                 IN     DEFAULT
---  NUM_ERRORS                     BINARY_INTEGER          OUT
---  COPY_STATISTICS                BOOLEAN                 IN     DEFAULT
---  COPY_MVLOG                     BOOLEAN                 IN     DEFAULT

alter session force parallel dml parallel 32;
alter session force parallel query parallel 32;

DECLARE
num_errors PLS_INTEGER;
BEGIN
  DBMS_REDEFINITION.COPY_TABLE_DEPENDENTS(
   'sis2','ksinsmessages','KSINSMESSAGES_PGM_INTERIM',DBMS_REDEFINITION.CONS_ORIG_PARAMS,
    TRUE, TRUE, TRUE, TRUE, num_errors, TRUE);
END;
/

select object_name, base_table_name, ddl_txt from DBA_REDEFINITION_ERRORS;

BEGIN
  DBMS_REDEFINITION.SYNC_INTERIM_TABLE('sis2','ksinsmessages','KSINSMESSAGES_PGM_INTERIM');
END;
/

select sysdate from dual;
exit
