
CREATE TABLE SIS2.KSINSMESSAGES_PGM_INTERIM
(
  ID                   NUMBER(10)               NOT NULL,
  KSILOGICALSESSIONID  VARCHAR2(40 CHAR)        NOT NULL,
  KSIMSGDATE           TIMESTAMP(6)             NOT NULL,
  KSISISNSMSGTYPE      VARCHAR2(50 CHAR)        NOT NULL,
  UIMESSAGEID          VARCHAR2(40 CHAR)        NOT NULL,
  UISESSIONID          VARCHAR2(40 CHAR)        NOT NULL,
  TARGETENDUSERID      VARCHAR2(255 CHAR),
  SISICDVERSION        VARCHAR2(7 CHAR),
  DATETIME             TIMESTAMP(6),
  ENDUSERID            VARCHAR2(255 CHAR),
  USERID               VARCHAR2(255 CHAR),
  USERROLE             CHAR(7 CHAR)             NOT NULL,
  SYSTEMID             VARCHAR2(50 CHAR),
  CONTRACT             CHAR(7 CHAR)             NOT NULL,
  OPERATION            CHAR(7 CHAR)             NOT NULL,
  UPDATEDATE           TIMESTAMP(6),
  SCHENGENID           VARCHAR2(40 CHAR),
  REQUESTINGAUTHORITY  VARCHAR2(7 CHAR),
  REASONFORREQUEST     VARCHAR2(7 CHAR),
  ACTIONTOBETAKEN      VARCHAR2(7 CHAR),
  RECORDTYPE           VARCHAR2(7 CHAR),
  QUERYCATEGORY        VARCHAR2(40 CHAR),
  QUERYTYPE            VARCHAR2(40 CHAR),
  SEARCHCRITERIA1      VARCHAR2(40 CHAR),
  SEARCHMODE1          VARCHAR2(7 CHAR),
  SEARCHVALUE1         VARCHAR2(255 CHAR),
  SEARCHCRITERIA2      VARCHAR2(40 CHAR),
  SEARCHMODE2          VARCHAR2(7 CHAR),
  SEARCHVALUE2         VARCHAR2(255 CHAR),
  SEARCHCRITERIA3      VARCHAR2(40 CHAR),
  SEARCHMODE3          VARCHAR2(7 CHAR),
  SEARCHVALUE3         VARCHAR2(255 CHAR),
  KSINSMSG             CLOB
)
LOB (KSINSMSG) STORE AS SECUREFILE  (
  TABLESPACE  SIS2_TBL
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  NOCACHE
  LOGGING)
NOCOMPRESS
TABLESPACE SIS2_TBL
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    1
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING
PARTITION BY RANGE (KSIMSGDATE)
(
  PARTITION P2013_001 VALUES LESS THAN (TIMESTAMP' 2013-01-08 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_002 VALUES LESS THAN (TIMESTAMP' 2013-01-15 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_003 VALUES LESS THAN (TIMESTAMP' 2013-01-22 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_004 VALUES LESS THAN (TIMESTAMP' 2013-01-29 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_005 VALUES LESS THAN (TIMESTAMP' 2013-02-05 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_006 VALUES LESS THAN (TIMESTAMP' 2013-02-12 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_007 VALUES LESS THAN (TIMESTAMP' 2013-02-19 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_008 VALUES LESS THAN (TIMESTAMP' 2013-02-26 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_009 VALUES LESS THAN (TIMESTAMP' 2013-03-05 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_010 VALUES LESS THAN (TIMESTAMP' 2013-03-12 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_011 VALUES LESS THAN (TIMESTAMP' 2013-03-19 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_012 VALUES LESS THAN (TIMESTAMP' 2013-03-26 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_013 VALUES LESS THAN (TIMESTAMP' 2013-04-02 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_014 VALUES LESS THAN (TIMESTAMP' 2013-04-09 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_015 VALUES LESS THAN (TIMESTAMP' 2013-04-16 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_016 VALUES LESS THAN (TIMESTAMP' 2013-04-23 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_017 VALUES LESS THAN (TIMESTAMP' 2013-04-30 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_018 VALUES LESS THAN (TIMESTAMP' 2013-05-07 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_019 VALUES LESS THAN (TIMESTAMP' 2013-05-14 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_020 VALUES LESS THAN (TIMESTAMP' 2013-05-21 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_021 VALUES LESS THAN (TIMESTAMP' 2013-05-28 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_022 VALUES LESS THAN (TIMESTAMP' 2013-06-04 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_023 VALUES LESS THAN (TIMESTAMP' 2013-06-11 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_024 VALUES LESS THAN (TIMESTAMP' 2013-06-18 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_025 VALUES LESS THAN (TIMESTAMP' 2013-06-25 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_026 VALUES LESS THAN (TIMESTAMP' 2013-07-02 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_027 VALUES LESS THAN (TIMESTAMP' 2013-07-09 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_028 VALUES LESS THAN (TIMESTAMP' 2013-07-16 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_029 VALUES LESS THAN (TIMESTAMP' 2013-07-23 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_030 VALUES LESS THAN (TIMESTAMP' 2013-07-30 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_031 VALUES LESS THAN (TIMESTAMP' 2013-08-06 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_032 VALUES LESS THAN (TIMESTAMP' 2013-08-13 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_033 VALUES LESS THAN (TIMESTAMP' 2013-08-20 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_034 VALUES LESS THAN (TIMESTAMP' 2013-08-27 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      COMPRESS    HIGH
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_035 VALUES LESS THAN (TIMESTAMP' 2013-09-03 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_036 VALUES LESS THAN (TIMESTAMP' 2013-09-10 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_037 VALUES LESS THAN (TIMESTAMP' 2013-09-17 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_038 VALUES LESS THAN (TIMESTAMP' 2013-09-24 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_039 VALUES LESS THAN (TIMESTAMP' 2013-10-01 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_040 VALUES LESS THAN (TIMESTAMP' 2013-10-08 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_041 VALUES LESS THAN (TIMESTAMP' 2013-10-15 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_042 VALUES LESS THAN (TIMESTAMP' 2013-10-22 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_043 VALUES LESS THAN (TIMESTAMP' 2013-10-29 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_044 VALUES LESS THAN (TIMESTAMP' 2013-11-05 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_045 VALUES LESS THAN (TIMESTAMP' 2013-11-12 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_046 VALUES LESS THAN (TIMESTAMP' 2013-11-19 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_047 VALUES LESS THAN (TIMESTAMP' 2013-11-26 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_048 VALUES LESS THAN (TIMESTAMP' 2013-12-03 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_049 VALUES LESS THAN (TIMESTAMP' 2013-12-10 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_050 VALUES LESS THAN (TIMESTAMP' 2013-12-17 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_051 VALUES LESS THAN (TIMESTAMP' 2013-12-24 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2013_052 VALUES LESS THAN (TIMESTAMP' 2013-12-31 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_053 VALUES LESS THAN (TIMESTAMP' 2014-01-07 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_054 VALUES LESS THAN (TIMESTAMP' 2014-01-14 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_055 VALUES LESS THAN (TIMESTAMP' 2014-01-21 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_056 VALUES LESS THAN (TIMESTAMP' 2014-01-28 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_057 VALUES LESS THAN (TIMESTAMP' 2014-02-04 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_058 VALUES LESS THAN (TIMESTAMP' 2014-02-11 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_059 VALUES LESS THAN (TIMESTAMP' 2014-02-18 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_060 VALUES LESS THAN (TIMESTAMP' 2014-02-25 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_061 VALUES LESS THAN (TIMESTAMP' 2014-03-04 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_062 VALUES LESS THAN (TIMESTAMP' 2014-03-11 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_063 VALUES LESS THAN (TIMESTAMP' 2014-03-18 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_064 VALUES LESS THAN (TIMESTAMP' 2014-03-25 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_065 VALUES LESS THAN (TIMESTAMP' 2014-04-01 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_066 VALUES LESS THAN (TIMESTAMP' 2014-04-08 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_067 VALUES LESS THAN (TIMESTAMP' 2014-04-15 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_068 VALUES LESS THAN (TIMESTAMP' 2014-04-22 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_069 VALUES LESS THAN (TIMESTAMP' 2014-04-29 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_070 VALUES LESS THAN (TIMESTAMP' 2014-05-06 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_071 VALUES LESS THAN (TIMESTAMP' 2014-05-13 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_072 VALUES LESS THAN (TIMESTAMP' 2014-05-20 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_073 VALUES LESS THAN (TIMESTAMP' 2014-05-27 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_074 VALUES LESS THAN (TIMESTAMP' 2014-06-03 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_075 VALUES LESS THAN (TIMESTAMP' 2014-06-10 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_076 VALUES LESS THAN (TIMESTAMP' 2014-06-17 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_077 VALUES LESS THAN (TIMESTAMP' 2014-06-24 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_078 VALUES LESS THAN (TIMESTAMP' 2014-07-01 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_079 VALUES LESS THAN (TIMESTAMP' 2014-07-08 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_080 VALUES LESS THAN (TIMESTAMP' 2014-07-15 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_081 VALUES LESS THAN (TIMESTAMP' 2014-07-22 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_082 VALUES LESS THAN (TIMESTAMP' 2014-07-29 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_083 VALUES LESS THAN (TIMESTAMP' 2014-08-05 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_084 VALUES LESS THAN (TIMESTAMP' 2014-08-12 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_085 VALUES LESS THAN (TIMESTAMP' 2014-08-19 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_086 VALUES LESS THAN (TIMESTAMP' 2014-08-26 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_087 VALUES LESS THAN (TIMESTAMP' 2014-09-02 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_088 VALUES LESS THAN (TIMESTAMP' 2014-09-09 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_089 VALUES LESS THAN (TIMESTAMP' 2014-09-16 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_090 VALUES LESS THAN (TIMESTAMP' 2014-09-23 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_091 VALUES LESS THAN (TIMESTAMP' 2014-09-30 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_092 VALUES LESS THAN (TIMESTAMP' 2014-10-07 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_093 VALUES LESS THAN (TIMESTAMP' 2014-10-14 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_094 VALUES LESS THAN (TIMESTAMP' 2014-10-21 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_095 VALUES LESS THAN (TIMESTAMP' 2014-10-28 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_096 VALUES LESS THAN (TIMESTAMP' 2014-11-04 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_097 VALUES LESS THAN (TIMESTAMP' 2014-11-11 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_098 VALUES LESS THAN (TIMESTAMP' 2014-11-18 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_099 VALUES LESS THAN (TIMESTAMP' 2014-11-25 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_100 VALUES LESS THAN (TIMESTAMP' 2014-12-02 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_101 VALUES LESS THAN (TIMESTAMP' 2014-12-09 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_102 VALUES LESS THAN (TIMESTAMP' 2014-12-16 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_103 VALUES LESS THAN (TIMESTAMP' 2014-12-23 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2014_104 VALUES LESS THAN (TIMESTAMP' 2014-12-30 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_105 VALUES LESS THAN (TIMESTAMP' 2015-01-06 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_106 VALUES LESS THAN (TIMESTAMP' 2015-01-13 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_107 VALUES LESS THAN (TIMESTAMP' 2015-01-20 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_108 VALUES LESS THAN (TIMESTAMP' 2015-01-27 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_109 VALUES LESS THAN (TIMESTAMP' 2015-02-03 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_110 VALUES LESS THAN (TIMESTAMP' 2015-02-10 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_111 VALUES LESS THAN (TIMESTAMP' 2015-02-17 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_112 VALUES LESS THAN (TIMESTAMP' 2015-02-24 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_113 VALUES LESS THAN (TIMESTAMP' 2015-03-03 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_114 VALUES LESS THAN (TIMESTAMP' 2015-03-10 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_115 VALUES LESS THAN (TIMESTAMP' 2015-03-17 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_116 VALUES LESS THAN (TIMESTAMP' 2015-03-24 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_117 VALUES LESS THAN (TIMESTAMP' 2015-03-31 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_118 VALUES LESS THAN (TIMESTAMP' 2015-04-07 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_119 VALUES LESS THAN (TIMESTAMP' 2015-04-14 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_120 VALUES LESS THAN (TIMESTAMP' 2015-04-21 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_121 VALUES LESS THAN (TIMESTAMP' 2015-04-28 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_122 VALUES LESS THAN (TIMESTAMP' 2015-05-05 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_123 VALUES LESS THAN (TIMESTAMP' 2015-05-12 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_124 VALUES LESS THAN (TIMESTAMP' 2015-05-19 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_125 VALUES LESS THAN (TIMESTAMP' 2015-05-26 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_126 VALUES LESS THAN (TIMESTAMP' 2015-06-02 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_127 VALUES LESS THAN (TIMESTAMP' 2015-06-09 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_128 VALUES LESS THAN (TIMESTAMP' 2015-06-16 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_129 VALUES LESS THAN (TIMESTAMP' 2015-06-23 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_130 VALUES LESS THAN (TIMESTAMP' 2015-06-30 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_131 VALUES LESS THAN (TIMESTAMP' 2015-07-07 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_132 VALUES LESS THAN (TIMESTAMP' 2015-07-14 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_133 VALUES LESS THAN (TIMESTAMP' 2015-07-21 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_134 VALUES LESS THAN (TIMESTAMP' 2015-07-28 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_135 VALUES LESS THAN (TIMESTAMP' 2015-08-04 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_136 VALUES LESS THAN (TIMESTAMP' 2015-08-11 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_137 VALUES LESS THAN (TIMESTAMP' 2015-08-18 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_138 VALUES LESS THAN (TIMESTAMP' 2015-08-25 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_139 VALUES LESS THAN (TIMESTAMP' 2015-09-01 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_140 VALUES LESS THAN (TIMESTAMP' 2015-09-08 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_141 VALUES LESS THAN (TIMESTAMP' 2015-09-15 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_142 VALUES LESS THAN (TIMESTAMP' 2015-09-22 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_143 VALUES LESS THAN (TIMESTAMP' 2015-09-29 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_144 VALUES LESS THAN (TIMESTAMP' 2015-10-06 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_145 VALUES LESS THAN (TIMESTAMP' 2015-10-13 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_146 VALUES LESS THAN (TIMESTAMP' 2015-10-20 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_147 VALUES LESS THAN (TIMESTAMP' 2015-10-27 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_148 VALUES LESS THAN (TIMESTAMP' 2015-11-03 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_149 VALUES LESS THAN (TIMESTAMP' 2015-11-10 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),
  PARTITION P2015_150 VALUES LESS THAN (TIMESTAMP' 2015-11-17 00:00:00')
    LOGGING
    NOCOMPRESS
    TABLESPACE SIS2_TBL
    LOB (KSINSMSG) STORE AS SECUREFILE (
      TABLESPACE  SIS2_TBL
      ENABLE      STORAGE IN ROW
      CHUNK       8192
      RETENTION
      NOCACHE
      LOGGING)
    PCTFREE    0
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             256K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.ID IS 'ID rekordu w tabeli';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.KSILOGICALSESSIONID IS 'ID sesji  w systemie KSI';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.KSIMSGDATE IS 'Data wstawienia rekordu';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.KSISISNSMSGTYPE IS 'Typ komunikatu';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.UIMESSAGEID IS 'ID komunikatu w systemie UI, element tns:KSINS*/tns:SignedMessageData/tns:
KSIMessageHeader/sis2ksi:KSIMessageID';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.UISESSIONID IS 'ID sesji w systemie UI, element tns:KSINS*/tns:SignedMessageData/tns:KSIMe
ssageHeader/sis2ksi:KSILogicalSessionID';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.TARGETENDUSERID IS 'Identyfikator uzyttkownika koncowego, element tns:KSINS*/tns:SignedMes
sageData/tns:KSIMessageHeader/sis2ksi:TargetEndUserID';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SISICDVERSION IS 'Wersja ICD, element tns:KSINS*/tns:SignedMessageData/tns:KSIMessageHeade
r/sis2ksi:SISICDVersion';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.DATETIME IS 'Data wygenerowania komunikatu, element tns:KSINS*/tns:SignedMessageData/sisns
msg:NS*/sisnsmsg:Header/sisdt:DateTime';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.ENDUSERID IS 'Identyfikator uzyttkownika koncowego, element tns:KSINS*/tns:SignedMessageDa
ta/sisnsmsg:NS*/sisnsmsg:Header/sisdt:EndUserID';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.USERID IS 'Uzytkownik (Polska), element tns:KSINS*/tns:SignedMessageData/sisnsmsg:NS*/sisn
smsg:Header/sisdt:User';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.USERROLE IS 'Rola uzytkownika, element tns:KSINS*/tns:SignedMessageData/sisnsmsg:NS*/sisns
msg:Header/sisdt:UserRole (ST202 Role)';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SYSTEMID IS 'ID systemu nadawcy, element tns:KSINS*/tns:SignedMessageData/sisnsmsg:NS*/sis
nsmsg:Header/sisdt:SystemID';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.CONTRACT IS 'Kontrakt, element tns:KSINS*/tns:SignedMessageData/sisnsmsg:NS*/sisnsmsg:Head
er/sisdt:Contract  (ST208 Contract)';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.OPERATION IS 'Operacja, element  tns:KSINS*/tns:SignedMessageData/sisnsmsg:NS*/sisnsmsg:He
ader/sisdt:Operation (ST209 Operation)';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.KSINSMSG IS 'Komunikat KSINS*';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.UPDATEDATE IS 'Data uzupelnienia danych';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SCHENGENID IS 'Identyfikator Schengen dla operacji na wpisie, np. CreateAlert, UpdateAlert
, oraz CompelementQUery';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.REQUESTINGAUTHORITY IS 'Organ przekazujacy komunikat';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.REASONFORREQUEST IS 'ReasonForRequest (ST104 ReasonForRequest), element  tns:KSINS*/tns:Si
gnedMessageData/sisnsmsg:NS*/sisnsmsg:Request/sisnsmsg:Alert/sisalertdt:ReasonForRequest lub ustalony na podstawie kopii krajowej';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.ACTIONTOBETAKEN IS 'ActionToBeTaken (ST105 ActionToBeTaken), element tns:KSINS*/tns:Signed
MessageData/sisnsmsg:NS*/sisnsmsg:Request/sisnsmsg:Alert/sisalertdt:ActionToBeTaken lub ustalony na podstawie kopii krajowej';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.RECORDTYPE IS 'Typ wpisu (ST002 TypeOfRecord)';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.QUERYCATEGORY IS 'Kategoria zapytania';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.QUERYTYPE IS 'Typ zapytania';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHCRITERIA1 IS 'Parametr zapytania 1';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHMODE1 IS 'Tryb wyszukiwania 1';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHVALUE1 IS 'Kryterium zapytania 1';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHCRITERIA2 IS 'Parametr zapytania 2';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHMODE2 IS 'Tryb wyszukiwania 2';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHVALUE2 IS 'Kryterium zapytania 2';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHCRITERIA3 IS 'Parametr zapytania 3';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHMODE3 IS 'Tryb wyszukiwania 3';
COMMENT ON COLUMN SIS2.KSINSMESSAGES_PGM_INTERIM.SEARCHVALUE3 IS 'Kryterium zapytania 3';
