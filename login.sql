-- v.1.81- 2019.12.03 - added various column formatting
-- v.1.6 - 2019.11.29 - setting statistics_level to all only on mounted instance, butify the code
--                      added alert.log location for the connected instance only for db versions > 9
-- v.1.5 - 2019.11.28 - added column formating for variations of bytes column
-- v.1.4 - 2019.11.21 - if we connect to not mounted db (eg. ASM instance we don't throw errors (added PLSQL block)
--                      new COL definitions for CDB_REGISTRY query
-- v.1.3 - 2019.11.20 - added longer formats for columns shown with SQL Plus "show parameter" command
--                      added colsep
-- v.1.2 - 2019.11.15 - added database_role to see during logon
--                      startup time with HH24:MI:SS and host_name a bit wider a20-->a25
-- v.1.1 - more elegant way of starting login.sql

-- def _start=start   -- Windows
def _start=firefox -- Unix/Linux
-- def _start=open -- MacOS

def _delete="rm -f"
-- def _delete="del "

-- def tempdir=%ORACLE_HOME%\tmp
def tempdir=/tmp

set sqlprompt "&_user' @ '&_connect_identifier> "
-- define _editor=notepad
define _editor=vi

set serveroutput off size 1000000 format wrapped

-- set truncate after linesize on
set truncate on

set trimspool on
                -- Allows trailing blanks at the end of each spooled line.
                -- This does not affect terminal output */

set long 500000
set longchunksize 10000000

                -- Set the maximum width (in chars) for displaying and copying LONG values.

-- change linesize to match terminal width - 1
set linesize 180
define _linesize=150

set pagesize  100
define _pagesize=60

-- larger arraysize for faster fetching of data
-- note that arraysize can affect outcome of experiments
-- like buffer gets for select statements etc.
set arraysize 500

-- to have less garbage on screen
-- If verify is on, SQL*Plus prints two lines for each substituted variable
set verify off
-- to trim trailing spaces from spool files
set trimspool on

-- to trim trailing spaces from screen output
set trimout on

-- don't use tabs instead of spaces for "wide blanks"
-- this can mess up the vertical column locations in output
set tab off

-- this makes describe command better to read and more
-- informative in case of complex datatypes in columns
set describe depth 1 linenum on indent on

---------------------------------------------
-- lets check if instance is up and running
-- (C) by Kicusek King
def var_up_and_running='off'
col up_and_running new_value var_up_and_running

set termout off
select case when dummy='X' then 'on' else 'off' end as up_and_running from dual;

set termout &var_up_and_running

---------------------------------------------

set time on
                -- Display the time at the command prompt.
SET PAUSE     OFF
                --  .. press return at end of each page
set COLSEP '|'

col plan_plus_exp format a80 justify center
col global_name new_value gname justify center
col bytes/1024/1024 format 999g999 justify center
col bytes/1024/1024/1024 format 999g999 justify center
col "BYTES(M)" format 999G999D0 justify center
col bytes format 999G999G999G999G99
col controlfile format a80 justify center
col datafile format a40 justify center
col density format 999G999G999D999999 justify center
col file_name format a80 justify center heading 'file name'
col "File Name" format a50 justify center
col "Free(M)" format 999G999D0 justify center
col group# format 99999 justify center
col is_recovery_dest_file format a21 justify center
col logfile format a60 justify center
col member format a60 justify center
col name format a50 justify center heading 'Name'
col owner format a20 justify center heading 'Owner'
col retention format a20 justify center
col segment_name format a40 justify center
col segment_type format a20 justify center
col "Size(M)" format 999G999D0 justify center
col snap_interval format a20 justify center
col tablespace_name format a20 justify center heading 'Tablespace Name'
col "Tablespace Name" format a20 justify center
col "%Used" format a11 justify center
col "Used(M)" format 999G999D0 justify center

col host_name format a25 justify center
col instance_name format a13 justify center
col InstName format a13 justify center
col inst# format 99 justify center
col status format a10 justify center
col thread# format 99 justify center
col active_state format a12 justify center

col cpu_used format a16 justify center heading "CPU used"
col elapsed_time format a16 justify center heading "Elapsed Time"
col begin_interval_time format a25 justify center
col end_interval_time format a25 justify center
col directory_path format a80 justify center
col network_name format a40
col path format a120 justify center
col filename format a80 justify center

--- nice formating for select CON_ID, COMP_ID, comp_name, schema, status, version from CDB_REGISTRY order by 1,2; (PGM)
col comp_id format a8 justify center
col comp_name format a34 justify center
col schema format a12 justify center
col status format a13 justify center
col version format a12 justify center
col con_id format 99 justify center

-- nice formating for select * from table(dbms_xplan.display_cursor()); (PGM)
col plan_table_output format a160

col sysdate format a19 justify center
col systimestamp format a26 justify center

-- SQL Plus show parameter columns width (PGM)
col name_col_plus_show_param format a40 justify center
col type format a20 justify center
col value_col_plus_show_param format a80 justify center

col group_number format 9999 heading 'Group|Number' justify center
col disk_number format 9999 heading 'Disk|Number' justify center
col library format a15 justify center
col force_logging format a8 heading 'Force|Logging' justify center
col open_mode format a10 heading 'Open|Mode' justify center

col dbid format 9999999999 justify center
col scn format 99999999 justify center
col platform_name format a33  justify center

-- nicer looking output (PGM)
-- colsep is optional, but it makes output look like sqlite which is easier to parse using scripts.
set colsep " | "

set feedback off
set timing off

set termout off
alter session set nls_date_format='YYYY_MM_DD-HH24_MI_SS';
-- spool C:\praca\Pawel\instantclient\logs\&_connect_identifier._&_USER._&_DATE..log
alter session set nls_date_format='YYYY.MM.DD_HH24:MI:SS';
set termout on

set feedback on
set timing on
                -- display timing statistics for each SQL command or PL/SQL block run.

-- here we gonna log in to the database and print the banner

set timing off
set feedback off
set termout on

col A heading "Database Name"     format A14 justify center
col B heading "Archive Log Mode"  format A16 justify center
col C heading "Open Mode"         format A10 justify center

set serveroutput on
set termout &var_up_and_running
declare
    name           varchar(32);
    log_mode       varchar(32);
    open_mode      varchar(32);
    instance_name  varchar(32);
    instance_role  varchar(32);
    database_role  varchar(32);
    temp           varchar(32);
    alert_log_loc  varchar(130);
    diag_dest      varchar(100);
    version        int;

  begin
    select substr(version,1,instr(version,'.',1,1)-1) into version from v$instance;
    if ( version > 9) then
      select VALUE into diag_dest FROM v$diag_info WHERE NAME='Diag Trace';
      select instance_name into instance_name from v$instance;
      dbms_output.put_line('####################### ALERT.LOG location #################################');
      dbms_output.put_line(diag_dest||'/alert_'||instance_name||'.log');
      dbms_output.put_line('############################################################################');
      dbms_output.put_line ('');
      dbms_output.put_line ('');
    end if;
    select open_mode into name from v$database d;
    -- if we get here it means that we can select from v$database - in other case execution would be put to EXCEPTION section
    select d.name a, d.log_mode b, d.open_mode c, i.instance_name, i.instance_role,d.database_role
       into name,log_mode,open_mode,instance_name,instance_role,database_role
    from v$database d, v$instance i;
    dbms_output.put_line('Database Name  | Archive Log Mode | Open Mode  | INSTANCE_NAME | INSTANCE_ROLE      | DATABASE_ROLE');
    dbms_output.put_line('-------------- | ---------------- | ---------- | ------------- | ------------------ | -------------------------');
    dbms_output.put_line(rpad(name,14)||' | '||rpad(log_mode,16)||' | '||rpad(open_mode,10)||' | '||rpad(instance_name,13)||' | '||rpad(instance_role,18)||' | '||rpad(database_role,22));
    dbms_output.put_line ('');
    dbms_output.put_line ('alter session set statistics_level=all;');
    dbms_output.put_line ('');

    execute immediate 'alter session set statistics_level=all';

  exception
    when others then -- if we are connected to non-mounted db (e.g. asm) we silently skip to the next section
    null;
end;
/

set termout off
set trimspool on
-------------------------------------------------------------------------------
define gname=idle
column global_name new_value gname

select lower(user) || '@' ||
substr(global_name,1,decode ( dot,0, length(global_name),dot-1) ) global_name
from (select global_name, instr(global_name,'.') dot from global_name);
set sqlprompt '&gname > '
-------------------------------------------------------------------------------
set termout off
alter session set nls_date_format='YYYY.MM.DD HH24:MI:SS';
alter session set nls_timestamp_format ='YYYY.MM.DD HH24:MI:SS.FF6';
alter session set nls_timestamp_tz_format='YYYY.MM.DD HH24:MI:SS.FF6';

set termout on

-- host title "&_user' @ '&_connect_identifier>"

set timing off
set feedback off
set heading off

set termout on

set timing on
set feedback on
set heading on

-- the Who am I script

def   mysid="NA"
def _i_spid="NA"
def _i_cpid="NA"
def _i_opid="NA"
def _i_inst="NA"
def _i_host="NA"
def _i_user="&_user"
def _i_conn="&_connect_identifier"

col i_username head username format a12 justify center
col i_sid head sid for a5 new_value mysid justify center
col i_serial head serial# for a7 new_value _i_serial justify center
col i_cpid head cpid for a5 new_value _i_cpid justify center
col i_spid head spid for a5 new_value _i_spid justify center
col i_opid head opid for a5 new_value _i_opid justify center
col i_host_name head host_name for a25 new_value _i_host justify center
col i_instance_name head inst_name for a10 new_value _i_inst justify center
col i_ver head version for a10 justify center
col i_startup_day head started for a17 justify center
col _i_user noprint new_value _i_user justify center
col _i_conn noprint new_value _i_conn justify center
col i_myoraver noprint new_value myoraver justify center

set feedback off
set timing off

set termout &var_up_and_running

select
        s.username                      i_username,
        i.instance_name i_instance_name,
        i.host_name                     i_host_name,
        to_char(s.sid)                  i_sid,
        to_char(s.serial#)              i_serial,
        (select substr(banner, instr(banner, 'Release ')+8,10) from v$version where rownum = 1) i_ver,
        (select  substr(substr(banner, instr(banner, 'Release ')+8),
                        1,
                        instr(substr(banner, instr(banner, 'Release ')+8),'.')-1)
         from v$version
         where rownum = 1) i_myoraver,
        to_char(startup_time, 'YYYYMMDD HH24:MI:SS') i_startup_day,
        p.spid                          i_spid,
        trim(to_char(p.pid))            i_opid,
        s.process                       i_cpid,
        s.saddr                         saddr,
        p.addr                          paddr,
        lower(s.username) "_i_user",
        upper('&_connect_identifier') "_i_conn"
from
        v$session s,
        v$instance i,
        v$process p
where
        s.paddr = p.addr
and
        sid = (select sid from v$mystat where rownum = 1);

-- Windows CMD.exe specific stuff

-- host title &_i_user@&_i_conn [sid=&mysid ser#=&_i_serial spid=&_i_spid inst=&_i_inst host=&_i_host cpid=&_i_cpid opid=&_i_opid]
-- host doskey /exename=sqlplus.exe desc=set lines 80 sqlprompt ""$Tdescribe $*$Tset lines 299 sqlprompt "SQL> "

set head off
set feedback off
set timing off

select '' from dual;
set head on
set feedback on
set timing on

-- short xterm title
-- host echo -ne "\033]0;&_i_user@&_i_inst sid=&mysid,&_i_serial spid=&_i_spid \007"
-- long xterm title
-- host echo -ne "\033]0;host=&_i_host inst=&_i_inst sid=&mysid ser#=&_i_serial spid=&_i_spid cpid=&_i_cpid opid=&_i_opid\007"


def myopid=&_i_opid
def myspid=&_i_spid
def mycpid=&_i_cpid

-- undef _i_spid _i_inst _i_host _i_user _i_conn _i_cpid

set termout on