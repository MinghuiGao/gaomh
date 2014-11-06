--------------------------------------------
-- Export file for user BJVMMIS           --
-- Created by dell on 2014/11/3, 19:40:36 --
--------------------------------------------

spool tc_all_dict_jc.log

prompt
prompt Creating table TC_ALL
prompt =====================
prompt
create table BJVMMIS.TC_ALL
(
  CODE_SET_ID     VARCHAR2(20) not null,
  CODE_SET_ABBR   VARCHAR2(200) not null,
  REFER_STANDARD  VARCHAR2(200),
  CODE_SET_NAME   VARCHAR2(200),
  NOTE            VARCHAR2(2000),
  CODE_ORDNUM     VARCHAR2(20),
  CODE_VALUE1     VARCHAR2(200),
  CODE_VALUE2     VARCHAR2(200),
  CODE_NAME       VARCHAR2(200),
  DATA_ELEMENT_ID VARCHAR2(30),
  ADMIN_DEPT      VARCHAR2(20)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BJVMMIS.TC_ALL.CODE_SET_ID
  is '���뼯ID';
comment on column BJVMMIS.TC_ALL.CODE_SET_ABBR
  is '���뼯��д';
comment on column BJVMMIS.TC_ALL.REFER_STANDARD
  is '�ο���׼';
comment on column BJVMMIS.TC_ALL.CODE_SET_NAME
  is '���뼯����';
comment on column BJVMMIS.TC_ALL.NOTE
  is '��ע';
comment on column BJVMMIS.TC_ALL.CODE_ORDNUM
  is '�������';
comment on column BJVMMIS.TC_ALL.CODE_VALUE1
  is '����ֵ1';
comment on column BJVMMIS.TC_ALL.CODE_VALUE2
  is '����ֵ2';
comment on column BJVMMIS.TC_ALL.CODE_NAME
  is '��������';
comment on column BJVMMIS.TC_ALL.DATA_ELEMENT_ID
  is '����Ԫ���';
comment on column BJVMMIS.TC_ALL.ADMIN_DEPT
  is 'ע�����';

prompt
prompt Creating table TC_ALL_DICT
prompt ==========================
prompt
create table BJVMMIS.TC_ALL_DICT
(
  OID                NUMBER(16) not null,
  CODE_VALUE         VARCHAR2(32),
  CODE_NAME          VARCHAR2(128),
  REFER_STANDARD     VARCHAR2(128),
  FIELD_ORDER        NUMBER,
  REMARK             VARCHAR2(128),
  CODE_TYPE          VARCHAR2(32),
  CODETYPE_NAME      VARCHAR2(100),
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE,
  PARENT_CODE_VALUE  VARCHAR2(32),
  RECORD_CREATE_TIME DATE,
  VALID              VARCHAR2(1)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TC_ALL_DICT
  is '��׼�ֵ��';
comment on column BJVMMIS.TC_ALL_DICT.OID
  is 'ID';
comment on column BJVMMIS.TC_ALL_DICT.CODE_VALUE
  is '����ֵ';
comment on column BJVMMIS.TC_ALL_DICT.CODE_NAME
  is '��������';
comment on column BJVMMIS.TC_ALL_DICT.REFER_STANDARD
  is '�ο���׼';
comment on column BJVMMIS.TC_ALL_DICT.FIELD_ORDER
  is '����';
comment on column BJVMMIS.TC_ALL_DICT.REMARK
  is '��ע';
comment on column BJVMMIS.TC_ALL_DICT.CODE_TYPE
  is '�������';
comment on column BJVMMIS.TC_ALL_DICT.CODETYPE_NAME
  is '�������';
comment on column BJVMMIS.TC_ALL_DICT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TC_ALL_DICT.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TC_ALL_DICT.PARENT_CODE_VALUE
  is '���ڵ�';
comment on column BJVMMIS.TC_ALL_DICT.RECORD_CREATE_TIME
  is '����ʱ��new';
comment on column BJVMMIS.TC_ALL_DICT.VALID
  is '��Ч״̬new  1����Ч��0����Ч';
create index BJVMMIS.TC_ALL_DICT_CODE_VALUE on BJVMMIS.TC_ALL_DICT (CODE_VALUE)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TC_ALL_DICT_TYPE on BJVMMIS.TC_ALL_DICT (CODE_TYPE)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_ALL_DICT_BACKUP
prompt =================================
prompt
create table BJVMMIS.TC_ALL_DICT_BACKUP
(
  OID                NUMBER(16) not null,
  CODE_VALUE         VARCHAR2(32),
  CODE_NAME          VARCHAR2(128),
  REFER_STANDARD     VARCHAR2(128),
  FIELD_ORDER        NUMBER,
  REMARK             VARCHAR2(128),
  CODE_TYPE          VARCHAR2(32),
  CODETYPE_NAME      VARCHAR2(100),
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE,
  PARENT_CODE_VALUE  VARCHAR2(32),
  RECORD_CREATE_TIME DATE,
  VALID              VARCHAR2(1)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TC_ALL_DICT_BACKUP
  is '�����ֵ��������';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.OID
  is 'ID';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODE_VALUE
  is '����ֵ';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODE_NAME
  is '��������';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.REFER_STANDARD
  is '�ο���׼';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.FIELD_ORDER
  is '����';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.REMARK
  is '��ע';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODE_TYPE
  is '�������';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODETYPE_NAME
  is '�������';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.PARENT_CODE_VALUE
  is '���ڵ�';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.RECORD_CREATE_TIME
  is '����ʱ��new';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.VALID
  is '��Ч״̬new  1����Ч��0����Ч';

prompt
prompt Creating table TC_ALL_DICT_JC
prompt =============================
prompt
create table BJVMMIS.TC_ALL_DICT_JC
(
  OID                VARCHAR2(32) not null,
  CODE_VALUE         VARCHAR2(32),
  CODE_NAME          VARCHAR2(128),
  REFER_STANDARD     VARCHAR2(512),
  FIELD_ORDER        NUMBER,
  REMARK             VARCHAR2(128),
  CODE_TYPE          VARCHAR2(32),
  CODETYPE_NAME      VARCHAR2(100),
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE,
  PARENT_CODE_VALUE  VARCHAR2(32),
  RECORD_CREATE_TIME DATE,
  VALID              VARCHAR2(1)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TC_ALL_DICT_JC
  is '��׼�ֵ��';
comment on column BJVMMIS.TC_ALL_DICT_JC.OID
  is 'ID';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODE_VALUE
  is '����ֵ';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODE_NAME
  is '��������';
comment on column BJVMMIS.TC_ALL_DICT_JC.REFER_STANDARD
  is '�ο���׼';
comment on column BJVMMIS.TC_ALL_DICT_JC.FIELD_ORDER
  is '����';
comment on column BJVMMIS.TC_ALL_DICT_JC.REMARK
  is '��ע';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODE_TYPE
  is '�������';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODETYPE_NAME
  is '�������';
comment on column BJVMMIS.TC_ALL_DICT_JC.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TC_ALL_DICT_JC.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TC_ALL_DICT_JC.PARENT_CODE_VALUE
  is '���ڵ�';
comment on column BJVMMIS.TC_ALL_DICT_JC.RECORD_CREATE_TIME
  is '����ʱ��new';
comment on column BJVMMIS.TC_ALL_DICT_JC.VALID
  is '��Ч״̬new  1����Ч��0����Ч';
alter table BJVMMIS.TC_ALL_DICT_JC
  add constraint PK_TC_ALL_DICT_JC_OID primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TC_ALL_DICT_CODE_VALUE_copy on BJVMMIS.TC_ALL_DICT_JC (CODE_VALUE)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TC_ALL_DICT_TYPE_copy on BJVMMIS.TC_ALL_DICT_JC (CODE_TYPE)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_ALL_DICT_OLD
prompt ==============================
prompt
create table BJVMMIS.TC_ALL_DICT_OLD
(
  OID           NUMBER(16) not null,
  CODE_NAME     VARCHAR2(128),
  CODE_VALUE    VARCHAR2(32),
  CODETYPE_NAME VARCHAR2(100),
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_ALL_DICT_STATUS
prompt =================================
prompt
create table BJVMMIS.TC_ALL_DICT_STATUS
(
  OID                NUMBER(16) not null,
  CODE_VALUE         VARCHAR2(32) not null,
  CODE_NAME          VARCHAR2(128) not null,
  REFER_STANDARD     VARCHAR2(128),
  FIELD_ORDER        NUMBER,
  REMARK             VARCHAR2(128),
  CODE_TYPE          VARCHAR2(32),
  CODETYPE_NAME      VARCHAR2(100),
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE,
  PARENT_CODE_VALUE  VARCHAR2(32),
  RECORD_CREATE_TIME DATE,
  VALID              VARCHAR2(1)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TC_ALL_DICT_STATUS
  add constraint C1 unique (CODE_NAME)
  disable;
alter table BJVMMIS.TC_ALL_DICT_STATUS
  add constraint C2 unique (CODE_VALUE)
  disable;

prompt
prompt Creating table TC_AUTH_FUNCAUTH_TYPE
prompt ====================================
prompt
create table BJVMMIS.TC_AUTH_FUNCAUTH_TYPE
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8) not null,
  NAME   VARCHAR2(64) not null,
  ORDNUM NUMBER(4) not null
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TC_AUTH_FUNCAUTH_TYPE
  is '��Ȩ����';

prompt
prompt Creating table TC_AUTH_HIGHEST_EDUCATION
prompt ========================================
prompt
create table BJVMMIS.TC_AUTH_HIGHEST_EDUCATION
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8),
  NAME   VARCHAR2(64),
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TC_AUTH_HIGHEST_EDUCATION
  add constraint PK_TC_AUTH_HIGHEST_EDUCATION primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_AUTH_JOB_TITLE
prompt ================================
prompt
create table BJVMMIS.TC_AUTH_JOB_TITLE
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8),
  NAME   VARCHAR2(64),
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TC_AUTH_JOB_TITLE
  add constraint PK_TC_AUTH_JOB_TITLE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_AUTH_NATION
prompt =============================
prompt
create table BJVMMIS.TC_AUTH_NATION
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8),
  NAME   VARCHAR2(64),
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TC_AUTH_NATION
  add constraint PK_TC_AUTH_NATION primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_AUTH_NATIVE_PLACE
prompt ===================================
prompt
create table BJVMMIS.TC_AUTH_NATIVE_PLACE
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8),
  NAME   VARCHAR2(64),
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TC_AUTH_NATIVE_PLACE
  add constraint PK_TC_AUTH_NATIVE_PLACE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_AUTH_SEX
prompt ==========================
prompt
create table BJVMMIS.TC_AUTH_SEX
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8),
  NAME   VARCHAR2(64),
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TC_AUTH_SEX
  add constraint PK_TC_AUTH_SEX primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_AUTH_XZQDM
prompt ============================
prompt
create table BJVMMIS.TC_AUTH_XZQDM
(
  OID    NUMBER(8) not null,
  CODE   VARCHAR2(9) not null,
  NAME   VARCHAR2(64) not null,
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TC_COMPANY_TYPE
prompt ==============================
prompt
create table BJVMMIS.TC_COMPANY_TYPE
(
  OID    NUMBER(8) not null,
  CODE   NUMBER(8),
  NAME   VARCHAR2(64),
  ORDNUM NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TC_COMPANY_TYPE
  is '��ҵ��������';

prompt
prompt Creating table TC_DICT
prompt ======================
prompt
create table BJVMMIS.TC_DICT
(
  CLASS NUMBER not null,
  NAME  VARCHAR2(128) not null,
  ID    NUMBER not null,
  CODE  VARCHAR2(50),
  NOTE  VARCHAR2(128)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TC_DICT
  is '���õ��ֶα�';
comment on column BJVMMIS.TC_DICT.CLASS
  is '�������(1:��ѯ������ʾ��ʽ;2:��ѯ������;3.�ֶ���ʾ����;4,�ֶ���ʾ��ʽ����;)';
comment on column BJVMMIS.TC_DICT.NAME
  is '��������';
comment on column BJVMMIS.TC_DICT.ID
  is 'ID';
comment on column BJVMMIS.TC_DICT.CODE
  is '�������';
alter table BJVMMIS.TC_DICT
  add constraint PK_TMD_DICT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TC_DICT_CATEGORY
prompt ===============================
prompt
create table BJVMMIS.TC_DICT_CATEGORY
(
  ID                 VARCHAR2(32) not null,
  PID                VARCHAR2(32) not null,
  NAME               VARCHAR2(64) not null,
  DISPLAY_ORDINAL    NUMBER(4) default 5000 not null,
  RECORD_CREATE_TIME DATE,
  RECORD_UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TC_DICT_CATEGORY
  is '�ֵ��Ŀ¼';
comment on column BJVMMIS.TC_DICT_CATEGORY.ID
  is '�߼����';
comment on column BJVMMIS.TC_DICT_CATEGORY.PID
  is '���߼����';
comment on column BJVMMIS.TC_DICT_CATEGORY.NAME
  is 'Ŀ¼��';
comment on column BJVMMIS.TC_DICT_CATEGORY.DISPLAY_ORDINAL
  is '˳���';
comment on column BJVMMIS.TC_DICT_CATEGORY.RECORD_CREATE_TIME
  is '��������';
comment on column BJVMMIS.TC_DICT_CATEGORY.RECORD_UPDATE_TIME
  is '��������';
alter table BJVMMIS.TC_DICT_CATEGORY
  add constraint PK_TC_DICT_CATEGORY primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TC_DICT_FIELD
prompt ============================
prompt
create table BJVMMIS.TC_DICT_FIELD
(
  OID             NUMBER(8) not null,
  TABLE_NAME      VARCHAR2(32),
  FIELD_NAME      VARCHAR2(32),
  FIELD_CAPTION   VARCHAR2(128),
  ORDNUM          NUMBER(8) default 9999,
  IS_KEY_FIELD    NUMBER(1) default 0,
  EDITABLE        NUMBER default 0,
  CODETABLE       VARCHAR2(32),
  CODE_FIELD      VARCHAR2(32),
  CODE_NAME_FIELD VARCHAR2(32)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BJVMMIS.TC_DICT_FIELD.TABLE_NAME
  is '����';
comment on column BJVMMIS.TC_DICT_FIELD.FIELD_NAME
  is '�ֶ���';
comment on column BJVMMIS.TC_DICT_FIELD.FIELD_CAPTION
  is '�ֶ�������';
comment on column BJVMMIS.TC_DICT_FIELD.ORDNUM
  is '�����';
comment on column BJVMMIS.TC_DICT_FIELD.IS_KEY_FIELD
  is '�Ƿ�����';
comment on column BJVMMIS.TC_DICT_FIELD.EDITABLE
  is '�Ƿ���ڽ���༭';
comment on column BJVMMIS.TC_DICT_FIELD.CODETABLE
  is '�ֵ��';
comment on column BJVMMIS.TC_DICT_FIELD.CODE_FIELD
  is '�ֵ���еĴ����ֶ�����';
comment on column BJVMMIS.TC_DICT_FIELD.CODE_NAME_FIELD
  is '�ֵ���е������ֶ�����';
alter table BJVMMIS.TC_DICT_FIELD
  add constraint DICT_FIELD_PRI_OID primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TC_DICT_TABLE
prompt ============================
prompt
create table BJVMMIS.TC_DICT_TABLE
(
  ID                  VARCHAR2(32) not null,
  CATEGORY_ID         VARCHAR2(32),
  TABLE_NAME          VARCHAR2(32) not null,
  CODE_TYPE_CAPTION   VARCHAR2(64) not null,
  CODE_TYPE           VARCHAR2(32) not null,
  CODE_TYPE_COLUMN    VARCHAR2(32),
  CODE_COLUMN         VARCHAR2(32) not null,
  NAME_COLUMN         VARCHAR2(32) not null,
  PARENT_CODE_COLUMN  VARCHAR2(32),
  ORDINAL_COLUMN      VARCHAR2(32),
  REF_STANDARD        VARCHAR2(256) not null,
  REF_STANDARD_SOURCE VARCHAR2(1024),
  MAPPING_CODE_COLUMN VARCHAR2(32),
  MAPPING_NAME_COLUMN VARCHAR2(32),
  RECORD_CREATE_TIME  DATE,
  RECORD_UPDATE_TIME  DATE,
  DISPLAY_ORDINAL     NUMBER(4) default 5000 not null
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TC_DICT_TABLE
  is '�����ۺϱ�';
comment on column BJVMMIS.TC_DICT_TABLE.ID
  is '����';
comment on column BJVMMIS.TC_DICT_TABLE.CATEGORY_ID
  is 'Ŀ¼ID';
comment on column BJVMMIS.TC_DICT_TABLE.TABLE_NAME
  is '����';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_TYPE_CAPTION
  is '�������';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_TYPE
  is '��������';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_TYPE_COLUMN
  is '���������ֶ���';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_COLUMN
  is '�����ֶ���';
comment on column BJVMMIS.TC_DICT_TABLE.NAME_COLUMN
  is '�����ֶ���';
comment on column BJVMMIS.TC_DICT_TABLE.PARENT_CODE_COLUMN
  is '���ڵ��ֶ���';
comment on column BJVMMIS.TC_DICT_TABLE.ORDINAL_COLUMN
  is '�����ֶ���';
comment on column BJVMMIS.TC_DICT_TABLE.REF_STANDARD
  is '�ο���׼';
comment on column BJVMMIS.TC_DICT_TABLE.REF_STANDARD_SOURCE
  is '�ο���׼��Դ';
comment on column BJVMMIS.TC_DICT_TABLE.MAPPING_CODE_COLUMN
  is 'ӳ������ֶ�';
comment on column BJVMMIS.TC_DICT_TABLE.MAPPING_NAME_COLUMN
  is 'ӳ����������ֶ�';
comment on column BJVMMIS.TC_DICT_TABLE.RECORD_CREATE_TIME
  is '��������';
comment on column BJVMMIS.TC_DICT_TABLE.RECORD_UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TC_DICT_TABLE.DISPLAY_ORDINAL
  is '˳���';
alter table BJVMMIS.TC_DICT_TABLE
  add constraint PK_TC_DICT_TABLE primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_APP_FUNCTION
prompt ===================================
prompt
create table BJVMMIS.TM_AUTH_APP_FUNCTION
(
  OID         NUMBER(10) not null,
  PID         NUMBER(10) not null,
  FUNC_ID     VARCHAR2(200) not null,
  FUNC_NAME   VARCHAR2(256),
  CLASS_NAME  VARCHAR2(256),
  METHOD_NAME VARCHAR2(1024),
  URL         VARCHAR2(2048),
  ICON        VARCHAR2(100),
  VALID       NUMBER(4) default 1,
  REMARK      VARCHAR2(512),
  ORDNUM      NUMBER(8),
  TOPOID      NUMBER(8) not null,
  DEPT_TAG    NUMBER(4)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_APP_FUNCTION
  is '����';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.PID
  is '�ϼ����';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.FUNC_ID
  is '����id';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.FUNC_NAME
  is '��������';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.CLASS_NAME
  is '��ȫ��';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.METHOD_NAME
  is '������';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.URL
  is 'URL';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.ICON
  is 'icon';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.VALID
  is '�Ƿ���Ч 1��Ч 0��Ч';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.REMARK
  is '��ע';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.DEPT_TAG
  is '���ű�־';
alter table BJVMMIS.TM_AUTH_APP_FUNCTION
  add constraint PK_TM_AUTH_APP_FUNCTION primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TM_AUTH_APPFUNCTION_IX2 on BJVMMIS.TM_AUTH_APP_FUNCTION (PID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index BJVMMIS.TM_AUTH_APPFUNCTION_IX3 on BJVMMIS.TM_AUTH_APP_FUNCTION (TOPOID, FUNC_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TM_AUTH_APPFUNCTION_IX4 on BJVMMIS.TM_AUTH_APP_FUNCTION (TOPOID, CLASS_NAME, METHOD_NAME)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_APP_ROLE
prompt ===============================
prompt
create table BJVMMIS.TM_AUTH_APP_ROLE
(
  OID       NUMBER(10) not null,
  ROLE_ID   VARCHAR2(40),
  ROLE_NAME VARCHAR2(50),
  ORDNUM    NUMBER(4),
  REMARK    VARCHAR2(250)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_APP_ROLE
  is '��ɫ';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.ROLE_ID
  is '��ɫ���';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.ROLE_NAME
  is '��ɫ����';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.ORDNUM
  is '˳���';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.REMARK
  is '��ע';
alter table BJVMMIS.TM_AUTH_APP_ROLE
  add constraint PK_TM_AUTH_APP_ROLE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index BJVMMIS.TM_AUTH_APPROLE_IX1 on BJVMMIS.TM_AUTH_APP_ROLE (ROLE_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_DEPARTMENT
prompt =================================
prompt
create table BJVMMIS.TM_AUTH_DEPARTMENT
(
  OID         NUMBER(16) not null,
  PID         NUMBER(10),
  NAME        VARCHAR2(100),
  ADDRESS     VARCHAR2(100),
  LEADER      VARCHAR2(50),
  TEL         VARCHAR2(20),
  ORDNUM      NUMBER(8),
  DISTRICT_ID NUMBER(10),
  CODE        VARCHAR2(64),
  DTYPE       VARCHAR2(1)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_DEPARTMENT
  is '�û�����';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.PID
  is '�ϼ����';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.NAME
  is '��������';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.ADDRESS
  is '����λ��';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.LEADER
  is '������';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.TEL
  is '�绰';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.ORDNUM
  is '����';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.DISTRICT_ID
  is '����������';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.CODE
  is '����';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.DTYPE
  is '�������ͣ�0=�֣�1=���أ�2=��ҵ';
alter table BJVMMIS.TM_AUTH_DEPARTMENT
  add constraint PK_TM_AUTH_DEPARTMENT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TM_AUTH_DEPARTMENT_PID on BJVMMIS.TM_AUTH_DEPARTMENT (PID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_DEPT_FUNCTIONS
prompt =====================================
prompt
create table BJVMMIS.TM_AUTH_DEPT_FUNCTIONS
(
  OID           NUMBER(10) not null,
  DEPT_OID      NUMBER(10),
  FUNC_OID      NUMBER(10),
  AUTH_TYPE     NUMBER(4) default 1,
  DEPT_FUNC_OID NUMBER(10)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TM_AUTH_DEPT_FUNCTIONS
  is '����ӵ�еĹ���';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.DEPT_OID
  is '�����߼����';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.FUNC_OID
  is '�����߼����';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.AUTH_TYPE
  is 'Ȩ������';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.DEPT_FUNC_OID
  is '���Ź���ID';
alter table BJVMMIS.TM_AUTH_DEPT_FUNCTIONS
  add constraint PK_TM_AUTH_DEPTR_FUNCTIONS primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
create unique index BJVMMIS.TM_AUTH_DEPTRFUNCTIONS_IX1 on BJVMMIS.TM_AUTH_DEPT_FUNCTIONS (DEPT_OID, FUNC_OID, DEPT_FUNC_OID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TM_AUTH_DEPT_ROLES
prompt =================================
prompt
create table BJVMMIS.TM_AUTH_DEPT_ROLES
(
  OID      NUMBER(10) not null,
  DEPT_OID NUMBER(10),
  ROLE_OID NUMBER(10)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TM_AUTH_DEPT_ROLES
  is '����ӵ�еĽ�ɫ';
comment on column BJVMMIS.TM_AUTH_DEPT_ROLES.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_DEPT_ROLES.DEPT_OID
  is '�����߼����';
comment on column BJVMMIS.TM_AUTH_DEPT_ROLES.ROLE_OID
  is '��ɫ�߼����';
alter table BJVMMIS.TM_AUTH_DEPT_ROLES
  add constraint PK_TM_AUTH_DEPT_ROLES primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
create unique index BJVMMIS.TM_AUTH_DEPTROLES_IX1 on BJVMMIS.TM_AUTH_DEPT_ROLES (DEPT_OID, ROLE_OID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TM_AUTH_ROLE_FUNCTIONS
prompt =====================================
prompt
create table BJVMMIS.TM_AUTH_ROLE_FUNCTIONS
(
  OID           NUMBER(10) not null,
  ROLE_OID      NUMBER(10),
  FUNC_OID      NUMBER(10),
  AUTH_TYPE     NUMBER(4) default 1,
  DEPT_FUNC_OID NUMBER(10)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_ROLE_FUNCTIONS
  is '��ɫӵ�еĹ���';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.ROLE_OID
  is '��ɫ�߼����';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.FUNC_OID
  is '�����߼����';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.AUTH_TYPE
  is 'Ȩ������';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.DEPT_FUNC_OID
  is '���Ź���ID';
alter table BJVMMIS.TM_AUTH_ROLE_FUNCTIONS
  add constraint PK_TM_AUTH_ROLE_FUNCTIONS primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index BJVMMIS.TM_AUTH_ROLEFUNCTIONS_IX1 on BJVMMIS.TM_AUTH_ROLE_FUNCTIONS (ROLE_OID, FUNC_OID, DEPT_FUNC_OID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_SQL_BACKUP
prompt =================================
prompt
create table BJVMMIS.TM_AUTH_SQL_BACKUP
(
  NAME       VARCHAR2(200),
  SQLTEXT    VARCHAR2(4000),
  GROUP_NAME VARCHAR2(200)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TM_AUTH_USER
prompt ===========================
prompt
create table BJVMMIS.TM_AUTH_USER
(
  OID               NUMBER(10) not null,
  USER_ID           VARCHAR2(20),
  USER_NAME         VARCHAR2(40),
  DEPTID            NUMBER(10),
  JOB_NUMBER        VARCHAR2(20),
  SEX               NUMBER(4),
  BIRTHDAY          DATE,
  NATION            NUMBER(4),
  HIGHEST_EDUCATION NUMBER(4),
  JOB_TITLE         NUMBER(4),
  POST              VARCHAR2(40),
  NATIVE_PLACE      NUMBER(4),
  MOBILE            VARCHAR2(20),
  EMAIL             VARCHAR2(50),
  INHERIT_DEPT_AUTH NUMBER(1),
  AUTH_TAG          NUMBER(1),
  PASSWORD          VARCHAR2(50),
  TEL               VARCHAR2(20),
  DISTID            VARCHAR2(9),
  ADDRESS           VARCHAR2(128),
  IP_ADDRESS        VARCHAR2(64),
  MAC_ADDRESS       VARCHAR2(64),
  CA_KEY            VARCHAR2(64),
  USER_ID_LOW       VARCHAR2(20),
  DELETE_FLAG       NUMBER(2)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_USER
  is '�û�';
comment on column BJVMMIS.TM_AUTH_USER.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_USER.USER_ID
  is '�û�ID';
comment on column BJVMMIS.TM_AUTH_USER.USER_NAME
  is '�û���';
comment on column BJVMMIS.TM_AUTH_USER.DEPTID
  is '����ID';
comment on column BJVMMIS.TM_AUTH_USER.JOB_NUMBER
  is '����';
comment on column BJVMMIS.TM_AUTH_USER.SEX
  is '�Ա�';
comment on column BJVMMIS.TM_AUTH_USER.BIRTHDAY
  is '����';
comment on column BJVMMIS.TM_AUTH_USER.NATION
  is '����';
comment on column BJVMMIS.TM_AUTH_USER.HIGHEST_EDUCATION
  is 'ѧ��';
comment on column BJVMMIS.TM_AUTH_USER.JOB_TITLE
  is 'ְ��';
comment on column BJVMMIS.TM_AUTH_USER.POST
  is 'ְλ';
comment on column BJVMMIS.TM_AUTH_USER.NATIVE_PLACE
  is '����';
comment on column BJVMMIS.TM_AUTH_USER.MOBILE
  is '�ֻ�';
comment on column BJVMMIS.TM_AUTH_USER.EMAIL
  is 'Email';
comment on column BJVMMIS.TM_AUTH_USER.INHERIT_DEPT_AUTH
  is '�Ƿ�̳����ڲ��ŵ�Ȩ��';
comment on column BJVMMIS.TM_AUTH_USER.AUTH_TAG
  is 'authTag';
comment on column BJVMMIS.TM_AUTH_USER.TEL
  is '�绰��������';
comment on column BJVMMIS.TM_AUTH_USER.DISTID
  is '��������';
comment on column BJVMMIS.TM_AUTH_USER.IP_ADDRESS
  is 'IP��ַ';
comment on column BJVMMIS.TM_AUTH_USER.MAC_ADDRESS
  is 'MAC��ַ';
comment on column BJVMMIS.TM_AUTH_USER.CA_KEY
  is 'CA֤���ʶ';
comment on column BJVMMIS.TM_AUTH_USER.USER_ID_LOW
  is 'Сд��user_id';
comment on column BJVMMIS.TM_AUTH_USER.DELETE_FLAG
  is 'ɾ����� 2��ʾɾ��';
alter table BJVMMIS.TM_AUTH_USER
  add constraint PK_TM_AUTH_USER primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index BJVMMIS.TM_AUTH_USER_IX1 on BJVMMIS.TM_AUTH_USER (USER_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TM_AUTH_USER_IX2 on BJVMMIS.TM_AUTH_USER (DEPTID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.TM_AUTH_USER_IX5 on BJVMMIS.TM_AUTH_USER (USER_ID_LOW)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_USER_FUNCTIONS
prompt =====================================
prompt
create table BJVMMIS.TM_AUTH_USER_FUNCTIONS
(
  OID           NUMBER(10) not null,
  USER_OID      NUMBER(10),
  FUNC_OID      NUMBER(10),
  AUTH_TYPE     NUMBER(4) default 1,
  DEPT_FUNC_OID NUMBER(10)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_USER_FUNCTIONS
  is '�û�ӵ�еĹ���';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.USER_OID
  is '�û��߼����';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.FUNC_OID
  is '�����߼����';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.AUTH_TYPE
  is 'Ȩ������';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.DEPT_FUNC_OID
  is '���Ź���ID';
alter table BJVMMIS.TM_AUTH_USER_FUNCTIONS
  add constraint PK_TM_AUTH_USER_FUNCTIONS primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index BJVMMIS.TM_AUTH_USERFUNCTIONS_IX1 on BJVMMIS.TM_AUTH_USER_FUNCTIONS (USER_OID, FUNC_OID, DEPT_FUNC_OID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TM_AUTH_USER_ROLES
prompt =================================
prompt
create table BJVMMIS.TM_AUTH_USER_ROLES
(
  OID      NUMBER(10) not null,
  USER_OID NUMBER(10),
  ROLE_OID NUMBER(10)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TM_AUTH_USER_ROLES
  is '�û�ӵ�еĽ�ɫ';
comment on column BJVMMIS.TM_AUTH_USER_ROLES.OID
  is '���';
comment on column BJVMMIS.TM_AUTH_USER_ROLES.USER_OID
  is '�û��߼����';
comment on column BJVMMIS.TM_AUTH_USER_ROLES.ROLE_OID
  is '��ɫ�߼����';
alter table BJVMMIS.TM_AUTH_USER_ROLES
  add constraint PK_TM_AUTH_USER_ROLES primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index BJVMMIS.TM_AUTH_USERROLES_IX1 on BJVMMIS.TM_AUTH_USER_ROLES (USER_OID, ROLE_OID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_ATTACHMENT
prompt ==============================
prompt
create table BJVMMIS.TRIW_ATTACHMENT
(
  ID                 NUMBER not null,
  HOST_ID            VARCHAR2(32),
  HOST_TYPE          NUMBER,
  TITLE              VARCHAR2(256),
  URL                VARCHAR2(256),
  DESCRIPTION        VARCHAR2(256),
  FILE_SIZE          NUMBER,
  PRICE              NUMBER,
  DOWNLOADS          NUMBER,
  MEDIA              NUMBER,
  MEDIA_TYPE         NUMBER,
  LOCAL              NUMBER,
  ORDER_NUM          NUMBER,
  ENCRYPTED_PARM_STR VARCHAR2(256),
  USER_ID            NUMBER,
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_ATTACHMENT
  is '������Ϣ��';
comment on column BJVMMIS.TRIW_ATTACHMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_ATTACHMENT.HOST_ID
  is '����ID';
comment on column BJVMMIS.TRIW_ATTACHMENT.HOST_TYPE
  is '��������';
comment on column BJVMMIS.TRIW_ATTACHMENT.TITLE
  is '����';
comment on column BJVMMIS.TRIW_ATTACHMENT.URL
  is '���ӵ�ַ';
comment on column BJVMMIS.TRIW_ATTACHMENT.DESCRIPTION
  is '˵��';
comment on column BJVMMIS.TRIW_ATTACHMENT.FILE_SIZE
  is '�ļ���С';
comment on column BJVMMIS.TRIW_ATTACHMENT.PRICE
  is 'PRICE';
comment on column BJVMMIS.TRIW_ATTACHMENT.DOWNLOADS
  is '���ش���';
comment on column BJVMMIS.TRIW_ATTACHMENT.MEDIA
  is '�Ƿ�ý���ļ�';
comment on column BJVMMIS.TRIW_ATTACHMENT.MEDIA_TYPE
  is 'ý������';
comment on column BJVMMIS.TRIW_ATTACHMENT.LOCAL
  is '�Ƿ񱾵��ļ�';
comment on column BJVMMIS.TRIW_ATTACHMENT.ORDER_NUM
  is '�������';
comment on column BJVMMIS.TRIW_ATTACHMENT.ENCRYPTED_PARM_STR
  is 'ý���������';
comment on column BJVMMIS.TRIW_ATTACHMENT.USER_ID
  is '�ϴ��û�ID';
comment on column BJVMMIS.TRIW_ATTACHMENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_ATTACHMENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_ATTACHMENT
  add constraint PK_ATTACHMENT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FK8AF7592360BD5DE5 on BJVMMIS.TRIW_ATTACHMENT (USER_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_BBS_FORUM
prompt =============================
prompt
create table BJVMMIS.TRIW_BBS_FORUM
(
  ID            NUMBER(8) not null,
  FORUM_NAME    VARCHAR2(256),
  DESCRIPTION   VARCHAR2(256),
  DISPLAY_ORDER VARCHAR2(256),
  FOOTER_LEFT   NUMBER(4),
  FOOTER_RIGHT  NUMBER(4),
  IS_SHARE      CHAR(1),
  AS_CLASS      CHAR(1),
  STATE         CHAR(1),
  HOSTS_ALLOW   VARCHAR2(256),
  ICO_URL       VARCHAR2(256),
  ROOT_FORUM_ID NUMBER,
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE,
  TESTID        NUMBER(8)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_BBS_FORUM
  is '��̳����';
comment on column BJVMMIS.TRIW_BBS_FORUM.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_FORUM.FORUM_NAME
  is '�������';
comment on column BJVMMIS.TRIW_BBS_FORUM.DESCRIPTION
  is '����';
comment on column BJVMMIS.TRIW_BBS_FORUM.DISPLAY_ORDER
  is '��ʾ˳��';
comment on column BJVMMIS.TRIW_BBS_FORUM.FOOTER_LEFT
  is '��ֵ���ֵ';
comment on column BJVMMIS.TRIW_BBS_FORUM.FOOTER_RIGHT
  is '��ֵ�Ҳ�ֵ';
comment on column BJVMMIS.TRIW_BBS_FORUM.IS_SHARE
  is '����Ƿ񹫿�';
comment on column BJVMMIS.TRIW_BBS_FORUM.AS_CLASS
  is '�Ƿ�Ϊ����Ŀ';
comment on column BJVMMIS.TRIW_BBS_FORUM.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_BBS_FORUM.HOSTS_ALLOW
  is '���ƿɷ���IP��Χ';
comment on column BJVMMIS.TRIW_BBS_FORUM.ICO_URL
  is '���ͼ��';
comment on column BJVMMIS.TRIW_BBS_FORUM.ROOT_FORUM_ID
  is '�ϼ����ID';
comment on column BJVMMIS.TRIW_BBS_FORUM.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_BBS_FORUM.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_BBS_FORUM.TESTID
  is 'TESTID';
alter table BJVMMIS.TRIW_BBS_FORUM
  add constraint PK_BBS_FORUM primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF1C03A15DFBBBE53 on BJVMMIS.TRIW_BBS_FORUM (ROOT_FORUM_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_BBS_STYLE
prompt =============================
prompt
create table BJVMMIS.TRIW_BBS_STYLE
(
  ID                            NUMBER not null,
  STYLE_NAME                    VARCHAR2(256),
  AUTHOR                        VARCHAR2(256),
  DESCRIPTION                   VARCHAR2(256),
  STATE                         NUMBER,
  HREF_LINE_FORMAT_STR_OVER_ALL VARCHAR2(256),
  HREF_LINE_FOR_STR_WITH_SN     VARCHAR2(256),
  BM_SHOW_FORMAT                VARCHAR2(256),
  ADD_THEME_BUTTOM_CODE         CLOB,
  EDIT_THEME_AREA_CODE          CLOB,
  REPLIE_THREAD_AREA_CODE       CLOB,
  ICO_URL_OF_STICKED_ON_GLOBAL  VARCHAR2(256),
  ICO_URL_OF_STICKED_ON_CLASS   VARCHAR2(256),
  ICO_URL_OF_STICKED_ON_FORUM   VARCHAR2(256),
  ICO_URL_OF_GENERAL            VARCHAR2(256),
  ICO_URL_OF_NEW                VARCHAR2(256),
  ICO_URL_OF_HOT                VARCHAR2(256),
  QUOTE_AREA_CODE               CLOB,
  INDEX_SHOW_LAST_FORMAT_STR    CLOB,
  RESULT_PAGE_CODE              CLOB,
  PUBLIC_CODE1                  CLOB,
  PUBLIC_CODE2                  CLOB,
  PUBLIC_CODE3                  CLOB,
  PUBLIC_CODE4                  CLOB,
  CUSTOM_FORMAT_CODE1           CLOB,
  CUSTOM_FORMAT_CODE2           CLOB,
  CUSTOM_FORMAT_CODE3           CLOB,
  CUSTOM_FORMAT_CODE4           CLOB,
  CUSTOM_FORMAT_CODE5           CLOB,
  CUSTOM_FORMAT_CODE6           CLOB,
  CUSTOM_FORMAT_CODE7           CLOB,
  CUSTOM_FORMAT_CODE8           CLOB,
  P_ID                          NUMBER,
  I_ID                          NUMBER,
  F_ID                          NUMBER,
  E_ID                          NUMBER,
  T_ID                          NUMBER,
  S_ID                          NUMBER,
  U_ID                          NUMBER,
  CREATE_TIME                   DATE,
  UPDATE_TIME                   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_BBS_STYLE
  is '��̳���ģ���';
comment on column BJVMMIS.TRIW_BBS_STYLE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.STYLE_NAME
  is 'ģ������';
comment on column BJVMMIS.TRIW_BBS_STYLE.AUTHOR
  is '����';
comment on column BJVMMIS.TRIW_BBS_STYLE.DESCRIPTION
  is '˵��';
comment on column BJVMMIS.TRIW_BBS_STYLE.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_BBS_STYLE.HREF_LINE_FORMAT_STR_OVER_ALL
  is '�����и�ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE.HREF_LINE_FOR_STR_WITH_SN
  is '����������и�ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE.BM_SHOW_FORMAT
  is '��ʾ��ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE.ADD_THEME_BUTTOM_CODE
  is '�������ײ�����';
comment on column BJVMMIS.TRIW_BBS_STYLE.EDIT_THEME_AREA_CODE
  is '�༭�����������';
comment on column BJVMMIS.TRIW_BBS_STYLE.REPLIE_THREAD_AREA_CODE
  is '�ظ������������';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_STICKED_ON_GLOBAL
  is '����̳ͼ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_STICKED_ON_CLASS
  is '�Ӱ��ͼ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_STICKED_ON_FORUM
  is '�������ͼ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_GENERAL
  is '��ͨͼ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_NEW
  is '������ͼ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_HOT
  is '�ȵ�ͼ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.QUOTE_AREA_CODE
  is '�����������';
comment on column BJVMMIS.TRIW_BBS_STYLE.INDEX_SHOW_LAST_FORMAT_STR
  is '��ҳ��ʾ���һ������ַ���';
comment on column BJVMMIS.TRIW_BBS_STYLE.RESULT_PAGE_CODE
  is '���ҳ����';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE1
  is '��������1';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE2
  is '��������2';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE3
  is '��������3';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE4
  is '��������4';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE1
  is '�Զ����ʽ����1';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE2
  is '�Զ����ʽ����2';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE3
  is '�Զ����ʽ����3';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE4
  is '�Զ����ʽ����4';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE5
  is '�Զ����ʽ����5';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE6
  is '�Զ����ʽ����6';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE7
  is '�Զ����ʽ����7';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE8
  is '�Զ����ʽ����8';
comment on column BJVMMIS.TRIW_BBS_STYLE.P_ID
  is 'P_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.I_ID
  is 'I_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.F_ID
  is 'F_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.E_ID
  is 'E_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.T_ID
  is 'T_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.S_ID
  is 'S_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.U_ID
  is 'U_ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_BBS_STYLE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_BBS_STYLE
  add constraint PK_BBS_STYLE primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D092F25 on BJVMMIS.TRIW_BBS_STYLE (E_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D0932E6 on BJVMMIS.TRIW_BBS_STYLE (F_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D093E29 on BJVMMIS.TRIW_BBS_STYLE (I_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D095870 on BJVMMIS.TRIW_BBS_STYLE (P_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D0963B3 on BJVMMIS.TRIW_BBS_STYLE (S_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D096774 on BJVMMIS.TRIW_BBS_STYLE (T_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF279CAA51D096B35 on BJVMMIS.TRIW_BBS_STYLE (U_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_BBS_STYLE_ELEMENT
prompt =====================================
prompt
create table BJVMMIS.TRIW_BBS_STYLE_ELEMENT
(
  ID                             NUMBER not null,
  HTML_TEMPLATE                  CLOB,
  CSS_CODE                       CLOB,
  HTML_CODE                      CLOB,
  TOP_CODE                       CLOB,
  FOOTER_CODE                    CLOB,
  TARGET_STR                     VARCHAR2(256),
  TITLE_FORMAT                   VARCHAR2(256),
  HREF_LINE_FORMAT               CLOB,
  MEMBER_PANEL_CODE_FOR_LOGIN    CLOB,
  MEMBER_PANEL_CODE_FOR_LOGOUT   CLOB,
  DATE_FORMAT_ON_LINE            VARCHAR2(256),
  DATE_FORMAT_IN_TEXT            VARCHAR2(256),
  MAJOR_LOOP_CODE_IN_LUMP        CLOB,
  MINOR_LOOP_CODE_IN_LUMP        CLOB,
  TITLE_OF_MAJOR_LOOP_CODEINLUMP CLOB,
  TITLE_OF_MINOR_LOOP_CODEINLUMP CLOB,
  EDIT_AREA_CODE                 CLOB,
  SEARCH_AREA_CODE               CLOB,
  SPECIAL_CODE1                  CLOB,
  SPECIAL_CODE2                  CLOB,
  SPECIAL_CODE3                  CLOB,
  SPECIAL_CODE4                  CLOB,
  CREATE_TIME                    DATE,
  UPDATE_TIME                    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_BBS_STYLE_ELEMENT
  is '��̳���ģ��Ԫ�ر�';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.HTML_TEMPLATE
  is 'htmlģ��';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.CSS_CODE
  is 'CSS����';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.HTML_CODE
  is 'html����';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TOP_CODE
  is 'ͷ������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.FOOTER_CODE
  is '�ײ�����';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TARGET_STR
  is 'Ŀ���ַ���';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TITLE_FORMAT
  is '�����ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.HREF_LINE_FORMAT
  is '���Ӹ�ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGIN
  is '�û���¼������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGOUT
  is '�û�ע��������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.DATE_FORMAT_ON_LINE
  is '�������ڸ�ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.DATE_FORMAT_IN_TEXT
  is '�ı������ڸ�ʽ';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MAJOR_LOOP_CODE_IN_LUMP
  is '��ѭ������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MINOR_LOOP_CODE_IN_LUMP
  is '��ѭ������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TITLE_OF_MAJOR_LOOP_CODEINLUMP
  is '��ѭ���������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TITLE_OF_MINOR_LOOP_CODEINLUMP
  is '��ѭ���������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.EDIT_AREA_CODE
  is '�༭�������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SEARCH_AREA_CODE
  is '�����������';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE1
  is '�������1';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE2
  is '�������2';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE3
  is '�������3';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE4
  is '�������4';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_BBS_STYLE_ELEMENT
  add constraint PK_BBS_STYLE_ELEMENT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_BBS_THEME
prompt =============================
prompt
create table BJVMMIS.TRIW_BBS_THEME
(
  ID             NUMBER not null,
  TITLE          VARCHAR2(128),
  STATE          NUMBER,
  SHIELD         NUMBER,
  SOUL           NUMBER,
  VIEWS          NUMBER,
  TOP_MOD        NUMBER,
  LAST_EDIT_TIME DATE,
  LAST_VIEW_IP   VARCHAR2(64),
  QUOTE          VARCHAR2(512),
  LAST_VIEW_TIME DATE,
  THEME_BODY     CLOB,
  ROOT_THEME_ID  NUMBER,
  FORUM_ID       NUMBER,
  CREATE_TIME    DATE,
  UPDATE_TIME    DATE,
  USER_NAME      VARCHAR2(32),
  PASSER         VARCHAR2(32),
  LAST_EDIT_USER VARCHAR2(32),
  USER_ID        NUMBER
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_BBS_THEME
  is '��̳�����';
comment on column BJVMMIS.TRIW_BBS_THEME.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_THEME.TITLE
  is '����';
comment on column BJVMMIS.TRIW_BBS_THEME.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_BBS_THEME.SHIELD
  is '�Ƿ�����';
comment on column BJVMMIS.TRIW_BBS_THEME.SOUL
  is '�Ƿ񾫻�';
comment on column BJVMMIS.TRIW_BBS_THEME.VIEWS
  is '�����';
comment on column BJVMMIS.TRIW_BBS_THEME.TOP_MOD
  is '�ö���ʽ';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_EDIT_TIME
  is '������ʱ��';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_VIEW_IP
  is '���鿴ip';
comment on column BJVMMIS.TRIW_BBS_THEME.QUOTE
  is '����';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_VIEW_TIME
  is '���鿴ʱ��';
comment on column BJVMMIS.TRIW_BBS_THEME.THEME_BODY
  is '����';
comment on column BJVMMIS.TRIW_BBS_THEME.ROOT_THEME_ID
  is '������ID';
comment on column BJVMMIS.TRIW_BBS_THEME.FORUM_ID
  is '���ID';
comment on column BJVMMIS.TRIW_BBS_THEME.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_BBS_THEME.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_BBS_THEME.USER_NAME
  is '������';
comment on column BJVMMIS.TRIW_BBS_THEME.PASSER
  is '�����';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_EDIT_USER
  is '���༭��';
comment on column BJVMMIS.TRIW_BBS_THEME.USER_ID
  is '������ID';
alter table BJVMMIS.TRIW_BBS_THEME
  add constraint PK_BBS_THEME primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF28222BD4A57A175 on BJVMMIS.TRIW_BBS_THEME (FORUM_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKF28222BDE38A324B on BJVMMIS.TRIW_BBS_THEME (ROOT_THEME_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_COMMENT
prompt ===========================
prompt
create table BJVMMIS.TRIW_COMMENT
(
  ID              NUMBER not null,
  PUBLISHER       VARCHAR2(64),
  TITLE           VARCHAR2(256),
  COMMENT_CONTENT CLOB,
  IP              VARCHAR2(64),
  EMAIL           VARCHAR2(256),
  PHONE           VARCHAR2(64),
  PUBLISHER_FROM  VARCHAR2(64),
  STATE           NUMBER,
  THREAD_ID       VARCHAR2(32),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_COMMENT
  is '�������۱�';
comment on column BJVMMIS.TRIW_COMMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_COMMENT.PUBLISHER
  is '������';
comment on column BJVMMIS.TRIW_COMMENT.TITLE
  is '����';
comment on column BJVMMIS.TRIW_COMMENT.COMMENT_CONTENT
  is '����';
comment on column BJVMMIS.TRIW_COMMENT.IP
  is 'ip';
comment on column BJVMMIS.TRIW_COMMENT.EMAIL
  is '�����ʼ�';
comment on column BJVMMIS.TRIW_COMMENT.PHONE
  is '�绰';
comment on column BJVMMIS.TRIW_COMMENT.PUBLISHER_FROM
  is '��Դ';
comment on column BJVMMIS.TRIW_COMMENT.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_COMMENT.THREAD_ID
  is '����ID';
comment on column BJVMMIS.TRIW_COMMENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_COMMENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_COMMENT
  add constraint PK_COMMENT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
create index BJVMMIS.FK38A5EE5FCE7186FA on BJVMMIS.TRIW_COMMENT (THREAD_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRIW_OP_SYSTEM
prompt =============================
prompt
create table BJVMMIS.TRIW_OP_SYSTEM
(
  ID          NUMBER not null,
  SYSTEM_NAME VARCHAR2(256),
  DESCRIPTION VARCHAR2(256),
  URL         VARCHAR2(256),
  SYSTEM_ICON VARCHAR2(256),
  STATE       NUMBER,
  GROUP_ID    NUMBER,
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_OP_SYSTEM
  is 'ҵ��ϵͳ��';
comment on column BJVMMIS.TRIW_OP_SYSTEM.ID
  is 'ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM.SYSTEM_NAME
  is 'ϵͳ����';
comment on column BJVMMIS.TRIW_OP_SYSTEM.DESCRIPTION
  is '����';
comment on column BJVMMIS.TRIW_OP_SYSTEM.URL
  is '���ʵ�ַ';
comment on column BJVMMIS.TRIW_OP_SYSTEM.SYSTEM_ICON
  is 'ϵͳͼ��';
comment on column BJVMMIS.TRIW_OP_SYSTEM.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_OP_SYSTEM.GROUP_ID
  is '��������';
comment on column BJVMMIS.TRIW_OP_SYSTEM.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_OP_SYSTEM.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_OP_SYSTEM
  add constraint PK_TRIW_OP_SYSTEM primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_OP_SYSTEM_GROUP
prompt ===================================
prompt
create table BJVMMIS.TRIW_OP_SYSTEM_GROUP
(
  ID          NUMBER not null,
  GROUP_NAME  VARCHAR2(256),
  DESCRIPTION VARCHAR2(256),
  STATE       NUMBER,
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_OP_SYSTEM_GROUP
  is 'ҵ��ϵͳ�����';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.ID
  is 'ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.GROUP_NAME
  is '��������';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.DESCRIPTION
  is '����';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_OP_SYSTEM_GROUP
  add constraint PK_TRIW_OP_SYSTEM_GROUP primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_OP_SYSTEM_USER_SET
prompt ======================================
prompt
create table BJVMMIS.TRIW_OP_SYSTEM_USER_SET
(
  ID           NUMBER not null,
  OP_SYSTEM_ID NUMBER,
  USER_ID      NUMBER,
  CREATE_TIME  DATE,
  UPDATE_TIME  DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_OP_SYSTEM_USER_SET
  is 'ҵ��ϵͳ�û����ñ�';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.ID
  is 'ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.OP_SYSTEM_ID
  is 'ҵ��ϵͳID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.USER_ID
  is '�û�ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_OP_SYSTEM_USER_SET
  add constraint PK_TRIW_OP_SYSTEM_USER_SET primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_SITE_ARTICLE_GROUP
prompt ======================================
prompt
create table BJVMMIS.TRIW_SITE_ARTICLE_GROUP
(
  ID                     NUMBER(8) not null,
  GROUP_NAME             VARCHAR2(64),
  DISPLAY_ORDER          VARCHAR2(256),
  FOOTER_LEFT            NUMBER,
  FOOTER_RIGHT           NUMBER,
  IS_SHARE               NUMBER,
  AS_CLASS               NUMBER,
  STATE                  NUMBER,
  SHOW_ALL               NUMBER,
  ICON_URL               VARCHAR2(256),
  HOSTS_ALLOW            VARCHAR2(256),
  JUMP_URL               VARCHAR2(256),
  STATIC_HTML_FOLDER     VARCHAR2(256),
  REFUSE_STATIC_HTML     NUMBER,
  SHOW_ON_INDEX          NUMBER,
  NUMBER_SHOW_ON_INDEX   NUMBER,
  LENGTH_SHOW_ON_INDEX   NUMBER,
  SOUL_ON_INDEX          NUMBER,
  FORMAT_ON_INDEX        VARCHAR2(4000),
  SHOW_ON_PARENT         NUMBER,
  NUMBER_SHOW_ON_PARENT  NUMBER,
  LENGTH_SHOW_ON_PARENT  NUMBER,
  SOUL_ON_PARENT         NUMBER,
  FORMAT_ON_PARENT       VARCHAR2(4000),
  ARTICLE_PASS_MODE      NUMBER,
  COMPULSION_DOC_STYLE   NUMBER,
  COMMENT_MODE           NUMBER,
  PRIVATE_HTML           VARCHAR2(4000),
  STYLE_ID               NUMBER,
  NUMBER_APPEAR_RESTRICT NUMBER,
  NUMBER_LIST            NUMBER,
  CREATE_TIME            DATE,
  UPDATE_TIME            DATE,
  PARENT_GROUP_ID        NUMBER
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_SITE_ARTICLE_GROUP
  is '��Ŀ��Ϣ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.GROUP_NAME
  is '��Ŀ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.DISPLAY_ORDER
  is '��Ŀ���';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FOOTER_LEFT
  is '��ֵ���';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FOOTER_RIGHT
  is '��ֵ�ұ�';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.IS_SHARE
  is '��Ŀ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.AS_CLASS
  is '����Ϊ����Ŀ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SHOW_ALL
  is '��ʾ����������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.ICON_URL
  is '��Ŀͼ��Url';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.HOSTS_ALLOW
  is '���Ʊ���Ŀ�ɷ���IP';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.JUMP_URL
  is '��תĿ��Url';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.STATIC_HTML_FOLDER
  is '��̬�ļ������ļ�����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.REFUSE_STATIC_HTML
  is 'ǿ�Ʋ���̬';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SHOW_ON_INDEX
  is '��ҳ�б���ʾ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_SHOW_ON_INDEX
  is '��ҳ��ʾ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.LENGTH_SHOW_ON_INDEX
  is '��ҳ���ⳤ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SOUL_ON_INDEX
  is '��ҳ������ǰ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FORMAT_ON_INDEX
  is '��ҳ�б��ʽ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SHOW_ON_PARENT
  is '����ҳ�б���ʾ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_SHOW_ON_PARENT
  is '����ҳ�б���ʾ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.LENGTH_SHOW_ON_PARENT
  is '����ҳ���ⳤ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SOUL_ON_PARENT
  is '����ҳ������ǰ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FORMAT_ON_PARENT
  is '����ҳ�б��ʽ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.ARTICLE_PASS_MODE
  is '������˷�ʽ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.COMPULSION_DOC_STYLE
  is 'ǿ������ҳ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.COMMENT_MODE
  is '���ۿ���';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.PRIVATE_HTML
  is '˽��html';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.STYLE_ID
  is '��Ŀ���';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_APPEAR_RESTRICT
  is '���������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_LIST
  is '��������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.PARENT_GROUP_ID
  is '�ϼ���ĿID';
alter table BJVMMIS.TRIW_SITE_ARTICLE_GROUP
  add constraint PK_TNWR_SITE_ARTICLE_GROUP primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_SITE_ARTICLE_THREAD
prompt =======================================
prompt
create table BJVMMIS.TRIW_SITE_ARTICLE_THREAD
(
  ID                         VARCHAR2(32) not null,
  TITLE                      VARCHAR2(256),
  EYE_CATCHING               NUMBER,
  TOP_ONE                    NUMBER,
  ACCESSIONAL_TITLE          VARCHAR2(128),
  PENSILE_TITLE              VARCHAR2(128),
  SHORT_TITLE                VARCHAR2(128),
  IS_LOCATION                NUMBER,
  STATE                      NUMBER,
  IS_COMMENT                 NUMBER,
  SOUL                       NUMBER,
  NOTICE                     NUMBER,
  NOTICE_SHOW_BODY           NUMBER,
  BY_EDITOR                  NUMBER,
  VIEWS                      NUMBER,
  SYNOPSIS                   VARCHAR2(256),
  AUTHOR                     VARCHAR2(128),
  AUTHOR_DEPT                VARCHAR2(128),
  AUTHOR_EMAIL               VARCHAR2(128),
  AUTHOR_URL                 VARCHAR2(256),
  CREATE_TIME                DATE,
  UPDATE_TIME                DATE,
  LAST_VIEW_IP               VARCHAR2(256),
  LAST_VIEW_TIME             DATE,
  QUOTE_MEMBER               VARCHAR2(64),
  PASSER                     VARCHAR2(64),
  PASSING_TIME               DATE,
  MAIN_IMG                   VARCHAR2(256),
  THUMBNAIL                  VARCHAR2(256),
  MAINIMG_EXPLAIN            VARCHAR2(256),
  JOURNAL                    VARCHAR2(128),
  LINK_TITLE                 VARCHAR2(256),
  LINK_URL                   VARCHAR2(256),
  LINK_JUMP                  NUMBER,
  MENTOR                     VARCHAR2(128),
  HTML_CREATED               NUMBER,
  HTML_URL_PATH              VARCHAR2(256),
  HTML_URL_FILE              VARCHAR2(256),
  ENCRYPTED_PARM_STR         VARCHAR2(256),
  DEFAULT_ATTA_MEDIA_FORMAT  NUMBER,
  ATTA_LINE_ORDER_FORMAT_STR VARCHAR2(256),
  ARTICLE_GROUP_ID           NUMBER,
  USER_ID                    NUMBER,
  ARTICLE_TAGS               VARCHAR2(256),
  SRC_TABLE_ID               NUMBER default 0,
  SRC_TYPE_ID                NUMBER default 0,
  ART_CONTENT                CLOB
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_SITE_ARTICLE_THREAD
  is '������Ϣ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.TITLE
  is '����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.EYE_CATCHING
  is '��Ŀ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.TOP_ONE
  is '�Ƽ���ʾ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ACCESSIONAL_TITLE
  is '���ӱ���';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.PENSILE_TITLE
  is 'üͷ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SHORT_TITLE
  is '�������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.IS_LOCATION
  is '����λ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.STATE
  is '״̬,0����ˣ�1������2���ͨ����3���δͨ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.IS_COMMENT
  is '�Ƿ���������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SOUL
  is '�Ƿ񾫻�';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.NOTICE
  is '�Ƿ񹫸�';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.NOTICE_SHOW_BODY
  is '����ʱ��ʾ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.BY_EDITOR
  is '�Ƿ�ɱ༭';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.VIEWS
  is '�������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SYNOPSIS
  is '���ݼ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR
  is '����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR_DEPT
  is '��������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR_EMAIL
  is '����Email';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR_URL
  is '������ҳ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LAST_VIEW_IP
  is '���鿴IP';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LAST_VIEW_TIME
  is '���鿴ʱ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.QUOTE_MEMBER
  is '������Ŀ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.PASSER
  is '������ʺ�';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.PASSING_TIME
  is '���ʱ��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.MAIN_IMG
  is 'ͼ���ļ�URL';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.THUMBNAIL
  is '����ͼ�ļ�URL';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.MAINIMG_EXPLAIN
  is 'ͼƬ����˵��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.JOURNAL
  is '�ѷ�����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LINK_TITLE
  is '��������������������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LINK_URL
  is '�����������������ӵ�ַ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LINK_JUMP
  is 'ǿ����ת';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.MENTOR
  is 'ָ����';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.HTML_CREATED
  is '�Ƿ��Ѵ�����̬ҳ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.HTML_URL_PATH
  is '��̬�ļ�·��';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.HTML_URL_FILE
  is '��̬�ļ���ַ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ENCRYPTED_PARM_STR
  is 'ý���������';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.DEFAULT_ATTA_MEDIA_FORMAT
  is 'Ĭ��ý���ļ�';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ATTA_LINE_ORDER_FORMAT_STR
  is '�����ʽ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ARTICLE_GROUP_ID
  is '������Ŀ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.USER_ID
  is '�ϱ���ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ARTICLE_TAGS
  is '���±�ǩ';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SRC_TABLE_ID
  is 'Դ��ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SRC_TYPE_ID
  is 'Դ������ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ART_CONTENT
  is '��������';
alter table BJVMMIS.TRIW_SITE_ARTICLE_THREAD
  add constraint PK_TNWR_SITE_ARTICLE_THREAD primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.INDEX_TNWR_STIE_ARTICLE_THREAD on BJVMMIS.TRIW_SITE_ARTICLE_THREAD (TITLE, ACCESSIONAL_TITLE, ARTICLE_TAGS)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_SITE_INFO
prompt =============================
prompt
create table BJVMMIS.TRIW_SITE_INFO
(
  ID                             NUMBER not null,
  FULL_SITE_NAME                 VARCHAR2(64),
  SHORT_SITE_NAME                VARCHAR2(64),
  STATE                          NUMBER,
  SESSION_KEY                    VARCHAR2(128),
  KEY_WORDS                      VARCHAR2(256),
  DESCRIPTION                    VARCHAR2(256),
  HOST                           VARCHAR2(64),
  CLOSE_ANNOUNCE                 VARCHAR2(256),
  HOST_VISIT_ALLOW               VARCHAR2(256),
  WELCOME_STR                    VARCHAR2(256),
  SPACE_NAME                     VARCHAR2(64),
  BBS_NAME                       VARCHAR2(64),
  BBS_STATE                      NUMBER,
  SPACE_STATE                    NUMBER,
  STATIC_HTML_MODE               NUMBER,
  STYLE_ID_FOR_SITE              NUMBER,
  STYLE_ID_FOR_BBS               NUMBER,
  STYLE_ID_FOR_SPACE             NUMBER,
  MAIL_TITLE_FROM_SITE           VARCHAR2(128),
  MAIL_BODY_FOR_REG              VARCHAR2(4000),
  MAIL_BODY_FOR_QA_ADD           VARCHAR2(4000),
  MAIL_BODY_FOR_QA_REPLY         VARCHAR2(4000),
  MAIL_SMTP_SERVER               VARCHAR2(32),
  MAIL_SMTP_USER                 VARCHAR2(32),
  MAIL_SMTP_PWS                  VARCHAR2(32),
  MAIL_SENDER_ADDR               VARCHAR2(64),
  FILE_UPLOAD_EXT_NAME           VARCHAR2(256),
  FILTER_WORDS                   VARCHAR2(256),
  USER_REG_ALLOW                 NUMBER,
  USER_REG_AUTO_PASSED           NUMBER,
  USER_GROUP_OF_AUTO_PASSED      NUMBER,
  SEND_MAIL_FOR_REG_USER_CONFIRM NUMBER,
  ONE_MAIL_FOR_REG               NUMBER,
  USER_LOGIN_ALLOW               NUMBER,
  USER_GROUP_WHEN_NOT_LOG_ALLOW  VARCHAR2(256),
  ARTICLE_AUTO_PASS              NUMBER,
  COMMENTS_OPEN                  NUMBER,
  MODE_OF_COMMENT                NUMBER,
  USER_GROUPS_FOR_STAT           VARCHAR2(256),
  LICENSE_AGREEMENT              VARCHAR2(4000),
  CREATE_TIME                    DATE,
  UPDATE_TIME                    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_SITE_INFO
  is 'վ�������Ϣ';
comment on column BJVMMIS.TRIW_SITE_INFO.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_INFO.FULL_SITE_NAME
  is '��վȫ��';
comment on column BJVMMIS.TRIW_SITE_INFO.SHORT_SITE_NAME
  is '��վ���';
comment on column BJVMMIS.TRIW_SITE_INFO.STATE
  is '��վ״̬';
comment on column BJVMMIS.TRIW_SITE_INFO.SESSION_KEY
  is '��վsessionֵ';
comment on column BJVMMIS.TRIW_SITE_INFO.KEY_WORDS
  is '��վ�ؼ���';
comment on column BJVMMIS.TRIW_SITE_INFO.DESCRIPTION
  is '��վ����';
comment on column BJVMMIS.TRIW_SITE_INFO.HOST
  is '��վ������������';
comment on column BJVMMIS.TRIW_SITE_INFO.CLOSE_ANNOUNCE
  is '��վ�ر�֪ͨ';
comment on column BJVMMIS.TRIW_SITE_INFO.HOST_VISIT_ALLOW
  is '�޶��ɷ��ʵ�IP';
comment on column BJVMMIS.TRIW_SITE_INFO.WELCOME_STR
  is '��վ��ӭ��';
comment on column BJVMMIS.TRIW_SITE_INFO.SPACE_NAME
  is '�ռ�����';
comment on column BJVMMIS.TRIW_SITE_INFO.BBS_NAME
  is '��̳����';
comment on column BJVMMIS.TRIW_SITE_INFO.BBS_STATE
  is '��̳״̬';
comment on column BJVMMIS.TRIW_SITE_INFO.SPACE_STATE
  is '�ռ�״̬';
comment on column BJVMMIS.TRIW_SITE_INFO.STATIC_HTML_MODE
  is '���ɾ�̬�ļ�ģʽ';
comment on column BJVMMIS.TRIW_SITE_INFO.STYLE_ID_FOR_SITE
  is '��վ���ID';
comment on column BJVMMIS.TRIW_SITE_INFO.STYLE_ID_FOR_BBS
  is '��̳���ID';
comment on column BJVMMIS.TRIW_SITE_INFO.STYLE_ID_FOR_SPACE
  is '�ռ������ID';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_TITLE_FROM_SITE
  is 'MAIL_TITLE_FROM_SITE';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_BODY_FOR_REG
  is 'MAIL_BODY_FOR_REG';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_BODY_FOR_QA_ADD
  is 'MAIL_BODY_FOR_QA_ADD';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_BODY_FOR_QA_REPLY
  is 'MAIL_BODY_FOR_QA_REPLY';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_SMTP_SERVER
  is 'MAIL_SMTP_SERVER';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_SMTP_USER
  is 'MAIL_SMTP_USER';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_SMTP_PWS
  is 'MAIL_SMTP_PWS';
comment on column BJVMMIS.TRIW_SITE_INFO.MAIL_SENDER_ADDR
  is 'MAIL_SENDER_ADDR';
comment on column BJVMMIS.TRIW_SITE_INFO.FILE_UPLOAD_EXT_NAME
  is '�����ϴ����ļ�����';
comment on column BJVMMIS.TRIW_SITE_INFO.FILTER_WORDS
  is '���дʹ���';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_REG_ALLOW
  is '����ע��';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_REG_AUTO_PASSED
  is '���û�ע���Զ������֤';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_GROUP_OF_AUTO_PASSED
  is '���û�ע���Զ������û�������';
comment on column BJVMMIS.TRIW_SITE_INFO.SEND_MAIL_FOR_REG_USER_CONFIRM
  is '�Զ������ʼ����Ǽ��������ȷ��';
comment on column BJVMMIS.TRIW_SITE_INFO.ONE_MAIL_FOR_REG
  is 'һ��Email����ֻ����ע��һ���ʺ�';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_LOGIN_ALLOW
  is '�Ƿ������û���¼';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_GROUP_WHEN_NOT_LOG_ALLOW
  is '��ֹ��¼ʱ����ĳЩ�û����¼';
comment on column BJVMMIS.TRIW_SITE_INFO.ARTICLE_AUTO_PASS
  is '�û������Զ����';
comment on column BJVMMIS.TRIW_SITE_INFO.COMMENTS_OPEN
  is '���ۿ���';
comment on column BJVMMIS.TRIW_SITE_INFO.MODE_OF_COMMENT
  is '������ʾ����';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_GROUPS_FOR_STAT
  is '�û�����ͳ��ָ���û���';
comment on column BJVMMIS.TRIW_SITE_INFO.LICENSE_AGREEMENT
  is '�û�ע�����';
comment on column BJVMMIS.TRIW_SITE_INFO.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_INFO.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_SITE_INFO
  add constraint PK_TNWR_SITE_INFO primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_SITE_STYLE
prompt ==============================
prompt
create table BJVMMIS.TRIW_SITE_STYLE
(
  ID                             NUMBER not null,
  STYLE_NAME                     VARCHAR2(64),
  AUTHOR                         VARCHAR2(64),
  DESCRIPTION                    VARCHAR2(256),
  STATE                          NUMBER,
  LOCATION_SPLIT_STR             VARCHAR2(64),
  HREF_LINE_FORMAT_STR_OVER_ALL  VARCHAR2(4000),
  HREF_LINE_FOR_STR_WITH_SN      VARCHAR2(4000),
  MEDIA_PLAY_CODE1               CLOB,
  MEDIA_PLAY_CODE2               CLOB,
  MEDIA_PLAY_CODE3               CLOB,
  M_PLAY_OUT_LAYER_CODE_FOR_ATTP VARCHAR2(4000),
  M_PLAY_OUT_LAYER_CODE_FOR_ATTA VARCHAR2(4000),
  ATTACHMENT_LINE_SHOW_FOR_IMG   VARCHAR2(4000),
  ATTACHMENT_LINE_SHOW_FOR_DOWN  VARCHAR2(4000),
  ATTACHMENT_LINE_SHOW_FOR_PLAY  VARCHAR2(4000),
  LINE_BLOCK_FORMAT              VARCHAR2(512),
  COLUMN_BLOCK_FORMAT            VARCHAR2(512),
  PUBLIC_CODE1                   CLOB,
  PUBLIC_CODE2                   CLOB,
  PUBLIC_CODE3                   CLOB,
  PUBLIC_CODE4                   CLOB,
  CUSTOM_FORMAT_CODE1            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE2            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE3            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE4            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE5            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE6            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE7            VARCHAR2(4000),
  CUSTOM_FORMAT_CODE8            VARCHAR2(4000),
  AJAX_STR_FORMAT                VARCHAR2(512),
  RESULT_PAGE_CODE               CLOB,
  SELECT_OPTION_LOOP_CODE        VARCHAR2(512),
  LAST_ARTICLE_FORWARD_CODE      VARCHAR2(512),
  NEXT_ARTICLE_FORWARD_CODE      VARCHAR2(512),
  EYE_CATCHING_CODE              VARCHAR2(512),
  PASSED_STR                     VARCHAR2(4000),
  NO_PASSED_STR                  VARCHAR2(4000),
  NO_PASSED_ALT_STR              VARCHAR2(512),
  THREAD_AJAX_SHOW_STR           VARCHAR2(512),
  STAT_CODE                      VARCHAR2(4000),
  P_ID                           NUMBER,
  I_ID                           NUMBER,
  C_ID                           NUMBER,
  T_ID                           NUMBER,
  R_ID                           NUMBER,
  L_ID                           NUMBER,
  A_ID                           NUMBER,
  E_ID                           NUMBER,
  S_ID                           NUMBER,
  G_ID                           NUMBER,
  U_ID                           NUMBER,
  M_ID                           NUMBER,
  CREATE_TIME                    DATE,
  UPDATE_TIME                    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_SITE_STYLE
  is 'վ����ģ��';
comment on column BJVMMIS.TRIW_SITE_STYLE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.STYLE_NAME
  is 'ģ������';
comment on column BJVMMIS.TRIW_SITE_STYLE.AUTHOR
  is '����';
comment on column BJVMMIS.TRIW_SITE_STYLE.DESCRIPTION
  is '����';
comment on column BJVMMIS.TRIW_SITE_STYLE.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_SITE_STYLE.LOCATION_SPLIT_STR
  is '���طָ��ַ���';
comment on column BJVMMIS.TRIW_SITE_STYLE.HREF_LINE_FORMAT_STR_OVER_ALL
  is '�����и�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE.HREF_LINE_FOR_STR_WITH_SN
  is '����������и�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE.MEDIA_PLAY_CODE1
  is 'ý�����1';
comment on column BJVMMIS.TRIW_SITE_STYLE.MEDIA_PLAY_CODE2
  is 'ý�����2';
comment on column BJVMMIS.TRIW_SITE_STYLE.MEDIA_PLAY_CODE3
  is 'ý�����3';
comment on column BJVMMIS.TRIW_SITE_STYLE.M_PLAY_OUT_LAYER_CODE_FOR_ATTP
  is '����ҳý�岥�Ÿ�������';
comment on column BJVMMIS.TRIW_SITE_STYLE.M_PLAY_OUT_LAYER_CODE_FOR_ATTA
  is '��Ŀҳý�岥�Ÿ�������';
comment on column BJVMMIS.TRIW_SITE_STYLE.ATTACHMENT_LINE_SHOW_FOR_IMG
  is 'ͼƬ��ʾ����';
comment on column BJVMMIS.TRIW_SITE_STYLE.ATTACHMENT_LINE_SHOW_FOR_DOWN
  is '������ʾ';
comment on column BJVMMIS.TRIW_SITE_STYLE.ATTACHMENT_LINE_SHOW_FOR_PLAY
  is '������ʾ';
comment on column BJVMMIS.TRIW_SITE_STYLE.LINE_BLOCK_FORMAT
  is '�и�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE.COLUMN_BLOCK_FORMAT
  is '�и�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE1
  is '��������1';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE2
  is '��������2';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE3
  is '��������3';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE4
  is '��������4';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE1
  is '�Զ����ʽ����1';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE2
  is '�Զ����ʽ����2';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE3
  is '�Զ����ʽ����3';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE4
  is '�Զ����ʽ����4';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE5
  is '�Զ����ʽ����5';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE6
  is '�Զ����ʽ����6';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE7
  is '�Զ����ʽ����7';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE8
  is '�Զ����ʽ����8';
comment on column BJVMMIS.TRIW_SITE_STYLE.AJAX_STR_FORMAT
  is 'ajax�ַ�����ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE.RESULT_PAGE_CODE
  is '���ҳ����';
comment on column BJVMMIS.TRIW_SITE_STYLE.SELECT_OPTION_LOOP_CODE
  is '�б�ѡ��ѭ������';
comment on column BJVMMIS.TRIW_SITE_STYLE.LAST_ARTICLE_FORWARD_CODE
  is '�������ת�����';
comment on column BJVMMIS.TRIW_SITE_STYLE.NEXT_ARTICLE_FORWARD_CODE
  is '��һƪ����ת�����';
comment on column BJVMMIS.TRIW_SITE_STYLE.EYE_CATCHING_CODE
  is '��Ŀ�������';
comment on column BJVMMIS.TRIW_SITE_STYLE.PASSED_STR
  is 'ͨ���ַ�';
comment on column BJVMMIS.TRIW_SITE_STYLE.NO_PASSED_STR
  is '��ͨ���ַ�';
comment on column BJVMMIS.TRIW_SITE_STYLE.NO_PASSED_ALT_STR
  is '��ͨ����ʾ�ַ�';
comment on column BJVMMIS.TRIW_SITE_STYLE.THREAD_AJAX_SHOW_STR
  is '����ajax��ʾ�ַ�';
comment on column BJVMMIS.TRIW_SITE_STYLE.STAT_CODE
  is '״̬����';
comment on column BJVMMIS.TRIW_SITE_STYLE.P_ID
  is 'P_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.I_ID
  is 'I_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.C_ID
  is 'C_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.T_ID
  is 'T_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.R_ID
  is 'R_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.L_ID
  is 'L_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.A_ID
  is 'A_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.E_ID
  is 'E_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.S_ID
  is 'S_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.G_ID
  is 'G_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.U_ID
  is 'U_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.M_ID
  is 'M_ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_STYLE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_SITE_STYLE
  add constraint PK_TRIW_SITE_STYLE primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_SITE_STYLE_ELEMENT
prompt ======================================
prompt
create table BJVMMIS.TRIW_SITE_STYLE_ELEMENT
(
  ID                           NUMBER not null,
  HTML_TEMPLATE                CLOB,
  CSS_CODE                     CLOB,
  HTML_CODE                    CLOB,
  TOP_CODE                     CLOB,
  FOOTER_CODE                  CLOB,
  TARGET_STR                   VARCHAR2(512),
  TITLE_FORMAT                 VARCHAR2(512),
  HREF_LINE_FORMAT             CLOB,
  MEMBER_PANEL_CODE_FOR_LOGIN  CLOB,
  MEMBER_PANEL_CODE_FOR_LOGOUT CLOB,
  DATE_FORMAT_ON_LINE          VARCHAR2(512),
  DATE_FORMAT_IN_TEXT          VARCHAR2(512),
  MAJOR_LOOP_CODE_IN_LUMP      CLOB,
  MINOR_LOOP_CODE_IN_LUMP      CLOB,
  EDIT_AREA_CODE               CLOB,
  SEARCH_AREA_CODE             CLOB,
  SPECIAL_CODE1                CLOB,
  SPECIAL_CODE2                CLOB,
  SPECIAL_CODE3                CLOB,
  SPECIAL_CODE4                CLOB,
  FORM_TEMPLATE                CLOB,
  CREATE_TIME                  DATE,
  UPDATE_TIME                  DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_SITE_STYLE_ELEMENT
  is 'վ����ģ��Ԫ�ر�';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.HTML_TEMPLATE
  is 'htmlģ��';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.CSS_CODE
  is 'CSS����';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.HTML_CODE
  is 'html����';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.TOP_CODE
  is 'ͷ������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.FOOTER_CODE
  is '�ײ�����';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.TARGET_STR
  is 'Ŀ���ַ���';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.TITLE_FORMAT
  is '�����ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.HREF_LINE_FORMAT
  is '���Ӹ�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGIN
  is '�û���¼������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGOUT
  is '�û�ע��������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.DATE_FORMAT_ON_LINE
  is '�������ڸ�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.DATE_FORMAT_IN_TEXT
  is '�ı������ڸ�ʽ';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MAJOR_LOOP_CODE_IN_LUMP
  is '��ѭ������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MINOR_LOOP_CODE_IN_LUMP
  is '��ѭ������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.EDIT_AREA_CODE
  is '�༭�������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SEARCH_AREA_CODE
  is '�����������';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE1
  is '�������1';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE2
  is '�������2';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE3
  is '�������3';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE4
  is '�������4';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.FORM_TEMPLATE
  is '��Դģ��';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_SITE_STYLE_ELEMENT
  add constraint PK_TRIW_SITE_STYLE_ELEMENT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_SYS_ADMIN
prompt =============================
prompt
create table BJVMMIS.TRIW_SYS_ADMIN
(
  ID                  NUMBER not null,
  NAME                VARCHAR2(32),
  PASSWORD            VARCHAR2(32),
  SALT                VARCHAR2(64),
  LAST_LOGIN_IP       VARCHAR2(16),
  LAST_LOGIN_DATETIME DATE,
  STATE               NUMBER,
  CREATE_TIME         DATE,
  UPDATE_TIME         DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_SYS_ADMIN
  is '����Ա�û���';
comment on column BJVMMIS.TRIW_SYS_ADMIN.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_ADMIN.NAME
  is 'NAME';
comment on column BJVMMIS.TRIW_SYS_ADMIN.PASSWORD
  is 'PASSWORD';
comment on column BJVMMIS.TRIW_SYS_ADMIN.SALT
  is 'SALT';
comment on column BJVMMIS.TRIW_SYS_ADMIN.LAST_LOGIN_IP
  is 'LAST_LOGIN_IP';
comment on column BJVMMIS.TRIW_SYS_ADMIN.LAST_LOGIN_DATETIME
  is 'LAST_LOGIN_DATETIME';
comment on column BJVMMIS.TRIW_SYS_ADMIN.STATE
  is 'STATE';
comment on column BJVMMIS.TRIW_SYS_ADMIN.CREATE_TIME
  is 'CREATE_TIME';
comment on column BJVMMIS.TRIW_SYS_ADMIN.UPDATE_TIME
  is 'UPDATE_TIME';
alter table BJVMMIS.TRIW_SYS_ADMIN
  add constraint PK_TRIW_SYS_ADMIN primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRIW_SYS_CN_CHARACTER_UNICODE
prompt ============================================
prompt
create table BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE
(
  ID      NUMBER not null,
  CC      CHAR(4),
  UNICODE VARCHAR2(8),
  STROKES VARCHAR2(256)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE
  is '���ֱ����';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.CC
  is '���ĺ���';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.UNICODE
  is 'UNICODE����';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.STROKES
  is '�����ַ���';

prompt
prompt Creating table TRIW_SYS_GROUPS
prompt ==============================
prompt
create table BJVMMIS.TRIW_SYS_GROUPS
(
  ID                             NUMBER not null,
  GROUP_NAME                     VARCHAR2(32),
  POWER_MASK                     VARCHAR2(256),
  SITE_ART_GROUPS_SLT_CUSTOM_STR VARCHAR2(256),
  STATE                          NUMBER,
  USER_COUNT                     NUMBER,
  NUMBER_APPEAR_RESTRICT         NUMBER,
  PRIVATEHTML                    VARCHAR2(4000),
  CREATE_TIME                    DATE,
  UPDATE_TIME                    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_SYS_GROUPS
  is '�û�����Ϣ��';
comment on column BJVMMIS.TRIW_SYS_GROUPS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_GROUPS.GROUP_NAME
  is '�û�����';
comment on column BJVMMIS.TRIW_SYS_GROUPS.POWER_MASK
  is 'Ȩ����';
comment on column BJVMMIS.TRIW_SYS_GROUPS.SITE_ART_GROUPS_SLT_CUSTOM_STR
  is '�������ַ���';
comment on column BJVMMIS.TRIW_SYS_GROUPS.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_SYS_GROUPS.USER_COUNT
  is '�û���';
comment on column BJVMMIS.TRIW_SYS_GROUPS.NUMBER_APPEAR_RESTRICT
  is '�շ�������';
comment on column BJVMMIS.TRIW_SYS_GROUPS.PRIVATEHTML
  is '˽��html';
comment on column BJVMMIS.TRIW_SYS_GROUPS.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SYS_GROUPS.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_SYS_GROUPS
  add constraint PK_TNWR_SYS_GROUPS primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRIW_SYS_USERINF
prompt ===============================
prompt
create table BJVMMIS.TRIW_SYS_USERINF
(
  USER_ID            NUMBER not null,
  REG_TIMSTAMP       TIMESTAMP(6),
  TRUE_NAME          VARCHAR2(256),
  REG_IP             VARCHAR2(256),
  PET_NAME           VARCHAR2(256),
  SEX                CHAR(1),
  BIRTHDAY           DATE,
  DEPT               VARCHAR2(256),
  COUNTRY            VARCHAR2(256),
  PROVINCE           VARCHAR2(256),
  CITY               VARCHAR2(256),
  ADDRESS            VARCHAR2(256),
  PHONE              VARCHAR2(256),
  MOBILE             VARCHAR2(256),
  QQ                 VARCHAR2(256),
  MSN                VARCHAR2(256),
  PERSONAL_SIGNATURE VARCHAR2(256),
  QUESTION1          VARCHAR2(256),
  ANSWER1            VARCHAR2(256),
  QUESTION2          VARCHAR2(256),
  ANSWER2            VARCHAR2(256),
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE,
  ALL_SCORE          NUMBER,
  BBS_SCORE          NUMBER
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_SYS_USERINF
  is '�û���Ϣ��';
comment on column BJVMMIS.TRIW_SYS_USERINF.USER_ID
  is '�û�ID';
comment on column BJVMMIS.TRIW_SYS_USERINF.REG_TIMSTAMP
  is 'ע��ʱ��';
comment on column BJVMMIS.TRIW_SYS_USERINF.TRUE_NAME
  is '��ʵ����';
comment on column BJVMMIS.TRIW_SYS_USERINF.REG_IP
  is 'ע��IP��ַ';
comment on column BJVMMIS.TRIW_SYS_USERINF.PET_NAME
  is '�ǳ�';
comment on column BJVMMIS.TRIW_SYS_USERINF.SEX
  is '�Ա�';
comment on column BJVMMIS.TRIW_SYS_USERINF.BIRTHDAY
  is '����';
comment on column BJVMMIS.TRIW_SYS_USERINF.DEPT
  is '����';
comment on column BJVMMIS.TRIW_SYS_USERINF.COUNTRY
  is '����';
comment on column BJVMMIS.TRIW_SYS_USERINF.PROVINCE
  is 'ʡ��';
comment on column BJVMMIS.TRIW_SYS_USERINF.CITY
  is '����';
comment on column BJVMMIS.TRIW_SYS_USERINF.ADDRESS
  is '��ַ';
comment on column BJVMMIS.TRIW_SYS_USERINF.PHONE
  is '�绰';
comment on column BJVMMIS.TRIW_SYS_USERINF.MOBILE
  is '�ֻ�';
comment on column BJVMMIS.TRIW_SYS_USERINF.QQ
  is 'QQ';
comment on column BJVMMIS.TRIW_SYS_USERINF.MSN
  is 'MSN';
comment on column BJVMMIS.TRIW_SYS_USERINF.PERSONAL_SIGNATURE
  is '����ǩ��';
comment on column BJVMMIS.TRIW_SYS_USERINF.QUESTION1
  is '����1';
comment on column BJVMMIS.TRIW_SYS_USERINF.ANSWER1
  is '��1';
comment on column BJVMMIS.TRIW_SYS_USERINF.QUESTION2
  is '����2';
comment on column BJVMMIS.TRIW_SYS_USERINF.ANSWER2
  is '��2';
comment on column BJVMMIS.TRIW_SYS_USERINF.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SYS_USERINF.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SYS_USERINF.ALL_SCORE
  is '�û�����';
comment on column BJVMMIS.TRIW_SYS_USERINF.BBS_SCORE
  is '��̳����';
alter table BJVMMIS.TRIW_SYS_USERINF
  add constraint PK_TNWR_SYS_USERINF primary key (USER_ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRIW_SYS_USERS
prompt =============================
prompt
create table BJVMMIS.TRIW_SYS_USERS
(
  ID                     NUMBER not null,
  USER_NAME              VARCHAR2(32),
  REM_NAME               VARCHAR2(32),
  PASSWORD               VARCHAR2(32),
  SALT                   VARCHAR2(32),
  STATE                  NUMBER,
  EMAIL                  VARCHAR2(256),
  AVATAR_FILE            VARCHAR2(256),
  LAST_LOGIN_TIMSTAMP    TIMESTAMP(6),
  LAST_LOGIN_IP          VARCHAR2(256),
  REG_TIMSTAMP           TIMESTAMP(6),
  REG_IP                 VARCHAR2(256),
  UUID                   VARCHAR2(32),
  ARTICLE_THREADS_PASSED NUMBER,
  ARTICLE_THREADS_COUNT  NUMBER,
  GROUP_ID               NUMBER,
  CREATE_TIME            DATE,
  UPDATE_TIME            DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_SYS_USERS
  is 'ϵͳ�û���';
comment on column BJVMMIS.TRIW_SYS_USERS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_USERS.USER_NAME
  is '�û���';
comment on column BJVMMIS.TRIW_SYS_USERS.REM_NAME
  is '�û�����';
comment on column BJVMMIS.TRIW_SYS_USERS.PASSWORD
  is '����';
comment on column BJVMMIS.TRIW_SYS_USERS.SALT
  is 'SALT';
comment on column BJVMMIS.TRIW_SYS_USERS.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_SYS_USERS.EMAIL
  is '����';
comment on column BJVMMIS.TRIW_SYS_USERS.AVATAR_FILE
  is 'ͷ��';
comment on column BJVMMIS.TRIW_SYS_USERS.LAST_LOGIN_TIMSTAMP
  is '����¼ʱ��';
comment on column BJVMMIS.TRIW_SYS_USERS.LAST_LOGIN_IP
  is '����¼IP';
comment on column BJVMMIS.TRIW_SYS_USERS.REG_TIMSTAMP
  is 'ע��ʱ��';
comment on column BJVMMIS.TRIW_SYS_USERS.REG_IP
  is 'ע��IP';
comment on column BJVMMIS.TRIW_SYS_USERS.UUID
  is '�����';
comment on column BJVMMIS.TRIW_SYS_USERS.ARTICLE_THREADS_PASSED
  is '��������ͨ����';
comment on column BJVMMIS.TRIW_SYS_USERS.ARTICLE_THREADS_COUNT
  is '��������������';
comment on column BJVMMIS.TRIW_SYS_USERS.GROUP_ID
  is '�û���';
comment on column BJVMMIS.TRIW_SYS_USERS.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_SYS_USERS.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_SYS_USERS
  add constraint PK_TNWR_SYS_USERS primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRIW_VOTE_OTHERINFO
prompt ==================================
prompt
create table BJVMMIS.TRIW_VOTE_OTHERINFO
(
  ID                 NUMBER not null,
  VOTE_OTHER_CONTENT VARCHAR2(512),
  VOTE_SUBITEM_ID    NUMBER,
  USER_ID            NUMBER,
  CREATE_TIME        DATE,
  UPDATE_TIME        DATE,
  VOTE_SUBJECT_ID    NUMBER
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_VOTE_OTHERINFO
  is 'ͶƱ��������ѡ����Ϣ��';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.VOTE_OTHER_CONTENT
  is '����ѡ������';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.VOTE_SUBITEM_ID
  is 'ͶƱ����ID';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.USER_ID
  is '�û�ID';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.VOTE_SUBJECT_ID
  is 'ͶƱ��ĿID';
alter table BJVMMIS.TRIW_VOTE_OTHERINFO
  add constraint PK_TRIW_VOTE_OTHERINFO primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRIW_VOTE_RESULT
prompt ===============================
prompt
create table BJVMMIS.TRIW_VOTE_RESULT
(
  ID              NUMBER not null,
  VOTE_SUBITEM_ID NUMBER,
  VOTE_OPTION     VARCHAR2(1024),
  VOTE_COUNT      NUMBER,
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE,
  VOTE_SUBJECT_ID NUMBER
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_VOTE_RESULT
  is 'ͶƱ����������ݱ�';
comment on column BJVMMIS.TRIW_VOTE_RESULT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_SUBITEM_ID
  is 'ͶƱ����ID';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_OPTION
  is 'ͶƱѡ��';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_COUNT
  is 'Ʊ��';
comment on column BJVMMIS.TRIW_VOTE_RESULT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_RESULT.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_SUBJECT_ID
  is 'ͶƱ��ĿID';
alter table BJVMMIS.TRIW_VOTE_RESULT
  add constraint PK_TRIW_VOTE_RESULT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_VOTE_STYLE
prompt ==============================
prompt
create table BJVMMIS.TRIW_VOTE_STYLE
(
  ID               NUMBER not null,
  TITLE            VARCHAR2(64),
  STATE            NUMBER,
  AUTHOR           VARCHAR2(64),
  DESCRIPTION      VARCHAR2(256),
  BAR_MAX_VALUE    VARCHAR2(8),
  RESULT_PAGE_CODE CLOB,
  PUBLIC_CODE1     CLOB,
  PUBLIC_CODE2     CLOB,
  PUBLIC_CODE3     CLOB,
  PUBLIC_CODE4     CLOB,
  P_ID             NUMBER,
  V_ID             NUMBER,
  I_ID             NUMBER,
  R_ID             NUMBER,
  J_ID             NUMBER,
  CREATE_TIME      DATE,
  UPDATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_VOTE_STYLE
  is 'ͶƱ���ģ���';
comment on column BJVMMIS.TRIW_VOTE_STYLE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.TITLE
  is '����';
comment on column BJVMMIS.TRIW_VOTE_STYLE.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_VOTE_STYLE.AUTHOR
  is '����';
comment on column BJVMMIS.TRIW_VOTE_STYLE.DESCRIPTION
  is '˵��';
comment on column BJVMMIS.TRIW_VOTE_STYLE.BAR_MAX_VALUE
  is '��ǩ���ֵ';
comment on column BJVMMIS.TRIW_VOTE_STYLE.RESULT_PAGE_CODE
  is '���ҳ����';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE1
  is '��������1';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE2
  is '��������2';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE3
  is '��������3';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE4
  is '��������4';
comment on column BJVMMIS.TRIW_VOTE_STYLE.P_ID
  is 'P_ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.V_ID
  is 'V_ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.I_ID
  is 'I_ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.R_ID
  is 'R_ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.J_ID
  is 'J_ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_STYLE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_VOTE_STYLE
  add constraint PK_VOTE_STYLE primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FK7D0B7C1CD5CDEF07 on BJVMMIS.TRIW_VOTE_STYLE (I_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FK7D0B7C1CD5CDF2C8 on BJVMMIS.TRIW_VOTE_STYLE (J_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FK7D0B7C1CD5CE094E on BJVMMIS.TRIW_VOTE_STYLE (P_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FK7D0B7C1CD5CE10D0 on BJVMMIS.TRIW_VOTE_STYLE (R_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FK7D0B7C1CD5CE1FD4 on BJVMMIS.TRIW_VOTE_STYLE (V_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_VOTE_STYLE_ELEMENT
prompt ======================================
prompt
create table BJVMMIS.TRIW_VOTE_STYLE_ELEMENT
(
  ID                           NUMBER not null,
  HTML_TEMPLATE                CLOB,
  CSS_CODE                     CLOB,
  HTML_CODE                    CLOB,
  TOP_CODE                     CLOB,
  FOOTER_CODE                  CLOB,
  MEMBER_PANEL_CODE_FOR_LOGIN  CLOB,
  MEMBER_PANEL_CODE_FOR_LOGOUT CLOB,
  ITEMS_LOOP_FORMAT            CLOB,
  LINE_CODE_FORMAT             CLOB,
  TITLE_FORMAT                 VARCHAR2(256),
  HREF_LINE_FORMAT             CLOB,
  SPECIAL_CODE1                CLOB,
  SPECIAL_CODE2                CLOB,
  SPECIAL_CODE3                CLOB,
  SPECIAL_CODE4                CLOB,
  CREATE_TIME                  DATE,
  UPDATE_TIME                  DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_VOTE_STYLE_ELEMENT
  is 'ͶƱ���ģ��Ԫ�ر�';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.HTML_TEMPLATE
  is 'htmlģ��';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.CSS_CODE
  is 'CSS����';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.HTML_CODE
  is 'html����';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.TOP_CODE
  is 'ͷ������';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.FOOTER_CODE
  is '�ײ�����';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGIN
  is '�û���¼������';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGOUT
  is '�û�ע��������';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.ITEMS_LOOP_FORMAT
  is '�б�ѭ����ʽ';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.LINE_CODE_FORMAT
  is '�д����ʽ';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.TITLE_FORMAT
  is '�����ʽ';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.HREF_LINE_FORMAT
  is '�����Ӹ�ʽ';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE1
  is '�������1';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE2
  is '�������2';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE3
  is '�������3';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE4
  is '�������4';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_VOTE_STYLE_ELEMENT
  add constraint PK_VOTE_STYLE_ELEMENT primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_VOTE_SUBITEMS
prompt =================================
prompt
create table BJVMMIS.TRIW_VOTE_SUBITEMS
(
  ID               NUMBER not null,
  VOTE_TITLE       VARCHAR2(256),
  VOTE_CONTENT     VARCHAR2(4000),
  VOTE_WAY         NUMBER(1),
  VOTE_SUBID       NUMBER,
  STATE            NUMBER(1) default 0,
  VOTE_OTHER       NUMBER(1) default 0,
  VOTE_MAXOPTION   NUMBER(2) default 1,
  CREATE_TIME      DATE,
  UPDATE_TIME      DATE,
  VOTE_DESCRIPTION VARCHAR2(4000)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_VOTE_SUBITEMS
  is 'ͶƱ�����';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_TITLE
  is 'ͶƱ����';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_CONTENT
  is 'ͶƱ����';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_WAY
  is 'ͶƱ��ʽ��1Ϊ��ѡ��2Ϊ��ѡ';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_SUBID
  is '������Ŀ';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.STATE
  is '״̬��0Ϊ��������1Ϊ������2Ϊ�ر�';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_OTHER
  is '����ѡ�0Ϊ���������1Ϊ��������';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_MAXOPTION
  is '����ѡ����Ŀ';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_DESCRIPTION
  is '����';
alter table BJVMMIS.TRIW_VOTE_SUBITEMS
  add constraint PK_TRIW_VOTE_SUBITEMS primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_VOTE_SUBS
prompt =============================
prompt
create table BJVMMIS.TRIW_VOTE_SUBS
(
  ID                      NUMBER(8) not null,
  TITLE                   VARCHAR2(128) not null,
  SEC_STR                 VARCHAR2(32),
  CREATE_TIME             DATE,
  SIGN_START_TIME         DATE,
  SIGN_END_TIME           DATE,
  VOTE_START_TIME         DATE,
  VOTE_END_TIME           DATE,
  UPPER_LIMIT             NUMBER,
  FULL_UPPER_CONSTRAINT   NUMBER,
  IP_AREA                 VARCHAR2(256),
  HOURS_AT_IP_RULE        NUMBER,
  HOURS_AT_MACHINE_RULE   NUMBER,
  USE_VERIFY_CODE         NUMBER,
  IDENTITY_RULE           NUMBER,
  PHONE_CODE_RULE         NUMBER,
  POSTER_NAME_CCU_CHK     NUMBER,
  STATE                   NUMBER,
  OPEN_RESULT             NUMBER,
  NET_JOIN                NUMBER,
  NET_JOIN_MUST_BE_MEMBER NUMBER,
  NET_JOIN_AUTO_PASSED    NUMBER,
  MES_AUTO_PASSED         NUMBER,
  SALT                    VARCHAR2(6),
  VOTE_PASSWORD           VARCHAR2(256),
  ORDER_TYPE              NUMBER,
  PERCENT                 NUMBER,
  STYLE_ID                NUMBER,
  UPDATE_TIME             DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TRIW_VOTE_SUBS
  is 'ͶƱ��Ŀ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_SUBS.TITLE
  is '����';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SEC_STR
  is '��Կ';
comment on column BJVMMIS.TRIW_VOTE_SUBS.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SIGN_START_TIME
  is '������ʼʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SIGN_END_TIME
  is '��������ʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.VOTE_START_TIME
  is 'ͶƱ��ʼʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.VOTE_END_TIME
  is 'ͶƱ����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.UPPER_LIMIT
  is '���ͶƱ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.FULL_UPPER_CONSTRAINT
  is 'ǿ��Ͷ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.IP_AREA
  is 'IP����';
comment on column BJVMMIS.TRIW_VOTE_SUBS.HOURS_AT_IP_RULE
  is 'IPͶƱʱ������';
comment on column BJVMMIS.TRIW_VOTE_SUBS.HOURS_AT_MACHINE_RULE
  is '����ͶƱʱ������';
comment on column BJVMMIS.TRIW_VOTE_SUBS.USE_VERIFY_CODE
  is '�Ƿ�ʹ����֤��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.IDENTITY_RULE
  is '�Ƿ����ǿ�Ƽ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.PHONE_CODE_RULE
  is '�Ƿ�绰����ǿ�Ƽ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.POSTER_NAME_CCU_CHK
  is '�Ƿ����ļ��ͶƱ������';
comment on column BJVMMIS.TRIW_VOTE_SUBS.STATE
  is '״̬';
comment on column BJVMMIS.TRIW_VOTE_SUBS.OPEN_RESULT
  is '�Ƿ�����鿴���';
comment on column BJVMMIS.TRIW_VOTE_SUBS.NET_JOIN
  is '�Ƿ��������ϱ���';
comment on column BJVMMIS.TRIW_VOTE_SUBS.NET_JOIN_MUST_BE_MEMBER
  is '������ϱ����Ƿ�һ��Ҫ�ǻ�Ա';
comment on column BJVMMIS.TRIW_VOTE_SUBS.NET_JOIN_AUTO_PASSED
  is '���ϱ����Ƿ��Զ�ͨ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.MES_AUTO_PASSED
  is 'ͶƱʱ�����Ƿ��Զ�ͨ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SALT
  is 'SALT';
comment on column BJVMMIS.TRIW_VOTE_SUBS.VOTE_PASSWORD
  is '����ͶƱ';
comment on column BJVMMIS.TRIW_VOTE_SUBS.ORDER_TYPE
  is '����ʽ';
comment on column BJVMMIS.TRIW_VOTE_SUBS.PERCENT
  is '�Ʒְٷֱ�';
comment on column BJVMMIS.TRIW_VOTE_SUBS.STYLE_ID
  is '���ģ��';
comment on column BJVMMIS.TRIW_VOTE_SUBS.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TRIW_VOTE_SUBS
  add constraint PK_VOTE_SUBS primary key (ID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index BJVMMIS.FKC4AB268E3C771C3 on BJVMMIS.TRIW_VOTE_SUBS (STYLE_ID)
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TRIW_VOTE_USERS
prompt ==============================
prompt
create table BJVMMIS.TRIW_VOTE_USERS
(
  ID              NUMBER,
  VOTE_SUBITEM_ID NUMBER,
  VOTE_SUBID      NUMBER,
  USER_ID         NUMBER,
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TRIW_VOTE_USERS
  is 'ͶƱ�û���';
comment on column BJVMMIS.TRIW_VOTE_USERS.ID
  is 'id';
comment on column BJVMMIS.TRIW_VOTE_USERS.VOTE_SUBITEM_ID
  is 'ͶƱ����ID';
comment on column BJVMMIS.TRIW_VOTE_USERS.VOTE_SUBID
  is 'ͶƱ��ĿID';
comment on column BJVMMIS.TRIW_VOTE_USERS.USER_ID
  is '�û�ID';
comment on column BJVMMIS.TRIW_VOTE_USERS.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TRIW_VOTE_USERS.UPDATE_TIME
  is '����ʱ��';

prompt
prompt Creating table TR_RPT_REPAIR_ENTERPRISE
prompt =======================================
prompt
create table BJVMMIS.TR_RPT_REPAIR_ENTERPRISE
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_NAME VARCHAR2(128),
  REGION          VARCHAR2(32),
  JY_ADDRESS      VARCHAR2(128),
  JD_TYPE         VARCHAR2(32),
  ACCTG_METH      VARCHAR2(32),
  LEGAL_PERS      VARCHAR2(20),
  ID              VARCHAR2(32),
  REPAIR_TEL      VARCHAR2(32),
  PHONE_NUM       VARCHAR2(16),
  REPAIR_FAX      VARCHAR2(32),
  EMAIL           VARCHAR2(128),
  PSTL_NUM        VARCHAR2(8),
  BUS_TEL         VARCHAR2(16),
  MGRAREA         VARCHAR2(1024),
  PRK_AREA        NUMBER(16,3),
  PLANT_AREA      NUMBER(16,3),
  RPT_AREA        NUMBER(16,3),
  ZD_AREA         NUMBER(16,3),
  FUND_TOTAL      NUMBER(16,3),
  REG_TOTAL       NUMBER(16,3),
  FIX_TOTAL       NUMBER(16,3),
  FLOW_TOTAL      NUMBER(16,3),
  OPEN_TIME       DATE,
  MARK_NUM        VARCHAR2(32),
  PRMT_NUM        VARCHAR2(32),
  BUS_NUM         VARCHAR2(32),
  MJR_MODEL       VARCHAR2(256),
  CHG_TIME        DATE,
  PRMT_END_TIME   DATE,
  PRMT_CONT_TIME  VARCHAR2(32),
  COM_STATUS      NUMBER(2),
  ROOM_AREA       NUMBER(16,3),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE,
  MARK_BRAND      VARCHAR2(64),
  IFAID           NUMBER(2),
  IFAID_CAR       NUMBER(2),
  IFFBK           NUMBER(2),
  IFVST           NUMBER(2),
  SERV_PHONE      VARCHAR2(32),
  AID_MODEL       VARCHAR2(128),
  PRMT_START_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPAIR_ENTERPRISE
  is 'ά����ҵ������Ϣ(����ϵͳ�ͺ˶Ա�)';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.OID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REGION
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.JY_ADDRESS
  is '��Ӫ��ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.JD_TYPE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ACCTG_METH
  is '������ʽ';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.LEGAL_PERS
  is '����������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ID
  is '���֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REPAIR_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PHONE_NUM
  is '�ֻ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REPAIR_FAX
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.EMAIL
  is 'EMAIL';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PSTL_NUM
  is '�������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.BUS_TEL
  is 'ҵ��绰';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MGRAREA
  is '��ɾ�Ӫ��Χ';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRK_AREA
  is 'ͣ�������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PLANT_AREA
  is '�����������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.RPT_AREA
  is '�Ӵ������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ZD_AREA
  is 'ռ�����';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.FUND_TOTAL
  is '�ʽ��ܶ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REG_TOTAL
  is 'ע���ʽ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.FIX_TOTAL
  is '�̶��ʽ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.FLOW_TOTAL
  is '�����ʽ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.OPEN_TIME
  is '��ҵʱ��';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MARK_NUM
  is '��־�ƺ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_NUM
  is '��Ӫ���֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.BUS_NUM
  is '����ִ�պ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MJR_MODEL
  is '���޳���';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.CHG_TIME
  is '���ʱ��';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_END_TIME
  is '���֤��Ч����';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_CONT_TIME
  is '���֤��������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.COM_STATUS
  is '��ҵ״̬
1ע����2������3Ъҵ��4��Ч��5��Ч';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ROOM_AREA
  is '�ܳ�ά�޼�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MARK_BRAND
  is '��־��(����)';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFAID
  is '����24Сʱ��Ԯ�ƶ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFAID_CAR
  is '���޾�Ԯ����ר�ó�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFFBK
  is '���޿ͻ���������ƶ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFVST
  is '���޿ͻ��ط��ƶ�';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.SERV_PHONE
  is '24Сʱ����绰';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.AID_MODEL
  is '��Ԯ���񳵳���';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_START_TIME
  is '���֤��Ч����';
alter table BJVMMIS.TR_RPT_REPAIR_ENTERPRISE
  add constraint PK_REPAIR_ENTERPRISE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_RPT_ENTERPRISE_VERIFY
prompt =======================================
prompt
create table BJVMMIS.TR_RPT_ENTERPRISE_VERIFY
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  PRMT_NUM        VARCHAR2(32),
  REGION          VARCHAR2(32),
  JY_ADDRESS      VARCHAR2(128),
  JD_TYPE         VARCHAR2(16),
  ACCTG_METH      VARCHAR2(16),
  LEGAL_PERS      VARCHAR2(20),
  ID              VARCHAR2(32),
  REPAIR_TEL      VARCHAR2(32),
  PHONE_NUM       VARCHAR2(16),
  REPAIR_FAX      VARCHAR2(32),
  EMAIL           VARCHAR2(64),
  PSTL_NUM        VARCHAR2(8),
  BUS_TEL         VARCHAR2(16),
  MGRAREA         VARCHAR2(32),
  PRK_AREA        NUMBER(16,3),
  PLANT_AREA      NUMBER(16,3),
  RPT_AREA        NUMBER(16,3),
  ZD_AREA         NUMBER(16,3),
  FUND_TOTAL      NUMBER(16,3),
  REG_TOTAL       NUMBER(16,3),
  FIX_TOTAL       NUMBER(16,3),
  FLOW_TOTAL      NUMBER(16,3),
  OPEN_TIME       DATE,
  DESCRIBE        VARCHAR2(4000),
  UPLOAD_TIME     DATE,
  COM_STATUS      NUMBER(2),
  CHECK_NUM       NUMBER(4),
  PRMT_END_TIME   DATE,
  PRMT_CONT_TIME  VARCHAR2(32),
  SCRN_STATUS     NUMBER(2) default 0,
  ROOM_AREA       NUMBER(4),
  MARK_BRAND      VARCHAR2(64),
  BUS_NUM         VARCHAR2(32),
  IFAID           NUMBER(2),
  IFAID_CAR       NUMBER(2),
  IFFBK           NUMBER(2),
  IFVST           NUMBER(2),
  SERV_PHONE      VARCHAR2(32),
  AID_MODEL       VARCHAR2(128),
  REMARK          VARCHAR2(256),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE,
  PRMT_START_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_ENTERPRISE_VERIFY
  is '������ά�޾�Ӫ��ɵǼ���Ϣ�˶Ա� ';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.OID
  is '�˶�ID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_NUM
  is '��Ӫ���֤��';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REGION
  is '��������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.JY_ADDRESS
  is '��Ӫ��ַ';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.JD_TYPE
  is '��������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ACCTG_METH
  is '������ʽ';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.LEGAL_PERS
  is '����������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ID
  is '���֤��';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REPAIR_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PHONE_NUM
  is '�ֻ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REPAIR_FAX
  is '����';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.EMAIL
  is 'EMAIL';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PSTL_NUM
  is '�������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.BUS_TEL
  is 'ҵ����ϵ�绰';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.MGRAREA
  is '��ɾ�Ӫ��Χ';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRK_AREA
  is 'ͣ�������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PLANT_AREA
  is '�����������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.RPT_AREA
  is '�Ӵ������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ZD_AREA
  is 'ռ�����';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.FUND_TOTAL
  is '�ʽ��ܶ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REG_TOTAL
  is 'ע���ʽ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.FIX_TOTAL
  is '�̶��ʽ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.FLOW_TOTAL
  is '�����ʽ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.OPEN_TIME
  is '��ҵʱ��';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.DESCRIBE
  is '��Ӫ���������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.UPLOAD_TIME
  is '�ϱ�����';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.COM_STATUS
  is '��ҵ״̬
1ע����2������3Ъҵ��4��Ч��5��Ч';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.CHECK_NUM
  is '�˶Դ���';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_END_TIME
  is '���֤��Ч����';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_CONT_TIME
  is '���֤��������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.SCRN_STATUS
  is 'ɸѡ״̬
��������ɸѡ��ҵ����ɸѡ֮ǰɸѡ״̬�ֶθ���Ϊ0��1����ҵɸѡ��2����ҵ�ϱ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ROOM_AREA
  is '�ܳ�ά�޼�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.MARK_BRAND
  is '��־��';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.BUS_NUM
  is '����ִ�պ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFAID
  is '����24Сʱ��Ԯ�ƶ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFAID_CAR
  is '���޾�Ԯ����ר�ó�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFFBK
  is '���޿ͻ���������ƶ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFVST
  is '���޿ͻ��ط��ƶ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.SERV_PHONE
  is '24Сʱ����绰';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.AID_MODEL
  is '��Ԯ���񳵳���';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_START_TIME
  is '���֤��Ч����';
alter table BJVMMIS.TR_RPT_ENTERPRISE_VERIFY
  add constraint PK_ENTERPRISE_VERIFY primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_ENTERPRISE_VERIFY
  add constraint FK_TR_RPT_E_REFERENCE_TR_RPT29 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_ADVICE
prompt ========================
prompt
create table BJVMMIS.TR_ADVICE
(
  OID             VARCHAR2(32) not null,
  TITLE           VARCHAR2(128),
  CONSULT_PERS    VARCHAR2(64),
  CONSULT_CONTENT VARCHAR2(4000),
  CONSULT_TIME    DATE,
  CONSULT_RSLT    VARCHAR2(1024),
  ENTERPRISE_ID   VARCHAR2(32),
  RPLY_TIME       DATE,
  RPLY_PERS       VARCHAR2(64),
  STATUS          NUMBER(2),
  VLD_PERS        VARCHAR2(64),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_ADVICE
  is '��ѯ�뽨��';
comment on column BJVMMIS.TR_ADVICE.OID
  is '��ѯID';
comment on column BJVMMIS.TR_ADVICE.TITLE
  is '����';
comment on column BJVMMIS.TR_ADVICE.CONSULT_PERS
  is '��ѯ��';
comment on column BJVMMIS.TR_ADVICE.CONSULT_CONTENT
  is '��ѯ����';
comment on column BJVMMIS.TR_ADVICE.CONSULT_TIME
  is '��ѯʱ��';
comment on column BJVMMIS.TR_ADVICE.CONSULT_RSLT
  is '��ѯ���';
comment on column BJVMMIS.TR_ADVICE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_ADVICE.RPLY_TIME
  is '�ظ�ʱ��';
comment on column BJVMMIS.TR_ADVICE.RPLY_PERS
  is '�ظ���';
comment on column BJVMMIS.TR_ADVICE.STATUS
  is '���״̬';
comment on column BJVMMIS.TR_ADVICE.VLD_PERS
  is '�����';
comment on column BJVMMIS.TR_ADVICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_ADVICE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_ADVICE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_ADVICE
  add constraint PK_TR_ADVICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_ADVICE
  add constraint FK_TR_ADVIC_REFERENCE_TR_RPT_E foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_ENTERPRISE_VERIFY (OID);

prompt
prompt Creating table TR_ATTACHMENT
prompt ============================
prompt
create table BJVMMIS.TR_ATTACHMENT
(
  OID              VARCHAR2(32) not null,
  FILE_ID          VARCHAR2(32),
  FILE_URL         VARCHAR2(256),
  FILENAME         VARCHAR2(128),
  ORG_FILENAME     VARCHAR2(256),
  FILE_SIZE        VARCHAR2(64),
  ANNEX_TYPE       VARCHAR2(64),
  INDX             NUMBER(18),
  EXTENTION        VARCHAR2(32),
  UPLOADER         VARCHAR2(64),
  UPLOAD_TIME      DATE,
  FILE_CREATE_TIME DATE,
  FILE_CREATE_ADDR VARCHAR2(256),
  FILE_CREATE_COND VARCHAR2(256),
  REMARK           VARCHAR2(1024),
  CREATE_TIME      DATE,
  UPDATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_ATTACHMENT
  is '������';
comment on column BJVMMIS.TR_ATTACHMENT.OID
  is '����id';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_URL
  is '������ַ';
comment on column BJVMMIS.TR_ATTACHMENT.FILENAME
  is '�洢�ļ���';
comment on column BJVMMIS.TR_ATTACHMENT.ORG_FILENAME
  is 'ԭʼ�ļ���';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_SIZE
  is '�ļ���С���ֽڣ�';
comment on column BJVMMIS.TR_ATTACHMENT.ANNEX_TYPE
  is '��������
1ά����ҵ��ܡ�2��ҵ����';
comment on column BJVMMIS.TR_ATTACHMENT.INDX
  is '˳���';
comment on column BJVMMIS.TR_ATTACHMENT.EXTENTION
  is '��׺��';
comment on column BJVMMIS.TR_ATTACHMENT.UPLOADER
  is '�ϴ���';
comment on column BJVMMIS.TR_ATTACHMENT.UPLOAD_TIME
  is '�ϴ�����';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_CREATE_TIME
  is '�ļ�����ʱ��';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_CREATE_ADDR
  is '�ļ������ص�';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_CREATE_COND
  is '�ļ���������';
comment on column BJVMMIS.TR_ATTACHMENT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_ATTACHMENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_ATTACHMENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_ATTACHMENT
  add constraint PK_TR_ATTACHMENT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_JG_CHECK
prompt ==============================
prompt
create table BJVMMIS.TR_TMG_JG_CHECK
(
  OID             VARCHAR2(32) not null,
  PLAN_DETL_ID    VARCHAR2(32),
  ENTERPRISE_ID   VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  PRMT_NUM        VARCHAR2(32),
  CHECK_TIME      DATE,
  CHECK_RESULT    NUMBER(2),
  STATUS          NUMBER(2),
  MGR_ID          VARCHAR2(32),
  CHK_TYPE        NUMBER(2),
  CHECK_ADRRICE   VARCHAR2(256),
  CHK_TEAM_PERS   VARCHAR2(64),
  ESCORT_PERS     VARCHAR2(64),
  REMARK          VARCHAR2(1024),
  UPDATE_TIME     DATE,
  CREATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_JG_CHECK
  is '��ܼ��� ';
comment on column BJVMMIS.TR_TMG_JG_CHECK.OID
  is '��ܼ��ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK.PLAN_DETL_ID
  is '���ƻ���ϸID';
comment on column BJVMMIS.TR_TMG_JG_CHECK.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_JG_CHECK.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_TMG_JG_CHECK.PRMT_NUM
  is '���֤��';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHECK_TIME
  is '�������';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHECK_RESULT
  is '�����
������������';
comment on column BJVMMIS.TR_TMG_JG_CHECK.STATUS
  is '���״̬
���ڸ����С����ĸ����С������������ϸ�';
comment on column BJVMMIS.TR_TMG_JG_CHECK.MGR_ID
  is '�����';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHK_TYPE
  is '������
�ƻ���顢ר���顢�ص��顢�ٱ���Ͷ�߼�顢��ɵǼ���Ϣ�˶ԡ�������顣';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHECK_ADRRICE
  is '���ص�';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHK_TEAM_PERS
  is '���С�鸺����';
comment on column BJVMMIS.TR_TMG_JG_CHECK.ESCORT_PERS
  is '��ͬ�����ҵ������';
comment on column BJVMMIS.TR_TMG_JG_CHECK.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_JG_CHECK.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_JG_CHECK
  add constraint PK_JG_CHECK primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_TMG_JG_CHECK
  add constraint FK_TR_TMG_J_REFERENCE_TR_RPT_E foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_ENTERPRISE_VERIFY (OID);

prompt
prompt Creating table TR_CRD_COMPLAINT
prompt ===============================
prompt
create table BJVMMIS.TR_CRD_COMPLAINT
(
  OID              VARCHAR2(32) not null,
  ENTERPRISE_ID    VARCHAR2(32),
  CHECK_ID         VARCHAR2(32),
  REPAIR_ID        VARCHAR2(32),
  FILE_ID          VARCHAR2(32),
  COMT_TIME        DATE,
  COMT_PSN         VARCHAR2(20),
  TSID_NUM         VARCHAR2(32),
  COMT_CONT        VARCHAR2(1024),
  COMT_PHONE       VARCHAR2(32),
  COMT_TEL         VARCHAR2(32),
  EMAIL            VARCHAR2(128),
  ACPT_DEPT        VARCHAR2(256),
  COMT_METH        VARCHAR2(8),
  EXP_MEDIA        VARCHAR2(128),
  SOCIAL_YX        VARCHAR2(1024),
  TREAT_RESULT     VARCHAR2(128),
  NUM              NUMBER(4),
  COMT_TYPE        NUMBER(2),
  CL_STATUS        NUMBER(2),
  COMPLAINT_STATUS NUMBER(2),
  SRC_MODE         NUMBER(2),
  REMARK           VARCHAR2(1024),
  UPDATE_TIME      DATE,
  CREATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_COMPLAINT
  is 'Ͷ�������';
comment on column BJVMMIS.TR_CRD_COMPLAINT.OID
  is 'Ͷ��ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.REPAIR_ID
  is 'ά�޼�¼';
comment on column BJVMMIS.TR_CRD_COMPLAINT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_TIME
  is 'Ͷ��ʱ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_PSN
  is 'Ͷ����';
comment on column BJVMMIS.TR_CRD_COMPLAINT.TSID_NUM
  is 'Ͷ�����֤��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_CONT
  is 'Ͷ������';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_PHONE
  is 'Ͷ�����ֻ�';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_CRD_COMPLAINT.EMAIL
  is 'Ͷ����EMAIL';
comment on column BJVMMIS.TR_CRD_COMPLAINT.ACPT_DEPT
  is '������';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_METH
  is 'Ͷ�߷�ʽ
�绰���ʼ���';
comment on column BJVMMIS.TR_CRD_COMPLAINT.EXP_MEDIA
  is '�ع�ý��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.SOCIAL_YX
  is '���Ӱ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.TREAT_RESULT
  is '���ý��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.NUM
  is '�ܷ���';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_TYPE
  is 'Ͷ�߷���
ά���������۸񡢷�������������Ͷ��(������Ͷ�������ʵ������Ҫ��֪Ͷ���˽��)
����Ͷ�ߣ���ȫ�¹�Ͷ�߲���Ϊ����Ͷ�ߣ���ȫ�¹ʴ������̣�';
comment on column BJVMMIS.TR_CRD_COMPLAINT.CL_STATUS
  is '����״̬
�ȴ����������С��������

�������ʱ������ҵ������Աѡ�������ҵ��ͬʱ����ѡ��ٱ�״̬��ѡ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMPLAINT_STATUS
  is 'Ͷ��״̬���Ƿ���Ч��';
comment on column BJVMMIS.TR_CRD_COMPLAINT.SRC_MODE
  is '��Դ��ʽ����������������ӣ�';
comment on column BJVMMIS.TR_CRD_COMPLAINT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_COMPLAINT.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_COMPLAINT.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_COMPLAINT
  add constraint PK_COMPLAINT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_COMPLAINT
  add constraint FK_TR_CRD_C_REFERENCE_TR_TMG_J foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_CRD_ANLS_ADVICE
prompt =================================
prompt
create table BJVMMIS.TR_CRD_ANLS_ADVICE
(
  OID             VARCHAR2(32) not null,
  COMPLAINT_ID    VARCHAR2(32),
  QZ_NAME         VARCHAR2(32),
  XCQZ_REC        VARCHAR2(1024),
  QZ_REC          VARCHAR2(32),
  QZ_TIME         DATE,
  SKILL_RECORD    VARCHAR2(1024),
  ANLS_REC        VARCHAR2(32),
  ANLS_TIME       DATE,
  COMPLAIN_IDEA   VARCHAR2(1024),
  TIME_THREE      DATE,
  UNCOMPLAIN_IDEA VARCHAR2(1024),
  BT_TIME         DATE,
  ADM_IDEA        VARCHAR2(1024),
  FIVE_TIME       DATE,
  REMARK          VARCHAR2(1024),
  UPDATE_TIME     DATE,
  CREATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_ANLS_ADVICE
  is '�ֳ�ȡ֤�ͼ������������';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.OID
  is '�������������ID';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.COMPLAINT_ID
  is 'Ͷ����ϢID';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.QZ_NAME
  is 'ȡ֤��Ա';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.XCQZ_REC
  is '��¼��Ϣ';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.QZ_REC
  is '��¼��1';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.QZ_TIME
  is '��¼����';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.SKILL_RECORD
  is '����������¼';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.ANLS_REC
  is '��¼��2';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.ANLS_TIME
  is '����2';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.COMPLAIN_IDEA
  is 'Ͷ�߷����';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.TIME_THREE
  is '����3';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.UNCOMPLAIN_IDEA
  is '��Ͷ�߷����';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.BT_TIME
  is '����4';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.ADM_IDEA
  is '����������';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.FIVE_TIME
  is '����5';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_ANLS_ADVICE
  add constraint PK_TR_CRD_ANLS_ADVICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_ANLS_ADVICE
  add constraint FK_TR_CRD_A_REFERENCE_TR_CRD_C foreign key (COMPLAINT_ID)
  references BJVMMIS.TR_CRD_COMPLAINT (OID);

prompt
prompt Creating table TR_CRD_COMPLAINT_DETL
prompt ====================================
prompt
create table BJVMMIS.TR_CRD_COMPLAINT_DETL
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  COMPLAINT_ID  VARCHAR2(32),
  CHK_ITEM      VARCHAR2(32),
  CHK_ITEM_CODE VARCHAR2(32),
  NUM           NUMBER(4),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_CRD_COMPLAINT_DETL
  is 'Ͷ�߿۷���ϸ';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.OID
  is 'Ͷ����ϸID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.COMPLAINT_ID
  is 'Ͷ�߼�¼ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.CHK_ITEM
  is '�����';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.CHK_ITEM_CODE
  is '��������';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.NUM
  is '����';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_COMPLAINT_DETL
  add constraint PK_COMPLAINT_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_CRD_COMPLAINT_DETL
  add constraint FK_TR_CRD_C_REFERENCE_TR_CRD_9 foreign key (COMPLAINT_ID)
  references BJVMMIS.TR_CRD_COMPLAINT (OID);

prompt
prompt Creating table TR_CRD_COMPLAINT_NOTE
prompt ====================================
prompt
create table BJVMMIS.TR_CRD_COMPLAINT_NOTE
(
  OID            VARCHAR2(32) not null,
  COMPLAINT_ID   VARCHAR2(32),
  COMPLAINT_NAME VARCHAR2(32),
  COMPLAINT_TIME DATE,
  ACCEPT_FRUIT   VARCHAR2(1024),
  ACCEPT_BRANCH  VARCHAR2(64),
  REMARK         VARCHAR2(1024),
  CREATE_TIME    DATE,
  UPDATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_COMPLAINT_NOTE
  is '����֪ͨ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.OID
  is '����֪ͨ��ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.COMPLAINT_ID
  is 'Ͷ����ϢID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.COMPLAINT_NAME
  is 'Ͷ����';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.COMPLAINT_TIME
  is 'Ͷ��ʱ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.ACCEPT_FRUIT
  is '������';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.ACCEPT_BRANCH
  is '������';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_CRD_COMPLAINT_NOTE
  add constraint PK_COMPLAINT_NOTE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_COMPLAINT_NOTE
  add constraint FK_TR_CRD_C_REFERENCE_TR_CRD35 foreign key (COMPLAINT_ID)
  references BJVMMIS.TR_CRD_COMPLAINT (OID);

prompt
prompt Creating table TR_CRD_COMPLAINT_RSLT
prompt ====================================
prompt
create table BJVMMIS.TR_CRD_COMPLAINT_RSLT
(
  OID              VARCHAR2(32) not null,
  COMPLAINT_ID     VARCHAR2(32),
  COMPLAINT_NAME   VARCHAR2(32),
  COMPLAINT_FRUIT  VARCHAR2(1024),
  COMPLAINT_TIME   DATE,
  ACCEPT_BRANCH    VARCHAR2(64),
  UNCOMPLAINT_NAME VARCHAR2(128),
  UNCOMPLAINT_UNIT VARCHAR2(128),
  REMARK           VARCHAR2(1024),
  UPDATE_TIME      DATE,
  CREATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_COMPLAINT_RSLT
  is 'Ͷ�߸�֪���
�۸񡢷�������������Ͷ��(Ͷ�������ʵ������Ҫ��֪Ͷ���˽��)';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.OID
  is 'ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_ID
  is 'Ͷ����ϢID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_NAME
  is 'Ͷ����';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_FRUIT
  is 'Ͷ�߽��';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_TIME
  is '����Ͷ��ʱ��';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.ACCEPT_BRANCH
  is '������';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.UNCOMPLAINT_NAME
  is '��Ͷ����';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.UNCOMPLAINT_UNIT
  is '��Ͷ�߷�';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_COMPLAINT_RSLT
  add constraint PK_COMPLAINT_RSLT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_COMPLAINT_RSLT
  add constraint FK_TR_CRD_C_REFERENCE_TR_CRD33 foreign key (COMPLAINT_ID)
  references BJVMMIS.TR_CRD_COMPLAINT (OID);

prompt
prompt Creating table TR_CRD_DISPUTE_APPLY
prompt ===================================
prompt
create table BJVMMIS.TR_CRD_DISPUTE_APPLY
(
  OID             VARCHAR2(32) not null,
  FILE_ID         VARCHAR2(32),
  COMPLAINT_ID    VARCHAR2(32),
  COMPLAIN_UNIT   VARCHAR2(64),
  COMPLAIN_NAME   VARCHAR2(32),
  COMPLAIN_ADDR   VARCHAR2(256),
  COMPLAIN_TEL    VARCHAR2(32),
  UNCOMPLAIN_UNIT VARCHAR2(64),
  UNCOMPLAIN_NAME VARCHAR2(32),
  UNCOMPLAIN_ADDR VARCHAR2(256),
  UNCOMPLAIN_TEL  VARCHAR2(32),
  RIPAIR_UNIT     VARCHAR2(256),
  UNRIPAIR_UNIT   VARCHAR2(256),
  UNRIPAIR_NUM    VARCHAR2(64),
  UNRIPAIR_CODE   VARCHAR2(32),
  DISPUTE_REASON  VARCHAR2(1024),
  COMPLAIN_IDEA   VARCHAR2(1024),
  UNCOMPLAIN_IDEA VARCHAR2(1024),
  ADMINIST_IDEA   VARCHAR2(1024),
  ADMINIST_SIGN   VARCHAR2(32),
  IFAGREE         NUMBER(2),
  REMARK          VARCHAR2(1024),
  UPDATE_TIME     DATE,
  CREATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_DISPUTE_APPLY
  is 'ά���������׵��������� ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.OID
  is '���׵���������ID';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAINT_ID
  is 'Ͷ����ϢID';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_UNIT
  is 'Ͷ�ߵ�λ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_NAME
  is 'Ͷ�߷���ϵ��';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_ADDR
  is 'Ͷ�߷���ַ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_TEL
  is 'Ͷ�߷��绰';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_UNIT
  is '��Ͷ�ߵ�λ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_NAME
  is '��Ͷ�߷���ϵ��';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_ADDR
  is '��Ͷ�߷���ַ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_TEL
  is '��Ͷ�߷��绰';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.RIPAIR_UNIT
  is '���޵�λ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNRIPAIR_UNIT
  is '���޵�λ�����';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNRIPAIR_NUM
  is '���޳��ͺ�';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNRIPAIR_CODE
  is '���޳��ƺ�';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.DISPUTE_REASON
  is '����ԭ��';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_IDEA
  is 'Ͷ�߷����';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_IDEA
  is '��Ͷ�߷����';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.ADMINIST_IDEA
  is '����������';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.ADMINIST_SIGN
  is '�������ǩ��';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.IFAGREE
  is '˫���Ƿ�ͬ��
<1���ǡ�2����>';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_DISPUTE_APPLY
  add constraint PK_TR_CRD_DISPUTE_APPLY primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_DISPUTE_APPLY
  add constraint FK_TR_CRD_D_REFERENCE_TR_CRD_C foreign key (COMPLAINT_ID)
  references BJVMMIS.TR_CRD_COMPLAINT (OID);

prompt
prompt Creating table TR_CRD_MEDIATION_ADVICE
prompt ======================================
prompt
create table BJVMMIS.TR_CRD_MEDIATION_ADVICE
(
  OID              VARCHAR2(32) not null,
  FILE_ID          VARCHAR2(32),
  COMPLAINT_ID     VARCHAR2(32),
  COMPLAIN_UNIT    VARCHAR2(128),
  COMPLAIN_NAME    VARCHAR2(32),
  COMPLAIN_ADDR    VARCHAR2(256),
  COMPLAIN_TEL     VARCHAR2(32),
  UNCOMPLAIN_UNIT  VARCHAR2(128),
  UNCOMPLAIN_NAME  VARCHAR2(32),
  UNCOMPLAIN_ADDR  VARCHAR2(256),
  UNCOMPLAIN_TEL   VARCHAR2(32),
  COMPLAIN_CONTENT VARCHAR2(1024),
  ADJUST_IDEA      VARCHAR2(1024),
  COMPLAIN_IDEA    VARCHAR2(1024),
  UNCOMPLAIN_IDEA  VARCHAR2(1024),
  IFACPT           NUMBER(2),
  REMARK           VARCHAR2(1024),
  UPDATE_TIME      DATE,
  CREATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_MEDIATION_ADVICE
  is '����ά���������׵��������';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.OID
  is 'ID';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAINT_ID
  is 'Ͷ����ϢID';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_UNIT
  is 'Ͷ�߷�';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_NAME
  is 'Ͷ�߷���ϵ��';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_ADDR
  is 'Ͷ�߷���ַ';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_TEL
  is 'COMPͶ�߷��绰';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_UNIT
  is '��Ͷ�߷�';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_NAME
  is '��Ͷ�߷���ϵ��';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_ADDR
  is '��Ͷ�߷���ַ';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_TEL
  is '��Ͷ�߷��绰';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_CONTENT
  is 'Ͷ������';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.ADJUST_IDEA
  is '�������';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_IDEA
  is 'Ͷ�߷����';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_IDEA
  is '��Ͷ�߷����';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.IFACPT
  is '�Ƿ���ܵ�����';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_MEDIATION_ADVICE
  add constraint PK_TR_CRD_MEDIATION_ADVICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_MEDIATION_ADVICE
  add constraint FK_TR_CRD_M_REFERENCE_TR_CRD_C foreign key (COMPLAINT_ID)
  references BJVMMIS.TR_CRD_COMPLAINT (OID);

prompt
prompt Creating table TR_CRD_REPORT
prompt ============================
prompt
create table BJVMMIS.TR_CRD_REPORT
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  CHECK_ID        VARCHAR2(32),
  REPORT_PPL      VARCHAR2(32),
  REPORT_TEL      VARCHAR2(32),
  REPORT_PHONE    VARCHAR2(32),
  EMAIL           VARCHAR2(128),
  REPORT_DATE     DATE,
  REPORT_ITEM     VARCHAR2(4000),
  HANDLE_RS       VARCHAR2(256),
  REPORT_STATUS   NUMBER(2),
  ACPT_CO         VARCHAR2(128),
  ACPT_PPL        VARCHAR2(32),
  REAL_STATUS     NUMBER(2),
  ID_NUM          VARCHAR2(32),
  PROC_STATUS     NUMBER(2),
  ENTERPRISE_NAME VARCHAR2(128),
  DISTRICT        VARCHAR2(32),
  BUS_ADDR        VARCHAR2(256),
  RPT_STATUS      NUMBER(2),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_CRD_REPORT
  is '�ٱ���Ϣ';
comment on column BJVMMIS.TR_CRD_REPORT.OID
  is '�ٱ�ID';
comment on column BJVMMIS.TR_CRD_REPORT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_CRD_REPORT.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_PPL
  is '�ٱ���';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_TEL
  is '�ٱ�����ϵ�绰';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_PHONE
  is '�ٱ����ֻ�';
comment on column BJVMMIS.TR_CRD_REPORT.EMAIL
  is '�ٱ�EMAIL';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_DATE
  is '�ٱ�����';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_ITEM
  is '�ٱ�����';
comment on column BJVMMIS.TR_CRD_REPORT.HANDLE_RS
  is '������';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_STATUS
  is '�ٱ�״̬
�Ƿ���ʵ';
comment on column BJVMMIS.TR_CRD_REPORT.ACPT_CO
  is '����λ';
comment on column BJVMMIS.TR_CRD_REPORT.ACPT_PPL
  is '������';
comment on column BJVMMIS.TR_CRD_REPORT.REAL_STATUS
  is '�Ƿ�ʵ��';
comment on column BJVMMIS.TR_CRD_REPORT.ID_NUM
  is 'Ͷ�����֤��';
comment on column BJVMMIS.TR_CRD_REPORT.PROC_STATUS
  is '����״̬
�ȴ����������С��������

�������ʱ������ҵ������Աѡ�������ҵ��ͬʱ����ѡ��ٱ�״̬��ѡ��';
comment on column BJVMMIS.TR_CRD_REPORT.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_CRD_REPORT.DISTRICT
  is '��������';
comment on column BJVMMIS.TR_CRD_REPORT.BUS_ADDR
  is '��ҵ��ַ';
comment on column BJVMMIS.TR_CRD_REPORT.RPT_STATUS
  is '�ٱ�����
��֤�ڻ�������Χ��Ӫ����թ��Ϊ��ʹ�ü�ðα�����';
comment on column BJVMMIS.TR_CRD_REPORT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_REPORT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_CRD_REPORT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_REPORT
  add constraint PK_TR_CRD_REPORT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_CRD_REPORT
  add constraint FK_TR_CRD_R_REFERENCE_TR_TMG_J foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_CRD_SAFE_ACDNT
prompt ================================
prompt
create table BJVMMIS.TR_CRD_SAFE_ACDNT
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHK_ITEM      VARCHAR2(32),
  CHK_ITEM_CODE VARCHAR2(32),
  ACDNT_TIME    DATE,
  ECON_LOSS     NUMBER(10,3),
  CASUALT_NUM   NUMBER(4),
  ACDNT_RSN     VARCHAR2(1024),
  ACDNT_ADDR    VARCHAR2(256),
  TREAT_RESULT  VARCHAR2(256),
  NUM           NUMBER(4),
  SRC_MODE      NUMBER(2),
  REMARK        VARCHAR2(1024),
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_SAFE_ACDNT
  is '��ȫ�����¹ʼ�¼��
';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.OID
  is '�¹�ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CHK_ITEM
  is '�����';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CHK_ITEM_CODE
  is '��������';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ACDNT_TIME
  is '�¹ʷ���ʱ��';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ECON_LOSS
  is '������ʧ';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CASUALT_NUM
  is '��������';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ACDNT_RSN
  is '�¹�ԭ��';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ACDNT_ADDR
  is '�¹ʵص�';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.TREAT_RESULT
  is '���ý��';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.NUM
  is '�ܷ���';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.SRC_MODE
  is '��Դ��ʽ: 0:��������������ʱ��ӵ�����; 1:��Ա¼��';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_SAFE_ACDNT
  add constraint PK_TR_CRD_SAFE_ACDNT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_CRD_SAFE_ACDNT_DETL
prompt =====================================
prompt
create table BJVMMIS.TR_CRD_SAFE_ACDNT_DETL
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHK_ITEM      VARCHAR2(32),
  CHK_ITEM_CODE VARCHAR2(32),
  ACDNT_ID      VARCHAR2(32),
  NUM           NUMBER(4),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_SAFE_ACDNT_DETL
  is '��ȫ�����¹ʿ۷���ϸ';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.OID
  is '�¹ʿ۷���ϸID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.CHK_ITEM
  is '�����';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.CHK_ITEM_CODE
  is '��������';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.ACDNT_ID
  is '��ȫ������¼ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.NUM
  is '����';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_SAFE_ACDNT_DETL
  add constraint PK_TR_CRD_SAFE_ACDNT_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_CRD_SAFE_ACDNT_DETL
  add constraint FK_TR_CRD_S_REFERENCE_TR_CRD_S foreign key (ACDNT_ID)
  references BJVMMIS.TR_CRD_SAFE_ACDNT (OID);

prompt
prompt Creating table TR_CRD_STOP_ADVICE
prompt =================================
prompt
create table BJVMMIS.TR_CRD_STOP_ADVICE
(
  OID              VARCHAR2(32) not null,
  COMPLAINT_ID     VARCHAR2(32),
  COMPLAIN_CONTENT VARCHAR2(1024),
  ADJUST_QK        VARCHAR2(1024) not null,
  TJSB_RSN         VARCHAR2(1024) not null,
  COMPLAIN_UNIT    VARCHAR2(128) not null,
  UNCOMPLAIN_UNIT  VARCHAR2(128) not null,
  ADMINIST_SIGN    VARCHAR2(32) not null,
  REMARK           VARCHAR2(1024),
  UPDATE_TIME      DATE,
  CREATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_CRD_STOP_ADVICE
  is 'ֹͣ���������';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.OID
  is 'OID';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.COMPLAINT_ID
  is 'Ͷ����ϢID';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.COMPLAIN_CONTENT
  is 'Ͷ������';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.ADJUST_QK
  is '�������';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.TJSB_RSN
  is '���ⲻ������';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.COMPLAIN_UNIT
  is 'Ͷ�߷�';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.UNCOMPLAIN_UNIT
  is '��Ͷ�߷�';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.ADMINIST_SIGN
  is '�������ǩ��';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_CRD_STOP_ADVICE
  add constraint PK_TR_CRD_STOP_ADVICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_LDT_LAXA_APRV
prompt ===============================
prompt
create table BJVMMIS.TR_LDT_LAXA_APRV
(
  OID              VARCHAR2(32) not null,
  CHECK_ID         VARCHAR2(32),
  PARTY            VARCHAR2(128),
  PARTYTEL         VARCHAR2(32),
  BCNAMENUM        VARCHAR2(32),
  DRIVINGCARD      VARCHAR2(32),
  SERVICECARD      VARCHAR2(32),
  TCTYPE           VARCHAR2(32),
  TCNUM            VARCHAR2(32),
  LICENSENUM       VARCHAR2(32),
  CARTYPE          VARCHAR2(32),
  COLOUR           VARCHAR2(32),
  LAWPERSON        VARCHAR2(32),
  POST             VARCHAR2(32),
  LAWPERSONTEL     VARCHAR2(32),
  ADRRECE          VARCHAR2(256),
  CASESOURCE       VARCHAR2(1024),
  OFFENCE          VARCHAR2(1024),
  AGENTOPINION     VARCHAR2(1024),
  AGENT            VARCHAR2(32),
  PRINCIPALOPINION VARCHAR2(1024),
  PRINCIPAL        VARCHAR2(32),
  APRV_STATUS      NUMBER(2),
  PROJ_TYPE        NUMBER(2),
  HANDL_STATUS     NUMBER(2),
  REMARK           VARCHAR2(1024),
  CREATE_TIME      DATE,
  UPDATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_LDT_LAXA_APRV
  is '��������������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CHECK_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PARTY
  is '������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PARTYTEL
  is '�����˵绰';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.BCNAMENUM
  is '��Ӫ���֤��';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.DRIVINGCARD
  is '׼��֤��';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.SERVICECARD
  is '����֤��';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.TCTYPE
  is '����֤����';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.TCNUM
  is '����֤���';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.LICENSENUM
  is '���ƺ�';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CARTYPE
  is '����';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.COLOUR
  is '��ɫ';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.LAWPERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.POST
  is 'ְ��';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.LAWPERSONTEL
  is '����绰';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.ADRRECE
  is '��ַ';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CASESOURCE
  is '������Դ';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.OFFENCE
  is 'Υ����ʵ';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.AGENTOPINION
  is '�а������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.AGENT
  is '�а���';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PRINCIPALOPINION
  is '���Ÿ��������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PRINCIPAL
  is '������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.APRV_STATUS
  is '����״̬
��������ͨ���Ʒ�Υ��Υ��֪ͨ�顣';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PROJ_TYPE
  is '��������
1ע��������2��������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.HANDL_STATUS
  is '��ҵ����������
1�����С�2����������3����ע����4������';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_LDT_LAXA_APRV
  add constraint PK_LAXA_APRV primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_LDT_LAXA_APRV
  add constraint FK_TR_LDT_L_REFERENCE_TR_TMG_J foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_LDT_CANCELL_PRMT
prompt ==================================
prompt
create table BJVMMIS.TR_LDT_CANCELL_PRMT
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  APRV_ID       VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  UNIT          VARCHAR2(64),
  PERMIT_NAME   VARCHAR2(64),
  PERMIT_CODE   VARCHAR2(32),
  ADDR          VARCHAR2(256),
  LEGAL_PERSON  VARCHAR2(32),
  TEL           VARCHAR2(32),
  ITEM          VARCHAR2(1024),
  LOGOUT_NAME   VARCHAR2(64),
  LOGOUT_CODE   VARCHAR2(32),
  RETURN_TIME   DATE,
  RETURN_ADDR   VARCHAR2(256),
  LOGOUT_THING  VARCHAR2(1024),
  SEND_UNIT     VARCHAR2(64),
  SIGN_NAME     VARCHAR2(32),
  SIGN_TIME     DATE,
  SEND_TIME     DATE,
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_CANCELL_PRMT
  is 'ע�����֤��֪ͨ���ݶ���';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.UNIT
  is '��λ';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.PERMIT_NAME
  is '���֤����';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.PERMIT_CODE
  is '���֤���Ʊ��';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.ADDR
  is '��ַ';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LEGAL_PERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.ITEM
  is '����';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LOGOUT_NAME
  is 'ע���������';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LOGOUT_CODE
  is 'ע����ɺ�';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.RETURN_TIME
  is '�ɻ�����';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.RETURN_ADDR
  is '�ɻص�ַ';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LOGOUT_THING
  is 'ע������';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SEND_UNIT
  is '��֤��λ';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SIGN_NAME
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SIGN_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SEND_TIME
  is '��֤����';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CANCELL_PRMT
  add constraint PK_CANCELL_PRMT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_CANCELL_PRMT
  add constraint FK_TR_LDT_C_REFERENCE_TR_LDT18 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_CASE_END
prompt ==============================
prompt
create table BJVMMIS.TR_LDT_CASE_END
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  APRV_ID       VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  DEPT          VARCHAR2(128),
  BCNAME_NUM    VARCHAR2(32),
  ADRRESS       VARCHAR2(256),
  LAW_PERSON    VARCHAR2(64),
  TEL           VARCHAR2(32),
  RESULT        VARCHAR2(1024),
  EXE           VARCHAR2(1024),
  AGENT_OPINION VARCHAR2(1024),
  AGENT         VARCHAR2(32),
  AGENT_TIME    DATE,
  REMARK        VARCHAR2(1024),
  CRE_TIME      DATE,
  UPDT_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_CASE_END
  is '�᰸����';
comment on column BJVMMIS.TR_LDT_CASE_END.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_CASE_END.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CASE_END.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_CASE_END.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_CASE_END.DEPT
  is '��λ';
comment on column BJVMMIS.TR_LDT_CASE_END.BCNAME_NUM
  is '���֤����';
comment on column BJVMMIS.TR_LDT_CASE_END.ADRRESS
  is '��ַ';
comment on column BJVMMIS.TR_LDT_CASE_END.LAW_PERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_CASE_END.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_CASE_END.RESULT
  is '���鼰�������';
comment on column BJVMMIS.TR_LDT_CASE_END.EXE
  is 'ִ�����';
comment on column BJVMMIS.TR_LDT_CASE_END.AGENT_OPINION
  is '�а������';
comment on column BJVMMIS.TR_LDT_CASE_END.AGENT
  is '�а���ǩ��';
comment on column BJVMMIS.TR_LDT_CASE_END.AGENT_TIME
  is '�а���ǩ��ʱ��';
comment on column BJVMMIS.TR_LDT_CASE_END.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CASE_END.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CASE_END.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CASE_END
  add constraint PK_CASE_END primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_CASE_END
  add constraint FK_TR_LDT_C_REFERENCE_TR_LDT22 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_CASE_RSLT
prompt ===============================
prompt
create table BJVMMIS.TR_LDT_CASE_RSLT
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  PARTY         VARCHAR2(32),
  PARTYTEL      VARCHAR2(32),
  BCNAMENUM     VARCHAR2(32),
  DRIVINGCARD   VARCHAR2(32),
  SERVICECARD   VARCHAR2(32),
  TCTYPE        VARCHAR2(64),
  TCNUM         VARCHAR2(32),
  LICENSENUM    VARCHAR2(32),
  CARTYPE       VARCHAR2(32),
  COLOUR        VARCHAR2(32),
  LAWPERSON     VARCHAR2(32),
  POST          VARCHAR2(32),
  LAWPERSONTEL  VARCHAR2(32),
  ADRRECE       VARCHAR2(256),
  CASESOURCE    VARCHAR2(1024),
  CASEBASE      VARCHAR2(1024),
  OFFENCE       VARCHAR2(1024),
  PUBLISH       VARCHAR2(1024),
  PUBDATE       DATE,
  AGENT         VARCHAR2(32),
  AGENTDATE     DATE,
  DPTOPP        VARCHAR2(1024),
  PRINCIPAL     VARCHAR2(32),
  REMARK        VARCHAR2(1024),
  CRE_TIME      DATE,
  UPDT_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_CASE_RSLT
  is '��������������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PARTY
  is '������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PARTYTEL
  is '�����˵绰';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.BCNAMENUM
  is '��Ӫ���֤�����Ƽ����';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.DRIVINGCARD
  is '׼��֤��';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.SERVICECARD
  is '����֤��';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.TCTYPE
  is '����֤����';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.TCNUM
  is '����֤���';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.LICENSENUM
  is '���ƺ�';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CARTYPE
  is '����';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.COLOUR
  is '��ɫ';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.LAWPERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.POST
  is 'ְ��';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.LAWPERSONTEL
  is '����绰';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.ADRRECE
  is '��ַ';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CASESOURCE
  is '������Դ';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CASEBASE
  is '��������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.OFFENCE
  is 'Υ����ʵ';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PUBLISH
  is '������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PUBDATE
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.AGENT
  is '�а���';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.AGENTDATE
  is '�а�ʱ��';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.DPTOPP
  is '�����';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PRINCIPAL
  is '������';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CASE_RSLT
  add constraint PK_CASE_RSLT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_CASE_RSLT
  add constraint FK_TR_LDT_C_REFERENCE_TR_LDT11 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_CHECK_REC
prompt ===============================
prompt
create table BJVMMIS.TR_LDT_CHECK_REC
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  TIME          DATE,
  PARTY         VARCHAR2(32),
  COMPANY       VARCHAR2(64),
  LAWPERSON     VARCHAR2(32),
  BCNAMENUM     VARCHAR2(32),
  DRIVINGCARD   VARCHAR2(32),
  SERVICECARD   VARCHAR2(32),
  TCTYPE        NUMBER(2),
  TCNUM         VARCHAR2(32),
  LISENCENUM    VARCHAR2(32),
  CARTYPE       VARCHAR2(32),
  COLOUR        VARCHAR2(32),
  CHECKADRRICE  VARCHAR2(256),
  CHECKNOTE     VARCHAR2(256),
  WITNESS       VARCHAR2(32),
  INSPECTOR     VARCHAR2(32),
  PARTYSIGN     VARCHAR2(32),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_CHECK_REC
  is '����¼';
comment on column BJVMMIS.TR_LDT_CHECK_REC.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CHECK_REC.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_CHECK_REC.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CHECK_REC.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_CHECK_REC.TIME
  is 'ʱ��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.PARTY
  is '������';
comment on column BJVMMIS.TR_LDT_CHECK_REC.COMPANY
  is '��λ';
comment on column BJVMMIS.TR_LDT_CHECK_REC.LAWPERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_CHECK_REC.BCNAMENUM
  is '��Ӫ���֤�ż�����';
comment on column BJVMMIS.TR_LDT_CHECK_REC.DRIVINGCARD
  is '׼��֤��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.SERVICECARD
  is '����֤��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.TCTYPE
  is '������������';
comment on column BJVMMIS.TR_LDT_CHECK_REC.TCNUM
  is '��������֤���';
comment on column BJVMMIS.TR_LDT_CHECK_REC.LISENCENUM
  is '����';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CARTYPE
  is '����';
comment on column BJVMMIS.TR_LDT_CHECK_REC.COLOUR
  is '��ɫ';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CHECKADRRICE
  is '���ص�';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CHECKNOTE
  is '����¼';
comment on column BJVMMIS.TR_LDT_CHECK_REC.WITNESS
  is '��֤��ǩ��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.INSPECTOR
  is '���Աǩ��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.PARTYSIGN
  is '������ǩ��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CHECK_REC.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CHECK_REC
  add constraint PK_CHECK_REC primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_CHECK_REC
  add constraint FK_TR_LDT_C_REFERENCE_TR_LDT10 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_CONVR_REC
prompt ===============================
prompt
create table BJVMMIS.TR_LDT_CONVR_REC
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  CHECK_ID        VARCHAR2(32),
  FILE_ID         VARCHAR2(32),
  ADDR            VARCHAR2(256),
  INQUIRED_NAME   VARCHAR2(32),
  RECORDER_NAME   VARCHAR2(32),
  UNINQUIRED_NAME VARCHAR2(32),
  SEX             NUMBER(2),
  POST            VARCHAR2(64),
  UNIT            VARCHAR2(64),
  TEL             VARCHAR2(32),
  CORRESPOND_ADDR VARCHAR2(256),
  CODE            VARCHAR2(8),
  TALK_NAME       VARCHAR2(256),
  TALK_DESC       VARCHAR2(4000),
  SUPPLY_DESC     VARCHAR2(4000),
  UNINQUIRED_SIGN VARCHAR2(32),
  RECORDER_TIME   DATE,
  START_TIME      DATE,
  END_TIME        DATE,
  REMARK          VARCHAR2(1024),
  CRE_TIME        DATE,
  UPDT_TIME       DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_CONVR_REC
  is '̸����¼';
comment on column BJVMMIS.TR_LDT_CONVR_REC.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.ADDR
  is '�ص�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.INQUIRED_NAME
  is 'ѯ����';
comment on column BJVMMIS.TR_LDT_CONVR_REC.RECORDER_NAME
  is '��¼��';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UNINQUIRED_NAME
  is '��ѯ����';
comment on column BJVMMIS.TR_LDT_CONVR_REC.SEX
  is '�Ա𣨱�ѯ���ˣ�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.POST
  is 'ְ�񣨱�ѯ���ˣ�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UNIT
  is '������λ����ѯ���ˣ�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.TEL
  is '��ϵ�绰����ѯ���ˣ�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CORRESPOND_ADDR
  is 'ͨ�ŵ�ַ����ѯ���ˣ�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CODE
  is '�ʱࣨ��ѯ���ˣ�';
comment on column BJVMMIS.TR_LDT_CONVR_REC.TALK_NAME
  is '̸����������';
comment on column BJVMMIS.TR_LDT_CONVR_REC.TALK_DESC
  is '̸������';
comment on column BJVMMIS.TR_LDT_CONVR_REC.SUPPLY_DESC
  is '��������';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UNINQUIRED_SIGN
  is '��ѯ����ǩ��';
comment on column BJVMMIS.TR_LDT_CONVR_REC.RECORDER_TIME
  is 'ѯ��ʱ��';
comment on column BJVMMIS.TR_LDT_CONVR_REC.START_TIME
  is '̸����ʼʱ��';
comment on column BJVMMIS.TR_LDT_CONVR_REC.END_TIME
  is '̸������ʱ��';
comment on column BJVMMIS.TR_LDT_CONVR_REC.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CONVR_REC
  add constraint PK_CONVR_REC primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_CONVR_REC
  add constraint FK_TR_LDT_C_REFERENCE_TR_TMG13 foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_LDT_CORRECT_NOTICE
prompt ====================================
prompt
create table BJVMMIS.TR_LDT_CORRECT_NOTICE
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHECK_ID      VARCHAR2(32),
  UNIT          VARCHAR2(64),
  PERMIT_NUM    VARCHAR2(256),
  ADDR          VARCHAR2(256),
  LEGAL_PERSON  VARCHAR2(32),
  TEL           VARCHAR2(32),
  OFFEND_TIME   DATE,
  OFFEND_ACTION VARCHAR2(1024),
  OFFEND_DESC   VARCHAR2(1024),
  CORRECT_TIME  DATE,
  CORRECT_DESC  VARCHAR2(1024),
  CHECK_UNIT    VARCHAR2(64),
  SINGLE_TIME   DATE,
  POST          VARCHAR2(64),
  SIGN_NAME     VARCHAR2(32),
  SIGN_TIME     DATE,
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_LDT_CORRECT_NOTICE
  is '������ڣ�����֪ͨ��
��ҵ�ȼ���ΪB��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.UNIT
  is '��λ';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.PERMIT_NUM
  is '���֤��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.ADDR
  is '��ַ';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.LEGAL_PERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OFFEND_TIME
  is 'Υ��ʱ��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OFFEND_ACTION
  is 'Υ����Ϊ';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OFFEND_DESC
  is 'Υ������';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CORRECT_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CORRECT_DESC
  is '��������';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CHECK_UNIT
  is '���յ�λ';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.SINGLE_TIME
  is '�Ƶ�ʱ��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.POST
  is 'ְ��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.SIGN_NAME
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.SIGN_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CORRECT_NOTICE
  add constraint PK_CORRECT_NOTICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_LDT_CORRECT_NOTICE
  add constraint FK_TR_LDT_C_REFERENCE_TR_TMG15 foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_LDT_CX_CANCELL_PRMT
prompt =====================================
prompt
create table BJVMMIS.TR_LDT_CX_CANCELL_PRMT
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  NAME          VARCHAR2(32),
  BCNUMNAME     VARCHAR2(32),
  ADDRECE       VARCHAR2(256),
  LAWPERSON     VARCHAR2(32),
  TEL           VARCHAR2(32),
  COMPNY        VARCHAR2(64),
  REVOKECAUSE   VARCHAR2(1024),
  PERMITNAME    VARCHAR2(64),
  PERMITNUM     VARCHAR2(32),
  RETURNDATE    DATE,
  RETURNDPT     VARCHAR2(64),
  ADDCAUSE      VARCHAR2(1024),
  SEALDATE      DATE,
  CHOP          VARCHAR2(32),
  CHOPDATE      DATE,
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_CX_CANCELL_PRMT
  is '����������ɾ�����';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.NAME
  is '��λ��������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.BCNUMNAME
  is '���֤���Ƽ����';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.ADDRECE
  is '��ַ';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.LAWPERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.COMPNY
  is '��λ';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.REVOKECAUSE
  is '����������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.PERMITNAME
  is '���֤����';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.PERMITNUM
  is '���֤����';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.RETURNDATE
  is '�ɻؽ�ֹ����';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.RETURNDPT
  is '�ɻز���';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.ADDCAUSE
  is '��ӳ�������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.SEALDATE
  is '��������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.CHOP
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.CHOPDATE
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_CX_CANCELL_PRMT
  add constraint PK_CX_CANCELL_PRMT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_CX_CANCELL_PRMT
  add constraint FK_TR_LDT_C_REFERENCE_TR_LDT12 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_LAW_CODE
prompt ==============================
prompt
create table BJVMMIS.TR_LDT_LAW_CODE
(
  OID         VARCHAR2(32) not null,
  PK_ID       VARCHAR2(32),
  WORD        VARCHAR2(128),
  YEAR        VARCHAR2(8),
  NUM         NUMBER(4),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE,
  REGION      VARCHAR2(32)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_LDT_LAW_CODE
  is 'ִ��������';
comment on column BJVMMIS.TR_LDT_LAW_CODE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_LAW_CODE.PK_ID
  is 'ִ����������(����)';
comment on column BJVMMIS.TR_LDT_LAW_CODE.WORD
  is '��
��';
comment on column BJVMMIS.TR_LDT_LAW_CODE.YEAR
  is '��';
comment on column BJVMMIS.TR_LDT_LAW_CODE.NUM
  is '���';
comment on column BJVMMIS.TR_LDT_LAW_CODE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_LAW_CODE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_LAW_CODE.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_LAW_CODE.REGION
  is '��������';
alter table BJVMMIS.TR_LDT_LAW_CODE
  add constraint PK_TR_LDT_LAW_CODE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_LDT_LAW_CONTENT
prompt =================================
prompt
create table BJVMMIS.TR_LDT_LAW_CONTENT
(
  OID         VARCHAR2(32) not null,
  PK_ID       VARCHAR2(32),
  CONTENT     BLOB,
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_LDT_LAW_CONTENT
  is 'TR_LDT_LAW_CONTENT';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.PK_ID
  is 'ִ����������ID';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.CONTENT
  is '����';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_LAW_CONTENT
  add constraint PK_TR_LDT_LAW_CONTENT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_LDT_LAW_SUP
prompt =============================
prompt
create table BJVMMIS.TR_LDT_LAW_SUP
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  BRIEF         VARCHAR2(1024),
  CHECK_TIME    DATE,
  CHECK_ADDR    VARCHAR2(256),
  PROBLEM       VARCHAR2(1024),
  SUGEST        VARCHAR2(1024),
  ISS_TIME      DATE,
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_LAW_SUP
  is 'ִ���ල������';
comment on column BJVMMIS.TR_LDT_LAW_SUP.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_LAW_SUP.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_LAW_SUP.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_LAW_SUP.BRIEF
  is '����';
comment on column BJVMMIS.TR_LDT_LAW_SUP.CHECK_TIME
  is '�������';
comment on column BJVMMIS.TR_LDT_LAW_SUP.CHECK_ADDR
  is '���ص�';
comment on column BJVMMIS.TR_LDT_LAW_SUP.PROBLEM
  is '��Ҫ����';
comment on column BJVMMIS.TR_LDT_LAW_SUP.SUGEST
  is '����';
comment on column BJVMMIS.TR_LDT_LAW_SUP.ISS_TIME
  is '��֤����';
comment on column BJVMMIS.TR_LDT_LAW_SUP.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_LAW_SUP.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_LAW_SUP.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_LAW_SUP
  add constraint PK_TR_LDT_LAW_SUP primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_LAW_SUP
  add constraint FK_TR_LDT_L_REFERENCE_TR_LDT_L foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_PRMT_TG
prompt =============================
prompt
create table BJVMMIS.TR_LDT_PRMT_TG
(
  OID         VARCHAR2(32) not null,
  UNIT        VARCHAR2(64),
  ANNOUN_UNIT VARCHAR2(64),
  BRIEF       VARCHAR2(1024),
  ANNOUN_TIME DATE,
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_PRMT_TG
  is 'ע�����֤��ͨ��
ע�����֤��֪ͨ15��û�лظ�������ע�����֤��ͨ�档';
comment on column BJVMMIS.TR_LDT_PRMT_TG.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG.UNIT
  is '��λ';
comment on column BJVMMIS.TR_LDT_PRMT_TG.ANNOUN_UNIT
  is '��ͨ�浥λ';
comment on column BJVMMIS.TR_LDT_PRMT_TG.BRIEF
  is '����';
comment on column BJVMMIS.TR_LDT_PRMT_TG.ANNOUN_TIME
  is '��ͨ��ʱ��';
comment on column BJVMMIS.TR_LDT_PRMT_TG.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_PRMT_TG.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_PRMT_TG.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_PRMT_TG
  add constraint PK_TR_LDT_PRMT_TG primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TR_LDT_PRMT_TG_DETL
prompt ==================================
prompt
create table BJVMMIS.TR_LDT_PRMT_TG_DETL
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  TG_ID         VARCHAR2(32),
  BRIEF         VARCHAR2(1024),
  PERMIT_NAME   VARCHAR2(64),
  PERMIT_CODE   VARCHAR2(256),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_PRMT_TG_DETL
  is 'ע�����֤��ͨ��
ע�����֤��֪ͨ15��û�лظ�������ע�����֤��ͨ�档';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.APRV_ID
  is '����������';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.TG_ID
  is 'ע�����֤��ͨ��ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.BRIEF
  is '����';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.PERMIT_NAME
  is '���֤����';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.PERMIT_CODE
  is '���֤���Ʊ��';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_PRMT_TG_DETL
  add constraint PK_PRMT_TG_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_PRMT_TG_DETL
  add constraint FK_TR_LDT_P_REFERENCE_TR_LDT18 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);
alter table BJVMMIS.TR_LDT_PRMT_TG_DETL
  add constraint FK_TR_LDT_P_REFERENCE_TR_LDT_P foreign key (TG_ID)
  references BJVMMIS.TR_LDT_PRMT_TG (OID);

prompt
prompt Creating table TR_LDT_PUNISH_RECORD
prompt ===================================
prompt
create table BJVMMIS.TR_LDT_PUNISH_RECORD
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  BRIEF         VARCHAR2(1024),
  ADDR          VARCHAR2(256),
  COMPERE       VARCHAR2(32),
  RECORDER      VARCHAR2(32),
  VIEW          VARCHAR2(1024),
  ATTENDEE      VARCHAR2(1024),
  ATTEND        VARCHAR2(1024),
  DISCUSS       VARCHAR2(1024),
  HANDLE_VIEW   VARCHAR2(1024),
  ATTENDEE_NAME VARCHAR2(32),
  LEGALITY_VIEW VARCHAR2(1024),
  LEGALITY_NAME VARCHAR2(32),
  SIGN_TIME     DATE,
  LEAD_NAME     VARCHAR2(32),
  STATE_TIME    DATE,
  END_TIME      DATE,
  JCDISCU_RSLT  NUMBER(2),
  JCDISCU_OPIN  VARCHAR2(1024),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_PUNISH_RECORD
  is '���������������ۼ�¼';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.BRIEF
  is '����';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ADDR
  is '���۵ص�';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.COMPERE
  is '������';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.RECORDER
  is '��¼��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.VIEW
  is '�԰������';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ATTENDEE
  is '��ϯ����Ϣ';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ATTEND
  is '��ϯ����Ϣ';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.DISCUSS
  is '���ۼ�¼';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.HANDLE_VIEW
  is '�����������';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ATTENDEE_NAME
  is '��ϯ��ǩ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.LEGALITY_VIEW
  is '���ƴ����';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.LEGALITY_NAME
  is '���ƴ�������ǩ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.SIGN_TIME
  is 'ǩ��ʱ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.LEAD_NAME
  is '�쵼ǩ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.STATE_TIME
  is '���ۿ�ʼʱ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.END_TIME
  is '���۽���ʱ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.JCDISCU_RSLT
  is '��(��)�������۽��
���Ƿ�ͬ�������';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.JCDISCU_OPIN
  is '��(��)�����������';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_LDT_PUNISH_RECORD
  add constraint PK_PUNISH_RECORD primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_PUNISH_RECORD
  add constraint FK_TR_LDT_P_REFERENCE_TR_LDT19 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_REMOVE_PERMIT
prompt ===================================
prompt
create table BJVMMIS.TR_LDT_REMOVE_PERMIT
(
  OID              VARCHAR2(64) not null,
  ENTERPRISE_ID    VARCHAR2(32),
  APRV_ID          VARCHAR2(32),
  DEPT             VARCHAR2(64),
  FDDB_PERS        VARCHAR2(32),
  ADDR             VARCHAR2(256),
  TEL              VARCHAR2(32),
  OPRATLIC_NAM_NO  VARCHAR2(64),
  CANDRVNO_SERVNO  VARCHAR2(64),
  CARTYPE_NO       VARCHAR2(64),
  CARTSP_NO        VARCHAR2(64),
  CAR_NO           VARCHAR2(32),
  CAR_TYPE         VARCHAR2(32),
  COLOR            VARCHAR2(32),
  LAW_FACT         VARCHAR2(1024),
  LAW_ACT          VARCHAR2(1024),
  LAW_PROVD1       VARCHAR2(256),
  UNLAW_ENTRY1     VARCHAR2(1024),
  LAW_ITEM1        VARCHAR2(1024),
  LAW_PROVD2       VARCHAR2(1024),
  UNLAW_ENTRY2     VARCHAR2(1024),
  LAW_ITEM2        VARCHAR2(1024),
  REVCT_CERTIF_NAM VARCHAR2(128),
  RETALK_DEPT      VARCHAR2(64),
  NOTICE_DEPT      VARCHAR2(64),
  NOTICE_TIME      DATE,
  QS_PERS          VARCHAR2(32),
  QS_TIME          DATE,
  REMARK           VARCHAR2(1024),
  CREATE_TIME      DATE,
  UPDATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_REMOVE_PERMIT
  is '�������֤��(��Ӫ��Χ)������';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.DEPT
  is '��λ��������';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.FDDB_PERS
  is '����������';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.ADDR
  is '��ַ';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.TEL
  is '�绰';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.OPRATLIC_NAM_NO
  is '��Ӫ���֤���Ƽ����';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CANDRVNO_SERVNO
  is '׼��֤�Ż����֤��';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CARTYPE_NO
  is '������������';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CARTSP_NO
  is '��������֤���';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CAR_NO
  is '����';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CAR_TYPE
  is '����';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.COLOR
  is '��ɫ';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_FACT
  is 'Υ����ʵ';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_ACT
  is 'Υ����Ϊ';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_PROVD1
  is 'Υ���涨1';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.UNLAW_ENTRY1
  is '�Ƿ���Ŀ1';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_ITEM1
  is 'Υ����1';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_PROVD2
  is 'Υ���涨2';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.UNLAW_ENTRY2
  is '�Ƿ���Ŀ2';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_ITEM2
  is 'Υ����2';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.REVCT_CERTIF_NAM
  is '����֤������';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.RETALK_DEPT
  is '�����������鵥λ';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.NOTICE_DEPT
  is '֪ͨ��λ';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.NOTICE_TIME
  is '֪ͨʱ��';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.QS_PERS
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.QS_TIME
  is 'ǩ��ʱ��';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_REMOVE_PERMIT
  add constraint PK_TR_LDT_REMOVE_PERMIT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_REMOVE_PERMIT
  add constraint FK_TR_LDT_R_REFERENCE_TR_LDT_L foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_SRVY_RPT
prompt ==============================
prompt
create table BJVMMIS.TR_LDT_SRVY_RPT
(
  OID            VARCHAR2(32) not null,
  APRV_ID        VARCHAR2(32),
  ENTERPRISE_ID  VARCHAR2(64),
  FILE_ID        VARCHAR2(32),
  BRIEF          VARCHAR2(256),
  INVESTIGATOR   VARCHAR2(1024),
  CASE_SOURCE    VARCHAR2(1024),
  START_TIME     DATE,
  END_TIME       DATE,
  SURVEY_SITE    VARCHAR2(256),
  INVESTIG_AFTER VARCHAR2(1024),
  UNDERTAKER     VARCHAR2(64),
  PENALTY_CLAUSE VARCHAR2(1024),
  PUNISH_INFO    VARCHAR2(1024),
  PROCESS_DATE   DATE,
  APPROVAL_COMM  VARCHAR2(1024),
  SINGATURE      VARCHAR2(64),
  APPROVAL_DATE  DATE,
  AUDIT_OPINION  VARCHAR2(1024),
  AUDIT_SIGN     VARCHAR2(64),
  LEADER_ADVICE  VARCHAR2(1024),
  LEADER_SIGN    VARCHAR2(64),
  LEADER_TIME    DATE,
  REMARK         VARCHAR2(1024),
  CREATE_TIME    DATE,
  UPDATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_SRVY_RPT
  is '�������鱨��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.BRIEF
  is '����';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.INVESTIGATOR
  is '����������Ա';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.CASE_SOURCE
  is '������Դ';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.START_TIME
  is '���鿪ʼʱ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.END_TIME
  is '�������ʱ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.SURVEY_SITE
  is '����ص�';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.INVESTIG_AFTER
  is '�������龭��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.UNDERTAKER
  is '������ۼ���������а���';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.PENALTY_CLAUSE
  is '������ۼ����������������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.PUNISH_INFO
  is '������ۼ��������������Ϣ';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.PROCESS_DATE
  is '������ۼ����������������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.APPROVAL_COMM
  is '���Ÿ������������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.SINGATURE
  is '���Ÿ������������ǩ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.APPROVAL_DATE
  is '���Ÿ����������������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.AUDIT_OPINION
  is '���Ʋ���������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.AUDIT_SIGN
  is '���Ʋ���������ǩ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.LEADER_ADVICE
  is '�ִ��쵼���';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.LEADER_SIGN
  is '�ִ��쵼���ǩ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.LEADER_TIME
  is '�ִ��쵼�������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_LDT_SRVY_RPT
  add constraint PK_TR_LDT_SRVY_RPT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_SRVY_RPT
  add constraint FK_TR_LDT_S_REFERENCE_TR_LDT_L foreign key (OID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_SRVY_RPT_DETL
prompt ===================================
prompt
create table BJVMMIS.TR_LDT_SRVY_RPT_DETL
(
  OID           VARCHAR2(32) not null,
  SRVY_ID       VARCHAR2(32),
  EVIDENCE_NAME VARCHAR2(256),
  SPECIE        VARCHAR2(64),
  SPECIFICATION VARCHAR2(64),
  LIST_NUM      NUMBER(4),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_SRVY_RPT_DETL
  is '�������鱨��(֤�ݲ����嵥)';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.SRVY_ID
  is '�������鱨��ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.EVIDENCE_NAME
  is '֤�ݲ����嵥-֤������';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.SPECIE
  is '֤�ݲ����嵥-����';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.SPECIFICATION
  is '֤�ݲ����嵥-���';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.LIST_NUM
  is '֤�ݲ����嵥-����';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_LDT_SRVY_RPT_DETL
  add constraint PK_TR_LDT_SRVY_RPT_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_SRVY_RPT_DETL
  add constraint FK_TR_LDT_S_REFERENCE_TR_LDT_S foreign key (SRVY_ID)
  references BJVMMIS.TR_LDT_SRVY_RPT (OID);

prompt
prompt Creating table TR_LDT_STOP_MANAGE
prompt =================================
prompt
create table BJVMMIS.TR_LDT_STOP_MANAGE
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHECK_ID      VARCHAR2(32),
  UNIT          VARCHAR2(64),
  ADDR          VARCHAR2(256),
  LEGAL_PERSON  VARCHAR2(32),
  TEL           VARCHAR2(32),
  NOTICE_DESC   VARCHAR2(1024),
  SIGN_NAME     VARCHAR2(32),
  SIGN_TIME     DATE,
  ISSUR_TIME    DATE,
  NOTICE_TIME   DATE,
  REMARK        VARCHAR2(1024),
  CRE_TIME      DATE,
  UPDT_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_STOP_MANAGE
  is '����ֹͣ��Ӫ�����䣩֪ͨ��
��ҵ�ȼ���ΪB��';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.UNIT
  is '��λ';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.ADDR
  is '��ַ';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.LEGAL_PERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.NOTICE_DESC
  is '֪ͨ����';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.SIGN_NAME
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.SIGN_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.ISSUR_TIME
  is '��֤����';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.NOTICE_TIME
  is '֪ͨ����';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_STOP_MANAGE
  add constraint PK_STOP_MANAGE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_STOP_MANAGE
  add constraint FK_TR_LDT_S_REFERENCE_TR_TMG17 foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_LDT_STOP_WFWG
prompt ===============================
prompt
create table BJVMMIS.TR_LDT_STOP_WFWG
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHECK_ID      VARCHAR2(32),
  UNIT          VARCHAR2(64),
  PERMIT_NUM    VARCHAR2(256),
  ADDR          VARCHAR2(256),
  LEGAL_PERSON  VARCHAR2(32),
  TEL           VARCHAR2(32),
  OFFEND_ACTION VARCHAR2(1024),
  PULE_PERMIT   VARCHAR2(256),
  HANDLE_TIME   DATE,
  HANDLE_ADDR   VARCHAR2(256),
  NOTICE_UNIT   VARCHAR2(64),
  NOTICE_TIME   DATE,
  SIGN_NAME     VARCHAR2(32),
  SIGN_TIME     DATE,
  SRC_MODE      NUMBER(2),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_STOP_WFWG
  is '����ֹͣΥ����Ϊ֪ͨ��
��ҵ�ȼ���ΪB��';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.UNIT
  is '��λ';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.PERMIT_NUM
  is '���֤��';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.ADDR
  is '��ַ';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.LEGAL_PERSON
  is '����������';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.OFFEND_ACTION
  is 'Υ����Ϊ';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.PULE_PERMIT
  is 'Υ�����֤����';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.HANDLE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.HANDLE_ADDR
  is '����ص�';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.NOTICE_UNIT
  is '֪ͨ��λ';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.NOTICE_TIME
  is '֪ͨʱ��';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.SIGN_NAME
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.SIGN_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.SRC_MODE
  is '��Դ��ʽ����������������ʱ��ӵ����ݣ�';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_STOP_WFWG
  add constraint PK_STOP_WFWG primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_STOP_WFWG
  add constraint FK_TR_LDT_S_REFERENCE_TR_TMG16 foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_LDT_WZWF_NOTICE
prompt =================================
prompt
create table BJVMMIS.TR_LDT_WZWF_NOTICE
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  APRV_ID         VARCHAR2(32),
  ENTERPRISE_NAME DATE,
  WG_TIME         DATE,
  WG_POINT        VARCHAR2(256),
  REGUL           VARCHAR2(1024),
  TK              VARCHAR2(1024),
  PROVD_TERM      VARCHAR2(1024),
  HANDL_REGUL     VARCHAR2(1024),
  HANDL_TK        VARCHAR2(1024),
  HANDL_ITEM      VARCHAR2(1024),
  HANDL_DSC       VARCHAR2(1024),
  ALG_DEPT        VARCHAR2(64),
  DC_DEPT         VARCHAR2(64),
  NTC_TIME        DATE,
  QS_PERS         VARCHAR2(32),
  QS_TIME         DATE,
  CTCT_ADDR       VARCHAR2(256),
  CTCT_PERS       VARCHAR2(32),
  CTCT_TEL        VARCHAR2(32),
  JCDISCU_RSLT    NUMBER(2),
  JCDISCU_OPIN    VARCHAR2(1024),
  IS_ONLGS        NUMBER(2),
  REMARK          VARCHAR2(1024),
  CRE_TIME        DATE,
  UPDT_TIME       DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_WZWF_NOTICE
  is '��ͨ����Υ��Υ����Ϊ֪ͨ��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.WG_TIME
  is 'Υ��ʱ��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.WG_POINT
  is 'Υ��ص�';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.REGUL
  is '����';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.TK
  is '����';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.PROVD_TERM
  is '�涨��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_REGUL
  is '������';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_TK
  is '��������';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_ITEM
  is '����涨��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_DSC
  is '��������';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.ALG_DEPT
  is '������λ';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.DC_DEPT
  is '���鵥λ';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.NTC_TIME
  is '֪ͨʱ��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.QS_PERS
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.QS_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CTCT_ADDR
  is '��ϵ��ַ';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CTCT_PERS
  is '��ϵ��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CTCT_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.JCDISCU_RSLT
  is '��(��)�������۽��
���Ƿ�ͬ�������';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.JCDISCU_OPIN
  is '��(��)�����������';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.IS_ONLGS
  is '�Ƿ���Ҫ���Ϲ�ʾ';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_WZWF_NOTICE
  add constraint PK_TR_LDT_WZWF_NOTICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_WZWF_NOTICE
  add constraint FK_TR_LDT_W_REFERENCE_TR_LDT_L foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_LDT_XCZW_PHOTO
prompt ================================
prompt
create table BJVMMIS.TR_LDT_XCZW_PHOTO
(
  OID          VARCHAR2(32) not null,
  PK_ID        VARCHAR2(32),
  FILE_ID      VARCHAR2(32),
  BRIEF        VARCHAR2(256),
  PHOTOGRAPH   VARCHAR2(32),
  EXHIBIT_NAME VARCHAR2(64),
  TIPSTAFF     VARCHAR2(32),
  WITNESS      VARCHAR2(32),
  REMARK       VARCHAR2(1024),
  CREATE_TIME  DATE,
  UPDATE_TIME  DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_XCZW_PHOTO
  is '�ֳ���֤���Ƭ';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.PK_ID
  is '����ID(���ܼ��������������ֳ������¼)';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.BRIEF
  is '����';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.PHOTOGRAPH
  is '������';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.EXHIBIT_NAME
  is '֤������';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.TIPSTAFF
  is 'ִ����Ա';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.WITNESS
  is '��֤��';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_XCZW_PHOTO
  add constraint PK_XCZW_PHOTO primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TR_LDT_ZK_DEVICE
prompt ===============================
prompt
create table BJVMMIS.TR_LDT_ZK_DEVICE
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHECK_ID      VARCHAR2(32),
  MGR_ID        VARCHAR2(32),
  UNIT          VARCHAR2(128),
  TEL           VARCHAR2(32),
  ADDR          VARCHAR2(256),
  CODE          VARCHAR2(8),
  CHECK_ADDR    VARCHAR2(256),
  OFFEND_ACTION VARCHAR2(1024),
  OFFEND_DESC   VARCHAR2(1024),
  RULE_NAME     VARCHAR2(128),
  RULE_ITEM     VARCHAR2(1024),
  RULE_NUM      VARCHAR2(1024),
  END_TIME      DATE,
  HANDLE_ADDR   VARCHAR2(256),
  SIGN_NAME     VARCHAR2(32),
  SIGN_TIME     DATE,
  REMARK        VARCHAR2(256),
  CRE_TIME      DATE,
  UPDT_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_ZK_DEVICE
  is '�ݿ۵�
�ݿ��豸';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.MGR_ID
  is 'ִ����ԱID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.UNIT
  is '��λ����';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.ADDR
  is 'ͨ�ŵ�ַ';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CODE
  is '��������';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CHECK_ADDR
  is '���ص�';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.OFFEND_ACTION
  is 'Υ��Υ����Ϊ';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.OFFEND_DESC
  is 'Υ��Υ������';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.RULE_NAME
  is '��������';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.RULE_ITEM
  is '������Ŀ';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.RULE_NUM
  is '��������';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.END_TIME
  is '�������ʱ��';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.HANDLE_ADDR
  is '����ص�';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.SIGN_NAME
  is 'ǩ����';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.SIGN_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_ZK_DEVICE
  add constraint PK_TR_LDT_ZK_DEVICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_ZK_DEVICE
  add constraint FK_TR_LDT_Z_REFERENCE_TR_TMG_J foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_LDT_ZK_DEVICE_DETL
prompt ====================================
prompt
create table BJVMMIS.TR_LDT_ZK_DEVICE_DETL
(
  OID       VARCHAR2(32) not null,
  DEVICE_ID VARCHAR2(32),
  NAME      VARCHAR2(32),
  CARD_NUM  VARCHAR2(32),
  NUM       NUMBER(4),
  TYPE      NUMBER(4),
  REMARK    VARCHAR2(1024),
  CRE_TIME  DATE,
  UPDT_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_LDT_ZK_DEVICE_DETL
  is '�ݿ���ϸ��';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.DEVICE_ID
  is '�ݿ�����ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.NAME
  is '�豸����';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.CARD_NUM
  is '�豸���';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.NUM
  is '����';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.TYPE
  is '����';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_LDT_ZK_DEVICE_DETL
  add constraint PK_TR_LDT_ZK_DEVICE_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_LDT_ZK_DEVICE_DETL
  add constraint FK_TR_LDT_Z_REFERENCE_TR_LDT_Z foreign key (DEVICE_ID)
  references BJVMMIS.TR_LDT_ZK_DEVICE (OID);

prompt
prompt Creating table TR_MANAGER_MSG
prompt =============================
prompt
create table BJVMMIS.TR_MANAGER_MSG
(
  OID         VARCHAR2(32) not null,
  TITLE       VARCHAR2(256),
  JJ_TITLE    VARCHAR2(128),
  FILL_PERS   VARCHAR2(32),
  RLSE_NR     VARCHAR2(4000),
  MSG_TYPE    NUMBER(2),
  URL         VARCHAR2(32),
  STATUS      NUMBER(2),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE,
  RLSE_TIME   DATE,
  SS_CLMN     VARCHAR2(32)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_MANAGER_MSG
  is '��ҵ������Ϣ������';
comment on column BJVMMIS.TR_MANAGER_MSG.OID
  is '����ID';
comment on column BJVMMIS.TR_MANAGER_MSG.TITLE
  is '����';
comment on column BJVMMIS.TR_MANAGER_MSG.JJ_TITLE
  is '�������';
comment on column BJVMMIS.TR_MANAGER_MSG.FILL_PERS
  is '���';
comment on column BJVMMIS.TR_MANAGER_MSG.RLSE_NR
  is '��������';
comment on column BJVMMIS.TR_MANAGER_MSG.MSG_TYPE
  is '��Ϣ����
��ҵ���š����ɷ���';
comment on column BJVMMIS.TR_MANAGER_MSG.URL
  is '����
�����������ϴ����������';
comment on column BJVMMIS.TR_MANAGER_MSG.STATUS
  is '����״̬';
comment on column BJVMMIS.TR_MANAGER_MSG.REMARK
  is '��ע';
comment on column BJVMMIS.TR_MANAGER_MSG.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_MANAGER_MSG.UPDATE_TIME
  is '��������';
comment on column BJVMMIS.TR_MANAGER_MSG.RLSE_TIME
  is '��������';
comment on column BJVMMIS.TR_MANAGER_MSG.SS_CLMN
  is '������Ŀ';
alter table BJVMMIS.TR_MANAGER_MSG
  add constraint PK_TR_MANAGER_MSG primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TR_MSG_SEND
prompt ==========================
prompt
create table BJVMMIS.TR_MSG_SEND
(
  OID         VARCHAR2(32) not null,
  MSG_PERS    VARCHAR2(32),
  MSG_QY      VARCHAR2(128),
  MSG_NR      VARCHAR2(256),
  SEND_PERS   VARCHAR2(32),
  SEND_METH   NUMBER(2),
  SEND_TYPE   NUMBER(2),
  SEND_STATUS NUMBER(2),
  UPDATE_TIME DATE,
  REMARK      VARCHAR2(1024),
  SEND_TIME   DATE,
  CREATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_MSG_SEND
  is '��Ϣ���ͱ�';
comment on column BJVMMIS.TR_MSG_SEND.OID
  is '��Ϣ����ID';
comment on column BJVMMIS.TR_MSG_SEND.MSG_PERS
  is '��Ϣ������';
comment on column BJVMMIS.TR_MSG_SEND.MSG_QY
  is '��ҵ����';
comment on column BJVMMIS.TR_MSG_SEND.MSG_NR
  is '��������';
comment on column BJVMMIS.TR_MSG_SEND.SEND_PERS
  is '������';
comment on column BJVMMIS.TR_MSG_SEND.SEND_METH
  is '���ͷ�ʽ
�����ʼ�������';
comment on column BJVMMIS.TR_MSG_SEND.SEND_TYPE
  is '��Ϣ����
��ҵ��ɵ��ڡ���ҵ������ѡ���ҵΥ��Υ�桢��ҵע������';
comment on column BJVMMIS.TR_MSG_SEND.SEND_STATUS
  is '����״̬
�ɹ���ʧ��';
comment on column BJVMMIS.TR_MSG_SEND.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_MSG_SEND.REMARK
  is '��ע';
comment on column BJVMMIS.TR_MSG_SEND.SEND_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_MSG_SEND.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_MSG_SEND
  add constraint PK_TR_MSG_SEND primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TR_RPT_CERT_PSNL
prompt ===============================
prompt
create table BJVMMIS.TR_RPT_CERT_PSNL
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  NAME          VARCHAR2(32),
  SEX           NUMBER(2),
  DOC_TYPE      NUMBER(2),
  DOC_NUM       VARCHAR2(32),
  BRTH_DATE     DATE,
  NATION        NUMBER(2),
  POLIT_AFFL    NUMBER(2),
  BLOOD_TYPE    NUMBER(2),
  CUL_DEG       NUMBER(2),
  ACCT_TYPE     NUMBER(2),
  HM_ADDRES     VARCHAR2(256),
  NOW_ADDRES    VARCHAR2(256),
  DISTRICT      VARCHAR2(32),
  ONCE_NAME     VARCHAR2(64),
  FMLY_QS       VARCHAR2(32),
  RESIDE_QS     VARCHAR2(32),
  NATL          VARCHAR2(32),
  RSDT_NUM      VARCHAR2(32),
  RSDT_ADDRES   VARCHAR2(256),
  TEL           VARCHAR2(32),
  PHONE         VARCHAR2(32),
  EMAIL         VARCHAR2(128),
  PSTL_CODE     VARCHAR2(8),
  CTCT__ADDRES  VARCHAR2(256),
  GS_ADDRES     VARCHAR2(32),
  CERT_CODE     VARCHAR2(32),
  STATUS        NUMBER(2),
  FZ_TIME       DATE,
  START_TIME    DATE,
  END_TIME      DATE,
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_CERT_PSNL
  is '��ҵ��Ա
�д�ҵ�ʸ�֤��';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.OID
  is '��ҵ��ID';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NAME
  is '����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.SEX
  is '�Ա�';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.DOC_TYPE
  is '֤������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.DOC_NUM
  is '֤������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.BRTH_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NATION
  is '����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.POLIT_AFFL
  is '������ò';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.BLOOD_TYPE
  is 'Ѫ��';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CUL_DEG
  is '�Ļ��̶�';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.ACCT_TYPE
  is '��������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.HM_ADDRES
  is '��ͥסַ';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NOW_ADDRES
  is '�־�ס��ַ';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.DISTRICT
  is '��������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.ONCE_NAME
  is '������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.FMLY_QS
  is '��ͥ����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.RESIDE_QS
  is '��ס������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NATL
  is '����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.RSDT_NUM
  is '���ڱ�����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.RSDT_ADDRES
  is '�������ڵ�';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.PHONE
  is '��ϵ���ֻ�';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.EMAIL
  is '��������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.PSTL_CODE
  is '��������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CTCT__ADDRES
  is '��ϵ��ַ';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.GS_ADDRES
  is '������';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CERT_CODE
  is '��ҵ�ʸ�֤��';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.STATUS
  is '��ְ״̬
1�ڸڡ�2����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.FZ_TIME
  is '��֤����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.START_TIME
  is '֤����ʼ����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.END_TIME
  is '֤����ֹ����';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_CERT_PSNL
  add constraint PK_TR_RPT_CERT_PSNL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_RPT_ENTERPRISE_LEVEL
prompt ======================================
prompt
create table BJVMMIS.TR_RPT_ENTERPRISE_LEVEL
(
  OID              VARCHAR2(32) not null,
  ENTERPRISE_ID    VARCHAR2(32),
  YEAR             VARCHAR2(8),
  ASSESS_TIME      DATE,
  ENTERPRISE_LEVEL NUMBER(2),
  REMARK           VARCHAR2(1024),
  CREATE_TIME      DATE,
  UPDATE_TIME      DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_ENTERPRISE_LEVEL
  is '��ҵ���������ȼ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.ENTERPRISE_ID
  is '�ȼ�ID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.YEAR
  is '���';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.ASSESS_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.ENTERPRISE_LEVEL
  is '��ҵ�ȼ�';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_ENTERPRISE_LEVEL
  add constraint PK_TR_RPT_ENTERPRISE_LEVEL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_ENTERPRISE_LEVEL
  add constraint FK_TR_RPT_E_REFERENCE_TR_RPT_1 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_REPAIR_PSNL
prompt =================================
prompt
create table BJVMMIS.TR_RPT_REPAIR_PSNL
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  NAME          VARCHAR2(32),
  SEX           NUMBER(2),
  DOC_TYPE      NUMBER(2),
  DOC_NUM       VARCHAR2(32),
  BRTH_DATE     DATE,
  NATION        NUMBER(2),
  POLIT_AFFL    VARCHAR2(32),
  BLOOD_TYPE    NUMBER(2),
  CUL_DEG       NUMBER(2),
  ACCT_TYPE     NUMBER(2),
  HM_ADDRES     VARCHAR2(256),
  NOW_ADDRES    VARCHAR2(256),
  DISTRICT      VARCHAR2(32),
  ONCE_NAME     VARCHAR2(64),
  FMLY_QS       VARCHAR2(32),
  RESIDE_QS     VARCHAR2(32),
  NATL          VARCHAR2(32),
  RSDT_NUM      VARCHAR2(32),
  RSDT_ADDRES   VARCHAR2(256),
  TEL           VARCHAR2(32),
  PHONE         VARCHAR2(32),
  EMAIL         VARCHAR2(128),
  PSTL_CODE     VARCHAR2(8),
  CTCT__ADDRES  VARCHAR2(256),
  GS_ADDRES     VARCHAR2(32),
  CERT_CODE     VARCHAR2(32),
  STATUS        NUMBER(2),
  JOBPOST       VARCHAR2(128),
  CAND_POST     VARCHAR2(32),
  FILL_TM       DATE,
  MART_STATU    VARCHAR2(32),
  PYS_CONDT     VARCHAR2(32),
  STATURE       NUMBER(4),
  WG            NUMBER(4),
  SOC_SCRT      VARCHAR2(32),
  ARRI_TIME     DATE,
  EXPT_SALA     VARCHAR2(32),
  UGCY_NAME     VARCHAR2(32),
  UGCY_TEL      VARCHAR2(32),
  WORK_TRSF     VARCHAR2(32),
  OVERTIME      VARCHAR2(32),
  EDU_BEGANTM   DATE,
  EDU_OVERTM    DATE,
  GRTE_SCH      VARCHAR2(128),
  MAGOR         VARCHAR2(128),
  EDU_GRND      VARCHAR2(32),
  COSE_TAK      VARCHAR2(256),
  JOB_CONT      VARCHAR2(1024),
  RELTS_NAME    VARCHAR2(32),
  RELATION      VARCHAR2(32),
  RELTS_AGE     NUMBER(4),
  RELTS_CONP    VARCHAR2(128),
  RELTS_POST    VARCHAR2(128),
  RELTS_TEL     VARCHAR2(32),
  PREP_SIGN     VARCHAR2(32),
  PERMN_ADDR    VARCHAR2(256),
  ENTR_TIME     DATE,
  QUIT_TIME     DATE,
  POSN          VARCHAR2(256),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPAIR_PSNL
  is 'ά�޴�ҵ��Ա��
�д�ҵ�ʸ�֤�˺��޴�ҵ�ʸ�֤��
';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.OID
  is 'ά����ԱID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NAME
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.SEX
  is '�Ա�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.DOC_TYPE
  is '֤������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.DOC_NUM
  is '֤������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.BRTH_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NATION
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.POLIT_AFFL
  is '������ò';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.BLOOD_TYPE
  is 'Ѫ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CUL_DEG
  is '�Ļ��̶�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ACCT_TYPE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.HM_ADDRES
  is '��ͥסַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NOW_ADDRES
  is '�־�ס��ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.DISTRICT
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ONCE_NAME
  is '������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.FMLY_QS
  is '��ͥ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RESIDE_QS
  is '��ס������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NATL
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RSDT_NUM
  is '���ڱ�����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RSDT_ADDRES
  is '�������ڵ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PHONE
  is '��ϵ���ֻ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EMAIL
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PSTL_CODE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CTCT__ADDRES
  is '��ϵ��ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.GS_ADDRES
  is '������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CERT_CODE
  is '��ҵ�ʸ�֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.STATUS
  is '��ְ״̬
1�ڸڡ�2����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.JOBPOST
  is '��ְ��λ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CAND_POST
  is 'ӦƸ��λ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.FILL_TM
  is '�������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.MART_STATU
  is '����״��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PYS_CONDT
  is '����״��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.STATURE
  is '��� cm';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.WG
  is '���� kg';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.SOC_SCRT
  is '�Ƿ�μ��籣';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ARRI_TIME
  is 'Ԥ�Ƶ�������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EXPT_SALA
  is '������н';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.UGCY_NAME
  is '������ϵ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.UGCY_TEL
  is '������ϵ�˵绰';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.WORK_TRSF
  is '�ܷ���ܹ�������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.OVERTIME
  is '�ܷ�Ӱ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EDU_BEGANTM
  is '������ʼ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EDU_OVERTM
  is '������������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.GRTE_SCH
  is '��ҵԺУ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.MAGOR
  is 'רҵ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EDU_GRND
  is '���ѧ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.COSE_TAK
  is '��ѧ�γ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.JOB_CONT
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_NAME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELATION
  is '��������ϵ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_AGE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_CONP
  is '����������λ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_POST
  is '����ְ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_TEL
  is '������ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PREP_SIGN
  is '�����ǩ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PERMN_ADDR
  is '������ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ENTR_TIME
  is '��ְ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.QUIT_TIME
  is '��ְ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.POSN
  is 'ְ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_REPAIR_PSNL
  add constraint PK_REPAIR_PSNL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_REPAIR_PSNL
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT_7 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_ENTERPR_EVAL
prompt ==================================
prompt
create table BJVMMIS.TR_RPT_ENTERPR_EVAL
(
  OID           VARCHAR2(32) not null,
  FILE_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  EVAL_NAME     VARCHAR2(32),
  PSNL_ID       VARCHAR2(32),
  EVAL_TIME     DATE,
  REMARK        VARCHAR2(1024),
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_ENTERPR_EVAL
  is 'ά����ҵ����Ա����';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.OID
  is '��Ա����ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.EVAL_NAME
  is '����';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.PSNL_ID
  is 'ά�޴�ҵ��ԱID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.EVAL_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.CREATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_ENTERPR_EVAL
  add constraint PK_ENTERPR_EVAL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_ENTERPR_EVAL
  add constraint FK_TR_RPT_E_REFERENCE_TR_RPT34 foreign key (PSNL_ID)
  references BJVMMIS.TR_RPT_REPAIR_PSNL (OID);

prompt
prompt Creating table TR_RPT_ENTERPR_EVAL_DETL
prompt =======================================
prompt
create table BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL
(
  OID         VARCHAR2(32) not null,
  EVAL_ID     VARCHAR2(32),
  EVAL_INDX   VARCHAR2(32),
  EVAL_RSLT   NUMBER(2),
  REMARK      VARCHAR2(1024),
  UPDATE_TIME DATE,
  CREATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL
  is 'ά����ҵ����Ա������ϸ';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.OID
  is '��Ա������ϸDI';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.EVAL_ID
  is '��Ա����ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.EVAL_INDX
  is '����ָ��
���س��ͳ��桢�������������ԡ�ά�޳�������������Ŷ�Э�����񡢲μ�ѧϰ��ѵ�����ִ�а�ȫ������������������ҵ������������Ͱ���ά���豸��ʩ���';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.EVAL_RSLT
  is '���۽��
1�á�2�Ϻá�3һ�㡢4��';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.CREATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL
  add constraint PK_TR_RPT_ENTERPR_EVAL_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL
  add constraint FK_TR_RPT_E_REFERENCE_TR_RPT_E foreign key (EVAL_ID)
  references BJVMMIS.TR_RPT_ENTERPR_EVAL (OID);

prompt
prompt Creating table TR_RPT_IMPORT_EQUIP
prompt ==================================
prompt
create table BJVMMIS.TR_RPT_IMPORT_EQUIP
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  EQUIP_NAME      VARCHAR2(128),
  EQUIP_CODE      VARCHAR2(32),
  EQUIP_BH        VARCHAR2(32),
  EQUIP_TYPE      VARCHAR2(32),
  EQUIP_MODEL     VARCHAR2(32),
  EQUIP_DATE      DATE,
  MAINT_DATE      DATE,
  NEXT_MAINT_DATE DATE,
  BUY_TIME        DATE,
  USE_SITUAT      VARCHAR2(1024),
  EQUIP_STATUS    NUMBER(2),
  MAKE_BUS        VARCHAR2(128),
  IFK             NUMBER(2),
  RESP_ID         VARCHAR2(64),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_IMPORT_EQUIP
  is '��ҵ�ص��豸��';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.OID
  is '�豸ID';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_NAME
  is '�豸����';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_CODE
  is '�豸���루�����ֵ䣩';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_BH
  is '�豸��ţ��ֶ����룬�豸Ψһ��';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_TYPE
  is '�豸����';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_MODEL
  is '�豸�ͺ�';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_DATE
  is '�豸��������';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.MAINT_DATE
  is '�豸ά������';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.NEXT_MAINT_DATE
  is '�豸�´�ά������';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.BUY_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.USE_SITUAT
  is 'ʹ�����';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_STATUS
  is '�豸��Ч״̬';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.MAKE_BUS
  is '������';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.IFK
  is '�Ƿ��ص��豸';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.RESP_ID
  is '������
(ȡά����Ա��ID)';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_IMPORT_EQUIP
  add constraint PK_TR_RPT_IMPORT_EQUIP primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_IMPORT_EQUIP
  add constraint FK_TR_RPT_I_REFERENCE_TR_RPT_R foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_IMPORT_EVAL
prompt =================================
prompt
create table BJVMMIS.TR_RPT_IMPORT_EVAL
(
  OID             VARCHAR2(32) not null,
  EQUIP_ID        VARCHAR2(32),
  ENTERPRISE_ID   VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  EQUIP_CODE      VARCHAR2(32),
  PRMT_NUM        VARCHAR2(32),
  EQUIP_NAME      VARCHAR2(128),
  EQUIP_TYPE      VARCHAR2(32),
  EQUIP_MODEL     VARCHAR2(32),
  EQUIP_TIME      DATE,
  STATUS          NUMBER(2),
  VLD_END_TIME    DATE,
  APRV_DEPT_NAME  VARCHAR2(128),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_IMPORT_EVAL
  is '�豸���۱�';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_ID
  is '�豸ID';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_CODE
  is '�豸����';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.PRMT_NUM
  is '���֤��';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_NAME
  is '�豸����';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_TYPE
  is '�豸����';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_MODEL
  is '�豸�ͺ�';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_TIME
  is '���ۺϸ�ʱ��';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.STATUS
  is '״̬
1���ϸ�2���ϸ�';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.VLD_END_TIME
  is '��Ч�ڽ�ֹ����';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.APRV_DEPT_NAME
  is '��������';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_IMPORT_EVAL
  add constraint PK_TR_RPT_IMPORT_EVAL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_IMPORT_EVAL
  add constraint FK_TR_RPT_I_REFERENCE_TR_RPT_I foreign key (EQUIP_ID)
  references BJVMMIS.TR_RPT_IMPORT_EQUIP (OID);

prompt
prompt Creating table TR_RPT_SCENE_INQUEST
prompt ===================================
prompt
create table BJVMMIS.TR_RPT_SCENE_INQUEST
(
  OID            VARCHAR2(32) not null,
  ��ҵID           VARCHAR2(32),
  INQUEST_STATUS NUMBER(2),
  INQUEST_RSLT   NUMBER(2),
  REMARK         VARCHAR2(1024),
  UPDATE_TIME    DATE,
  CREATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_SCENE_INQUEST
  is '�ֳ������(ָ��)
������ҵ������Ϣ(����ϵͳ����)��������б��������Щ�ǳ���״̬����ҵ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.OID
  is '����ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.��ҵID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.INQUEST_STATUS
  is '����״̬
(�����С��������)';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.INQUEST_RSLT
  is '�����
������������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_SCENE_INQUEST
  add constraint PK_SCENE_INQUEST primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_SCENE_INQUEST
  add constraint FK_TR_RPT_S_REFERENCE_TR_120 foreign key (��ҵID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_INQUEST_PERSON
prompt ====================================
prompt
create table BJVMMIS.TR_RPT_INQUEST_PERSON
(
  OID         VARCHAR2(32) not null,
  MGR_ID      VARCHAR2(32),
  PK_ID       VARCHAR2(32),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_INQUEST_PERSON
  is '�ֳ�������Ա��';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.MGR_ID
  is '��ԱID';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.PK_ID
  is '����ID(�����ID)';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_INQUEST_PERSON
  add constraint PK_TR_RPT_INQUEST_PERSON primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_INQUEST_PERSON
  add constraint FK_TR_RPT_I_REFERENCE_TR_RPT_S foreign key (PK_ID)
  references BJVMMIS.TR_RPT_SCENE_INQUEST (OID);

prompt
prompt Creating table TR_RPT_MAJOR_MODEL
prompt =================================
prompt
create table BJVMMIS.TR_RPT_MAJOR_MODEL
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  LABEL         VARCHAR2(128),
  MODEL         VARCHAR2(32),
  REMARK        VARCHAR2(256),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_MAJOR_MODEL
  is '���޳���';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.LABEL
  is '����';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.MODEL
  is '�ͺ�';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_MAJOR_MODEL
  add constraint PK_TR_RPT_MAJOR_MODEL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_MAJOR_MODEL
  add constraint FK_TR_RPT_M_REFERENCE_TR_RPT_R foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_MOTOR_VEHICLE
prompt ===================================
prompt
create table BJVMMIS.TR_RPT_MOTOR_VEHICLE
(
  OID         VARCHAR2(32) not null,
  VEHICLEID   VARCHAR2(32),
  VEHIDCOLOR  VARCHAR2(32),
  VEHCLASS    VARCHAR2(32),
  FRAME_CODE  VARCHAR2(32),
  MOTOR_CODE  VARCHAR2(32),
  REMARK      VARCHAR2(256),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_MOTOR_VEHICLE
  is '��������,ֻ���ӣ���ɾ��
����ҵ�ϱ�ά����Ϣ��ȡ��';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.OID
  is '����ID';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.VEHICLEID
  is '���ƺ���';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.VEHIDCOLOR
  is '������ɫ����';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.VEHCLASS
  is '�������ͱ���';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.FRAME_CODE
  is '���ܺ�';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.MOTOR_CODE
  is '��������';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_MOTOR_VEHICLE
  add constraint PK_TR_RPT_MOTOR_VEHICLE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_RPT_OWNER_EVAL
prompt ================================
prompt
create table BJVMMIS.TR_RPT_OWNER_EVAL
(
  OID         VARCHAR2(32) not null,
  FILE_ID     VARCHAR2(32),
  REPAIR_ID   VARCHAR2(32),
  OWNR_NAME   VARCHAR2(32),
  OWNR_TEL    VARCHAR2(32),
  EVAL_INDX   VARCHAR2(32),
  PSNL_ID     VARCHAR2(32),
  EVAL_RSLT   NUMBER(2),
  EVAL_STATUS NUMBER(2),
  CREATE_DATE DATE,
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_OWNER_EVAL
  is '������ά�޼�¼����';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.OID
  is '��Ա����ID';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.REPAIR_ID
  is 'ά�޼�¼';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.OWNR_NAME
  is '��������';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.OWNR_TEL
  is '������ϵ�绰';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.EVAL_INDX
  is '����ָ��
�ۺ�����ָ�ꡢר������ָ�꣨ά�޽Ӵ�����ָ�ꡢά��������Ч������ָ�꣩';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.PSNL_ID
  is 'ά����ԱID';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.EVAL_RSLT
  is '���۽��
���⡢�������⡢������';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.EVAL_STATUS
  is '����״̬
1��Ч2��Ч';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.CREATE_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_OWNER_EVAL
  add constraint PK_TR_RPT_OWNER_EVAL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_OWNER_EVAL
  add constraint FK_TR_RPT_O_REFERENCE_TR_RPT_R foreign key (PSNL_ID)
  references BJVMMIS.TR_RPT_REPAIR_PSNL (OID);

prompt
prompt Creating table TR_RPT_PERS_CERT
prompt ===============================
prompt
create table BJVMMIS.TR_RPT_PERS_CERT
(
  OID         VARCHAR2(32) not null,
  PSNL_ID     VARCHAR2(32),
  FILE_ID     VARCHAR2(32),
  PERS_NAME   VARCHAR2(64),
  PERS_TYPE   VARCHAR2(32),
  PERS_NUM    VARCHAR2(32),
  PERS_TIME   DATE,
  AWRD_COMPY  VARCHAR2(128),
  START_TIME  DATE,
  END_TIME    DATE,
  PERS_LVL    VARCHAR2(32),
  WORK_TYPE   VARCHAR2(32),
  JS_LEVEL    VARCHAR2(32),
  REMARK      VARCHAR2(1024),
  UPDATE_TIME DATE,
  CREATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_PERS_CERT
  is '��Ա֤��';
comment on column BJVMMIS.TR_RPT_PERS_CERT.OID
  is '֤��ID';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PSNL_ID
  is 'ά����ԱID';
comment on column BJVMMIS.TR_RPT_PERS_CERT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_NAME
  is '֤������';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_TYPE
  is '֤������';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_NUM
  is '֤����';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_TIME
  is '��֤����';
comment on column BJVMMIS.TR_RPT_PERS_CERT.AWRD_COMPY
  is '�䷢��λ';
comment on column BJVMMIS.TR_RPT_PERS_CERT.START_TIME
  is '֤����ʼ����';
comment on column BJVMMIS.TR_RPT_PERS_CERT.END_TIME
  is '֤���ֹ����';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_LVL
  is '֤�鼶��
�������м����߼�';
comment on column BJVMMIS.TR_RPT_PERS_CERT.WORK_TYPE
  is '�������';
comment on column BJVMMIS.TR_RPT_PERS_CERT.JS_LEVEL
  is '��������';
comment on column BJVMMIS.TR_RPT_PERS_CERT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_PERS_CERT.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_PERS_CERT.CREATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_PERS_CERT
  add constraint PK_TR_RPT_PERS_CERT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_PERS_CERT
  add constraint FK_TR_RPT_P_REFERENCE_TR_RPT_R foreign key (PSNL_ID)
  references BJVMMIS.TR_RPT_REPAIR_PSNL (OID);

prompt
prompt Creating table TR_RPT_PROJ_PRICE
prompt ================================
prompt
create table BJVMMIS.TR_RPT_PROJ_PRICE
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  BRAND_MODEL   VARCHAR2(64),
  PROJ_NAME     VARCHAR2(256),
  WORK_FEE      NUMBER(10,3),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_PROJ_PRICE
  is 'ά����Ŀ�۸��';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.OID
  is 'ά�޼۸�ID';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.ENTERPRISE_ID
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.BRAND_MODEL
  is 'Ʒ���ͺ�';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.PROJ_NAME
  is 'ά����Ŀ����';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.WORK_FEE
  is 'ά�޹�ʱ��';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_PROJ_PRICE
  add constraint PK_TR_RPT_PROJ_PRICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_PROJ_PRICE
  add constraint FK_TR_RPT_P_REFERENCE_TR_RPT_E foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_ENTERPRISE_VERIFY (OID);

prompt
prompt Creating table TR_RPT_REPAIR_PSNL_HST
prompt =====================================
prompt
create table BJVMMIS.TR_RPT_REPAIR_PSNL_HST
(
  OID           VARCHAR2(32) not null,
  PSNL_ID       VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  NAME          VARCHAR2(32),
  SEX           NUMBER(2),
  DOC_TYPE      NUMBER(2),
  DOC_NUM       VARCHAR2(32),
  BRTH_DATE     DATE,
  NATION        NUMBER(2),
  POLIT_AFFL    VARCHAR2(32),
  BLOOD_TYPE    NUMBER(2),
  CUL_DEG       NUMBER(2),
  ACCT_TYPE     NUMBER(2),
  HM_ADDRES     VARCHAR2(256),
  NOW_ADDRES    VARCHAR2(256),
  DISTRICT      VARCHAR2(32),
  ONCE_NAME     VARCHAR2(64),
  FMLY_QS       VARCHAR2(32),
  RESIDE_QS     VARCHAR2(32),
  NATL          VARCHAR2(32),
  RSDT_NUM      VARCHAR2(32),
  RSDT_ADDRES   VARCHAR2(256),
  TEL           VARCHAR2(32),
  PHONE         VARCHAR2(32),
  EMAIL         VARCHAR2(128),
  PSTL_CODE     VARCHAR2(8),
  CTCT__ADDRES  VARCHAR2(256),
  GS_ADDRES     VARCHAR2(32),
  CERT_CODE     VARCHAR2(32),
  STATUS        NUMBER(2),
  JOBPOST       VARCHAR2(128),
  CAND_POST     VARCHAR2(32),
  FILL_TM       DATE,
  MART_STATU    VARCHAR2(32),
  PYS_CONDT     VARCHAR2(32),
  STATURE       NUMBER(4),
  WG            NUMBER(4),
  SOC_SCRT      VARCHAR2(32),
  ARRI_TIME     DATE,
  EXPT_SALA     VARCHAR2(32),
  UGCY_NAME     VARCHAR2(32),
  UGCY_TEL      VARCHAR2(32),
  WORK_TRSF     VARCHAR2(32),
  OVERTIME      VARCHAR2(32),
  EDU_BEGANTM   DATE,
  EDU_OVERTM    DATE,
  GRTE_SCH      VARCHAR2(128),
  MAGOR         VARCHAR2(128),
  EDU_GRND      VARCHAR2(32),
  COSE_TAK      VARCHAR2(256),
  JOB_CONT      VARCHAR2(1024),
  RELTS_NAME    VARCHAR2(32),
  RELATION      VARCHAR2(32),
  RELTS_AGE     NUMBER(4),
  RELTS_CONP    VARCHAR2(128),
  RELTS_POST    VARCHAR2(128),
  RELTS_TEL     VARCHAR2(32),
  PREP_SIGN     VARCHAR2(32),
  PERMN_ADDR    VARCHAR2(256),
  ENTR_TIME     DATE,
  QUIT_TIME     DATE,
  POSN          VARCHAR2(256),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPAIR_PSNL_HST
  is 'ά�޴�ҵ��Ա��ʷ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PSNL_ID
  is 'ά����ԱID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NAME
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.SEX
  is '�Ա�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.DOC_TYPE
  is '֤������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.DOC_NUM
  is '֤������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.BRTH_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NATION
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.POLIT_AFFL
  is '������ò';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.BLOOD_TYPE
  is 'Ѫ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CUL_DEG
  is '�Ļ��̶�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ACCT_TYPE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.HM_ADDRES
  is '��ͥסַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NOW_ADDRES
  is '�־�ס��ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.DISTRICT
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ONCE_NAME
  is '������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.FMLY_QS
  is '��ͥ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RESIDE_QS
  is '��ס������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NATL
  is '����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RSDT_NUM
  is '���ڱ�����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RSDT_ADDRES
  is '�������ڵ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PHONE
  is '��ϵ���ֻ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EMAIL
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PSTL_CODE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CTCT__ADDRES
  is '��ϵ��ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.GS_ADDRES
  is '������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CERT_CODE
  is '��ҵ�ʸ�֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.STATUS
  is '��ְ״̬
1�ڸڡ�2����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.JOBPOST
  is '��ְ��λ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CAND_POST
  is 'ӦƸ��λ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.FILL_TM
  is '�������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.MART_STATU
  is '����״��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PYS_CONDT
  is '����״��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.STATURE
  is '��� cm';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.WG
  is '���� kg';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.SOC_SCRT
  is '�Ƿ�μ��籣';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ARRI_TIME
  is 'Ԥ�Ƶ�������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EXPT_SALA
  is '������н';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.UGCY_NAME
  is '������ϵ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.UGCY_TEL
  is '������ϵ�˵绰';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.WORK_TRSF
  is '�ܷ���ܹ�������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.OVERTIME
  is '�ܷ�Ӱ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EDU_BEGANTM
  is '������ʼ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EDU_OVERTM
  is '������������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.GRTE_SCH
  is '��ҵԺУ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.MAGOR
  is 'רҵ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EDU_GRND
  is '���ѧ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.COSE_TAK
  is '��ѧ�γ�';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.JOB_CONT
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_NAME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELATION
  is '��������ϵ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_AGE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_CONP
  is '����������λ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_POST
  is '����ְ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_TEL
  is '������ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PREP_SIGN
  is '�����ǩ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PERMN_ADDR
  is '������ַ';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ENTR_TIME
  is '��ְ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.QUIT_TIME
  is '��ְ����';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.POSN
  is 'ְ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_REPAIR_PSNL_HST
  add constraint PK_TR_RPT_REPAIR_PSNL_HST primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_REPAIR_PSNL_HST
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT_R foreign key (PSNL_ID)
  references BJVMMIS.TR_RPT_REPAIR_PSNL (OID);

prompt
prompt Creating table TR_RPT_REPAIR_QUALITY
prompt ====================================
prompt
create table BJVMMIS.TR_RPT_REPAIR_QUALITY
(
  OID            VARCHAR2(32) not null,
  REPAIR_ID      VARCHAR2(32),
  VEHICLEID      VARCHAR2(32),
  VEHIDCOLOR     VARCHAR2(32),
  MAINTAIN_DATE  DATE,
  QUALITY_RESULT NUMBER(2),
  CREATE_DATE    DATE,
  QUALITY_NAME   VARCHAR2(32),
  QUALITY_PHONE  VARCHAR2(32),
  REMARK         VARCHAR2(1024),
  CREATE_TIME    DATE,
  UPDATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPAIR_QUALITY
  is 'ά����������';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.OID
  is '����ID';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.REPAIR_ID
  is 'ά��ID';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.VEHICLEID
  is '���ƺ�';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.VEHIDCOLOR
  is '������ɫ';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.MAINTAIN_DATE
  is 'ά������';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.QUALITY_RESULT
  is '1������   2����   3һ��   4��̫����   5������ ';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.CREATE_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.QUALITY_NAME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.QUALITY_PHONE
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_REPAIR_QUALITY
  add constraint PK_REPAIR_QUALITY primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_RPT_REPAIR_RECORD
prompt ===================================
prompt
create table BJVMMIS.TR_RPT_REPAIR_RECORD
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  SEND_PERS       VARCHAR2(64),
  SEND_PHONE      VARCHAR2(32),
  VEHICLEID       VARCHAR2(32),
  VEHIDCOLOR      VARCHAR2(32),
  VEHICLE_NUM     VARCHAR2(32),
  FRAME_CODE      VARCHAR2(32),
  REPAIR_ITM      VARCHAR2(128),
  RECV_NUM        VARCHAR2(32),
  IN_DATE         DATE,
  INTO_VALUE      NUMBER(8),
  OUT_DATE        DATE,
  FINISH_TIME     DATE,
  QAL_TIME        DATE,
  QAL_ENT_TIME    DATE,
  QAL_ENT_VALUE   DATE,
  OWNER_NAME      VARCHAR2(32),
  OWNER_PHONE     VARCHAR2(32),
  REPAIR_SFZH     VARCHAR2(32),
  CHECK_SFZH      VARCHAR2(32),
  OUT_VALUE       NUMBER(8),
  INVC_NUM        NUMBER(12),
  REPAIR_NUM      NUMBER(12),
  CERT_NUM        NUMBER(12),
  REMARK          VARCHAR2(256),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPAIR_RECORD
  is '����ά����Ϣ(�ϸ�֤��Ϣ)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OID
  is 'ά��ID';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.ENTERPRISE_NAME
  is 'ά����ҵ����(���޷�����)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.SEND_PERS
  is '����������';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.SEND_PHONE
  is '��������ϵ�绰(�ֻ���)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.VEHICLEID
  is '���ƺ���';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.VEHIDCOLOR
  is '������ɫ';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.VEHICLE_NUM
  is '�����ͺ�(Ҳ�ɳƳ���)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.FRAME_CODE
  is '���ܺ�';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REPAIR_ITM
  is 'ά����Ŀ';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.RECV_NUM
  is '�Ӵ������֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.IN_DATE
  is 'ά�޽�������';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.INTO_VALUE
  is '������̱�ʾֵ';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OUT_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.FINISH_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.QAL_TIME
  is '������';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.QAL_ENT_TIME
  is '���ʽ�ֹ����';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.QAL_ENT_VALUE
  is '���ʽ�ֹ���';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OWNER_NAME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OWNER_PHONE
  is '�����ֻ���';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REPAIR_SFZH
  is 'ά�������֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.CHECK_SFZH
  is '����Ա���֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OUT_VALUE
  is '������̱�ʾֵ';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.INVC_NUM
  is 'ά�޷�Ʊ��';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REPAIR_NUM
  is 'ά�޹�����';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.CERT_NUM
  is 'ά�޿��������ϸ�֤��';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_REPAIR_RECORD
  add constraint PK_REPAIR_RECORD primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_REPAIR_RECORD
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT_6 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_REPUT_ARCHIVE
prompt ===================================
prompt
create table BJVMMIS.TR_RPT_REPUT_ARCHIVE
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  LEGAL_PERS      VARCHAR2(64),
  REPAIR_TEL      VARCHAR2(32),
  BUS_TEL         VARCHAR2(32),
  STATUS          NUMBER(2),
  ARCHIVE_TIME    DATE,
  ENTERPRISE_GLQK VARCHAR2(1024),
  QZ_TIME         DATE,
  YEAR            VARCHAR2(8),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_REPUT_ARCHIVE
  is 'ά����ҵ������������';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.LEGAL_PERS
  is '���˴���';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.REPAIR_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.BUS_TEL
  is 'ҵ����ϵ�绰';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.STATUS
  is '״̬(�����޸ġ����ͨ�������δͨ������ҵ����ϱ�)';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ARCHIVE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ENTERPRISE_GLQK
  is '��ҵ�������';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.QZ_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.YEAR
  is '���';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_REPUT_ARCHIVE
  add constraint PK_TR_RPT_REPUT_ARCHIVE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_REPUT_ARCHIVE
  add constraint FK_TR_RPT_R_REFERENCE_TR_R121 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_REPUT_EVAL_PK
prompt ===================================
prompt
create table BJVMMIS.TR_RPT_REPUT_EVAL_PK
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  NUM           NUMBER(4),
  ASSESS_TIME   DATE,
  REGION        VARCHAR2(32),
  STATUS        NUMBER(2),
  GSQK          VARCHAR2(1024),
  EVAL_NUM      NUMBER(4),
  EVAL_TIME     DATE,
  QAL_LEVEL     NUMBER(2),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPUT_EVAL_PK
  is 'ά����ҵ����������������';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.OID
  is '������������ID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.NUM
  is '�����ܷ���';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.ASSESS_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.REGION
  is '��������
���ر��롢�������룿��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.STATUS
  is '״̬
�����ˡ����˳�������ʾ����������������ٱ����ߺ�ʵ��������������ʾ�������������';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.GSQK
  is '��ʾ���';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.EVAL_NUM
  is '�����ܷ���';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.EVAL_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.QAL_LEVEL
  is '���������ȼ� 0:AAA 1:AA 2:A 3:B';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_REPUT_EVAL_PK
  add constraint PK_REPUT_EVAL_PK primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_REPUT_EVAL_PK
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT28 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_REPUT_EVAL
prompt ================================
prompt
create table BJVMMIS.TR_RPT_REPUT_EVAL
(
  OID           VARCHAR2(32) not null,
  EVAL_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  CHK_TYPE      VARCHAR2(32),
  CHK_ITEM      VARCHAR2(256),
  CHK_ITEM_CODE VARCHAR2(32),
  NUM           NUMBER(4),
  ASSESS_TIME   DATE,
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REPUT_EVAL
  is 'ά����ҵ��������������';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.OID
  is '��������ID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.EVAL_ID
  is '����ID
TR_REPUT_EVAL_PK';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CHK_TYPE
  is '������
��Ӫ�����ࡢ��ȫ�����ࡢά�������ࡢ���������ࡢ�����ؼ��ࡢ���������ࡢ��ҵ�����ࡢ�ӷ���';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CHK_ITEM
  is '�����
δ���涨�䱸���������ˡ�δ���涨�䱸�ּ����ȼ�֤�顢δ���涨�䱸����ά�ޡ��ް�ȫ���������ƻ�ȫӦ��Ԥ���ġ��豸��ȫ������̣����𡢷������õ�Ȱ�ȫ�ƶȲ���ȫ��ִ�в���λ��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CHK_ITEM_CODE
  is '��������';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.NUM
  is '����';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.ASSESS_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_REPUT_EVAL
  add constraint PK_REPUT_EVAL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_REPUT_EVAL
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT30 foreign key (EVAL_ID)
  references BJVMMIS.TR_RPT_REPUT_EVAL_PK (OID);
alter table BJVMMIS.TR_RPT_REPUT_EVAL
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT36 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_REPUT_HONEST_ARCHIVE
prompt ==========================================
prompt
create table BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE
(
  OID         VARCHAR2(32) not null,
  ��ҵ����        VARCHAR2(128),
  ��������        DATE,
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE
  is 'ά����ҵ���Ź�����';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.��ҵ����
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.��������
  is '��������';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE
  add constraint PK_TR_RPT_REPUT_HONEST_ARCHIVE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TR_RPT_REWARD_PUNISH
prompt ===================================
prompt
create table BJVMMIS.TR_RPT_REWARD_PUNISH
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  PSNL_ID       VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  JC_PERS       VARCHAR2(32),
  JC_RSN        VARCHAR2(1024),
  JC_METH       VARCHAR2(256),
  JC_STATUS     VARCHAR2(32),
  STATUS        VARCHAR2(32),
  JC_DATE       DATE,
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE,
  REMARK        VARCHAR2(1024)
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_REWARD_PUNISH
  is '������Ϣ��';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.OID
  is '����ID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.PSNL_ID
  is '��ԱID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_PERS
  is '������';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_RSN
  is '����ԭ��';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_METH
  is '���ͷ�ʽ';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_STATUS
  is '����״̬
1���� 2����';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.STATUS
  is '״̬
1��Ч 2��Ч';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_DATE
  is '��������';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.REMARK
  is '��ע';
alter table BJVMMIS.TR_RPT_REWARD_PUNISH
  add constraint PK_REWARD_PUNISH primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_REWARD_PUNISH
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT37 foreign key (PSNL_ID)
  references BJVMMIS.TR_RPT_REPAIR_PSNL (OID);

prompt
prompt Creating table TR_RPT_VERIFY_RSLT
prompt =================================
prompt
create table BJVMMIS.TR_RPT_VERIFY_RSLT
(
  OID             VARCHAR2(32) not null,
  VERIFY_ID       VARCHAR2(32),
  ENTERPRISE_ID   VARCHAR2(128),
  ENTERPRISE_NAME VARCHAR2(128),
  YEAR            VARCHAR2(8),
  VERIFY_RSLT     NUMBER(2),
  SUBMIT_TIME     DATE,
  SUBMIT_YEAR     VARCHAR2(8),
  SUBMIT_DEPT     VARCHAR2(64),
  ASSESS_TIME     VARCHAR2(32),
  ASSESS_YEER     VARCHAR2(8),
  ASSESS_DEPT     VARCHAR2(32),
  PRMT_END_TIME   DATE,
  PRMT_CONT_TIME  VARCHAR2(32),
  NOTE_ISS_TIME   DATE,
  VLD_PERS        VARCHAR2(64),
  VLD_TIME        DATE,
  REMARK          VARCHAR2(256),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_VERIFY_RSLT
  is '������ά�޾�Ӫ��ɵǼ���Ϣ��˽��֪ͨ�� ';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.OID
  is '���ID';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VERIFY_ID
  is '�˶�ID';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ENTERPRISE_ID
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.YEAR
  is '���';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VERIFY_RSLT
  is '�˲���
1ͨ��2δͨ��';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.SUBMIT_TIME
  is '��Ȼ�����ά�޾�Ӫ��ɵǼ���Ϣ�������ύ����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.SUBMIT_YEAR
  is '��ɲ����ύ���';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.SUBMIT_DEPT
  is '��ɲ����ύ����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ASSESS_TIME
  is '�����ҵ�������������걨�����ύ����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ASSESS_YEER
  is '���˲����ύ���';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ASSESS_DEPT
  is '���˲����ύ����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.PRMT_END_TIME
  is '���֤��Ч����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.PRMT_CONT_TIME
  is '���֤��������';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.NOTE_ISS_TIME
  is '֪ͨ�鷢������';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VLD_PERS
  is '�����';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VLD_TIME
  is '���ʱ��';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_VERIFY_RSLT
  add constraint PK_VERIFY_RSLT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_VERIFY_RSLT
  add constraint FK_TR_RPT_V_REFERENCE_TR_RPT32 foreign key (VERIFY_ID)
  references BJVMMIS.TR_RPT_ENTERPRISE_VERIFY (OID);

prompt
prompt Creating table TR_RPT_RSLT_DETL
prompt ===============================
prompt
create table BJVMMIS.TR_RPT_RSLT_DETL
(
  OID         VARCHAR2(32) not null,
  RSLT_ID     VARCHAR2(32),
  CNTR_ITEM   VARCHAR2(32),
  RAW_VALUE   VARCHAR2(1024),
  NEW_VALUE   VARCHAR2(1024),
  STD_VALUE   VARCHAR2(1024),
  REMARK      VARCHAR2(256),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_RSLT_DETL
  is '�������ϸ';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.RSLT_ID
  is '���ID';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.CNTR_ITEM
  is '�ȶ���(�ȶ�������)';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.RAW_VALUE
  is 'ԭʼֵ';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.NEW_VALUE
  is '��ֵ';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.STD_VALUE
  is '��׼ֵ';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_RSLT_DETL
  add constraint PK_TR_RPT_RSLT_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_RSLT_DETL
  add constraint FK_TR_RPT_R_REFERENCE_TR_RPT_V foreign key (RSLT_ID)
  references BJVMMIS.TR_RPT_VERIFY_RSLT (OID);

prompt
prompt Creating table TR_RPT_SCENE_INQUEST_DETL
prompt ========================================
prompt
create table BJVMMIS.TR_RPT_SCENE_INQUEST_DETL
(
  OID         VARCHAR2(32) not null,
  CHK_TYPE    VARCHAR2(32),
  CHK_ITEM    VARCHAR2(32),
  STATUS      NUMBER(2),
  REMARK      VARCHAR2(1024),
  UPDATE_TIME DATE,
  CREATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_SCENE_INQUEST_DETL
  is '�ֳ�������ϸ
������ҵ������Ϣ(����ϵͳ����)��������б��������Щ�ǳ���״̬����ҵ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.OID
  is '�ֳ�������ϸID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.CHK_TYPE
  is '����';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.CHK_ITEM
  is '�����';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.STATUS
  is '�����
�Ƿ�';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_SCENE_INQUEST_DETL
  add constraint PK_SCENE_INQUEST_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_SCENE_INQUEST_DETL
  add constraint FK_TR_RPT_S_REFERENCE_TR_RPT25 foreign key (OID)
  references BJVMMIS.TR_RPT_SCENE_INQUEST (OID);

prompt
prompt Creating table TR_RPT_SCENE_INQUEST_REC
prompt =======================================
prompt
create table BJVMMIS.TR_RPT_SCENE_INQUEST_REC
(
  OID            VARCHAR2(32) not null,
  ENTERPRISE_ID  VARCHAR2(32),
  INQUEST_ADDR   VARCHAR2(256),
  INQUEST_RSN    VARCHAR2(1024),
  INQUEST_PERS   VARCHAR2(32),
  INQUEST_TIME   DATE,
  LEGAL_PERS     VARCHAR2(32),
  INQUEST_QK     VARCHAR2(1024),
  INQUEST_YJ     VARCHAR2(1024),
  LEADER         VARCHAR2(32),
  INQUEST_EXAM   VARCHAR2(1024),
  INQUEST_RSLT   NUMBER(2),
  EXAM_TIME      DATE,
  INQUEST_STATUS NUMBER(2),
  REMARK         VARCHAR2(1024),
  UPDATE_TIME    DATE,
  CREATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_SCENE_INQUEST_REC
  is '�ֳ������¼(��ͨ��������ֳ������¼)';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.OID
  is '�����¼ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_ADDR
  is '�����ַ';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_RSN
  is '��������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_PERS
  is '������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.LEGAL_PERS
  is '��ҵ������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_QK
  is '�������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_YJ
  is '�������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.LEADER
  is '�����쵼
��������ҵ���ܴ���ǩ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_EXAM
  is '�ֳ������쵼������
';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_RSLT
  is '��˽��
�Ƿ������ҵ��ҵ����';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.EXAM_TIME
  is '���ʱ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_STATUS
  is '����״̬
�������';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_SCENE_INQUEST_REC
  add constraint PK_SCENE_INQUEST_REC primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_SCENE_INQUEST_REC
  add constraint FK_TR_RPT_S_REFERENCE_TR_RPT24 foreign key (OID)
  references BJVMMIS.TR_RPT_SCENE_INQUEST (OID);

prompt
prompt Creating table TR_RPT_SPCL_REPAIR_MODEL
prompt =======================================
prompt
create table BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  LABEL           VARCHAR2(128),
  MODEL           VARCHAR2(32),
  CNTR_START_TIME DATE,
  CNTR_END_TIME   DATE,
  REPAIR_MODEL    NUMBER(2),
  REMARK          VARCHAR2(256),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL
  is '��Լά�޳���';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.LABEL
  is '����';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.MODEL
  is '�ͺ�';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.CNTR_START_TIME
  is '��ͬ��ʼ����';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.CNTR_END_TIME
  is '��ͬ��ֹ����';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.REPAIR_MODEL
  is 'ά������(1���޳��͡�2��Լά�޳���)';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL
  add constraint PK_TR_RPT_SPCL_REPAIR_MODEL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL
  add constraint FK_TR_RPT_S_REFERENCE_TR_RP122 foreign key (ENTERPRISE_ID)
  references BJVMMIS.TR_RPT_REPAIR_ENTERPRISE (OID);

prompt
prompt Creating table TR_RPT_TBCA_VEHICLE
prompt ==================================
prompt
create table BJVMMIS.TR_RPT_TBCA_VEHICLE
(
  OID            VARCHAR2(32) not null,
  CARID          VARCHAR2(32),
  VEHICLEID      VARCHAR2(32),
  VEHIDCOLOR     VARCHAR2(32),
  SEATNUM        NUMBER(8),
  VEHCERTID      VARCHAR2(32),
  GRANTDATE      DATE,
  FIRSTDATE      DATE,
  EXPIREDATE     DATE,
  VEHCLASS       VARCHAR2(32),
  VEHTCHGRADE    VARCHAR2(32),
  VEHTYPEGRADE   VARCHAR2(32),
  CCERTSTATE     VARCHAR2(32),
  TESTING_DATE   DATE,
  MGRAREA        VARCHAR2(1024),
  TWO_MAINT_TIME DATE,
  SPY_NUM        NUMBER(8),
  REMARK         VARCHAR2(256),
  CREATE_TIME    DATE,
  UPDATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_TBCA_VEHICLE
  is 'Ӫ�˳���,ֻ���ӣ���ɾ��';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.OID
  is 'Ӫ�˳���ID';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.CARID
  is '����ϵͳID';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHICLEID
  is '���ƺ���';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHIDCOLOR
  is '������ɫ����';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.SEATNUM
  is '��λ��';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHCERTID
  is 'Ӫ��֤��';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.GRANTDATE
  is '�˷�����';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.FIRSTDATE
  is '��Ч����';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.EXPIREDATE
  is '��Ч����';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHCLASS
  is '�������ͱ���';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHTCHGRADE
  is '���������ȼ�����';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHTYPEGRADE
  is '�ͳ�������ȼ�����';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.CCERTSTATE
  is '��Ӫ״̬';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.TESTING_DATE
  is '�ۺ����ܼ��ʱ��';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.MGRAREA
  is '��Ӫ��Χ';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.TWO_MAINT_TIME
  is '����ά��ʱ��';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.SPY_NUM
  is '���κ�';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_RPT_TBCA_VEHICLE
  add constraint PK_TR_RPT_TBCA_VEHICLE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_RPT_VERIFY_DETL
prompt =================================
prompt
create table BJVMMIS.TR_RPT_VERIFY_DETL
(
  OID             VARCHAR2(32) not null,
  VERIFY_ID       VARCHAR2(32),
  ENTERPRISE_ID   VARCHAR2(128),
  REGION          VARCHAR2(32),
  PRMT_NUM        VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  JY_ADDRESS      VARCHAR2(128),
  JD_TYPE         VARCHAR2(16),
  ACCTG_METH      VARCHAR2(16),
  LEGAL_PERS      VARCHAR2(20),
  ID              VARCHAR2(32),
  REPAIR_TEL      VARCHAR2(32),
  PHONE_NUM       VARCHAR2(16),
  REPAIR_FAX      VARCHAR2(32),
  EMAIL           VARCHAR2(64),
  PSTL_NUM        VARCHAR2(8),
  BUS_TEL         VARCHAR2(32),
  MGRAREA         VARCHAR2(32),
  PRK_AREA        NUMBER(16,3),
  PLANT_AREA      NUMBER(16,3),
  RPT_AREA        NUMBER(16,3),
  ZD_AREA         NUMBER(16,3),
  FUND_TOTAL      NUMBER(16,3),
  REG_TOTAL       NUMBER(16,3),
  FIX_TOTAL       NUMBER(16,3),
  DESCRIBE        VARCHAR2(4000),
  UPLOAD_TIME     DATE,
  FLOW_TOTAL      NUMBER(16,3),
  PRMT_END_TIME   DATE,
  PRMT_CONT_TIME  VARCHAR2(32),
  ROOM_AREA       NUMBER(4),
  MARK_BRAND      VARCHAR2(64),
  BUS_NUM         VARCHAR2(32),
  IFAID           NUMBER(2),
  IFAID_CAR       NUMBER(2),
  IFFBK           NUMBER(2),
  IFVST           NUMBER(2),
  SERV_PHONE      VARCHAR2(32),
  AID_MODEL       VARCHAR2(128),
  REMARK          VARCHAR2(256),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_RPT_VERIFY_DETL
  is '������ά�޾�Ӫ��ɵǼ���Ϣ�˶Խ����ϸ
���б仯�����ݱ��浽�˱�û�б仯�Ĳ����档
';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.OID
  is '��ϸID';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.VERIFY_ID
  is '�˶�ID';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ENTERPRISE_ID
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REGION
  is '��������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRMT_NUM
  is '��Ӫ���֤��';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.JY_ADDRESS
  is '��Ӫ��ַ';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.JD_TYPE
  is '��������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ACCTG_METH
  is '������ʽ';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.LEGAL_PERS
  is '����������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ID
  is '���֤��';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REPAIR_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PHONE_NUM
  is '�ֻ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REPAIR_FAX
  is '����';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.EMAIL
  is 'EMAIL';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PSTL_NUM
  is '�������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.BUS_TEL
  is 'ҵ��绰';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.MGRAREA
  is '��ɾ�Ӫ��Χ';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRK_AREA
  is 'ͣ�������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PLANT_AREA
  is '�����������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.RPT_AREA
  is '�Ӵ������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ZD_AREA
  is 'ռ�����';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.FUND_TOTAL
  is '�ʽ��ܶ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REG_TOTAL
  is 'ע���ʽ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.FIX_TOTAL
  is '�̶��ʽ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.DESCRIBE
  is '��Ӫ���������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.UPLOAD_TIME
  is '�ϱ�����';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.FLOW_TOTAL
  is '�����ʽ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRMT_END_TIME
  is '���֤��Ч����';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRMT_CONT_TIME
  is '���֤��������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ROOM_AREA
  is '�ܳ�ά�޼�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.MARK_BRAND
  is '��־��';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.BUS_NUM
  is '����ִ�պ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFAID
  is '����24Сʱ��Ԯ�ƶ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFAID_CAR
  is '���޾�Ԯ����ר�ó�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFFBK
  is '���޿ͻ���������ƶ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFVST
  is '���޿ͻ��ط��ƶ�';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.SERV_PHONE
  is '24Сʱ����绰';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.AID_MODEL
  is '��Ԯ���񳵳���';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_RPT_VERIFY_DETL
  add constraint PK_VERIFY_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_RPT_VERIFY_DETL
  add constraint FK_TR_RPT_V_REFERENCE_TR_RPT31 foreign key (VERIFY_ID)
  references BJVMMIS.TR_RPT_ENTERPRISE_VERIFY (OID);

prompt
prompt Creating table TR_TMG_ADM_PENALTY
prompt =================================
prompt
create table BJVMMIS.TR_TMG_ADM_PENALTY
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(128),
  PRMT_NUM        VARCHAR2(32),
  OFFEND_ACTION   VARCHAR2(1024),
  OFFEND_ADDR     VARCHAR2(1024),
  OFFEND_TIME     DATE,
  ADM_PENALTY     VARCHAR2(1024),
  PENALTY_BAS     VARCHAR2(1024),
  COMP_NAME       VARCHAR2(256),
  NAME            VARCHAR2(64),
  REMARK          VARCHAR2(1024),
  UPDATE_TIME     DATE,
  CREATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_ADM_PENALTY
  is '����������Ϣ';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OID
  is 'OID';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.PRMT_NUM
  is '��Ӫ���֤��';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OFFEND_ACTION
  is 'Υ��Υ����Ϊ';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OFFEND_ADDR
  is 'Υ���ص�';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OFFEND_TIME
  is 'Υ��ʱ��';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.ADM_PENALTY
  is '��ȡ����������';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.PENALTY_BAS
  is '��������(�����е�·������������52��)';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.COMP_NAME
  is 'ִ����λ����';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.NAME
  is 'ִ����Ա����';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_ADM_PENALTY
  add constraint PK_TR_TMG_ADM_PENALTY primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_BONUS
prompt ===========================
prompt
create table BJVMMIS.TR_TMG_BONUS
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  FILE_ID       VARCHAR2(32),
  CHK_ITEM      VARCHAR2(64),
  CHK_ITEM_CODE VARCHAR2(32),
  NUM           NUMBER(4),
  BONUS_TIME    DATE,
  REMARK        VARCHAR2(1024),
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_BONUS
  is '��ҵ�ӷּ�¼';
comment on column BJVMMIS.TR_TMG_BONUS.OID
  is '��ҵ�ӷּ�¼ID';
comment on column BJVMMIS.TR_TMG_BONUS.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_BONUS.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_TMG_BONUS.CHK_ITEM
  is '�ӷ���';
comment on column BJVMMIS.TR_TMG_BONUS.CHK_ITEM_CODE
  is '�ӷ������';
comment on column BJVMMIS.TR_TMG_BONUS.NUM
  is '����';
comment on column BJVMMIS.TR_TMG_BONUS.BONUS_TIME
  is '�ӷ�����';
comment on column BJVMMIS.TR_TMG_BONUS.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_BONUS.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_BONUS.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_BONUS
  add constraint PK_TR_TMG_BONUS primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_CASE_XFER
prompt ===============================
prompt
create table BJVMMIS.TR_TMG_CASE_XFER
(
  OID       VARCHAR2(32) not null,
  PK_ID     VARCHAR2(32),
  ACCEPTDPT VARCHAR2(64),
  TRANSFDPT VARCHAR2(64),
  CASECOUSE VARCHAR2(1024),
  ILLEGAL   VARCHAR2(64),
  LAWPERSON VARCHAR2(32),
  CERTIF    VARCHAR2(32),
  ADRRECE   VARCHAR2(256),
  TEL       VARCHAR2(32),
  POSTCODE  VARCHAR2(8),
  ILLACT    VARCHAR2(1024),
  EVIDLIST  VARCHAR2(1024),
  AGENTOPIN VARCHAR2(1024),
  PRINCOPIN VARCHAR2(1024),
  CHOP      VARCHAR2(32),
  CHOPTEL   VARCHAR2(32),
  CHOPADD   VARCHAR2(256),
  CHOPPOST  VARCHAR2(8),
  TRANSDATE DATE,
  REMARK    VARCHAR2(256),
  CRE_TIME  DATE,
  UPDT_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_CASE_XFER
  is '��������֪ͨ��';
comment on column BJVMMIS.TR_TMG_CASE_XFER.OID
  is '����֪ͨID';
comment on column BJVMMIS.TR_TMG_CASE_XFER.PK_ID
  is '����ID(�˶�ID)';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ACCEPTDPT
  is '�����ͻ���';
comment on column BJVMMIS.TR_TMG_CASE_XFER.TRANSFDPT
  is '���ͻ���';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CASECOUSE
  is '����';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ILLEGAL
  is 'Υ��������';
comment on column BJVMMIS.TR_TMG_CASE_XFER.LAWPERSON
  is '����������';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CERTIF
  is '�ʸ�֤��';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ADRRECE
  is '��ַ';
comment on column BJVMMIS.TR_TMG_CASE_XFER.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_TMG_CASE_XFER.POSTCODE
  is '�ʱ�';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ILLACT
  is '��ҪΥ����Ϊ';
comment on column BJVMMIS.TR_TMG_CASE_XFER.EVIDLIST
  is '�ƶ�֤���嵥';
comment on column BJVMMIS.TR_TMG_CASE_XFER.AGENTOPIN
  is '�а������';
comment on column BJVMMIS.TR_TMG_CASE_XFER.PRINCOPIN
  is '��λ�����쵼���';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOP
  is 'ǩ����';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOPTEL
  is '��ϵ�绰��ǩ���ˣ�';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOPADD
  is '��ַ��ǩ���ˣ�';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOPPOST
  is '�ʱࣨǩ���ˣ�';
comment on column BJVMMIS.TR_TMG_CASE_XFER.TRANSDATE
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_CASE_XFER.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_CASE_XFER.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_CASE_XFER
  add constraint PK_TR_TMG_CASE_XFER primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_CHECK_PLAN
prompt ================================
prompt
create table BJVMMIS.TR_TMG_CHECK_PLAN
(
  OID           VARCHAR2(32) not null,
  CHECK_PURPOSE VARCHAR2(256),
  CHECK_BASIS   VARCHAR2(1024),
  CHECK_DEPT    VARCHAR2(32),
  CHECK_CONTENT VARCHAR2(4000),
  CHECK_STATUS  NUMBER(2),
  CHECK_TYPE    NUMBER(2),
  PLAN_NAME     VARCHAR2(256),
  PLAN_TYPE     NUMBER(2),
  PLAN_TIME     DATE,
  MAKE_PERS     VARCHAR2(32),
  REMARK        VARCHAR2(1024),
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_CHECK_PLAN
  is '���ƻ���';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.OID
  is '�ƻ�ID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_PURPOSE
  is '���Ŀ��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_BASIS
  is '�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_DEPT
  is '��鲿��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_CONTENT
  is '�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_STATUS
  is '���״̬
�������С����ʵʩ�С�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_TYPE
  is '������
�ƻ���顢Ͷ�ߡ��ٱ���顢ר�����';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.PLAN_NAME
  is '�ƻ�����';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.PLAN_TYPE
  is '�ƻ�����
��ȡ��¶ȡ���';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.PLAN_TIME
  is '�ƻ�ʱ��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.MAKE_PERS
  is '�ƻ��ƶ���';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_CHECK_PLAN
  add constraint PK_CHECK_PLAN primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_CHECK_PLAN_DETL
prompt =====================================
prompt
create table BJVMMIS.TR_TMG_CHECK_PLAN_DETL
(
  OID           VARCHAR2(32) not null,
  PLAN_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  CHECK_PURPOSE VARCHAR2(256),
  CHECK_BASIS   VARCHAR2(1024),
  CHECK_CONTENT VARCHAR2(1024),
  CHECK_STATUS  NUMBER(2),
  CHECK_TYPE    NUMBER(2),
  CHECK_DEPT    VARCHAR2(64),
  CHECK_RESULT  NUMBER(2),
  ACTL_TIME     DATE,
  FINISH_TIME   DATE,
  REMARK        VARCHAR2(1024),
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_CHECK_PLAN_DETL
  is '���ƻ���ϸ��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.OID
  is '�ƻ���ϸID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.PLAN_ID
  is '�ƻ�ID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_PURPOSE
  is '���Ŀ��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_BASIS
  is '�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_CONTENT
  is '�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_STATUS
  is '���״̬
�������С����ʵʩ�С�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_TYPE
  is '�������
�ƻ���顢ר���顢�ص��顢
�ٱ���Ͷ�߼�顢��ɵǼ���Ϣ�˶Լ��
�������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_DEPT
  is '��鲿��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_RESULT
  is '�����
������������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.ACTL_TIME
  is 'ʵ�ʼ������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.FINISH_TIME
  is 'ʵ���������';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_CHECK_PLAN_DETL
  add constraint PK_CHECK_PLAN_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_TMG_CHECK_PLAN_DETL
  add constraint FK_TR_TMG_C_REFERENCE_TR_TMG_3 foreign key (PLAN_ID)
  references BJVMMIS.TR_TMG_CHECK_PLAN (OID);

prompt
prompt Creating table TR_TMG_CHECK_PERSON
prompt ==================================
prompt
create table BJVMMIS.TR_TMG_CHECK_PERSON
(
  OID         VARCHAR2(32) not null,
  MGR_ID      VARCHAR2(32),
  PK_ID       VARCHAR2(32),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_CHECK_PERSON
  is '�����Ա';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.MGR_ID
  is '��ԱID';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.PK_ID
  is '����ID(���ƻ���ϸID)';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_CHECK_PERSON
  add constraint PK_CHECK_PERSON primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_TMG_CHECK_PERSON
  add constraint FK_TR_TMG_C_REFERENCE_TR_TMG_4 foreign key (PK_ID)
  references BJVMMIS.TR_TMG_CHECK_PLAN_DETL (OID);

prompt
prompt Creating table TR_TMG_COMPLETE_NOTE
prompt ===================================
prompt
create table BJVMMIS.TR_TMG_COMPLETE_NOTE
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  CHECK_ID        VARCHAR2(32),
  FILE_ID         VARCHAR2(32),
  RECTIFY_TIME    DATE,
  END_TIME        DATE,
  RECTIFY_CONTENT VARCHAR2(1024),
  IFREC           NUMBER(2),
  REMARK          VARCHAR2(1024),
  CRE_TIME        DATE,
  UPDT_TIME       DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_COMPLETE_NOTE
  is '�������֪ͨ���';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.OID
  is '����֪ͨ��ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.RECTIFY_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.END_TIME
  is '���Ľ�ֹʱ��';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.RECTIFY_CONTENT
  is '��������';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.IFREC
  is '�Ƿ��������';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_COMPLETE_NOTE
  add constraint PK_TR_TMG_COMPLETE_NOTE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_TMG_COMPLETE_NOTE
  add constraint FK_TR_TMG_C_REFERENCE_TR_TMG14 foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_TMG_COND_STD
prompt ==============================
prompt
create table BJVMMIS.TR_TMG_COND_STD
(
  OID         VARCHAR2(32) not null,
  ZZ_TYPE     VARCHAR2(32),
  REPAIR_TYPE VARCHAR2(32),
  TJ_TYPE     VARCHAR2(128),
  NAME_CODE   VARCHAR2(32),
  NUM         NUMBER(10,3),
  STATUS      NUMBER(2),
  FIELD_ORDER NUMBER(2),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_COND_STD
  is '??????????????????????';
comment on column BJVMMIS.TR_TMG_COND_STD.OID
  is 'OID';
comment on column BJVMMIS.TR_TMG_COND_STD.ZZ_TYPE
  is '????????
??????????????????????????
????????????????????
??????????CODE';
comment on column BJVMMIS.TR_TMG_COND_STD.REPAIR_TYPE
  is '????????
???????????????????????? CODE';
comment on column BJVMMIS.TR_TMG_COND_STD.TJ_TYPE
  is '????????(??????????????/??????????????????/??????????????????CODE)';
comment on column BJVMMIS.TR_TMG_COND_STD.NAME_CODE
  is '????????';
comment on column BJVMMIS.TR_TMG_COND_STD.NUM
  is '????(????)';
comment on column BJVMMIS.TR_TMG_COND_STD.STATUS
  is '???????? 0??????1????';
comment on column BJVMMIS.TR_TMG_COND_STD.FIELD_ORDER
  is '????';
comment on column BJVMMIS.TR_TMG_COND_STD.REMARK
  is '????';
comment on column BJVMMIS.TR_TMG_COND_STD.CREATE_TIME
  is '????????';
comment on column BJVMMIS.TR_TMG_COND_STD.UPDATE_TIME
  is '????????';
alter table BJVMMIS.TR_TMG_COND_STD
  add primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_INFORM_NOTICE
prompt ===================================
prompt
create table BJVMMIS.TR_TMG_INFORM_NOTICE
(
  OID             VARCHAR2(32) not null,
  ENTERPRISE_ID   VARCHAR2(32),
  APRV_ID         VARCHAR2(32),
  FILE_ID         VARCHAR2(32),
  ENTERPRISE_NAME VARCHAR2(32),
  TELL_TIME       DATE,
  ADDR            VARCHAR2(256),
  PROVD_TERM      VARCHAR2(1024),
  PROVD_STRIP     VARCHAR2(1024),
  PROVD_PARAG     VARCHAR2(1024),
  PUNISH_DSC      VARCHAR2(1024),
  REGUL_NAME      VARCHAR2(128),
  REGUL_TK        VARCHAR2(1024),
  APPL_TIME       DATE,
  APPL_DEPT       VARCHAR2(64),
  CTCT_ADDR       VARCHAR2(256),
  CTCT_TEL        VARCHAR2(32),
  DEPT            VARCHAR2(64),
  QS_PERS         VARCHAR2(32),
  QS_TIME         DATE,
  IS_HEAR         NUMBER(2),
  REMARK          VARCHAR2(1024),
  CREATE_TIME     DATE,
  UPDATE_TIME     DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_INFORM_NOTICE
  is '��֪��֤֪ͨ��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.OID
  is '��֤��֪��ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.ENTERPRISE_NAME
  is '��ҵ����';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.TELL_TIME
  is '��֪����';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.ADDR
  is '�ص�';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PROVD_TERM
  is '�涨��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PROVD_STRIP
  is '�涨��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PROVD_PARAG
  is '�涨��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PUNISH_DSC
  is '��������';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.REGUL_NAME
  is '��������';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.REGUL_TK
  is '��������';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.APPL_TIME
  is '��������';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.APPL_DEPT
  is '���벿��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.CTCT_ADDR
  is '��ϵ��ַ';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.CTCT_TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.DEPT
  is '��λ';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.QS_PERS
  is 'ǩ����';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.QS_TIME
  is 'ǩ������';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.IS_HEAR
  is '�Ƿ���֤
Ҫ��֤��Ҫ������֤��֪ͨ��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_INFORM_NOTICE
  add constraint PK_TR_TMG_INFORM_NOTICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_INFORM_NOTICE
  add constraint FK_TR_TMG_I_REFERENCE_TR_LDT_L foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_TMG_JG_CHECK_DETL
prompt ===================================
prompt
create table BJVMMIS.TR_TMG_JG_CHECK_DETL
(
  OID           VARCHAR2(32) not null,
  CHECK_ID      VARCHAR2(32),
  CHK_TYPE      VARCHAR2(32),
  CHK_ITEM      VARCHAR2(128),
  CHK_ITEM_CODE VARCHAR2(32),
  PREF_STD      VARCHAR2(1024),
  CHECK_RESULT  NUMBER(2),
  NUM           NUMBER(4),
  REMARK        VARCHAR2(1024),
  UPDATE_TIME   DATE,
  CREATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_JG_CHECK_DETL
  is '������ݱ�';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.OID
  is '�������ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHECK_ID
  is '���ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHK_TYPE
  is '������
��Ӫ�����ࡢ��ȫ�����ࡢά�������ࡢ���������ࡢ�����ؼ��ࡢ���������ࡢ��ҵ�����ࡢ�ӷ���';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHK_ITEM
  is '�����
δ���涨�䱸���������ˡ�δ���涨�䱸�ּ����ȼ�֤�顢δ���涨�䱸����ά�ޡ��ް�ȫ���������ƻ�ȫӦ��Ԥ���ġ��豸��ȫ������̣����𡢷������õ�Ȱ�ȫ�ƶȲ���ȫ��ִ�в���λ��';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHK_ITEM_CODE
  is '��������';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.PREF_STD
  is '�ο���׼';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHECK_RESULT
  is '�����
�ǡ���';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.NUM
  is '����';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_JG_CHECK_DETL
  add constraint PK_JG_CHECK_DETL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_TMG_JG_CHECK_DETL
  add constraint FK_TR_TMG_J_REFERENCE_TR_TMG26 foreign key (CHECK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_TMG_JG_CHECK_PERSON
prompt =====================================
prompt
create table BJVMMIS.TR_TMG_JG_CHECK_PERSON
(
  OID         VARCHAR2(32) not null,
  MGR_ID      VARCHAR2(32),
  PK_ID       VARCHAR2(32),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_JG_CHECK_PERSON
  is '��ܼ����Ա��';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.MGR_ID
  is '��ԱID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.PK_ID
  is '����ID(��ܼ���ID)';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_JG_CHECK_PERSON
  add constraint PK_TR_TMG_JG_CHECK_PERSON primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BJVMMIS.TR_TMG_JG_CHECK_PERSON
  add constraint FK_TR_TMG_J_REFERENCE_TR_TMG_J foreign key (PK_ID)
  references BJVMMIS.TR_TMG_JG_CHECK (OID);

prompt
prompt Creating table TR_TMG_MGR_PERSON
prompt ================================
prompt
create table BJVMMIS.TR_TMG_MGR_PERSON
(
  OID          VARCHAR2(32) not null,
  REGION       VARCHAR2(32),
  NAME         VARCHAR2(32),
  SEX          NUMBER(2),
  TEL          VARCHAR2(32),
  PHONE        VARCHAR2(32),
  EMAIL        VARCHAR2(128),
  DEPT         VARCHAR2(32),
  DOC_TYPE     NUMBER(2),
  DOC_NUM      VARCHAR2(32),
  BRTH_DATE    DATE,
  NATION       NUMBER(2),
  POLIT_AFFL   VARCHAR2(32),
  NATL         VARCHAR2(32),
  PSTL_CODE    VARCHAR2(8),
  CTCT__ADDRES VARCHAR2(256),
  REMARK       VARCHAR2(1024),
  UPDATE_TIME  DATE,
  CREATE_TIME  DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_MGR_PERSON
  is '��ҵ������Ա��';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.OID
  is '�й�ID';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.REGION
  is '��������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.NAME
  is '����';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.SEX
  is '�Ա�';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.PHONE
  is '��ϵ���ֻ�';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.EMAIL
  is '��������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.DEPT
  is '��������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.DOC_TYPE
  is '֤������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.DOC_NUM
  is '֤������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.BRTH_DATE
  is '��������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.NATION
  is '����';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.POLIT_AFFL
  is '������ò';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.NATL
  is '����';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.PSTL_CODE
  is '��������';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.CTCT__ADDRES
  is '��ϵ��ַ';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.UPDATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.CREATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_MGR_PERSON
  add constraint PK_TR_TMG_MGR_PERSON primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_TZ_RECORD
prompt ===============================
prompt
create table BJVMMIS.TR_TMG_TZ_RECORD
(
  OID         VARCHAR2(32) not null,
  APRV_ID     VARCHAR2(32),
  FILE_ID     VARCHAR2(32),
  TZ_MATTER   VARCHAR2(1024),
  TZ_TIME     DATE,
  TZ_ADDR     VARCHAR2(256),
  IF_OPN      NUMBER(2),
  TZ_RECORD   VARCHAR2(4000),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_TZ_RECORD
  is '��֤���¼';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_MATTER
  is '��֤����';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_TIME
  is 'ʱ��';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_ADDR
  is '�ص�';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.IF_OPN
  is '�Ƿ񹫿�';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_RECORD
  is '��֤��¼';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_TZ_RECORD
  add constraint PK_TZ_RECORD primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_TZ_RECORD
  add constraint FK_TR_TMG_T_REFERENCE_TR_LDT19 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_TMG_PENALTY_RPT
prompt =================================
prompt
create table BJVMMIS.TR_TMG_PENALTY_RPT
(
  OID         VARCHAR2(32) not null,
  APRV_ID     VARCHAR2(32),
  RECORD_ID   VARCHAR2(32),
  FILE_ID     VARCHAR2(32),
  BRIEF       VARCHAR2(4000),
  TZ_HOST     VARCHAR2(64),
  TZ_TIME     DATE,
  TZ_INFO     VARCHAR2(4000),
  ADVICE      VARCHAR2(1024),
  HOST        VARCHAR2(64),
  HOST_TIME   DATE,
  EVIDE       VARCHAR2(1024),
  HEAD_ADVICE VARCHAR2(1024),
  HEAD_NAME   VARCHAR2(64),
  HEAD_TIME   DATE,
  ADT_OPIN    VARCHAR2(1024),
  REMARK      VARCHAR2(256),
  CRE_TIME    DATE,
  UPDT_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_PENALTY_RPT
  is '��������������֤����';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.RECORD_ID
  is '��֤��¼ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.BRIEF
  is '����';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.TZ_HOST
  is '��֤������';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.TZ_TIME
  is '��֤ʱ��';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.TZ_INFO
  is '��֤���';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.ADVICE
  is '�����˶���֤�����Ĵ�����';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HOST
  is '������ǩ��';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HOST_TIME
  is '������ǩ������';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.EVIDE
  is '��֤��¼֤�ݲ���';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HEAD_ADVICE
  is '���ܸ��������';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HEAD_NAME
  is '���ܸ�����ǩ��';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HEAD_TIME
  is '���ܸ�����ǩ������';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.ADT_OPIN
  is '������';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.CRE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.UPDT_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_PENALTY_RPT
  add constraint PK_TR_TMG_PENALTY_RPT primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_PENALTY_RPT
  add constraint FK_TR_TMG_P_REFERENCE_TR_LDT_L foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);
alter table BJVMMIS.TR_TMG_PENALTY_RPT
  add constraint FK_TR_TMG_P_REFERENCE_TR_TMG_T foreign key (RECORD_ID)
  references BJVMMIS.TR_TMG_TZ_RECORD (OID);

prompt
prompt Creating table TR_TMG_RECORD_NOTE
prompt =================================
prompt
create table BJVMMIS.TR_TMG_RECORD_NOTE
(
  OID            VARCHAR2(32) not null,
  VERIFY_ID      VARCHAR2(32),
  ENTERPRISE_ID  VARCHAR2(128),
  RECORD_CONTENT VARCHAR2(4000),
  RECORD_TIME    DATE,
  END_TIME       DATE,
  REMARK         VARCHAR2(1024),
  CREATE_TIME    DATE,
  UPDATE_TIME    DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_RECORD_NOTE
  is '��ҵ����֪ͨ��
';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.OID
  is '����֪ͨID';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.VERIFY_ID
  is '�˶�ID';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.ENTERPRISE_ID
  is '��ҵ����';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.RECORD_CONTENT
  is '��������';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.RECORD_TIME
  is '֪ͨʱ��';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.END_TIME
  is '������ֹ����';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.CREATE_TIME
  is '��������';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_TMG_RECORD_NOTE
  add constraint PK_TR_TMG_RECORD_NOTE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_RECORD_NOTE
  add constraint FK_TR_TMG_R_REFERENCE_TR_RPT_E foreign key (OID)
  references BJVMMIS.TR_RPT_ENTERPRISE_VERIFY (OID);

prompt
prompt Creating table TR_TMG_SERVE_QAL
prompt ===============================
prompt
create table BJVMMIS.TR_TMG_SERVE_QAL
(
  OID           VARCHAR2(32) not null,
  ENTERPRISE_ID VARCHAR2(32),
  CHK_ITEM      VARCHAR2(32),
  CHK_ITEM_CODE VARCHAR2(32),
  FS_TIME       DATE,
  REASON        VARCHAR2(256),
  SOCIAL_YX     VARCHAR2(1024),
  TREAT_RESULT  VARCHAR2(1024),
  NOTE_DEPT     VARCHAR2(64),
  NUM           NUMBER(4),
  ZR_NAME       VARCHAR2(64),
  FS_ADDR       VARCHAR2(1024),
  EVENT_RMK     VARCHAR2(4000),
  SRC_MODE      NUMBER(2),
  REMARK        VARCHAR2(1024),
  NAME          VARCHAR2(64),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table BJVMMIS.TR_TMG_SERVE_QAL
  is '���������¼�';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.OID
  is '��������ID';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.CHK_ITEM
  is '�����';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.CHK_ITEM_CODE
  is '��������';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.FS_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.REASON
  is '����ԭ��';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.SOCIAL_YX
  is '���Ӱ��';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.TREAT_RESULT
  is '���ý��';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.NOTE_DEPT
  is 'ͨ������';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.NUM
  is '����';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.ZR_NAME
  is '�¼�������';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.FS_ADDR
  is '�����ص�';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.EVENT_RMK
  is '�¼�����';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.SRC_MODE
  is '��Դ��ʽ����������������ӣ�';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.NAME
  is '��¼��';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.UPDATE_TIME
  is '��������';
alter table BJVMMIS.TR_TMG_SERVE_QAL
  add constraint PK_TR_TMG_SERVE_QAL primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TR_TMG_TZ_APRV
prompt =============================
prompt
create table BJVMMIS.TR_TMG_TZ_APRV
(
  OID          VARCHAR2(32) not null,
  APRV_ID      VARCHAR2(32),
  FILE_ID      VARCHAR2(32),
  DS_NAME      VARCHAR2(64),
  DEPT         VARCHAR2(64),
  XKZ_NAME     VARCHAR2(32),
  XKZ_NUM      VARCHAR2(32),
  CERT_NUM     VARCHAR2(32),
  TRANSIT_TYPE NUMBER(2),
  TRANSIT_NUM  VARCHAR2(32),
  CAR_NUM      VARCHAR2(32),
  CAR_TYPE     VARCHAR2(32),
  COIOR        VARCHAR2(32),
  LGL_PERS     VARCHAR2(64),
  POSN         VARCHAR2(64),
  TEL          VARCHAR2(32),
  ADDRES       VARCHAR2(256),
  CASE_SRC     VARCHAR2(1024),
  LA_COND      VARCHAR2(1024),
  CBR_NAME     VARCHAR2(64),
  CBR_TIME     DATE,
  ACCT         VARCHAR2(1024),
  BMFZR_NAME   VARCHAR2(64),
  BMFZR_TIME   DATE,
  LAST_ADVICE  VARCHAR2(1024),
  LGL_HEAD     VARCHAR2(64),
  LGL_TIME     DATE,
  WFSS         VARCHAR2(4000),
  REMARK       VARCHAR2(1024),
  CREATE_TIME  DATE,
  UPDATE_TIME  DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_TZ_APRV
  is '��֤������';
comment on column BJVMMIS.TR_TMG_TZ_APRV.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_APRV.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_TMG_TZ_APRV.FILE_ID
  is '����ID';
comment on column BJVMMIS.TR_TMG_TZ_APRV.DS_NAME
  is '������';
comment on column BJVMMIS.TR_TMG_TZ_APRV.DEPT
  is '��λ';
comment on column BJVMMIS.TR_TMG_TZ_APRV.XKZ_NAME
  is '��Ӫ���֤����';
comment on column BJVMMIS.TR_TMG_TZ_APRV.XKZ_NUM
  is '��Ӫ���֤���';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CERT_NUM
  is '׼��֤�Ż����֤��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.TRANSIT_TYPE
  is '��������֤����';
comment on column BJVMMIS.TR_TMG_TZ_APRV.TRANSIT_NUM
  is '��������֤���';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CAR_NUM
  is '����';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CAR_TYPE
  is '��  ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.COIOR
  is '��ɫ';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LGL_PERS
  is '����������';
comment on column BJVMMIS.TR_TMG_TZ_APRV.POSN
  is 'ְ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.TEL
  is '�绰';
comment on column BJVMMIS.TR_TMG_TZ_APRV.ADDRES
  is '��ַ';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CASE_SRC
  is '������Դ';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LA_COND
  is '��������';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CBR_NAME
  is '�а���ǩ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CBR_TIME
  is 'ǩ�����ڣ��а���ǩ�֣�';
comment on column BJVMMIS.TR_TMG_TZ_APRV.ACCT
  is '������֤��ԭ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.BMFZR_NAME
  is '���Ÿ�����ǩ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.BMFZR_TIME
  is 'ǩ�����ڣ����Ÿ�����ǩ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LAST_ADVICE
  is '��֤Ա��ɽ���';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LGL_HEAD
  is '���Ʋ��Ÿ�����';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LGL_TIME
  is 'ǩ�����ڣ����Ʋ��Ÿ�����ǩ�֣�';
comment on column BJVMMIS.TR_TMG_TZ_APRV.WFSS
  is 'Υ����ʵ';
comment on column BJVMMIS.TR_TMG_TZ_APRV.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_TZ_APRV.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_TZ_APRV
  add constraint PK_TZ_APRV primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_TZ_APRV
  add constraint FK_TR_TMG_T_REFERENCE_TR_LDT20 foreign key (OID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_TMG_TZ_NOTICE
prompt ===============================
prompt
create table BJVMMIS.TR_TMG_TZ_NOTICE
(
  OID           VARCHAR2(32) not null,
  APRV_ID       VARCHAR2(32),
  ENTERPRISE_ID VARCHAR2(32),
  LAW_PERS      VARCHAR2(32),
  CASE_NAME     VARCHAR2(128),
  TZ_TIME       DATE,
  TZ_ADDR       VARCHAR2(256),
  HOST          VARCHAR2(32),
  NOTE_COMP     VARCHAR2(64),
  NOTE_TIME     DATE,
  SIGN_PERS     VARCHAR2(32),
  REMARK        VARCHAR2(1024),
  CREATE_TIME   DATE,
  UPDATE_TIME   DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_TZ_NOTICE
  is '��֤��֪ͨ��';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.APRV_ID
  is '��������ID';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.ENTERPRISE_ID
  is '��ҵID';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.LAW_PERS
  is '��λ��������������';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.CASE_NAME
  is '��������';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.TZ_TIME
  is '��֤������';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.TZ_ADDR
  is '��֤���ַ';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.HOST
  is '��֤������';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.NOTE_COMP
  is '֪ͨ��λ';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.NOTE_TIME
  is '֪ͨ����';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.SIGN_PERS
  is 'ǩ��������';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_TZ_NOTICE
  add constraint PK_TZ_NOTICE primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_TZ_NOTICE
  add constraint FK_TR_TMG_T_REFERENCE_TR_LDT21 foreign key (APRV_ID)
  references BJVMMIS.TR_LDT_LAXA_APRV (OID);

prompt
prompt Creating table TR_TMG_TZ_PERSON
prompt ===============================
prompt
create table BJVMMIS.TR_TMG_TZ_PERSON
(
  OID         VARCHAR2(32) not null,
  RECORD_ID   VARCHAR2(32),
  NAME        VARCHAR2(64),
  TYPE        NUMBER(2),
  TEL         VARCHAR2(32),
  COMPANY     VARCHAR2(32),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_TZ_PERSON
  is '��֤����Ա';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.RECORD_ID
  is '��֤��¼ID����֤֪ͨ��ID';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.NAME
  is '��Ա����';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.TYPE
  is '��Ա����';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.COMPANY
  is '��λ';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_TZ_PERSON
  add constraint PK_TZ_PERSON primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_TZ_PERSON
  add constraint FK_TR_TMG_T_REFERENCE_TR_TMG_2 foreign key (OID)
  references BJVMMIS.TR_TMG_TZ_NOTICE (OID);
alter table BJVMMIS.TR_TMG_TZ_PERSON
  add constraint FK_TR_TMG_T_REFERENCE_TR_TMG_T foreign key (RECORD_ID)
  references BJVMMIS.TR_TMG_TZ_RECORD (OID);

prompt
prompt Creating table TR_TMG_XCZW_PERSON
prompt =================================
prompt
create table BJVMMIS.TR_TMG_XCZW_PERSON
(
  OID         VARCHAR2(32) not null,
  XCZW_ID     VARCHAR2(32),
  NAME        VARCHAR2(64),
  TYPE        NUMBER(2),
  TEL         VARCHAR2(32),
  COMPANY     VARCHAR2(128),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_TMG_XCZW_PERSON
  is '�ֳ�ִ��������';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.OID
  is 'ִ��������ID';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.XCZW_ID
  is '�ֳ�֤��ID';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.NAME
  is '��Ա����';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.TYPE
  is '��Ա����
ִ���ˡ���֤�ˡ�ȡ֤��';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.TEL
  is '��ϵ�绰';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.COMPANY
  is '��λ';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.REMARK
  is '��ע';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.CREATE_TIME
  is '����ʱ��';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.UPDATE_TIME
  is '����ʱ��';
alter table BJVMMIS.TR_TMG_XCZW_PERSON
  add constraint PK_TR_TMG_XCZW_PERSON primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_TMG_XCZW_PERSON
  add constraint FK_TR_TMG_X_REFERENCE_TR_LDT_X foreign key (XCZW_ID)
  references BJVMMIS.TR_LDT_XCZW_PHOTO (OID);

prompt
prompt Creating table ����ά����ҵ(����ϵͳ)
prompt ===========================
prompt
create table BJVMMIS.����ά����ҵ(����ϵͳ)
(
  OID         VARCHAR2(32) not null,
  ������ҵ����      VARCHAR2(128),
  ��ҵ���֤��      VARCHAR2(32),
  ��ҵ��ַ        VARCHAR2(1024),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.����ά����ҵ(����ϵͳ)
  is '����ά����ҵ';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).OID
  is 'OID';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).������ҵ����
  is '������ҵ����';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).��ҵ���֤��
  is '��ҵ���֤��';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).��ҵ��ַ
  is '��ҵ��ַ';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).REMARK
  is '��ע';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).CREATE_TIME
  is '��������';
comment on column BJVMMIS.����ά����ҵ(����ϵͳ).UPDATE_TIME
  is '��������';
alter table BJVMMIS.����ά����ҵ(����ϵͳ)
  add constraint PK_����ά����ҵ(����ϵͳ) primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating sequence BBS_FORUM_SEQUENCE
prompt ====================================
prompt
create sequence BJVMMIS.BBS_FORUM_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 83
increment by 1
nocache;

prompt
prompt Creating sequence HIBERNATE_SEQUENCE
prompt ====================================
prompt
create sequence BJVMMIS.HIBERNATE_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SITE_ARTICLE_GROUP
prompt ========================================
prompt
create sequence BJVMMIS.SEQ_SITE_ARTICLE_GROUP
minvalue 1
maxvalue 999999999999999999999999999
start with 70
increment by 1
cache 10;

prompt
prompt Creating sequence SEQ_TRIW_ATTACHMENT
prompt =====================================
prompt
create sequence BJVMMIS.SEQ_TRIW_ATTACHMENT
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TRIW_BBS_THEME
prompt ====================================
prompt
create sequence BJVMMIS.SEQ_TRIW_BBS_THEME
minvalue 1
maxvalue 999999999999999999999999999
start with 201
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TRIW_SITE_ARTICLE_THREAD
prompt ==============================================
prompt
create sequence BJVMMIS.SEQ_TRIW_SITE_ARTICLE_THREAD
minvalue 5
maxvalue 999999999999999999999999999
start with 14
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TRIW_SITE_STYLE
prompt =====================================
prompt
create sequence BJVMMIS.SEQ_TRIW_SITE_STYLE
minvalue 1
maxvalue 999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TRIW_VOTE_RECS
prompt ====================================
prompt
create sequence BJVMMIS.SEQ_TRIW_VOTE_RECS
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence STATUSXL
prompt ==========================
prompt
create sequence BJVMMIS.STATUSXL
minvalue 1
maxvalue 99999
start with 61
increment by 1
cache 20
order;

prompt
prompt Creating sequence STC_AUTH_DICT_FIELD
prompt =====================================
prompt
create sequence BJVMMIS.STC_AUTH_DICT_FIELD
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence STC_AUTH_DICT_TABLE
prompt =====================================
prompt
create sequence BJVMMIS.STC_AUTH_DICT_TABLE
minvalue 1
maxvalue 999999999
start with 10
increment by 1
cache 20;

prompt
prompt Creating sequence STM_AUTH_APP_FUNCTION
prompt =======================================
prompt
create sequence BJVMMIS.STM_AUTH_APP_FUNCTION
minvalue 1
maxvalue 999999999
start with 3783
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_APP_ROLE
prompt ===================================
prompt
create sequence BJVMMIS.STM_AUTH_APP_ROLE
minvalue 1
maxvalue 999999999
start with 1460
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_DEPARTMENT
prompt =====================================
prompt
create sequence BJVMMIS.STM_AUTH_DEPARTMENT
minvalue 1
maxvalue 999999999
start with 30200
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_DEPT_FUNCTIONS
prompt =========================================
prompt
create sequence BJVMMIS.STM_AUTH_DEPT_FUNCTIONS
minvalue 1
maxvalue 999999999
start with 1580
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_DEPT_ROLES
prompt =====================================
prompt
create sequence BJVMMIS.STM_AUTH_DEPT_ROLES
minvalue 1
maxvalue 999999999
start with 1340
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_ROLE_FUNCTIONS
prompt =========================================
prompt
create sequence BJVMMIS.STM_AUTH_ROLE_FUNCTIONS
minvalue 1
maxvalue 999999999
start with 3360
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_USER
prompt ===============================
prompt
create sequence BJVMMIS.STM_AUTH_USER
minvalue 1
maxvalue 999999999
start with 5300
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_USER_FUNCTIONS
prompt =========================================
prompt
create sequence BJVMMIS.STM_AUTH_USER_FUNCTIONS
minvalue 1
maxvalue 999999999
start with 9183
increment by 1
cache 20
order;

prompt
prompt Creating sequence STM_AUTH_USER_ROLES
prompt =====================================
prompt
create sequence BJVMMIS.STM_AUTH_USER_ROLES
minvalue 1
maxvalue 999999999
start with 2360
increment by 1
cache 20
order;

prompt
prompt Creating sequence VOTE_SUBS_SEQUENCE
prompt ====================================
prompt
create sequence BJVMMIS.VOTE_SUBS_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating view VIEW_CLWXXX
prompt =========================
prompt
create or replace view bjvmmis.view_clwxxx as
select t."OID",t."ENTERPRISE_ID",t."ENTERPRISE_NAME",t."SEND_PERS",t."SEND_PHONE",t."VEHICLEID",t."VEHIDCOLOR",t."VEHICLE_NUM",t."FRAME_CODE",t."REPAIR_ITM",t."RECV_NUM",t."IN_DATE",t."INTO_VALUE",t."OUT_DATE",t."FINISH_TIME",t."QAL_TIME",t."QAL_ENT_TIME",t."QAL_ENT_VALUE",t."OWNER_NAME",t."OWNER_PHONE",t."REPAIR_SFZH",t."CHECK_SFZH",t."OUT_VALUE",t."INVC_NUM",t."REPAIR_NUM",t."CERT_NUM",t."REMARK",t."CREATE_TIME",t."UPDATE_TIME",
       a.oid qyid,
       a.enterprise_name qyname,
       a.region,
       (select b.code_name
          from TC_ALL_DICT b
         where b.code_type = 'GL0001'
           and b.code_value = a.region) depname
  from TR_RPT_REPAIR_RECORD t
 inner join TR_RPT_REPAIR_ENTERPRISE a
    on t.enterprise_id = a.oid;

prompt
prompt Creating view VIEW_QXHGRY
prompt =========================
prompt
create or replace view bjvmmis.view_qxhgry as
select t."OID" as USER_OID,t."USER_NAME",a."CODE",a.oid as DEP_ID
    from TM_AUTH_USER t, TM_AUTH_DEPARTMENT a where
      t.deptid = a.oid;

prompt
prompt Creating view VIEW_QYXZ
prompt =======================
prompt
create or replace view bjvmmis.view_qyxz as
select t."OID",t."ENTERPRISE_NAME",t."REGION",t."JY_ADDRESS",t."JD_TYPE",t."ACCTG_METH",t."LEGAL_PERS",t."ID",t."REPAIR_TEL",t."PHONE_NUM",t."REPAIR_FAX",t."EMAIL",t."PSTL_NUM",t."BUS_TEL",t."MGRAREA",t."PRK_AREA",t."PLANT_AREA",t."RPT_AREA",t."ZD_AREA",t."FUND_TOTAL",t."REG_TOTAL",t."FIX_TOTAL",t."FLOW_TOTAL",t."OPEN_TIME",t."MARK_NUM",t."PRMT_NUM",t."BUS_NUM",t."MJR_MODEL",t."CHG_TIME",t."PRMT_END_TIME",t."PRMT_CONT_TIME",t."COM_STATUS",t."ROOM_AREA",t."REMARK",t."CREATE_TIME",t."UPDATE_TIME",t."MARK_BRAND",t."IFAID",t."IFAID_CAR",t."IFFBK",t."IFVST",t."SERV_PHONE",t."AID_MODEL",(select b.code_name
          from TC_ALL_DICT b
         where b.code_type = 'GL0001'
           and b.code_value = t.region) depname from TR_RPT_REPAIR_ENTERPRISE t;

prompt
prompt Creating view VIEW_TSGL
prompt =======================
prompt
create or replace view bjvmmis.view_tsgl as
select t."OID",t."ENTERPRISE_ID",t."CHECK_ID",t."REPAIR_ID",t."FILE_ID",t."COMT_TIME",t."COMT_PSN",t."TSID_NUM",t."COMT_CONT",t."COMT_PHONE",t."COMT_TEL",t."EMAIL",t."ACPT_DEPT",t."COMT_METH",t."EXP_MEDIA",t."SOCIAL_YX",t."TREAT_RESULT",t."NUM",t."COMT_TYPE",t."CL_STATUS",t."COMPLAINT_STATUS",t."SRC_MODE",t."REMARK",t."UPDATE_TIME",t."CREATE_TIME",
         (select count(*) from TR_CRD_COMPLAINT_NOTE a where a.complaint_id = t.oid) sl, --����֪ͨ��
         (select count(*) from TR_CRD_DISPUTE_APPLY b where b.complaint_id=t.oid) tjsq,--����������
         (select count(*) from TR_CRD_ANLS_ADVICE c where c.complaint_id=t.oid) qz, --ȡ֤
         (select count(*) from TR_CRD_COMPLAINT_RSLT d where d.complaint_id=t.oid) tsgz, --Ͷ�߸�֪
         (select count(*) from TR_CRD_MEDIATION_ADVICE e where e.complaint_id=t.oid) tjyj,--���������
         (select IFAGREE from TR_CRD_DISPUTE_APPLY f where f.complaint_id=t.oid and rownum=1) IFAGREE,  --�Ƿ�ͬ�����
         (select count(*) from tr_crd_stop_advice h where h.complaint_id=t.oid ) crsp,    --ֹͣ��¼
         (select IFACPT from TR_CRD_MEDIATION_ADVICE i where i.complaint_id=t.oid and rownum=1 ) ifac,  --   �Ƿ�ͬ�����
         a.ENTERPRISE_NAME,
         (select b.code_name
          from TC_ALL_DICT b
         where b.code_type = 'GL0001'
           and b.code_value = t.acpt_dept) depname,
           (select c.VEHICLEID from TR_RPT_REPAIR_RECORD c where c.oid=t.repair_id)  VEHICLEID,
           (select CREATE_TIME from TR_CRD_COMPLAINT_NOTE c where c.complaint_id=t.oid and rownum=1) slsj,  --����ʱ��

           (select COMPLAIN_UNIT from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsf,  --Ͷ�߷�
           (select COMPLAIN_NAME from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsflxr,  --Ͷ�߷���ϵ��
           (select COMPLAIN_ADDR from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsfdz,  --Ͷ�߷���ַ
           (select COMPLAIN_TEL from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsfdh,  --Ͷ�߷��绰

           (select UNCOMPLAIN_UNIT from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsf,  --��Ͷ�߷�
           (select UNCOMPLAIN_NAME from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsflxr,  --��Ͷ�߷���ϵ��
           (select UNCOMPLAIN_ADDR from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsfdz,  --��Ͷ�߷���ַ
           (select UNCOMPLAIN_TEL from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsftel,  --��Ͷ�߷��绰

           (select COMPLAIN_IDEA from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsfyj,  --Ͷ�߷����
           (select UNCOMPLAIN_IDEA from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsfyj,  --��Ͷ�߷����
           (select ADMINIST_IDEA from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) gljgyj  --����������

  from TR_CRD_COMPLAINT t join TR_rpt_REPAIR_ENTERPRISE a on t.enterprise_id=a.oid;

prompt
prompt Creating view VW_C_AUTH_DISTRCT
prompt ===============================
prompt
create or replace view bjvmmis.vw_c_auth_distrct as
select "OID",
       "CODE_VALUE",
       "CODE_NAME",
       "REFER_STANDARD",
       "FIELD_ORDER",
       "VALID",
       "REMARK",
       "CODE_TYPE",
       "CODETYPE_NAME",
       "CREATE_TIME",
       "UPDATE_TIME",
       "PARENT_CODE_VALUE"
  from tc_all_dict t
 where t.code_type = 'GL0001'
and code_value like '110___'
and code_value not in ('110000','110100','110103','110104','110200');

prompt
prompt Creating view VW_XYNDKH
prompt =======================
prompt
create or replace view bjvmmis.vw_xyndkh as
select
"OID",
"ENTERPRISE_ID",
"ENTERPRISE_NAME",
"JYZZ",
"AQJC",
"WXZL",
"FWZL",
"ZZSJ",
"HJBH",
"QYGL",
"JLQK",
"NUM",
"QAL_LEVEL",
"REGION",
"YEAR"
from (select epk.* from
(select eval.*,pk.num,pk.qal_level, pk.region from( select sys_guid() OID,t.enterprise_id,tr.enterprise_name,to_number(to_char(tr.prmt_start_time,'YYYY')) year,
sum(decode(t.chk_type, 'JC01', t.num,null)) as jyzz,
sum(decode(t.chk_type, 'JC02', t.num,null)) as aqjc,
sum(decode(t.chk_type, 'JC03', t.num,null)) as wxzl,
sum(decode(t.chk_type, 'JC04', t.num,null)) as fwzl,
sum(decode(t.chk_type, 'JC05', t.num,null)) as zzsj,
sum(decode(t.chk_type, 'JC06', t.num,null)) as hjbh,
sum(decode(t.chk_type, 'JC07', t.num,null)) as qygl,
sum(decode(t.chk_type, 'JC08', t.num,null)) as Jlqk
from TR_RPT_REPUT_EVAL t,TR_RPT_REPAIR_ENTERPRISE tr
where to_number(to_char(sysdate,'YYYY'))-to_number(to_char(tr.prmt_start_time,'YYYY'))>1
and t.enterprise_id=tr.oid group by tr.enterprise_name,t.enterprise_id,to_number(to_char(tr.prmt_start_time,'YYYY'))) eval,TR_RPT_REPUT_EVAL_PK pk
where eval.enterprise_id = pk.enterprise_id) epk);


spool off
