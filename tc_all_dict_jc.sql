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
  is '代码集ID';
comment on column BJVMMIS.TC_ALL.CODE_SET_ABBR
  is '代码集缩写';
comment on column BJVMMIS.TC_ALL.REFER_STANDARD
  is '参考标准';
comment on column BJVMMIS.TC_ALL.CODE_SET_NAME
  is '代码集名称';
comment on column BJVMMIS.TC_ALL.NOTE
  is '备注';
comment on column BJVMMIS.TC_ALL.CODE_ORDNUM
  is '代码序号';
comment on column BJVMMIS.TC_ALL.CODE_VALUE1
  is '代码值1';
comment on column BJVMMIS.TC_ALL.CODE_VALUE2
  is '代码值2';
comment on column BJVMMIS.TC_ALL.CODE_NAME
  is '代码名称';
comment on column BJVMMIS.TC_ALL.DATA_ELEMENT_ID
  is '数据元编号';
comment on column BJVMMIS.TC_ALL.ADMIN_DEPT
  is '注册机构';

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
  is '标准字典表';
comment on column BJVMMIS.TC_ALL_DICT.OID
  is 'ID';
comment on column BJVMMIS.TC_ALL_DICT.CODE_VALUE
  is '编码值';
comment on column BJVMMIS.TC_ALL_DICT.CODE_NAME
  is '编码名称';
comment on column BJVMMIS.TC_ALL_DICT.REFER_STANDARD
  is '参考标准';
comment on column BJVMMIS.TC_ALL_DICT.FIELD_ORDER
  is '排序';
comment on column BJVMMIS.TC_ALL_DICT.REMARK
  is '备注';
comment on column BJVMMIS.TC_ALL_DICT.CODE_TYPE
  is '代码类别';
comment on column BJVMMIS.TC_ALL_DICT.CODETYPE_NAME
  is '类别名称';
comment on column BJVMMIS.TC_ALL_DICT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TC_ALL_DICT.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TC_ALL_DICT.PARENT_CODE_VALUE
  is '父节点';
comment on column BJVMMIS.TC_ALL_DICT.RECORD_CREATE_TIME
  is '创建时间new';
comment on column BJVMMIS.TC_ALL_DICT.VALID
  is '有效状态new  1：有效；0：无效';
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
  is '数据字典基本表备份';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.OID
  is 'ID';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODE_VALUE
  is '编码值';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODE_NAME
  is '编码名称';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.REFER_STANDARD
  is '参考标准';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.FIELD_ORDER
  is '排序';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.REMARK
  is '备注';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODE_TYPE
  is '代码类别';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CODETYPE_NAME
  is '类别名称';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.PARENT_CODE_VALUE
  is '父节点';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.RECORD_CREATE_TIME
  is '创建时间new';
comment on column BJVMMIS.TC_ALL_DICT_BACKUP.VALID
  is '有效状态new  1：有效；0：无效';

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
  is '标准字典表';
comment on column BJVMMIS.TC_ALL_DICT_JC.OID
  is 'ID';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODE_VALUE
  is '编码值';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODE_NAME
  is '编码名称';
comment on column BJVMMIS.TC_ALL_DICT_JC.REFER_STANDARD
  is '参考标准';
comment on column BJVMMIS.TC_ALL_DICT_JC.FIELD_ORDER
  is '排序';
comment on column BJVMMIS.TC_ALL_DICT_JC.REMARK
  is '备注';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODE_TYPE
  is '代码类别';
comment on column BJVMMIS.TC_ALL_DICT_JC.CODETYPE_NAME
  is '类别名称';
comment on column BJVMMIS.TC_ALL_DICT_JC.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TC_ALL_DICT_JC.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TC_ALL_DICT_JC.PARENT_CODE_VALUE
  is '父节点';
comment on column BJVMMIS.TC_ALL_DICT_JC.RECORD_CREATE_TIME
  is '创建时间new';
comment on column BJVMMIS.TC_ALL_DICT_JC.VALID
  is '有效状态new  1：有效；0：无效';
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
  is '授权类型';

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
  is '企业经济类型';

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
  is '配置的字段表';
comment on column BJVMMIS.TC_DICT.CLASS
  is '代码分类(1:查询条件显示格式;2:查询操作符;3.字段显示类型;4,字段显示格式类型;)';
comment on column BJVMMIS.TC_DICT.NAME
  is '代码名称';
comment on column BJVMMIS.TC_DICT.ID
  is 'ID';
comment on column BJVMMIS.TC_DICT.CODE
  is '代码编码';
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
  is '字典表目录';
comment on column BJVMMIS.TC_DICT_CATEGORY.ID
  is '逻辑编号';
comment on column BJVMMIS.TC_DICT_CATEGORY.PID
  is '父逻辑编号';
comment on column BJVMMIS.TC_DICT_CATEGORY.NAME
  is '目录名';
comment on column BJVMMIS.TC_DICT_CATEGORY.DISPLAY_ORDINAL
  is '顺序号';
comment on column BJVMMIS.TC_DICT_CATEGORY.RECORD_CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TC_DICT_CATEGORY.RECORD_UPDATE_TIME
  is '更新日期';
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
  is '表名';
comment on column BJVMMIS.TC_DICT_FIELD.FIELD_NAME
  is '字段名';
comment on column BJVMMIS.TC_DICT_FIELD.FIELD_CAPTION
  is '字段中文名';
comment on column BJVMMIS.TC_DICT_FIELD.ORDNUM
  is '排序号';
comment on column BJVMMIS.TC_DICT_FIELD.IS_KEY_FIELD
  is '是否主键';
comment on column BJVMMIS.TC_DICT_FIELD.EDITABLE
  is '是否可在界面编辑';
comment on column BJVMMIS.TC_DICT_FIELD.CODETABLE
  is '字典表';
comment on column BJVMMIS.TC_DICT_FIELD.CODE_FIELD
  is '字典表中的代码字段名称';
comment on column BJVMMIS.TC_DICT_FIELD.CODE_NAME_FIELD
  is '字典表中的名称字段名称';
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
  is '代码综合表';
comment on column BJVMMIS.TC_DICT_TABLE.ID
  is '主键';
comment on column BJVMMIS.TC_DICT_TABLE.CATEGORY_ID
  is '目录ID';
comment on column BJVMMIS.TC_DICT_TABLE.TABLE_NAME
  is '表名';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_TYPE_CAPTION
  is '类别名称';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_TYPE
  is '编码类型';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_TYPE_COLUMN
  is '编码类型字段名';
comment on column BJVMMIS.TC_DICT_TABLE.CODE_COLUMN
  is '编码字段名';
comment on column BJVMMIS.TC_DICT_TABLE.NAME_COLUMN
  is '名称字段名';
comment on column BJVMMIS.TC_DICT_TABLE.PARENT_CODE_COLUMN
  is '父节点字段名';
comment on column BJVMMIS.TC_DICT_TABLE.ORDINAL_COLUMN
  is '排序字段名';
comment on column BJVMMIS.TC_DICT_TABLE.REF_STANDARD
  is '参考标准';
comment on column BJVMMIS.TC_DICT_TABLE.REF_STANDARD_SOURCE
  is '参考标准来源';
comment on column BJVMMIS.TC_DICT_TABLE.MAPPING_CODE_COLUMN
  is '映射编码字段';
comment on column BJVMMIS.TC_DICT_TABLE.MAPPING_NAME_COLUMN
  is '映射编码名称字段';
comment on column BJVMMIS.TC_DICT_TABLE.RECORD_CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TC_DICT_TABLE.RECORD_UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TC_DICT_TABLE.DISPLAY_ORDINAL
  is '顺序号';
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
  is '功能';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.PID
  is '上级编号';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.FUNC_ID
  is '功能id';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.FUNC_NAME
  is '功能名称';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.CLASS_NAME
  is '类全称';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.METHOD_NAME
  is '函数名';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.URL
  is 'URL';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.ICON
  is 'icon';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.VALID
  is '是否有效 1有效 0无效';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.REMARK
  is '备注';
comment on column BJVMMIS.TM_AUTH_APP_FUNCTION.DEPT_TAG
  is '部门标志';
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
  is '角色';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.ROLE_ID
  is '角色编号';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.ROLE_NAME
  is '角色名称';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.ORDNUM
  is '顺序号';
comment on column BJVMMIS.TM_AUTH_APP_ROLE.REMARK
  is '备注';
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
  is '用户部门';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.PID
  is '上级编号';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.NAME
  is '部门名称';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.ADDRESS
  is '部门位置';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.LEADER
  is '负责人';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.TEL
  is '电话';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.ORDNUM
  is '排序';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.DISTRICT_ID
  is '行政区代码';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.CODE
  is '代码';
comment on column BJVMMIS.TM_AUTH_DEPARTMENT.DTYPE
  is '机构类型，0=局，1=区县，2=企业';
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
  is '部门拥有的功能';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.DEPT_OID
  is '部门逻辑编号';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.FUNC_OID
  is '功能逻辑编号';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.AUTH_TYPE
  is '权限类型';
comment on column BJVMMIS.TM_AUTH_DEPT_FUNCTIONS.DEPT_FUNC_OID
  is '部门功能ID';
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
  is '部门拥有的角色';
comment on column BJVMMIS.TM_AUTH_DEPT_ROLES.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_DEPT_ROLES.DEPT_OID
  is '部门逻辑编号';
comment on column BJVMMIS.TM_AUTH_DEPT_ROLES.ROLE_OID
  is '角色逻辑编号';
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
  is '角色拥有的功能';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.ROLE_OID
  is '角色逻辑编号';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.FUNC_OID
  is '功能逻辑编号';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.AUTH_TYPE
  is '权限类型';
comment on column BJVMMIS.TM_AUTH_ROLE_FUNCTIONS.DEPT_FUNC_OID
  is '部门功能ID';
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
  is '用户';
comment on column BJVMMIS.TM_AUTH_USER.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_USER.USER_ID
  is '用户ID';
comment on column BJVMMIS.TM_AUTH_USER.USER_NAME
  is '用户名';
comment on column BJVMMIS.TM_AUTH_USER.DEPTID
  is '部门ID';
comment on column BJVMMIS.TM_AUTH_USER.JOB_NUMBER
  is '工号';
comment on column BJVMMIS.TM_AUTH_USER.SEX
  is '性别';
comment on column BJVMMIS.TM_AUTH_USER.BIRTHDAY
  is '生日';
comment on column BJVMMIS.TM_AUTH_USER.NATION
  is '民族';
comment on column BJVMMIS.TM_AUTH_USER.HIGHEST_EDUCATION
  is '学历';
comment on column BJVMMIS.TM_AUTH_USER.JOB_TITLE
  is '职称';
comment on column BJVMMIS.TM_AUTH_USER.POST
  is '职位';
comment on column BJVMMIS.TM_AUTH_USER.NATIVE_PLACE
  is '籍贯';
comment on column BJVMMIS.TM_AUTH_USER.MOBILE
  is '手机';
comment on column BJVMMIS.TM_AUTH_USER.EMAIL
  is 'Email';
comment on column BJVMMIS.TM_AUTH_USER.INHERIT_DEPT_AUTH
  is '是否继承所在部门的权限';
comment on column BJVMMIS.TM_AUTH_USER.AUTH_TAG
  is 'authTag';
comment on column BJVMMIS.TM_AUTH_USER.TEL
  is '电话（座机）';
comment on column BJVMMIS.TM_AUTH_USER.DISTID
  is '区划代码';
comment on column BJVMMIS.TM_AUTH_USER.IP_ADDRESS
  is 'IP地址';
comment on column BJVMMIS.TM_AUTH_USER.MAC_ADDRESS
  is 'MAC地址';
comment on column BJVMMIS.TM_AUTH_USER.CA_KEY
  is 'CA证书标识';
comment on column BJVMMIS.TM_AUTH_USER.USER_ID_LOW
  is '小写的user_id';
comment on column BJVMMIS.TM_AUTH_USER.DELETE_FLAG
  is '删除标记 2表示删除';
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
  is '用户拥有的功能';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.USER_OID
  is '用户逻辑编号';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.FUNC_OID
  is '功能逻辑编号';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.AUTH_TYPE
  is '权限类型';
comment on column BJVMMIS.TM_AUTH_USER_FUNCTIONS.DEPT_FUNC_OID
  is '部门功能ID';
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
  is '用户拥有的角色';
comment on column BJVMMIS.TM_AUTH_USER_ROLES.OID
  is '编号';
comment on column BJVMMIS.TM_AUTH_USER_ROLES.USER_OID
  is '用户逻辑编号';
comment on column BJVMMIS.TM_AUTH_USER_ROLES.ROLE_OID
  is '角色逻辑编号';
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
  is '附件信息表';
comment on column BJVMMIS.TRIW_ATTACHMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_ATTACHMENT.HOST_ID
  is '文章ID';
comment on column BJVMMIS.TRIW_ATTACHMENT.HOST_TYPE
  is '文章类型';
comment on column BJVMMIS.TRIW_ATTACHMENT.TITLE
  is '标题';
comment on column BJVMMIS.TRIW_ATTACHMENT.URL
  is '链接地址';
comment on column BJVMMIS.TRIW_ATTACHMENT.DESCRIPTION
  is '说明';
comment on column BJVMMIS.TRIW_ATTACHMENT.FILE_SIZE
  is '文件大小';
comment on column BJVMMIS.TRIW_ATTACHMENT.PRICE
  is 'PRICE';
comment on column BJVMMIS.TRIW_ATTACHMENT.DOWNLOADS
  is '下载次数';
comment on column BJVMMIS.TRIW_ATTACHMENT.MEDIA
  is '是否媒体文件';
comment on column BJVMMIS.TRIW_ATTACHMENT.MEDIA_TYPE
  is '媒体类型';
comment on column BJVMMIS.TRIW_ATTACHMENT.LOCAL
  is '是否本地文件';
comment on column BJVMMIS.TRIW_ATTACHMENT.ORDER_NUM
  is '排序号码';
comment on column BJVMMIS.TRIW_ATTACHMENT.ENCRYPTED_PARM_STR
  is '媒体参数代码';
comment on column BJVMMIS.TRIW_ATTACHMENT.USER_ID
  is '上传用户ID';
comment on column BJVMMIS.TRIW_ATTACHMENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_ATTACHMENT.UPDATE_TIME
  is '更新时间';
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
  is '论坛版块表';
comment on column BJVMMIS.TRIW_BBS_FORUM.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_FORUM.FORUM_NAME
  is '版块名称';
comment on column BJVMMIS.TRIW_BBS_FORUM.DESCRIPTION
  is '描述';
comment on column BJVMMIS.TRIW_BBS_FORUM.DISPLAY_ORDER
  is '显示顺序';
comment on column BJVMMIS.TRIW_BBS_FORUM.FOOTER_LEFT
  is '键值左侧值';
comment on column BJVMMIS.TRIW_BBS_FORUM.FOOTER_RIGHT
  is '键值右侧值';
comment on column BJVMMIS.TRIW_BBS_FORUM.IS_SHARE
  is '版块是否公开';
comment on column BJVMMIS.TRIW_BBS_FORUM.AS_CLASS
  is '是否为分栏目';
comment on column BJVMMIS.TRIW_BBS_FORUM.STATE
  is '状态';
comment on column BJVMMIS.TRIW_BBS_FORUM.HOSTS_ALLOW
  is '限制可访问IP范围';
comment on column BJVMMIS.TRIW_BBS_FORUM.ICO_URL
  is '版块图标';
comment on column BJVMMIS.TRIW_BBS_FORUM.ROOT_FORUM_ID
  is '上级版块ID';
comment on column BJVMMIS.TRIW_BBS_FORUM.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_BBS_FORUM.UPDATE_TIME
  is '更新时间';
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
  is '论坛风格模版表';
comment on column BJVMMIS.TRIW_BBS_STYLE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_STYLE.STYLE_NAME
  is '模版名称';
comment on column BJVMMIS.TRIW_BBS_STYLE.AUTHOR
  is '作者';
comment on column BJVMMIS.TRIW_BBS_STYLE.DESCRIPTION
  is '说明';
comment on column BJVMMIS.TRIW_BBS_STYLE.STATE
  is '状态';
comment on column BJVMMIS.TRIW_BBS_STYLE.HREF_LINE_FORMAT_STR_OVER_ALL
  is '链接行格式';
comment on column BJVMMIS.TRIW_BBS_STYLE.HREF_LINE_FOR_STR_WITH_SN
  is '带序号链接行格式';
comment on column BJVMMIS.TRIW_BBS_STYLE.BM_SHOW_FORMAT
  is '显示格式';
comment on column BJVMMIS.TRIW_BBS_STYLE.ADD_THEME_BUTTOM_CODE
  is '添加主题底部代码';
comment on column BJVMMIS.TRIW_BBS_STYLE.EDIT_THEME_AREA_CODE
  is '编辑主题区域代码';
comment on column BJVMMIS.TRIW_BBS_STYLE.REPLIE_THREAD_AREA_CODE
  is '回复主题区域代码';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_STICKED_ON_GLOBAL
  is '主论坛图标';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_STICKED_ON_CLASS
  is '子版块图标';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_STICKED_ON_FORUM
  is '版块主题图标';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_GENERAL
  is '普通图标';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_NEW
  is '新主题图标';
comment on column BJVMMIS.TRIW_BBS_STYLE.ICO_URL_OF_HOT
  is '热点图标';
comment on column BJVMMIS.TRIW_BBS_STYLE.QUOTE_AREA_CODE
  is '引用区域代码';
comment on column BJVMMIS.TRIW_BBS_STYLE.INDEX_SHOW_LAST_FORMAT_STR
  is '首页显示最后一个版块字符串';
comment on column BJVMMIS.TRIW_BBS_STYLE.RESULT_PAGE_CODE
  is '结果页代码';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE1
  is '公共代码1';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE2
  is '公共代码2';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE3
  is '公共代码3';
comment on column BJVMMIS.TRIW_BBS_STYLE.PUBLIC_CODE4
  is '公共代码4';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE1
  is '自定义格式代码1';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE2
  is '自定义格式代码2';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE3
  is '自定义格式代码3';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE4
  is '自定义格式代码4';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE5
  is '自定义格式代码5';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE6
  is '自定义格式代码6';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE7
  is '自定义格式代码7';
comment on column BJVMMIS.TRIW_BBS_STYLE.CUSTOM_FORMAT_CODE8
  is '自定义格式代码8';
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
  is '创建时间';
comment on column BJVMMIS.TRIW_BBS_STYLE.UPDATE_TIME
  is '更新时间';
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
  is '论坛风格模板元素表';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.HTML_TEMPLATE
  is 'html模板';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.CSS_CODE
  is 'CSS代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.HTML_CODE
  is 'html代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TOP_CODE
  is '头部代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.FOOTER_CODE
  is '底部代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TARGET_STR
  is '目标字符串';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TITLE_FORMAT
  is '标题格式';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.HREF_LINE_FORMAT
  is '链接格式';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGIN
  is '用户登录面板代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGOUT
  is '用户注销面板代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.DATE_FORMAT_ON_LINE
  is '行内日期格式';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.DATE_FORMAT_IN_TEXT
  is '文本内日期格式';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MAJOR_LOOP_CODE_IN_LUMP
  is '主循环代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.MINOR_LOOP_CODE_IN_LUMP
  is '副循环代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TITLE_OF_MAJOR_LOOP_CODEINLUMP
  is '主循环代码标题';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.TITLE_OF_MINOR_LOOP_CODEINLUMP
  is '副循环代码标题';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.EDIT_AREA_CODE
  is '编辑区域代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SEARCH_AREA_CODE
  is '搜索区域代码';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE1
  is '特殊代码1';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE2
  is '特殊代码2';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE3
  is '特殊代码3';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.SPECIAL_CODE4
  is '特殊代码4';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_BBS_STYLE_ELEMENT.UPDATE_TIME
  is '更新时间';
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
  is '论坛主题表';
comment on column BJVMMIS.TRIW_BBS_THEME.ID
  is 'ID';
comment on column BJVMMIS.TRIW_BBS_THEME.TITLE
  is '标题';
comment on column BJVMMIS.TRIW_BBS_THEME.STATE
  is '状态';
comment on column BJVMMIS.TRIW_BBS_THEME.SHIELD
  is '是否锁定';
comment on column BJVMMIS.TRIW_BBS_THEME.SOUL
  is '是否精华';
comment on column BJVMMIS.TRIW_BBS_THEME.VIEWS
  is '浏览量';
comment on column BJVMMIS.TRIW_BBS_THEME.TOP_MOD
  is '置顶方式';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_EDIT_TIME
  is '最后更新时间';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_VIEW_IP
  is '最后查看ip';
comment on column BJVMMIS.TRIW_BBS_THEME.QUOTE
  is '引用';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_VIEW_TIME
  is '最后查看时间';
comment on column BJVMMIS.TRIW_BBS_THEME.THEME_BODY
  is '内容';
comment on column BJVMMIS.TRIW_BBS_THEME.ROOT_THEME_ID
  is '根主题ID';
comment on column BJVMMIS.TRIW_BBS_THEME.FORUM_ID
  is '版块ID';
comment on column BJVMMIS.TRIW_BBS_THEME.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_BBS_THEME.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_BBS_THEME.USER_NAME
  is '发布人';
comment on column BJVMMIS.TRIW_BBS_THEME.PASSER
  is '审核人';
comment on column BJVMMIS.TRIW_BBS_THEME.LAST_EDIT_USER
  is '最后编辑人';
comment on column BJVMMIS.TRIW_BBS_THEME.USER_ID
  is '发布人ID';
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
  is '文章评论表';
comment on column BJVMMIS.TRIW_COMMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_COMMENT.PUBLISHER
  is '发表人';
comment on column BJVMMIS.TRIW_COMMENT.TITLE
  is '标题';
comment on column BJVMMIS.TRIW_COMMENT.COMMENT_CONTENT
  is '内容';
comment on column BJVMMIS.TRIW_COMMENT.IP
  is 'ip';
comment on column BJVMMIS.TRIW_COMMENT.EMAIL
  is '电子邮件';
comment on column BJVMMIS.TRIW_COMMENT.PHONE
  is '电话';
comment on column BJVMMIS.TRIW_COMMENT.PUBLISHER_FROM
  is '来源';
comment on column BJVMMIS.TRIW_COMMENT.STATE
  is '状态';
comment on column BJVMMIS.TRIW_COMMENT.THREAD_ID
  is '文章ID';
comment on column BJVMMIS.TRIW_COMMENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_COMMENT.UPDATE_TIME
  is '更新时间';
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
  is '业务系统表';
comment on column BJVMMIS.TRIW_OP_SYSTEM.ID
  is 'ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM.SYSTEM_NAME
  is '系统名称';
comment on column BJVMMIS.TRIW_OP_SYSTEM.DESCRIPTION
  is '描述';
comment on column BJVMMIS.TRIW_OP_SYSTEM.URL
  is '访问地址';
comment on column BJVMMIS.TRIW_OP_SYSTEM.SYSTEM_ICON
  is '系统图标';
comment on column BJVMMIS.TRIW_OP_SYSTEM.STATE
  is '状态';
comment on column BJVMMIS.TRIW_OP_SYSTEM.GROUP_ID
  is '所属分组';
comment on column BJVMMIS.TRIW_OP_SYSTEM.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_OP_SYSTEM.UPDATE_TIME
  is '更新时间';
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
  is '业务系统分组表';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.ID
  is 'ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.GROUP_NAME
  is '分组名称';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.DESCRIPTION
  is '描述';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.STATE
  is '状态';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_OP_SYSTEM_GROUP.UPDATE_TIME
  is '更新时间';
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
  is '业务系统用户配置表';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.ID
  is 'ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.OP_SYSTEM_ID
  is '业务系统ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.USER_ID
  is '用户ID';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_OP_SYSTEM_USER_SET.UPDATE_TIME
  is '更新时间';
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
  is '栏目信息表';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.GROUP_NAME
  is '栏目名称';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.DISPLAY_ORDER
  is '栏目序号';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FOOTER_LEFT
  is '键值左标';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FOOTER_RIGHT
  is '键值右标';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.IS_SHARE
  is '栏目公开';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.AS_CLASS
  is '定义为分栏目';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.STATE
  is '状态';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SHOW_ALL
  is '显示所有子类章';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.ICON_URL
  is '栏目图标Url';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.HOSTS_ALLOW
  is '限制本栏目可访问IP';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.JUMP_URL
  is '跳转目标Url';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.STATIC_HTML_FOLDER
  is '静态文件所在文件夹名';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.REFUSE_STATIC_HTML
  is '强制不静态';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SHOW_ON_INDEX
  is '首页列表显示';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_SHOW_ON_INDEX
  is '首页显示个数';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.LENGTH_SHOW_ON_INDEX
  is '首页标题长度';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SOUL_ON_INDEX
  is '首页精华靠前';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FORMAT_ON_INDEX
  is '首页列表格式';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SHOW_ON_PARENT
  is '父级页列表显示';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_SHOW_ON_PARENT
  is '父级页列表显示个数';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.LENGTH_SHOW_ON_PARENT
  is '父级页标题长度';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.SOUL_ON_PARENT
  is '父级页精华靠前';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.FORMAT_ON_PARENT
  is '父级页列表格式';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.ARTICLE_PASS_MODE
  is '发文审核方式';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.COMPULSION_DOC_STYLE
  is '强制文章页面';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.COMMENT_MODE
  is '评论控制';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.PRIVATE_HTML
  is '私有html';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.STYLE_ID
  is '栏目风格';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_APPEAR_RESTRICT
  is '日最大发文数';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.NUMBER_LIST
  is '数据行数';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_GROUP.PARENT_GROUP_ID
  is '上级栏目ID';
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
  is '内容信息表';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.TITLE
  is '标题';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.EYE_CATCHING
  is '醒目标题';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.TOP_ONE
  is '推荐显示';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ACCESSIONAL_TITLE
  is '附加标题';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.PENSILE_TITLE
  is '眉头标题';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SHORT_TITLE
  is '精简标题';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.IS_LOCATION
  is '文章位置';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.STATE
  is '状态,0待审核，1发布，2审核通过，3审核未通过';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.IS_COMMENT
  is '是否允许评论';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SOUL
  is '是否精华';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.NOTICE
  is '是否公告';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.NOTICE_SHOW_BODY
  is '公告时显示正文';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.BY_EDITOR
  is '是否可编辑';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.VIEWS
  is '浏览次数';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SYNOPSIS
  is '内容简介';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR
  is '作者';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR_DEPT
  is '所属机构';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR_EMAIL
  is '作者Email';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.AUTHOR_URL
  is '作者主页';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LAST_VIEW_IP
  is '最后查看IP';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LAST_VIEW_TIME
  is '最后查看时间';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.QUOTE_MEMBER
  is '引用栏目';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.PASSER
  is '审核人帐号';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.PASSING_TIME
  is '审核时间';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.MAIN_IMG
  is '图像文件URL';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.THUMBNAIL
  is '缩略图文件URL';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.MAINIMG_EXPLAIN
  is '图片文字说明';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.JOURNAL
  is '已发表在';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LINK_TITLE
  is '其它可引用网络链接名';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LINK_URL
  is '其它可引用网络链接地址';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.LINK_JUMP
  is '强制跳转';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.MENTOR
  is '指导者';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.HTML_CREATED
  is '是否已创建静态页';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.HTML_URL_PATH
  is '静态文件路径';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.HTML_URL_FILE
  is '静态文件地址';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ENCRYPTED_PARM_STR
  is '媒体参数代码';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.DEFAULT_ATTA_MEDIA_FORMAT
  is '默认媒体文件';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ATTA_LINE_ORDER_FORMAT_STR
  is '标题格式';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ARTICLE_GROUP_ID
  is '所属栏目';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.USER_ID
  is '上报人ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ARTICLE_TAGS
  is '文章标签';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SRC_TABLE_ID
  is '源表ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.SRC_TYPE_ID
  is '源表类型ID';
comment on column BJVMMIS.TRIW_SITE_ARTICLE_THREAD.ART_CONTENT
  is '文章内容';
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
  is '站点基本信息';
comment on column BJVMMIS.TRIW_SITE_INFO.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_INFO.FULL_SITE_NAME
  is '网站全称';
comment on column BJVMMIS.TRIW_SITE_INFO.SHORT_SITE_NAME
  is '网站简称';
comment on column BJVMMIS.TRIW_SITE_INFO.STATE
  is '网站状态';
comment on column BJVMMIS.TRIW_SITE_INFO.SESSION_KEY
  is '网站session值';
comment on column BJVMMIS.TRIW_SITE_INFO.KEY_WORDS
  is '网站关键字';
comment on column BJVMMIS.TRIW_SITE_INFO.DESCRIPTION
  is '网站描述';
comment on column BJVMMIS.TRIW_SITE_INFO.HOST
  is '网站主机名或域名';
comment on column BJVMMIS.TRIW_SITE_INFO.CLOSE_ANNOUNCE
  is '网站关闭通知';
comment on column BJVMMIS.TRIW_SITE_INFO.HOST_VISIT_ALLOW
  is '限定可访问的IP';
comment on column BJVMMIS.TRIW_SITE_INFO.WELCOME_STR
  is '网站欢迎词';
comment on column BJVMMIS.TRIW_SITE_INFO.SPACE_NAME
  is '空间名称';
comment on column BJVMMIS.TRIW_SITE_INFO.BBS_NAME
  is '论坛名称';
comment on column BJVMMIS.TRIW_SITE_INFO.BBS_STATE
  is '论坛状态';
comment on column BJVMMIS.TRIW_SITE_INFO.SPACE_STATE
  is '空间状态';
comment on column BJVMMIS.TRIW_SITE_INFO.STATIC_HTML_MODE
  is '生成静态文件模式';
comment on column BJVMMIS.TRIW_SITE_INFO.STYLE_ID_FOR_SITE
  is '网站风格ID';
comment on column BJVMMIS.TRIW_SITE_INFO.STYLE_ID_FOR_BBS
  is '论坛风格ID';
comment on column BJVMMIS.TRIW_SITE_INFO.STYLE_ID_FOR_SPACE
  is '空间主风格ID';
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
  is '允许上传的文件类型';
comment on column BJVMMIS.TRIW_SITE_INFO.FILTER_WORDS
  is '敏感词过滤';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_REG_ALLOW
  is '开放注册';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_REG_AUTO_PASSED
  is '新用户注册自动审核验证';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_GROUP_OF_AUTO_PASSED
  is '新用户注册自动归属用户组设置';
comment on column BJVMMIS.TRIW_SITE_INFO.SEND_MAIL_FOR_REG_USER_CONFIRM
  is '自动发送邮件到登记邮箱进行确认';
comment on column BJVMMIS.TRIW_SITE_INFO.ONE_MAIL_FOR_REG
  is '一个Email信箱只允许注册一个帐号';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_LOGIN_ALLOW
  is '是否允许用户登录';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_GROUP_WHEN_NOT_LOG_ALLOW
  is '禁止登录时允许某些用户组登录';
comment on column BJVMMIS.TRIW_SITE_INFO.ARTICLE_AUTO_PASS
  is '用户发文自动审核';
comment on column BJVMMIS.TRIW_SITE_INFO.COMMENTS_OPEN
  is '评论控制';
comment on column BJVMMIS.TRIW_SITE_INFO.MODE_OF_COMMENT
  is '评论显示控制';
comment on column BJVMMIS.TRIW_SITE_INFO.USER_GROUPS_FOR_STAT
  is '用户发文统计指定用户组';
comment on column BJVMMIS.TRIW_SITE_INFO.LICENSE_AGREEMENT
  is '用户注册许可';
comment on column BJVMMIS.TRIW_SITE_INFO.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SITE_INFO.UPDATE_TIME
  is '更新时间';
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
  is '站点风格模版';
comment on column BJVMMIS.TRIW_SITE_STYLE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_STYLE.STYLE_NAME
  is '模版名称';
comment on column BJVMMIS.TRIW_SITE_STYLE.AUTHOR
  is '作者';
comment on column BJVMMIS.TRIW_SITE_STYLE.DESCRIPTION
  is '描述';
comment on column BJVMMIS.TRIW_SITE_STYLE.STATE
  is '状态';
comment on column BJVMMIS.TRIW_SITE_STYLE.LOCATION_SPLIT_STR
  is '本地分割字符串';
comment on column BJVMMIS.TRIW_SITE_STYLE.HREF_LINE_FORMAT_STR_OVER_ALL
  is '链接行格式';
comment on column BJVMMIS.TRIW_SITE_STYLE.HREF_LINE_FOR_STR_WITH_SN
  is '带序号链接行格式';
comment on column BJVMMIS.TRIW_SITE_STYLE.MEDIA_PLAY_CODE1
  is '媒体代码1';
comment on column BJVMMIS.TRIW_SITE_STYLE.MEDIA_PLAY_CODE2
  is '媒体代码2';
comment on column BJVMMIS.TRIW_SITE_STYLE.MEDIA_PLAY_CODE3
  is '媒体代码3';
comment on column BJVMMIS.TRIW_SITE_STYLE.M_PLAY_OUT_LAYER_CODE_FOR_ATTP
  is '文章页媒体播放浮动代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.M_PLAY_OUT_LAYER_CODE_FOR_ATTA
  is '栏目页媒体播放浮动代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.ATTACHMENT_LINE_SHOW_FOR_IMG
  is '图片显示代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.ATTACHMENT_LINE_SHOW_FOR_DOWN
  is '下载显示';
comment on column BJVMMIS.TRIW_SITE_STYLE.ATTACHMENT_LINE_SHOW_FOR_PLAY
  is '播放显示';
comment on column BJVMMIS.TRIW_SITE_STYLE.LINE_BLOCK_FORMAT
  is '行格式';
comment on column BJVMMIS.TRIW_SITE_STYLE.COLUMN_BLOCK_FORMAT
  is '列格式';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE1
  is '公共代码1';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE2
  is '公共代码2';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE3
  is '公共代码3';
comment on column BJVMMIS.TRIW_SITE_STYLE.PUBLIC_CODE4
  is '公共代码4';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE1
  is '自定义格式代码1';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE2
  is '自定义格式代码2';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE3
  is '自定义格式代码3';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE4
  is '自定义格式代码4';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE5
  is '自定义格式代码5';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE6
  is '自定义格式代码6';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE7
  is '自定义格式代码7';
comment on column BJVMMIS.TRIW_SITE_STYLE.CUSTOM_FORMAT_CODE8
  is '自定义格式代码8';
comment on column BJVMMIS.TRIW_SITE_STYLE.AJAX_STR_FORMAT
  is 'ajax字符串格式';
comment on column BJVMMIS.TRIW_SITE_STYLE.RESULT_PAGE_CODE
  is '结果页代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.SELECT_OPTION_LOOP_CODE
  is '列表选项循环代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.LAST_ARTICLE_FORWARD_CODE
  is '最后文章转向代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.NEXT_ARTICLE_FORWARD_CODE
  is '下一篇文章转向代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.EYE_CATCHING_CODE
  is '醒目标题代码';
comment on column BJVMMIS.TRIW_SITE_STYLE.PASSED_STR
  is '通过字符';
comment on column BJVMMIS.TRIW_SITE_STYLE.NO_PASSED_STR
  is '不通过字符';
comment on column BJVMMIS.TRIW_SITE_STYLE.NO_PASSED_ALT_STR
  is '不通过提示字符';
comment on column BJVMMIS.TRIW_SITE_STYLE.THREAD_AJAX_SHOW_STR
  is '主题ajax显示字符';
comment on column BJVMMIS.TRIW_SITE_STYLE.STAT_CODE
  is '状态代码';
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
  is '创建时间';
comment on column BJVMMIS.TRIW_SITE_STYLE.UPDATE_TIME
  is '更新时间';
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
  is '站点风格模版元素表';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.HTML_TEMPLATE
  is 'html模板';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.CSS_CODE
  is 'CSS代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.HTML_CODE
  is 'html代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.TOP_CODE
  is '头部代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.FOOTER_CODE
  is '底部代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.TARGET_STR
  is '目标字符串';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.TITLE_FORMAT
  is '标题格式';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.HREF_LINE_FORMAT
  is '链接格式';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGIN
  is '用户登录面板代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGOUT
  is '用户注销面板代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.DATE_FORMAT_ON_LINE
  is '行内日期格式';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.DATE_FORMAT_IN_TEXT
  is '文本内日期格式';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MAJOR_LOOP_CODE_IN_LUMP
  is '主循环代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.MINOR_LOOP_CODE_IN_LUMP
  is '副循环代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.EDIT_AREA_CODE
  is '编辑区域代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SEARCH_AREA_CODE
  is '搜索区域代码';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE1
  is '特殊代码1';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE2
  is '特殊代码2';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE3
  is '特殊代码3';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.SPECIAL_CODE4
  is '特殊代码4';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.FORM_TEMPLATE
  is '来源模板';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SITE_STYLE_ELEMENT.UPDATE_TIME
  is '更新时间';
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
  is '管理员用户表';
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
  is '汉字编码表';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.CC
  is '中文汉字';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.UNICODE
  is 'UNICODE编码';
comment on column BJVMMIS.TRIW_SYS_CN_CHARACTER_UNICODE.STROKES
  is '令牌字符串';

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
  is '用户组信息表';
comment on column BJVMMIS.TRIW_SYS_GROUPS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_GROUPS.GROUP_NAME
  is '用户组名';
comment on column BJVMMIS.TRIW_SYS_GROUPS.POWER_MASK
  is '权限码';
comment on column BJVMMIS.TRIW_SYS_GROUPS.SITE_ART_GROUPS_SLT_CUSTOM_STR
  is '文章组字符串';
comment on column BJVMMIS.TRIW_SYS_GROUPS.STATE
  is '状态';
comment on column BJVMMIS.TRIW_SYS_GROUPS.USER_COUNT
  is '用户数';
comment on column BJVMMIS.TRIW_SYS_GROUPS.NUMBER_APPEAR_RESTRICT
  is '日发文限制';
comment on column BJVMMIS.TRIW_SYS_GROUPS.PRIVATEHTML
  is '私有html';
comment on column BJVMMIS.TRIW_SYS_GROUPS.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SYS_GROUPS.UPDATE_TIME
  is '更新时间';
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
  is '用户信息表';
comment on column BJVMMIS.TRIW_SYS_USERINF.USER_ID
  is '用户ID';
comment on column BJVMMIS.TRIW_SYS_USERINF.REG_TIMSTAMP
  is '注册时间';
comment on column BJVMMIS.TRIW_SYS_USERINF.TRUE_NAME
  is '真实姓名';
comment on column BJVMMIS.TRIW_SYS_USERINF.REG_IP
  is '注册IP地址';
comment on column BJVMMIS.TRIW_SYS_USERINF.PET_NAME
  is '昵称';
comment on column BJVMMIS.TRIW_SYS_USERINF.SEX
  is '性别';
comment on column BJVMMIS.TRIW_SYS_USERINF.BIRTHDAY
  is '生日';
comment on column BJVMMIS.TRIW_SYS_USERINF.DEPT
  is '部门';
comment on column BJVMMIS.TRIW_SYS_USERINF.COUNTRY
  is '国家';
comment on column BJVMMIS.TRIW_SYS_USERINF.PROVINCE
  is '省份';
comment on column BJVMMIS.TRIW_SYS_USERINF.CITY
  is '城市';
comment on column BJVMMIS.TRIW_SYS_USERINF.ADDRESS
  is '地址';
comment on column BJVMMIS.TRIW_SYS_USERINF.PHONE
  is '电话';
comment on column BJVMMIS.TRIW_SYS_USERINF.MOBILE
  is '手机';
comment on column BJVMMIS.TRIW_SYS_USERINF.QQ
  is 'QQ';
comment on column BJVMMIS.TRIW_SYS_USERINF.MSN
  is 'MSN';
comment on column BJVMMIS.TRIW_SYS_USERINF.PERSONAL_SIGNATURE
  is '个人签名';
comment on column BJVMMIS.TRIW_SYS_USERINF.QUESTION1
  is '问题1';
comment on column BJVMMIS.TRIW_SYS_USERINF.ANSWER1
  is '答案1';
comment on column BJVMMIS.TRIW_SYS_USERINF.QUESTION2
  is '问题2';
comment on column BJVMMIS.TRIW_SYS_USERINF.ANSWER2
  is '答案2';
comment on column BJVMMIS.TRIW_SYS_USERINF.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SYS_USERINF.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_SYS_USERINF.ALL_SCORE
  is '用户积分';
comment on column BJVMMIS.TRIW_SYS_USERINF.BBS_SCORE
  is '论坛积分';
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
  is '系统用户表';
comment on column BJVMMIS.TRIW_SYS_USERS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_SYS_USERS.USER_NAME
  is '用户名';
comment on column BJVMMIS.TRIW_SYS_USERS.REM_NAME
  is '用户姓名';
comment on column BJVMMIS.TRIW_SYS_USERS.PASSWORD
  is '密码';
comment on column BJVMMIS.TRIW_SYS_USERS.SALT
  is 'SALT';
comment on column BJVMMIS.TRIW_SYS_USERS.STATE
  is '状态';
comment on column BJVMMIS.TRIW_SYS_USERS.EMAIL
  is '邮箱';
comment on column BJVMMIS.TRIW_SYS_USERS.AVATAR_FILE
  is '头像';
comment on column BJVMMIS.TRIW_SYS_USERS.LAST_LOGIN_TIMSTAMP
  is '最后登录时间';
comment on column BJVMMIS.TRIW_SYS_USERS.LAST_LOGIN_IP
  is '最后登录IP';
comment on column BJVMMIS.TRIW_SYS_USERS.REG_TIMSTAMP
  is '注册时间';
comment on column BJVMMIS.TRIW_SYS_USERS.REG_IP
  is '注册IP';
comment on column BJVMMIS.TRIW_SYS_USERS.UUID
  is '随机码';
comment on column BJVMMIS.TRIW_SYS_USERS.ARTICLE_THREADS_PASSED
  is '文章主题通过数';
comment on column BJVMMIS.TRIW_SYS_USERS.ARTICLE_THREADS_COUNT
  is '发表文章主题数';
comment on column BJVMMIS.TRIW_SYS_USERS.GROUP_ID
  is '用户组';
comment on column BJVMMIS.TRIW_SYS_USERS.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_SYS_USERS.UPDATE_TIME
  is '更新时间';
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
  is '投票内容其他选项信息表';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.VOTE_OTHER_CONTENT
  is '其他选项内容';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.VOTE_SUBITEM_ID
  is '投票主题ID';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.USER_ID
  is '用户ID';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_VOTE_OTHERINFO.VOTE_SUBJECT_ID
  is '投票项目ID';
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
  is '投票结果其他内容表';
comment on column BJVMMIS.TRIW_VOTE_RESULT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_SUBITEM_ID
  is '投票主题ID';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_OPTION
  is '投票选项';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_COUNT
  is '票数';
comment on column BJVMMIS.TRIW_VOTE_RESULT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_RESULT.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_VOTE_RESULT.VOTE_SUBJECT_ID
  is '投票项目ID';
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
  is '投票风格模板表';
comment on column BJVMMIS.TRIW_VOTE_STYLE.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE.TITLE
  is '标题';
comment on column BJVMMIS.TRIW_VOTE_STYLE.STATE
  is '状态';
comment on column BJVMMIS.TRIW_VOTE_STYLE.AUTHOR
  is '作者';
comment on column BJVMMIS.TRIW_VOTE_STYLE.DESCRIPTION
  is '说明';
comment on column BJVMMIS.TRIW_VOTE_STYLE.BAR_MAX_VALUE
  is '标签最大值';
comment on column BJVMMIS.TRIW_VOTE_STYLE.RESULT_PAGE_CODE
  is '结果页代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE1
  is '公共代码1';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE2
  is '公共代码2';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE3
  is '公共代码3';
comment on column BJVMMIS.TRIW_VOTE_STYLE.PUBLIC_CODE4
  is '公共代码4';
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
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_STYLE.UPDATE_TIME
  is '更新时间';
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
  is '投票风格模板元素表';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.HTML_TEMPLATE
  is 'html模板';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.CSS_CODE
  is 'CSS代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.HTML_CODE
  is 'html代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.TOP_CODE
  is '头部代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.FOOTER_CODE
  is '底部代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGIN
  is '用户登录面板代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.MEMBER_PANEL_CODE_FOR_LOGOUT
  is '用户注销面板代码';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.ITEMS_LOOP_FORMAT
  is '列表循环格式';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.LINE_CODE_FORMAT
  is '行代码格式';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.TITLE_FORMAT
  is '标题格式';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.HREF_LINE_FORMAT
  is '行链接格式';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE1
  is '特殊代码1';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE2
  is '特殊代码2';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE3
  is '特殊代码3';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.SPECIAL_CODE4
  is '特殊代码4';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_STYLE_ELEMENT.UPDATE_TIME
  is '更新时间';
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
  is '投票主题表';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_TITLE
  is '投票主题';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_CONTENT
  is '投票内容';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_WAY
  is '投票方式：1为单选，2为多选';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_SUBID
  is '所属项目';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.STATE
  is '状态：0为待发布，1为发布，2为关闭';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_OTHER
  is '其他选项，0为不含其他项，1为含其他项';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_MAXOPTION
  is '最多可选项数目';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TRIW_VOTE_SUBITEMS.VOTE_DESCRIPTION
  is '描述';
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
  is '投票项目表';
comment on column BJVMMIS.TRIW_VOTE_SUBS.ID
  is 'ID';
comment on column BJVMMIS.TRIW_VOTE_SUBS.TITLE
  is '标题';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SEC_STR
  is '密钥';
comment on column BJVMMIS.TRIW_VOTE_SUBS.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SIGN_START_TIME
  is '报名开始时间';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SIGN_END_TIME
  is '报名结束时间';
comment on column BJVMMIS.TRIW_VOTE_SUBS.VOTE_START_TIME
  is '投票开始时间';
comment on column BJVMMIS.TRIW_VOTE_SUBS.VOTE_END_TIME
  is '投票结束时间';
comment on column BJVMMIS.TRIW_VOTE_SUBS.UPPER_LIMIT
  is '最大投票数';
comment on column BJVMMIS.TRIW_VOTE_SUBS.FULL_UPPER_CONSTRAINT
  is '强制投满';
comment on column BJVMMIS.TRIW_VOTE_SUBS.IP_AREA
  is 'IP限制';
comment on column BJVMMIS.TRIW_VOTE_SUBS.HOURS_AT_IP_RULE
  is 'IP投票时间限制';
comment on column BJVMMIS.TRIW_VOTE_SUBS.HOURS_AT_MACHINE_RULE
  is '机器投票时间限制';
comment on column BJVMMIS.TRIW_VOTE_SUBS.USE_VERIFY_CODE
  is '是否使用验证码';
comment on column BJVMMIS.TRIW_VOTE_SUBS.IDENTITY_RULE
  is '是否身份强制检查';
comment on column BJVMMIS.TRIW_VOTE_SUBS.PHONE_CODE_RULE
  is '是否电话号码强制检查';
comment on column BJVMMIS.TRIW_VOTE_SUBS.POSTER_NAME_CCU_CHK
  is '是否中文检测投票人姓名';
comment on column BJVMMIS.TRIW_VOTE_SUBS.STATE
  is '状态';
comment on column BJVMMIS.TRIW_VOTE_SUBS.OPEN_RESULT
  is '是否允许查看结果';
comment on column BJVMMIS.TRIW_VOTE_SUBS.NET_JOIN
  is '是否允许网上报名';
comment on column BJVMMIS.TRIW_VOTE_SUBS.NET_JOIN_MUST_BE_MEMBER
  is '如果网上报名是否一定要是会员';
comment on column BJVMMIS.TRIW_VOTE_SUBS.NET_JOIN_AUTO_PASSED
  is '网上报名是否自动通过';
comment on column BJVMMIS.TRIW_VOTE_SUBS.MES_AUTO_PASSED
  is '投票时留言是否自动通过';
comment on column BJVMMIS.TRIW_VOTE_SUBS.SALT
  is 'SALT';
comment on column BJVMMIS.TRIW_VOTE_SUBS.VOTE_PASSWORD
  is '密码投票';
comment on column BJVMMIS.TRIW_VOTE_SUBS.ORDER_TYPE
  is '排序方式';
comment on column BJVMMIS.TRIW_VOTE_SUBS.PERCENT
  is '计分百分比';
comment on column BJVMMIS.TRIW_VOTE_SUBS.STYLE_ID
  is '风格模板';
comment on column BJVMMIS.TRIW_VOTE_SUBS.UPDATE_TIME
  is '更新时间';
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
  is '投票用户表';
comment on column BJVMMIS.TRIW_VOTE_USERS.ID
  is 'id';
comment on column BJVMMIS.TRIW_VOTE_USERS.VOTE_SUBITEM_ID
  is '投票主题ID';
comment on column BJVMMIS.TRIW_VOTE_USERS.VOTE_SUBID
  is '投票项目ID';
comment on column BJVMMIS.TRIW_VOTE_USERS.USER_ID
  is '用户ID';
comment on column BJVMMIS.TRIW_VOTE_USERS.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TRIW_VOTE_USERS.UPDATE_TIME
  is '更新时间';

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
  is '维修企业基础信息(审批系统和核对表)';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.OID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REGION
  is '所属区县';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.JY_ADDRESS
  is '经营地址';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.JD_TYPE
  is '经济类型';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ACCTG_METH
  is '核算形式';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.LEGAL_PERS
  is '法定代表人';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ID
  is '身份证号';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REPAIR_TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PHONE_NUM
  is '手机';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REPAIR_FAX
  is '传真';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.EMAIL
  is 'EMAIL';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PSTL_NUM
  is '邮政编号';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.BUS_TEL
  is '业务电话';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MGRAREA
  is '许可经营范围';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRK_AREA
  is '停车场面积';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PLANT_AREA
  is '生产厂房面积';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.RPT_AREA
  is '接待室面积';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ZD_AREA
  is '占地面积';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.FUND_TOTAL
  is '资金总额';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REG_TOTAL
  is '注册资金';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.FIX_TOTAL
  is '固定资金';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.FLOW_TOTAL
  is '流动资金';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.OPEN_TIME
  is '开业时间';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MARK_NUM
  is '标志牌号';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_NUM
  is '经营许可证号';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.BUS_NUM
  is '工商执照号';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MJR_MODEL
  is '主修车型';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.CHG_TIME
  is '变更时间';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_END_TIME
  is '许可证有效期至';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_CONT_TIME
  is '许可证延续机构';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.COM_STATUS
  is '企业状态
1注销、2吊销、3歇业、4有效、5无效';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.ROOM_AREA
  is '总成维修间';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.MARK_BRAND
  is '标志牌(废弃)';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFAID
  is '有无24小时救援制度';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFAID_CAR
  is '有无救援服务专用车';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFFBK
  is '有无客户意见反馈制度';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.IFVST
  is '有无客户回访制度';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.SERV_PHONE
  is '24小时服务电话';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.AID_MODEL
  is '救援服务车车型';
comment on column BJVMMIS.TR_RPT_REPAIR_ENTERPRISE.PRMT_START_TIME
  is '许可证有效期起';
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
  is '机动车维修经营许可登记信息核对表 ';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.OID
  is '核对ID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_NUM
  is '经营许可证号';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REGION
  is '所属区县';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.JY_ADDRESS
  is '经营地址';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.JD_TYPE
  is '经济类型';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ACCTG_METH
  is '核算形式';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.LEGAL_PERS
  is '法定代表人';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ID
  is '身份证号';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REPAIR_TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PHONE_NUM
  is '手机';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REPAIR_FAX
  is '传真';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.EMAIL
  is 'EMAIL';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PSTL_NUM
  is '邮政编号';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.BUS_TEL
  is '业务联系电话';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.MGRAREA
  is '许可经营范围';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRK_AREA
  is '停车场面积';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PLANT_AREA
  is '生产厂房面积';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.RPT_AREA
  is '接待室面积';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ZD_AREA
  is '占地面积';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.FUND_TOTAL
  is '资金总额';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REG_TOTAL
  is '注册资金';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.FIX_TOTAL
  is '固定资金';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.FLOW_TOTAL
  is '流动资金';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.OPEN_TIME
  is '开业时间';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.DESCRIBE
  is '经营者意见描述';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.UPLOAD_TIME
  is '上报日期';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.COM_STATUS
  is '企业状态
1注销、2吊销、3歇业、4有效、5无效';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.CHECK_NUM
  is '核对次数';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_END_TIME
  is '许可证有效期至';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_CONT_TIME
  is '许可证延续机构';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.SCRN_STATUS
  is '筛选状态
质量信誉筛选企业，在筛选之前筛选状态字段更新为0，1、企业筛选、2、企业上报';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.ROOM_AREA
  is '总成维修间';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.MARK_BRAND
  is '标志牌';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.BUS_NUM
  is '工商执照号';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFAID
  is '有无24小时救援制度';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFAID_CAR
  is '有无救援服务专用车';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFFBK
  is '有无客户意见反馈制度';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.IFVST
  is '有无客户回访制度';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.SERV_PHONE
  is '24小时服务电话';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.AID_MODEL
  is '救援服务车车型';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_VERIFY.PRMT_START_TIME
  is '许可证有效期起';
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
  is '咨询与建议';
comment on column BJVMMIS.TR_ADVICE.OID
  is '咨询ID';
comment on column BJVMMIS.TR_ADVICE.TITLE
  is '标题';
comment on column BJVMMIS.TR_ADVICE.CONSULT_PERS
  is '咨询人';
comment on column BJVMMIS.TR_ADVICE.CONSULT_CONTENT
  is '咨询内容';
comment on column BJVMMIS.TR_ADVICE.CONSULT_TIME
  is '咨询时间';
comment on column BJVMMIS.TR_ADVICE.CONSULT_RSLT
  is '咨询结果';
comment on column BJVMMIS.TR_ADVICE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_ADVICE.RPLY_TIME
  is '回复时间';
comment on column BJVMMIS.TR_ADVICE.RPLY_PERS
  is '回复人';
comment on column BJVMMIS.TR_ADVICE.STATUS
  is '审核状态';
comment on column BJVMMIS.TR_ADVICE.VLD_PERS
  is '审核人';
comment on column BJVMMIS.TR_ADVICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_ADVICE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_ADVICE.UPDATE_TIME
  is '更新时间';
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
  is '附件表';
comment on column BJVMMIS.TR_ATTACHMENT.OID
  is '附件id';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_ID
  is '主表ID';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_URL
  is '附件地址';
comment on column BJVMMIS.TR_ATTACHMENT.FILENAME
  is '存储文件名';
comment on column BJVMMIS.TR_ATTACHMENT.ORG_FILENAME
  is '原始文件名';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_SIZE
  is '文件大小（字节）';
comment on column BJVMMIS.TR_ATTACHMENT.ANNEX_TYPE
  is '附件分类
1维修企业监管、2行业管理';
comment on column BJVMMIS.TR_ATTACHMENT.INDX
  is '顺序号';
comment on column BJVMMIS.TR_ATTACHMENT.EXTENTION
  is '后缀名';
comment on column BJVMMIS.TR_ATTACHMENT.UPLOADER
  is '上传人';
comment on column BJVMMIS.TR_ATTACHMENT.UPLOAD_TIME
  is '上传日期';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_CREATE_TIME
  is '文件制作时间';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_CREATE_ADDR
  is '文件制作地点';
comment on column BJVMMIS.TR_ATTACHMENT.FILE_CREATE_COND
  is '文件制作条件';
comment on column BJVMMIS.TR_ATTACHMENT.REMARK
  is '备注';
comment on column BJVMMIS.TR_ATTACHMENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_ATTACHMENT.UPDATE_TIME
  is '更新时间';
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
  is '监管检查表 ';
comment on column BJVMMIS.TR_TMG_JG_CHECK.OID
  is '监管检查ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK.PLAN_DETL_ID
  is '检查计划明细ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_TMG_JG_CHECK.PRMT_NUM
  is '许可证号';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHECK_TIME
  is '检查日期';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHECK_RESULT
  is '检查结果
正常、非正常';
comment on column BJVMMIS.TR_TMG_JG_CHECK.STATUS
  is '检查状态
限期改正中、整改复查中、当场改正、合格';
comment on column BJVMMIS.TR_TMG_JG_CHECK.MGR_ID
  is '填表人';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHK_TYPE
  is '检查分类
计划检查、专项检查、重点检查、举报、投诉检查、许可登记信息核对、其它检查。';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHECK_ADRRICE
  is '检查地点';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CHK_TEAM_PERS
  is '检查小组负责人';
comment on column BJVMMIS.TR_TMG_JG_CHECK.ESCORT_PERS
  is '陪同检查企业负责人';
comment on column BJVMMIS.TR_TMG_JG_CHECK.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_JG_CHECK.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_JG_CHECK.CREATE_TIME
  is '创建时间';
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
  is '投诉情况表';
comment on column BJVMMIS.TR_CRD_COMPLAINT.OID
  is '投诉ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.REPAIR_ID
  is '维修记录';
comment on column BJVMMIS.TR_CRD_COMPLAINT.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_TIME
  is '投诉时间';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_PSN
  is '投诉人';
comment on column BJVMMIS.TR_CRD_COMPLAINT.TSID_NUM
  is '投诉身份证号';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_CONT
  is '投诉内容';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_PHONE
  is '投诉人手机';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_TEL
  is '联系电话';
comment on column BJVMMIS.TR_CRD_COMPLAINT.EMAIL
  is '投诉人EMAIL';
comment on column BJVMMIS.TR_CRD_COMPLAINT.ACPT_DEPT
  is '受理部门';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_METH
  is '投诉方式
电话、邮件等';
comment on column BJVMMIS.TR_CRD_COMPLAINT.EXP_MEDIA
  is '曝光媒体';
comment on column BJVMMIS.TR_CRD_COMPLAINT.SOCIAL_YX
  is '社会影响';
comment on column BJVMMIS.TR_CRD_COMPLAINT.TREAT_RESULT
  is '处置结果';
comment on column BJVMMIS.TR_CRD_COMPLAINT.NUM
  is '总分数';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMT_TYPE
  is '投诉分类
维修质量、价格、服务质量、其它投诉(后三种投诉如果是实名都需要告知投诉人结果)
其它投诉（安全事故投诉不作为其它投诉，安全事故处理流程）';
comment on column BJVMMIS.TR_CRD_COMPLAINT.CL_STATUS
  is '处理状态
等待处理、处理中、处理结束

处理结束时提醒行业管理人员选择相对企业，同时提醒选择举报状态必选。';
comment on column BJVMMIS.TR_CRD_COMPLAINT.COMPLAINT_STATUS
  is '投诉状态（是否有效）';
comment on column BJVMMIS.TR_CRD_COMPLAINT.SRC_MODE
  is '来源方式（质量信誉档案添加）';
comment on column BJVMMIS.TR_CRD_COMPLAINT.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_COMPLAINT.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_COMPLAINT.CREATE_TIME
  is '创建时间';
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
  is '现场取证和技术分析意见书';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.OID
  is '技术分析意见书ID';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.COMPLAINT_ID
  is '投诉信息ID';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.QZ_NAME
  is '取证人员';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.XCQZ_REC
  is '记录信息';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.QZ_REC
  is '记录人1';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.QZ_TIME
  is '记录日期';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.SKILL_RECORD
  is '技术分析记录';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.ANLS_REC
  is '记录人2';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.ANLS_TIME
  is '日期2';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.COMPLAIN_IDEA
  is '投诉方意见';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.TIME_THREE
  is '日期3';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.UNCOMPLAIN_IDEA
  is '被投诉方意见';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.BT_TIME
  is '日期4';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.ADM_IDEA
  is '管理机构意见';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.FIVE_TIME
  is '日期5';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_ANLS_ADVICE.CREATE_TIME
  is '创建时间';
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
  is '投诉扣分明细';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.OID
  is '投诉明细ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.COMPLAINT_ID
  is '投诉记录ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.CHK_ITEM
  is '检查项';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.CHK_ITEM_CODE
  is '检查项代码';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.NUM
  is '分数';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_CRD_COMPLAINT_DETL.UPDATE_TIME
  is '更新时间';
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
  is '受理通知书';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.OID
  is '受理通知书ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.COMPLAINT_ID
  is '投诉信息ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.COMPLAINT_NAME
  is '投诉人';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.COMPLAINT_TIME
  is '投诉时间';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.ACCEPT_FRUIT
  is '受理结果';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.ACCEPT_BRANCH
  is '受理部门';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_CRD_COMPLAINT_NOTE.UPDATE_TIME
  is '更新日期';
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
  is '投诉告知结果
价格、服务质量、其它投诉(投诉如果是实名都需要告知投诉人结果)';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.OID
  is 'ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_ID
  is '投诉信息ID';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_NAME
  is '投诉人';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_FRUIT
  is '投诉结果';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.COMPLAINT_TIME
  is '受理投诉时间';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.ACCEPT_BRANCH
  is '受理部门';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.UNCOMPLAINT_NAME
  is '被投诉人';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.UNCOMPLAINT_UNIT
  is '被投诉方';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_COMPLAINT_RSLT.CREATE_TIME
  is '创建时间';
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
  is '维修质量纠纷调解申请书 ';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.OID
  is '纠纷调解申请书ID';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAINT_ID
  is '投诉信息ID';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_UNIT
  is '投诉单位';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_NAME
  is '投诉方联系人';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_ADDR
  is '投诉方地址';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_TEL
  is '投诉方电话';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_UNIT
  is '被投诉单位';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_NAME
  is '被投诉方联系人';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_ADDR
  is '被投诉方地址';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_TEL
  is '被投诉方电话';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.RIPAIR_UNIT
  is '承修单位';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNRIPAIR_UNIT
  is '托修单位或个人';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNRIPAIR_NUM
  is '托修车型号';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNRIPAIR_CODE
  is '托修车牌号';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.DISPUTE_REASON
  is '纠纷原因';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.COMPLAIN_IDEA
  is '投诉方意见';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UNCOMPLAIN_IDEA
  is '被投诉方意见';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.ADMINIST_IDEA
  is '管理机构意见';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.ADMINIST_SIGN
  is '管理机构签字';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.IFAGREE
  is '双方是否同意
<1、是、2、否>';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_DISPUTE_APPLY.CREATE_TIME
  is '创建时间';
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
  is '汽车维修质量纠纷调解意见书';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.OID
  is 'ID';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAINT_ID
  is '投诉信息ID';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_UNIT
  is '投诉方';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_NAME
  is '投诉方联系人';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_ADDR
  is '投诉方地址';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_TEL
  is 'COMP投诉方电话';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_UNIT
  is '被投诉方';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_NAME
  is '被投诉方联系人';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_ADDR
  is '被投诉方地址';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_TEL
  is '被投诉方电话';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_CONTENT
  is '投诉内容';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.ADJUST_IDEA
  is '调解意见';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.COMPLAIN_IDEA
  is '投诉方意见';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UNCOMPLAIN_IDEA
  is '被投诉方意见';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.IFACPT
  is '是否接受调解结果';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_MEDIATION_ADVICE.CREATE_TIME
  is '创建时间';
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
  is '举报信息';
comment on column BJVMMIS.TR_CRD_REPORT.OID
  is '举报ID';
comment on column BJVMMIS.TR_CRD_REPORT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_CRD_REPORT.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_PPL
  is '举报人';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_TEL
  is '举报人联系电话';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_PHONE
  is '举报人手机';
comment on column BJVMMIS.TR_CRD_REPORT.EMAIL
  is '举报EMAIL';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_DATE
  is '举报日期';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_ITEM
  is '举报事项';
comment on column BJVMMIS.TR_CRD_REPORT.HANDLE_RS
  is '处理结果';
comment on column BJVMMIS.TR_CRD_REPORT.REPORT_STATUS
  is '举报状态
是否属实';
comment on column BJVMMIS.TR_CRD_REPORT.ACPT_CO
  is '受理单位';
comment on column BJVMMIS.TR_CRD_REPORT.ACPT_PPL
  is '受理人';
comment on column BJVMMIS.TR_CRD_REPORT.REAL_STATUS
  is '是否实名';
comment on column BJVMMIS.TR_CRD_REPORT.ID_NUM
  is '投诉身份证号';
comment on column BJVMMIS.TR_CRD_REPORT.PROC_STATUS
  is '处理状态
等待处理、处理中、处理结束

处理结束时提醒行业管理人员选择相对企业，同时提醒选择举报状态必选。';
comment on column BJVMMIS.TR_CRD_REPORT.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_CRD_REPORT.DISTRICT
  is '所属区县';
comment on column BJVMMIS.TR_CRD_REPORT.BUS_ADDR
  is '企业地址';
comment on column BJVMMIS.TR_CRD_REPORT.RPT_STATUS
  is '举报分类
无证黑户、超范围经营、欺诈行为、使用假冒伪劣配件';
comment on column BJVMMIS.TR_CRD_REPORT.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_REPORT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_CRD_REPORT.UPDATE_TIME
  is '更新时间';
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
  is '安全生产事故记录表
';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.OID
  is '事故ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CHK_ITEM
  is '检查项';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CHK_ITEM_CODE
  is '检查项代码';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ACDNT_TIME
  is '事故发生时间';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ECON_LOSS
  is '经济损失';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CASUALT_NUM
  is '伤亡人数';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ACDNT_RSN
  is '事故原因';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.ACDNT_ADDR
  is '事故地点';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.TREAT_RESULT
  is '处置结果';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.NUM
  is '总分数';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.SRC_MODE
  is '来源方式: 0:在质量信誉档案时添加的数据; 1:人员录入';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT.CREATE_TIME
  is '创建时间';
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
  is '安全生产事故扣分明细';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.OID
  is '事故扣分明细ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.CHK_ITEM
  is '检查项';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.CHK_ITEM_CODE
  is '检查项代码';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.ACDNT_ID
  is '安全生产记录ID';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.NUM
  is '分数';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_CRD_SAFE_ACDNT_DETL.UPDATE_TIME
  is '更新时间';
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
  is '停止调解意见书';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.OID
  is 'OID';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.COMPLAINT_ID
  is '投诉信息ID';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.COMPLAIN_CONTENT
  is '投诉内容';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.ADJUST_QK
  is '调解情况';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.TJSB_RSN
  is '调解不成事由';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.COMPLAIN_UNIT
  is '投诉方';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.UNCOMPLAIN_UNIT
  is '被投诉方';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.ADMINIST_SIGN
  is '管理机构签字';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_CRD_STOP_ADVICE.CREATE_TIME
  is '创建时间';
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
  is '立案销案审批表';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CHECK_ID
  is '检查表ID';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PARTY
  is '当事人';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PARTYTEL
  is '当事人电话';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.BCNAMENUM
  is '经营许可证号';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.DRIVINGCARD
  is '准驾证号';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.SERVICECARD
  is '服务证号';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.TCTYPE
  is '运输证种类';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.TCNUM
  is '运输证编号';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.LICENSENUM
  is '车牌号';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CARTYPE
  is '车型';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.COLOUR
  is '颜色';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.LAWPERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.POST
  is '职务';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.LAWPERSONTEL
  is '代表电话';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.ADRRECE
  is '地址';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CASESOURCE
  is '案件来源';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.OFFENCE
  is '违法事实';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.AGENTOPINION
  is '承办人意见';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.AGENT
  is '承办人';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PRINCIPALOPINION
  is '部门负责人意见';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PRINCIPAL
  is '负责人';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.APRV_STATUS
  is '审批状态
立案审批通过制发违法违章通知书。';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.PROJ_TYPE
  is '立案分类
1注销立案、2吊销立案';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.HANDL_STATUS
  is '企业立案处理结果
1处理中、2决定吊销、3决定注销、4销案、';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_LAXA_APRV.UPDATE_TIME
  is '更新日期';
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
  is '注销许可证件通知（暂定）';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.UNIT
  is '单位';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.PERMIT_NAME
  is '许可证名称';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.PERMIT_CODE
  is '许可证名称编号';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.ADDR
  is '地址';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LEGAL_PERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.ITEM
  is '事项';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LOGOUT_NAME
  is '注销许可名称';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LOGOUT_CODE
  is '注销许可号';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.RETURN_TIME
  is '缴回日期';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.RETURN_ADDR
  is '缴回地址';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.LOGOUT_THING
  is '注销事由';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SEND_UNIT
  is '发证单位';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SIGN_NAME
  is '签收人';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SIGN_TIME
  is '签收日期';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.SEND_TIME
  is '发证日期';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CANCELL_PRMT.UPDATE_TIME
  is '更新时间';
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
  is '结案报告';
comment on column BJVMMIS.TR_LDT_CASE_END.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_CASE_END.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CASE_END.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_CASE_END.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_CASE_END.DEPT
  is '单位';
comment on column BJVMMIS.TR_LDT_CASE_END.BCNAME_NUM
  is '许可证件号';
comment on column BJVMMIS.TR_LDT_CASE_END.ADRRESS
  is '地址';
comment on column BJVMMIS.TR_LDT_CASE_END.LAW_PERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_CASE_END.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_CASE_END.RESULT
  is '案情及处理决定';
comment on column BJVMMIS.TR_LDT_CASE_END.EXE
  is '执行情况';
comment on column BJVMMIS.TR_LDT_CASE_END.AGENT_OPINION
  is '承办人意见';
comment on column BJVMMIS.TR_LDT_CASE_END.AGENT
  is '承办人签字';
comment on column BJVMMIS.TR_LDT_CASE_END.AGENT_TIME
  is '承办人签字时间';
comment on column BJVMMIS.TR_LDT_CASE_END.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CASE_END.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CASE_END.UPDT_TIME
  is '更新时间';
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
  is '案件处理审批表';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PARTY
  is '当事人';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PARTYTEL
  is '当事人电话';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.BCNAMENUM
  is '经营许可证号名称及编号';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.DRIVINGCARD
  is '准驾证号';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.SERVICECARD
  is '服务证号';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.TCTYPE
  is '运输证种类';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.TCNUM
  is '运输证编号';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.LICENSENUM
  is '车牌号';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CARTYPE
  is '车型';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.COLOUR
  is '颜色';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.LAWPERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.POST
  is '职务';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.LAWPERSONTEL
  is '代表电话';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.ADRRECE
  is '地址';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CASESOURCE
  is '案件来源';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CASEBASE
  is '立案依据';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.OFFENCE
  is '违法事实';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PUBLISH
  is '处罚项';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PUBDATE
  is '处罚时间';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.AGENT
  is '承办人';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.AGENTDATE
  is '承办时间';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.DPTOPP
  is '科意见';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.PRINCIPAL
  is '负责人';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CASE_RSLT.UPDT_TIME
  is '更新时间';
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
  is '检查笔录';
comment on column BJVMMIS.TR_LDT_CHECK_REC.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CHECK_REC.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_CHECK_REC.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CHECK_REC.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_CHECK_REC.TIME
  is '时间';
comment on column BJVMMIS.TR_LDT_CHECK_REC.PARTY
  is '当事人';
comment on column BJVMMIS.TR_LDT_CHECK_REC.COMPANY
  is '单位';
comment on column BJVMMIS.TR_LDT_CHECK_REC.LAWPERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_CHECK_REC.BCNAMENUM
  is '经营许可证号及名称';
comment on column BJVMMIS.TR_LDT_CHECK_REC.DRIVINGCARD
  is '准驾证号';
comment on column BJVMMIS.TR_LDT_CHECK_REC.SERVICECARD
  is '服务证号';
comment on column BJVMMIS.TR_LDT_CHECK_REC.TCTYPE
  is '车辆运输种类';
comment on column BJVMMIS.TR_LDT_CHECK_REC.TCNUM
  is '车辆运输证编号';
comment on column BJVMMIS.TR_LDT_CHECK_REC.LISENCENUM
  is '车号';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CARTYPE
  is '车型';
comment on column BJVMMIS.TR_LDT_CHECK_REC.COLOUR
  is '颜色';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CHECKADRRICE
  is '检查地点';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CHECKNOTE
  is '检查记录';
comment on column BJVMMIS.TR_LDT_CHECK_REC.WITNESS
  is '见证人签字';
comment on column BJVMMIS.TR_LDT_CHECK_REC.INSPECTOR
  is '检查员签字';
comment on column BJVMMIS.TR_LDT_CHECK_REC.PARTYSIGN
  is '当事人签字';
comment on column BJVMMIS.TR_LDT_CHECK_REC.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CHECK_REC.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CHECK_REC.UPDATE_TIME
  is '更新时间';
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
  is '谈话笔录';
comment on column BJVMMIS.TR_LDT_CONVR_REC.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_CONVR_REC.ADDR
  is '地点';
comment on column BJVMMIS.TR_LDT_CONVR_REC.INQUIRED_NAME
  is '询问人';
comment on column BJVMMIS.TR_LDT_CONVR_REC.RECORDER_NAME
  is '记录人';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UNINQUIRED_NAME
  is '被询问人';
comment on column BJVMMIS.TR_LDT_CONVR_REC.SEX
  is '性别（被询问人）';
comment on column BJVMMIS.TR_LDT_CONVR_REC.POST
  is '职务（被询问人）';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UNIT
  is '工作单位（被询问人）';
comment on column BJVMMIS.TR_LDT_CONVR_REC.TEL
  is '联系电话（被询问人）';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CORRESPOND_ADDR
  is '通信地址（被询问人）';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CODE
  is '邮编（被询问人）';
comment on column BJVMMIS.TR_LDT_CONVR_REC.TALK_NAME
  is '谈话事情名称';
comment on column BJVMMIS.TR_LDT_CONVR_REC.TALK_DESC
  is '谈话内容';
comment on column BJVMMIS.TR_LDT_CONVR_REC.SUPPLY_DESC
  is '补充内容';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UNINQUIRED_SIGN
  is '被询问人签字';
comment on column BJVMMIS.TR_LDT_CONVR_REC.RECORDER_TIME
  is '询问时间';
comment on column BJVMMIS.TR_LDT_CONVR_REC.START_TIME
  is '谈话开始时间';
comment on column BJVMMIS.TR_LDT_CONVR_REC.END_TIME
  is '谈话结束时间';
comment on column BJVMMIS.TR_LDT_CONVR_REC.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CONVR_REC.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CONVR_REC.UPDT_TIME
  is '更新时间';
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
  is '责令（限期）改正通知书
企业等级降为B级';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.UNIT
  is '单位';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.PERMIT_NUM
  is '许可证号';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.ADDR
  is '地址';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.LEGAL_PERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OFFEND_TIME
  is '违规时间';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OFFEND_ACTION
  is '违规行为';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.OFFEND_DESC
  is '违规描述';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CORRECT_TIME
  is '改正时间';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CORRECT_DESC
  is '改正内容';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CHECK_UNIT
  is '验收单位';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.SINGLE_TIME
  is '制单时间';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.POST
  is '职务';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.SIGN_NAME
  is '签收人';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.SIGN_TIME
  is '签收日期';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CORRECT_NOTICE.UPDATE_TIME
  is '更新时间';
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
  is '撤销行政许可决定书';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.NAME
  is '单位（姓名）';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.BCNUMNAME
  is '许可证名称及编号';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.ADDRECE
  is '地址';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.LAWPERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.COMPNY
  is '单位';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.REVOKECAUSE
  is '撤销事由项';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.PERMITNAME
  is '许可证名称';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.PERMITNUM
  is '许可证件号';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.RETURNDATE
  is '缴回截止期限';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.RETURNDPT
  is '缴回部门';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.ADDCAUSE
  is '添加撤销事由';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.SEALDATE
  is '盖章日期';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.CHOP
  is '签收人';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.CHOPDATE
  is '签收日期';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_CX_CANCELL_PRMT.UPDATE_TIME
  is '更新时间';
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
  is '执法文书编号';
comment on column BJVMMIS.TR_LDT_LAW_CODE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_LAW_CODE.PK_ID
  is '执法文书主键(废弃)';
comment on column BJVMMIS.TR_LDT_LAW_CODE.WORD
  is '字
修';
comment on column BJVMMIS.TR_LDT_LAW_CODE.YEAR
  is '年';
comment on column BJVMMIS.TR_LDT_LAW_CODE.NUM
  is '序号';
comment on column BJVMMIS.TR_LDT_LAW_CODE.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_LAW_CODE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_LAW_CODE.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_LDT_LAW_CODE.REGION
  is '所属区县';
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
  is '执法文书主表ID';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.CONTENT
  is '内容';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_LAW_CONTENT.UPDATE_TIME
  is '更新时间';
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
  is '执法监督建议书';
comment on column BJVMMIS.TR_LDT_LAW_SUP.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_LAW_SUP.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_LAW_SUP.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_LAW_SUP.BRIEF
  is '案由';
comment on column BJVMMIS.TR_LDT_LAW_SUP.CHECK_TIME
  is '检查日期';
comment on column BJVMMIS.TR_LDT_LAW_SUP.CHECK_ADDR
  is '检查地点';
comment on column BJVMMIS.TR_LDT_LAW_SUP.PROBLEM
  is '主要问题';
comment on column BJVMMIS.TR_LDT_LAW_SUP.SUGEST
  is '建议';
comment on column BJVMMIS.TR_LDT_LAW_SUP.ISS_TIME
  is '发证日期';
comment on column BJVMMIS.TR_LDT_LAW_SUP.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_LAW_SUP.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_LAW_SUP.UPDATE_TIME
  is '更新时间';
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
  is '注销许可证件通告
注销许可证件通知15天没有回复，发布注销许可证件通告。';
comment on column BJVMMIS.TR_LDT_PRMT_TG.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG.UNIT
  is '单位';
comment on column BJVMMIS.TR_LDT_PRMT_TG.ANNOUN_UNIT
  is '发通告单位';
comment on column BJVMMIS.TR_LDT_PRMT_TG.BRIEF
  is '事由';
comment on column BJVMMIS.TR_LDT_PRMT_TG.ANNOUN_TIME
  is '发通告时间';
comment on column BJVMMIS.TR_LDT_PRMT_TG.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_PRMT_TG.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_PRMT_TG.UPDATE_TIME
  is '更新时间';
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
  is '注销许可证件通告
注销许可证件通知15天没有回复，发布注销许可证件通告。';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.APRV_ID
  is '立案审批表';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.TG_ID
  is '注销许可证件通告ID';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.BRIEF
  is '事由';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.PERMIT_NAME
  is '许可证名称';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.PERMIT_CODE
  is '许可证名称编号';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_PRMT_TG_DETL.UPDATE_TIME
  is '更新时间';
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
  is '行政处罚案件讨论记录';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.BRIEF
  is '案由';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ADDR
  is '讨论地点';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.COMPERE
  is '主持人';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.RECORDER
  is '记录人';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.VIEW
  is '对案件意见';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ATTENDEE
  is '出席人信息';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ATTEND
  is '列席人信息';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.DISCUSS
  is '讨论记录';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.HANDLE_VIEW
  is '案件处理意见';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.ATTENDEE_NAME
  is '出席人签名';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.LEGALITY_VIEW
  is '法制处意见';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.LEGALITY_NAME
  is '法制处负责人签字';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.SIGN_TIME
  is '签字时间';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.LEAD_NAME
  is '领导签字';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.STATE_TIME
  is '讨论开始时间';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.END_TIME
  is '讨论结束时间';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.JCDISCU_RSLT
  is '局(处)会议讨论结果
（是否同意吊销）';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.JCDISCU_OPIN
  is '局(处)会议讨论意见';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_PUNISH_RECORD.UPDATE_TIME
  is '创建日期';
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
  is '吊销许可证件(经营范围)决定书';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.DEPT
  is '单位（姓名）';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.FDDB_PERS
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.ADDR
  is '地址';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.TEL
  is '电话';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.OPRATLIC_NAM_NO
  is '经营许可证名称及编号';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CANDRVNO_SERVNO
  is '准驾证号或服务证号';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CARTYPE_NO
  is '车辆运输种类';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CARTSP_NO
  is '车辆运输证编号';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CAR_NO
  is '车号';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CAR_TYPE
  is '车型';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.COLOR
  is '颜色';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_FACT
  is '违法事实';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_ACT
  is '违法行为';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_PROVD1
  is '违法规定1';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.UNLAW_ENTRY1
  is '非法条目1';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_ITEM1
  is '违法项1';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_PROVD2
  is '违法规定2';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.UNLAW_ENTRY2
  is '非法条目2';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.LAW_ITEM2
  is '违法项2';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.REVCT_CERTIF_NAM
  is '吊销证书名称';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.RETALK_DEPT
  is '申请行政复议单位';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.NOTICE_DEPT
  is '通知单位';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.NOTICE_TIME
  is '通知时间';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.QS_PERS
  is '签收人';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.QS_TIME
  is '签收时间';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_REMOVE_PERMIT.UPDATE_TIME
  is '更新时间';
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
  is '案件调查报告';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.BRIEF
  is '案由';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.INVESTIGATOR
  is '案件调查人员';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.CASE_SOURCE
  is '案件来源';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.START_TIME
  is '调查开始时间';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.END_TIME
  is '调查结束时间';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.SURVEY_SITE
  is '调查地点';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.INVESTIG_AFTER
  is '案件调查经过';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.UNDERTAKER
  is '调查结论及处理意见承办人';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.PENALTY_CLAUSE
  is '调查结论及处理意见处罚条款';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.PUNISH_INFO
  is '调查结论及处理意见处罚信息';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.PROCESS_DATE
  is '调查结论及处理意见处理日期';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.APPROVAL_COMM
  is '部门负责人审批意见';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.SINGATURE
  is '部门负责人审批意见签字';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.APPROVAL_DATE
  is '部门负责人审批意见日期';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.AUDIT_OPINION
  is '法制部门审核意见';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.AUDIT_SIGN
  is '法制部门审核意见签字';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.LEADER_ADVICE
  is '局处领导意见';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.LEADER_SIGN
  is '局处领导意见签字';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.LEADER_TIME
  is '局处领导意见日期';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_SRVY_RPT.UPDATE_TIME
  is '创建日期';
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
  is '案件调查报告(证据材料清单)';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.SRVY_ID
  is '案件调查报告ID';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.EVIDENCE_NAME
  is '证据材料清单-证据名称';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.SPECIE
  is '证据材料清单-种类';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.SPECIFICATION
  is '证据材料清单-规格';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.LIST_NUM
  is '证据材料清单-数量';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_SRVY_RPT_DETL.UPDATE_TIME
  is '创建日期';
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
  is '责令停止经营（运输）通知书
企业等级降为B级';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.UNIT
  is '单位';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.ADDR
  is '地址';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.LEGAL_PERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.NOTICE_DESC
  is '通知内容';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.SIGN_NAME
  is '签收人';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.SIGN_TIME
  is '签收日期';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.ISSUR_TIME
  is '发证日期';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.NOTICE_TIME
  is '通知日期';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_STOP_MANAGE.UPDT_TIME
  is '更新时间';
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
  is '责令停止违法行为通知书
企业等级降为B级';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.UNIT
  is '单位';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.PERMIT_NUM
  is '许可证号';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.ADDR
  is '地址';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.LEGAL_PERSON
  is '法定代表人';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.OFFEND_ACTION
  is '违法行为';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.PULE_PERMIT
  is '违法许可证名称';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.HANDLE_TIME
  is '处理时间';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.HANDLE_ADDR
  is '处理地点';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.NOTICE_UNIT
  is '通知单位';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.NOTICE_TIME
  is '通知时间';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.SIGN_NAME
  is '签收人';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.SIGN_TIME
  is '签收日期';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.SRC_MODE
  is '来源方式（在质量信誉档案时添加的数据）';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_STOP_WFWG.UPDATE_TIME
  is '更新时间';
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
  is '交通运输违法违章行为通知书';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.WG_TIME
  is '违规时间';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.WG_POINT
  is '违规地点';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.REGUL
  is '法规';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.TK
  is '条款';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.PROVD_TERM
  is '规定项';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_REGUL
  is '处理法规';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_TK
  is '处理条款';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_ITEM
  is '处理规定项';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.HANDL_DSC
  is '处理描述';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.ALG_DEPT
  is '陈述单位';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.DC_DEPT
  is '调查单位';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.NTC_TIME
  is '通知时间';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.QS_PERS
  is '签收人';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.QS_TIME
  is '签收日期';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CTCT_ADDR
  is '联系地址';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CTCT_PERS
  is '联系人';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CTCT_TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.JCDISCU_RSLT
  is '局(处)会议讨论结果
（是否同意吊销）';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.JCDISCU_OPIN
  is '局(处)会议讨论意见';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.IS_ONLGS
  is '是否需要网上公示';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_WZWF_NOTICE.UPDT_TIME
  is '创建时间';
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
  is '现场（证物）照片';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.OID
  is 'OID';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.PK_ID
  is '主表ID(检监管检查表、立案销案表、现场勘验记录)';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.BRIEF
  is '案由';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.PHOTOGRAPH
  is '拍照人';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.EXHIBIT_NAME
  is '证物名称';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.TIPSTAFF
  is '执法人员';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.WITNESS
  is '见证人';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_XCZW_PHOTO.UPDATE_TIME
  is '更新时间';
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
  is '暂扣单
暂扣设备';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.MGR_ID
  is '执法人员ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.UNIT
  is '单位名称';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.TEL
  is '联系电话';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.ADDR
  is '通信地址';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CODE
  is '邮政编码';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CHECK_ADDR
  is '检查地点';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.OFFEND_ACTION
  is '违法违规行为';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.OFFEND_DESC
  is '违法违规内容';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.RULE_NAME
  is '法规名称';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.RULE_ITEM
  is '法规条目';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.RULE_NUM
  is '法规条款';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.END_TIME
  is '最后期限时间';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.HANDLE_ADDR
  is '处理地点';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.SIGN_NAME
  is '签收人';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.SIGN_TIME
  is '签收日期';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE.UPDT_TIME
  is '更新时间';
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
  is '暂扣明细表';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.OID
  is 'ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.DEVICE_ID
  is '暂扣主表ID';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.NAME
  is '设备名称';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.CARD_NUM
  is '设备编号';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.NUM
  is '数量';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.TYPE
  is '类型';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_LDT_ZK_DEVICE_DETL.UPDT_TIME
  is '更新时间';
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
  is '行业管理信息发布表';
comment on column BJVMMIS.TR_MANAGER_MSG.OID
  is '发布ID';
comment on column BJVMMIS.TR_MANAGER_MSG.TITLE
  is '标题';
comment on column BJVMMIS.TR_MANAGER_MSG.JJ_TITLE
  is '精简标题';
comment on column BJVMMIS.TR_MANAGER_MSG.FILL_PERS
  is '填报人';
comment on column BJVMMIS.TR_MANAGER_MSG.RLSE_NR
  is '发布内容';
comment on column BJVMMIS.TR_MANAGER_MSG.MSG_TYPE
  is '信息分类
行业新闻、法律法规';
comment on column BJVMMIS.TR_MANAGER_MSG.URL
  is '附件
附件（可以上传多个附件）';
comment on column BJVMMIS.TR_MANAGER_MSG.STATUS
  is '发布状态';
comment on column BJVMMIS.TR_MANAGER_MSG.REMARK
  is '备注';
comment on column BJVMMIS.TR_MANAGER_MSG.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_MANAGER_MSG.UPDATE_TIME
  is '更新日期';
comment on column BJVMMIS.TR_MANAGER_MSG.RLSE_TIME
  is '发布日期';
comment on column BJVMMIS.TR_MANAGER_MSG.SS_CLMN
  is '所属栏目';
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
  is '信息发送表';
comment on column BJVMMIS.TR_MSG_SEND.OID
  is '信息发送ID';
comment on column BJVMMIS.TR_MSG_SEND.MSG_PERS
  is '信息接收人';
comment on column BJVMMIS.TR_MSG_SEND.MSG_QY
  is '企业名称';
comment on column BJVMMIS.TR_MSG_SEND.MSG_NR
  is '发送内容';
comment on column BJVMMIS.TR_MSG_SEND.SEND_PERS
  is '发送人';
comment on column BJVMMIS.TR_MSG_SEND.SEND_METH
  is '发送方式
电子邮件、短信';
comment on column BJVMMIS.TR_MSG_SEND.SEND_TYPE
  is '信息分类
企业许可到期、企业变更提醒、企业违法违规、企业注销吊销';
comment on column BJVMMIS.TR_MSG_SEND.SEND_STATUS
  is '发送状态
成功、失败';
comment on column BJVMMIS.TR_MSG_SEND.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_MSG_SEND.REMARK
  is '备注';
comment on column BJVMMIS.TR_MSG_SEND.SEND_TIME
  is '创建时间';
comment on column BJVMMIS.TR_MSG_SEND.CREATE_TIME
  is '创建时间';
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
  is '从业人员
有从业资格证人';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.OID
  is '从业人ID';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NAME
  is '姓名';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.SEX
  is '性别';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.DOC_TYPE
  is '证件类型';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.DOC_NUM
  is '证件号码';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.BRTH_DATE
  is '出生年月';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NATION
  is '民族';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.POLIT_AFFL
  is '政治面貌';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.BLOOD_TYPE
  is '血型';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CUL_DEG
  is '文化程度';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.ACCT_TYPE
  is '户口类型';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.HM_ADDRES
  is '家庭住址';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NOW_ADDRES
  is '现居住地址';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.DISTRICT
  is '行政区属';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.ONCE_NAME
  is '曾用名';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.FMLY_QS
  is '家庭区属';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.RESIDE_QS
  is '居住地区属';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.NATL
  is '国籍';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.RSDT_NUM
  is '户口薄号码';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.RSDT_ADDRES
  is '户籍所在地';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.PHONE
  is '联系人手机';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.EMAIL
  is '电子邮箱';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.PSTL_CODE
  is '邮政编码';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CTCT__ADDRES
  is '联系地址';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.GS_ADDRES
  is '归属地';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CERT_CODE
  is '从业资格证号';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.STATUS
  is '在职状态
1在岗、2待岗';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.FZ_TIME
  is '发证日期';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.START_TIME
  is '证件起始日期';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.END_TIME
  is '证件截止日期';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_CERT_PSNL.UPDATE_TIME
  is '更新时间';
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
  is '企业质量信誉等级';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.ENTERPRISE_ID
  is '等级ID';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.YEAR
  is '年度';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.ASSESS_TIME
  is '考核日期';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.ENTERPRISE_LEVEL
  is '企业等级';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_ENTERPRISE_LEVEL.UPDATE_TIME
  is '更新时间';
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
  is '维修从业人员表
有从业资格证人和无从业资格证人
';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.OID
  is '维修人员ID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NAME
  is '姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.SEX
  is '性别';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.DOC_TYPE
  is '证件类型';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.DOC_NUM
  is '证件号码';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.BRTH_DATE
  is '出生年月';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NATION
  is '民族';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.POLIT_AFFL
  is '政治面貌';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.BLOOD_TYPE
  is '血型';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CUL_DEG
  is '文化程度';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ACCT_TYPE
  is '户口类型';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.HM_ADDRES
  is '家庭住址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NOW_ADDRES
  is '现居住地址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.DISTRICT
  is '行政区属';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ONCE_NAME
  is '曾用名';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.FMLY_QS
  is '家庭区属';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RESIDE_QS
  is '居住地区属';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.NATL
  is '国籍';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RSDT_NUM
  is '户口薄号码';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RSDT_ADDRES
  is '户籍所在地';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PHONE
  is '联系人手机';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EMAIL
  is '电子邮箱';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PSTL_CODE
  is '邮政编码';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CTCT__ADDRES
  is '联系地址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.GS_ADDRES
  is '归属地';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CERT_CODE
  is '从业资格证号';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.STATUS
  is '在职状态
1在岗、2待岗';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.JOBPOST
  is '任职岗位';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CAND_POST
  is '应聘岗位';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.FILL_TM
  is '填表日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.MART_STATU
  is '婚姻状况';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PYS_CONDT
  is '健康状况';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.STATURE
  is '身高 cm';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.WG
  is '体重 kg';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.SOC_SCRT
  is '是否参加社保';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ARRI_TIME
  is '预计到岗日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EXPT_SALA
  is '期望月薪';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.UGCY_NAME
  is '紧急联系人';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.UGCY_TEL
  is '紧急联系人电话';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.WORK_TRSF
  is '能否接受工作调动';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.OVERTIME
  is '能否加班';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EDU_BEGANTM
  is '教育开始日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EDU_OVERTM
  is '教育结束日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.GRTE_SCH
  is '毕业院校';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.MAGOR
  is '专业';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.EDU_GRND
  is '最高学历';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.COSE_TAK
  is '所学课程';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.JOB_CONT
  is '工作内容';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_NAME
  is '亲属姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELATION
  is '与亲属关系';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_AGE
  is '亲属年龄';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_CONP
  is '亲属工作单位';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_POST
  is '亲属职务';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.RELTS_TEL
  is '亲属联系电话';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PREP_SIGN
  is '填表人签字';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.PERMN_ADDR
  is '户籍地址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.ENTR_TIME
  is '入职日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.QUIT_TIME
  is '离职日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.POSN
  is '职务';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL.UPDATE_TIME
  is '更新时间';
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
  is '维修企业对人员评价';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.OID
  is '人员评价ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.EVAL_NAME
  is '法人';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.PSNL_ID
  is '维修从业人员ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.EVAL_TIME
  is '评价日期';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL.CREATE_TIME
  is '创建日期';
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
  is '维修企业对人员评价明细';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.OID
  is '人员评价明细DI';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.EVAL_ID
  is '人员评价ID';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.EVAL_INDX
  is '评价指标
遵守厂纪厂规、工作积极主动性、维修车辆质量情况、团队协作精神、参加学习培训情况、执行安全操作规程情况、保持作业场所整洁情况和爱护维修设备设施情况';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.EVAL_RSLT
  is '评价结果
1好、2较好、3一般、4差';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_ENTERPR_EVAL_DETL.CREATE_TIME
  is '创建日期';
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
  is '企业重点设备表';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.OID
  is '设备ID';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_NAME
  is '设备名称';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_CODE
  is '设备编码（数据字典）';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_BH
  is '设备编号（手动输入，设备唯一）';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_TYPE
  is '设备类型';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_MODEL
  is '设备型号';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_DATE
  is '设备生产日期';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.MAINT_DATE
  is '设备维护日期';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.NEXT_MAINT_DATE
  is '设备下次维护日期';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.BUY_TIME
  is '购置日期';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.USE_SITUAT
  is '使用情况';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.EQUIP_STATUS
  is '设备有效状态';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.MAKE_BUS
  is '生产商';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.IFK
  is '是否重点设备';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.RESP_ID
  is '责任人
(取维修人员表ID)';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_IMPORT_EQUIP.UPDATE_TIME
  is '更新日期';
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
  is '设备评价表';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_ID
  is '设备ID';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_CODE
  is '设备编码';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.PRMT_NUM
  is '许可证号';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_NAME
  is '设备名称';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_TYPE
  is '设备类型';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_MODEL
  is '设备型号';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.EQUIP_TIME
  is '评价合格时间';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.STATUS
  is '状态
1、合格、2不合格';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.VLD_END_TIME
  is '有效期截止日期';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.APRV_DEPT_NAME
  is '鉴定机构';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_IMPORT_EVAL.UPDATE_TIME
  is '更新日期';
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
  企业ID           VARCHAR2(32),
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
  is '现场勘验表(指标)
关联企业基础信息(审批系统推送)，这个表中必须标明那些是初审状态的企业。';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.OID
  is '勘验ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.企业ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.INQUEST_STATUS
  is '勘验状态
(勘验中、勘验结束)';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.INQUEST_RSLT
  is '检查结果
正常、非正常';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST.CREATE_TIME
  is '创建时间';
alter table BJVMMIS.TR_RPT_SCENE_INQUEST
  add constraint PK_SCENE_INQUEST primary key (OID)
  using index 
  tablespace BJVMMISDT
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BJVMMIS.TR_RPT_SCENE_INQUEST
  add constraint FK_TR_RPT_S_REFERENCE_TR_120 foreign key (企业ID)
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
  is '现场勘验人员表';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.MGR_ID
  is '人员ID';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.PK_ID
  is '主表ID(勘验表ID)';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_INQUEST_PERSON.UPDATE_TIME
  is '更新时间';
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
  is '主修车型';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.LABEL
  is '厂牌';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.MODEL
  is '型号';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_MAJOR_MODEL.UPDATE_TIME
  is '更新时间';
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
  is '机动车辆,只增加，不删除
（企业上报维修信息提取）';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.OID
  is '车辆ID';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.VEHICLEID
  is '车牌号码';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.VEHIDCOLOR
  is '车牌颜色编码';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.VEHCLASS
  is '车辆类型编码';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.FRAME_CODE
  is '车架号';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.MOTOR_CODE
  is '发动机号';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_MOTOR_VEHICLE.UPDATE_TIME
  is '更新时间';
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
  is '车主对维修记录评价';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.OID
  is '人员评价ID';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.REPAIR_ID
  is '维修记录';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.OWNR_NAME
  is '车主名称';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.OWNR_TEL
  is '车主联系电话';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.EVAL_INDX
  is '评价指标
综合评价指标、专项评价指标（维修接待评价指标、维修质量与效率评价指标）';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.PSNL_ID
  is '维修人员ID';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.EVAL_RSLT
  is '评价结果
满意、基本满意、不满意';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.EVAL_STATUS
  is '评价状态
1有效2无效';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.CREATE_DATE
  is '评价日期';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_OWNER_EVAL.UPDATE_TIME
  is '更新时间';
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
  is '人员证书';
comment on column BJVMMIS.TR_RPT_PERS_CERT.OID
  is '证书ID';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PSNL_ID
  is '维修人员ID';
comment on column BJVMMIS.TR_RPT_PERS_CERT.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_NAME
  is '证书名称';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_TYPE
  is '证书类型';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_NUM
  is '证书编号';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_TIME
  is '发证日期';
comment on column BJVMMIS.TR_RPT_PERS_CERT.AWRD_COMPY
  is '颁发单位';
comment on column BJVMMIS.TR_RPT_PERS_CERT.START_TIME
  is '证书起始日期';
comment on column BJVMMIS.TR_RPT_PERS_CERT.END_TIME
  is '证书截止日期';
comment on column BJVMMIS.TR_RPT_PERS_CERT.PERS_LVL
  is '证书级别
初级、中级、高级';
comment on column BJVMMIS.TR_RPT_PERS_CERT.WORK_TYPE
  is '工种类别';
comment on column BJVMMIS.TR_RPT_PERS_CERT.JS_LEVEL
  is '技术级别';
comment on column BJVMMIS.TR_RPT_PERS_CERT.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_PERS_CERT.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_PERS_CERT.CREATE_TIME
  is '创建日期';
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
  is '维修项目价格表';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.OID
  is '维修价格ID';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.ENTERPRISE_ID
  is '企业名称';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.BRAND_MODEL
  is '品牌型号';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.PROJ_NAME
  is '维修项目名称';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.WORK_FEE
  is '维修工时费';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_PROJ_PRICE.UPDATE_TIME
  is '更新时间';
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
  is '维修从业人员历史表';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PSNL_ID
  is '维修人员ID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NAME
  is '姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.SEX
  is '性别';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.DOC_TYPE
  is '证件类型';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.DOC_NUM
  is '证件号码';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.BRTH_DATE
  is '出生年月';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NATION
  is '民族';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.POLIT_AFFL
  is '政治面貌';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.BLOOD_TYPE
  is '血型';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CUL_DEG
  is '文化程度';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ACCT_TYPE
  is '户口类型';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.HM_ADDRES
  is '家庭住址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NOW_ADDRES
  is '现居住地址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.DISTRICT
  is '行政区属';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ONCE_NAME
  is '曾用名';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.FMLY_QS
  is '家庭区属';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RESIDE_QS
  is '居住地区属';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.NATL
  is '国籍';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RSDT_NUM
  is '户口薄号码';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RSDT_ADDRES
  is '户籍所在地';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PHONE
  is '联系人手机';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EMAIL
  is '电子邮箱';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PSTL_CODE
  is '邮政编码';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CTCT__ADDRES
  is '联系地址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.GS_ADDRES
  is '归属地';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CERT_CODE
  is '从业资格证号';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.STATUS
  is '在职状态
1在岗、2待岗';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.JOBPOST
  is '任职岗位';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CAND_POST
  is '应聘岗位';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.FILL_TM
  is '填表日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.MART_STATU
  is '婚姻状况';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PYS_CONDT
  is '健康状况';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.STATURE
  is '身高 cm';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.WG
  is '体重 kg';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.SOC_SCRT
  is '是否参加社保';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ARRI_TIME
  is '预计到岗日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EXPT_SALA
  is '期望月薪';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.UGCY_NAME
  is '紧急联系人';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.UGCY_TEL
  is '紧急联系人电话';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.WORK_TRSF
  is '能否接受工作调动';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.OVERTIME
  is '能否加班';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EDU_BEGANTM
  is '教育开始日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EDU_OVERTM
  is '教育结束日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.GRTE_SCH
  is '毕业院校';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.MAGOR
  is '专业';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.EDU_GRND
  is '最高学历';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.COSE_TAK
  is '所学课程';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.JOB_CONT
  is '工作内容';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_NAME
  is '亲属姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELATION
  is '与亲属关系';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_AGE
  is '亲属年龄';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_CONP
  is '亲属工作单位';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_POST
  is '亲属职务';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.RELTS_TEL
  is '亲属联系电话';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PREP_SIGN
  is '填表人签字';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.PERMN_ADDR
  is '户籍地址';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.ENTR_TIME
  is '入职日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.QUIT_TIME
  is '离职日期';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.POSN
  is '职务';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_REPAIR_PSNL_HST.UPDATE_TIME
  is '更新时间';
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
  is '维修质量评价';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.OID
  is '质量ID';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.REPAIR_ID
  is '维修ID';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.VEHICLEID
  is '车牌号';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.VEHIDCOLOR
  is '车牌颜色';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.MAINTAIN_DATE
  is '维修日期';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.QUALITY_RESULT
  is '1很满意   2满意   3一般   4不太满意   5不满意 ';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.CREATE_DATE
  is '更新日期';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.QUALITY_NAME
  is '车主姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.QUALITY_PHONE
  is '联系电话';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_REPAIR_QUALITY.UPDATE_TIME
  is '更新时间';
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
  is '车辆维修信息(合格证信息)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OID
  is '维修ID';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.ENTERPRISE_NAME
  is '维修企业名称(承修方名称)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.SEND_PERS
  is '送修人姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.SEND_PHONE
  is '送修人联系电话(手机号)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.VEHICLEID
  is '车牌号码';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.VEHIDCOLOR
  is '车牌颜色';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.VEHICLE_NUM
  is '厂牌型号(也可称车型)';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.FRAME_CODE
  is '车架号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REPAIR_ITM
  is '维修项目';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.RECV_NUM
  is '接待人身份证号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.IN_DATE
  is '维修进厂日期';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.INTO_VALUE
  is '进场里程表示值';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OUT_DATE
  is '出厂日期';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.FINISH_TIME
  is '竣工日期';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.QAL_TIME
  is '保质期';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.QAL_ENT_TIME
  is '保质截止日期';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.QAL_ENT_VALUE
  is '保质截止里程';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OWNER_NAME
  is '车主姓名';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OWNER_PHONE
  is '车主手机号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REPAIR_SFZH
  is '维修人身份证号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.CHECK_SFZH
  is '检验员身份证号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.OUT_VALUE
  is '出厂里程表示值';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.INVC_NUM
  is '维修发票号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REPAIR_NUM
  is '维修工单号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.CERT_NUM
  is '维修竣工出厂合格证号';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_REPAIR_RECORD.UPDATE_TIME
  is '更新时间';
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
  is '维修企业质量信誉档案';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.LEGAL_PERS
  is '法人代表';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.REPAIR_TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.BUS_TEL
  is '业务联系电话';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.STATUS
  is '状态(补充修改、审核通过、审核未通过、企业完成上报)';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ARCHIVE_TIME
  is '建档日期';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.ENTERPRISE_GLQK
  is '企业管理情况';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.QZ_TIME
  is '签字日期';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.YEAR
  is '年度';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_REPUT_ARCHIVE.UPDATE_TIME
  is '更新日期';
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
  is '维修企业质量信誉评估主表';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.OID
  is '信誉评估主表ID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.NUM
  is '初评总分数';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.ASSESS_TIME
  is '考核时间';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.REGION
  is '所属区县
区县编码、行政编码？？';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.STATUS
  is '状态
打分审核、考核初评、公示初评结果（处）、举报申诉核实、考核评定、公示评定结果（处）';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.GSQK
  is '公示情况';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.EVAL_NUM
  is '评定总分数';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.EVAL_TIME
  is '评定时间';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.QAL_LEVEL
  is '质量信誉等级 0:AAA 1:AA 2:A 3:B';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL_PK.UPDATE_TIME
  is '更新日期';
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
  is '维修企业质量信誉评估表';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.OID
  is '信誉评估ID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.EVAL_ID
  is '主表ID
TR_REPUT_EVAL_PK';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CHK_TYPE
  is '检查分类
经营资质类、安全生产类、维修质量类、服务质量类、遵章守纪类、环境保护类、企业管理类、加分类';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CHK_ITEM
  is '检查项
未按规定配备技术负责人、未按规定配备持技术等级证书、未按规定配备车辆维修、无安全生产责任制或安全应急预案的、设备安全操作规程，防火、防爆、用电等安全制度不健全或执行不到位的';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CHK_ITEM_CODE
  is '检查项代码';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.NUM
  is '分数';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.ASSESS_TIME
  is '考核时间';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_REPUT_EVAL.UPDATE_TIME
  is '更新日期';
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
  企业名称        VARCHAR2(128),
  建档日期        DATE,
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE
  is '维修企业诚信管理档案';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.企业名称
  is '企业名称';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.建档日期
  is '建档日期';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_REPUT_HONEST_ARCHIVE.UPDATE_TIME
  is '更新日期';
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
  is '奖惩信息表';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.OID
  is '奖惩ID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.PSNL_ID
  is '人员ID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_PERS
  is '奖惩人';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_RSN
  is '奖惩原因';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_METH
  is '奖惩方式';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_STATUS
  is '奖惩状态
1奖励 2处罚';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.STATUS
  is '状态
1有效 2无效';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.JC_DATE
  is '奖惩日期';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_REWARD_PUNISH.REMARK
  is '备注';
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
  is '机动车维修经营许可登记信息审核结果通知书 ';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.OID
  is '结果ID';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VERIFY_ID
  is '核对ID';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ENTERPRISE_ID
  is '企业名称';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.YEAR
  is '年度';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VERIFY_RSLT
  is '核查结果
1通过2未通过';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.SUBMIT_TIME
  is '年度机动车维修经营许可登记信息审查材料提交日期';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.SUBMIT_YEAR
  is '许可材料提交年度';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.SUBMIT_DEPT
  is '许可材料提交机构';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ASSESS_TIME
  is '年度企业质量信誉考核申报材料提交日期';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ASSESS_YEER
  is '考核材料提交年度';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.ASSESS_DEPT
  is '考核材料提交机构';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.PRMT_END_TIME
  is '许可证有效期至';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.PRMT_CONT_TIME
  is '许可证延续机构';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.NOTE_ISS_TIME
  is '通知书发放日期';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VLD_PERS
  is '审核人';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.VLD_TIME
  is '审核时间';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_VERIFY_RSLT.UPDATE_TIME
  is '更新日期';
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
  is '结果表明细';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.RSLT_ID
  is '结果ID';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.CNTR_ITEM
  is '比对项(比对项名称)';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.RAW_VALUE
  is '原始值';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.NEW_VALUE
  is '新值';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.STD_VALUE
  is '标准值';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_RSLT_DETL.UPDATE_TIME
  is '更新日期';
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
  is '现场勘验明细
关联企业基础信息(审批系统推送)，这个表中必须标明那些是初审状态的企业。';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.OID
  is '现场勘验明细ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.CHK_TYPE
  is '分类';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.CHK_ITEM
  is '检查项';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.STATUS
  is '检查结果
是否';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_DETL.CREATE_TIME
  is '创建时间';
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
  is '现场勘验记录(交通行政许可现场勘验笔录)';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.OID
  is '勘验记录ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_ADDR
  is '勘验地址';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_RSN
  is '勘验事由';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_PERS
  is '勘验人';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_TIME
  is '勘验时间';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.LEGAL_PERS
  is '企业负责人';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_QK
  is '勘验情况';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_YJ
  is '勘验意见';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.LEADER
  is '部门领导
本部门行业主管处长签字';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_EXAM
  is '现场勘验领导审核意见
';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_RSLT
  is '审核结果
是否符合企业开业条件';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.EXAM_TIME
  is '审核时间';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.INQUEST_STATUS
  is '勘验状态
勘验结束';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_RPT_SCENE_INQUEST_REC.CREATE_TIME
  is '创建时间';
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
  is '特约维修车型';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.OID
  is 'OID';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.LABEL
  is '厂牌';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.MODEL
  is '型号';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.CNTR_START_TIME
  is '合同开始日期';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.CNTR_END_TIME
  is '合同截止日期';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.REPAIR_MODEL
  is '维修种类(1主修车型、2特约维修车型)';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_SPCL_REPAIR_MODEL.UPDATE_TIME
  is '更新时间';
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
  is '营运车辆,只增加，不删除';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.OID
  is '营运车辆ID';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.CARID
  is '审批系统ID';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHICLEID
  is '车牌号码';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHIDCOLOR
  is '车牌颜色编码';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.SEATNUM
  is '座位数';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHCERTID
  is '营运证号';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.GRANTDATE
  is '核发日期';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.FIRSTDATE
  is '有效期自';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.EXPIREDATE
  is '有效期至';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHCLASS
  is '车辆类型编码';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHTCHGRADE
  is '车辆技术等级编码';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.VEHTYPEGRADE
  is '客车类型与等级编码';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.CCERTSTATE
  is '运营状态';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.TESTING_DATE
  is '综合性能检测时间';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.MGRAREA
  is '经营范围';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.TWO_MAINT_TIME
  is '二级维护时间';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.SPY_NUM
  is '喷饰号';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_RPT_TBCA_VEHICLE.UPDATE_TIME
  is '更新时间';
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
  is '机动车维修经营许可登记信息核对结果明细
将有变化的数据保存到此表，没有变化的不保存。
';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.OID
  is '明细ID';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.VERIFY_ID
  is '核对ID';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ENTERPRISE_ID
  is '企业名称';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REGION
  is '所属区县';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRMT_NUM
  is '经营许可证号';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.JY_ADDRESS
  is '经营地址';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.JD_TYPE
  is '经济类型';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ACCTG_METH
  is '核算形式';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.LEGAL_PERS
  is '法定代表人';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ID
  is '身份证号';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REPAIR_TEL
  is '联系电话';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PHONE_NUM
  is '手机';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REPAIR_FAX
  is '传真';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.EMAIL
  is 'EMAIL';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PSTL_NUM
  is '邮政编号';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.BUS_TEL
  is '业务电话';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.MGRAREA
  is '许可经营范围';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRK_AREA
  is '停车场面积';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PLANT_AREA
  is '生产厂房面积';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.RPT_AREA
  is '接待室面积';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ZD_AREA
  is '占地面积';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.FUND_TOTAL
  is '资金总额';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REG_TOTAL
  is '注册资金';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.FIX_TOTAL
  is '固定资金';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.DESCRIBE
  is '经营者意见描述';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.UPLOAD_TIME
  is '上报日期';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.FLOW_TOTAL
  is '流动资金';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRMT_END_TIME
  is '许可证有效期至';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.PRMT_CONT_TIME
  is '许可证延续机构';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.ROOM_AREA
  is '总成维修间';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.MARK_BRAND
  is '标志牌';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.BUS_NUM
  is '工商执照号';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFAID
  is '有无24小时救援制度';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFAID_CAR
  is '有无救援服务专用车';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFFBK
  is '有无客户意见反馈制度';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.IFVST
  is '有无客户回访制度';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.SERV_PHONE
  is '24小时服务电话';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.AID_MODEL
  is '救援服务车车型';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_RPT_VERIFY_DETL.UPDATE_TIME
  is '更新日期';
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
  is '行政处罚信息';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OID
  is 'OID';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.PRMT_NUM
  is '经营许可证号';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OFFEND_ACTION
  is '违法违章行为';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OFFEND_ADDR
  is '违法地点';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.OFFEND_TIME
  is '违法时间';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.ADM_PENALTY
  is '采取的行政处罚';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.PENALTY_BAS
  is '处罚依据(北京市道路运输条例》第52条)';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.COMP_NAME
  is '执法单位名称';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.NAME
  is '执法人员姓名';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_ADM_PENALTY.CREATE_TIME
  is '创建时间';
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
  is '企业加分记录';
comment on column BJVMMIS.TR_TMG_BONUS.OID
  is '企业加分记录ID';
comment on column BJVMMIS.TR_TMG_BONUS.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_BONUS.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_TMG_BONUS.CHK_ITEM
  is '加分项';
comment on column BJVMMIS.TR_TMG_BONUS.CHK_ITEM_CODE
  is '加分项代码';
comment on column BJVMMIS.TR_TMG_BONUS.NUM
  is '分数';
comment on column BJVMMIS.TR_TMG_BONUS.BONUS_TIME
  is '加分日期';
comment on column BJVMMIS.TR_TMG_BONUS.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_BONUS.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_BONUS.CREATE_TIME
  is '创建时间';
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
  is '案件移送通知书';
comment on column BJVMMIS.TR_TMG_CASE_XFER.OID
  is '移送通知ID';
comment on column BJVMMIS.TR_TMG_CASE_XFER.PK_ID
  is '主表ID(核对ID)';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ACCEPTDPT
  is '受移送机关';
comment on column BJVMMIS.TR_TMG_CASE_XFER.TRANSFDPT
  is '移送机关';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CASECOUSE
  is '案由';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ILLEGAL
  is '违法当事人';
comment on column BJVMMIS.TR_TMG_CASE_XFER.LAWPERSON
  is '法定代表人';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CERTIF
  is '资格证号';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ADRRECE
  is '地址';
comment on column BJVMMIS.TR_TMG_CASE_XFER.TEL
  is '联系电话';
comment on column BJVMMIS.TR_TMG_CASE_XFER.POSTCODE
  is '邮编';
comment on column BJVMMIS.TR_TMG_CASE_XFER.ILLACT
  is '主要违法行为';
comment on column BJVMMIS.TR_TMG_CASE_XFER.EVIDLIST
  is '移动证据清单';
comment on column BJVMMIS.TR_TMG_CASE_XFER.AGENTOPIN
  is '承办人意见';
comment on column BJVMMIS.TR_TMG_CASE_XFER.PRINCOPIN
  is '单位主管领导意见';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOP
  is '签收人';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOPTEL
  is '联系电话（签收人）';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOPADD
  is '地址（签收人）';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CHOPPOST
  is '邮编（签收人）';
comment on column BJVMMIS.TR_TMG_CASE_XFER.TRANSDATE
  is '移送时间';
comment on column BJVMMIS.TR_TMG_CASE_XFER.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_CASE_XFER.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_CASE_XFER.UPDT_TIME
  is '更新时间';
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
  is '检查计划表';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.OID
  is '计划ID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_PURPOSE
  is '检查目的';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_BASIS
  is '检查依据';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_DEPT
  is '检查部门';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_CONTENT
  is '检查内容';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_STATUS
  is '检查状态
检查审核中、检查实施中、检查结束';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CHECK_TYPE
  is '检查分类
计划检查、投诉、举报检查、专项检查等';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.PLAN_NAME
  is '计划名称';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.PLAN_TYPE
  is '计划类型
年度、月度、周';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.PLAN_TIME
  is '计划时间';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.MAKE_PERS
  is '计划制定人';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN.CREATE_TIME
  is '创建时间';
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
  is '检查计划明细表';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.OID
  is '计划明细ID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.PLAN_ID
  is '计划ID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_PURPOSE
  is '检查目的';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_BASIS
  is '检查依据';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_CONTENT
  is '检查内容';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_STATUS
  is '检查状态
检查审核中、检查实施中、检查结束';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_TYPE
  is '检查类型
计划检查、专项检查、重点检查、
举报、投诉检查、许可登记信息核对检查
其它检查';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_DEPT
  is '检查部门';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CHECK_RESULT
  is '检查结果
正常、非正常';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.ACTL_TIME
  is '实际检查日期';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.FINISH_TIME
  is '实际完成日期';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_CHECK_PLAN_DETL.CREATE_TIME
  is '创建时间';
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
  is '检查人员';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.MGR_ID
  is '人员ID';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.PK_ID
  is '主表ID(检查计划明细ID)';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_CHECK_PERSON.UPDATE_TIME
  is '更新时间';
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
  is '整改完成通知书表';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.OID
  is '整改通知书ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.RECTIFY_TIME
  is '整改时间';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.END_TIME
  is '整改截止时间';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.RECTIFY_CONTENT
  is '整改内容';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.IFREC
  is '是否整改完成';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_COMPLETE_NOTE.UPDT_TIME
  is '更新时间';
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
  is '告知听证通知书';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.OID
  is '听证告知书ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.ENTERPRISE_NAME
  is '企业名称';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.TELL_TIME
  is '告知日期';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.ADDR
  is '地点';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PROVD_TERM
  is '规定项';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PROVD_STRIP
  is '规定条';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PROVD_PARAG
  is '规定款';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.PUNISH_DSC
  is '处罚描述';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.REGUL_NAME
  is '法规名称';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.REGUL_TK
  is '法规条款';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.APPL_TIME
  is '申请日期';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.APPL_DEPT
  is '申请部门';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.CTCT_ADDR
  is '联系地址';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.CTCT_TEL
  is '联系电话';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.DEPT
  is '单位';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.QS_PERS
  is '签收人';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.QS_TIME
  is '签收日期';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.IS_HEAR
  is '是否听证
要听证需要制作听证会通知书';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_INFORM_NOTICE.UPDATE_TIME
  is '更新时间';
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
  is '检查内容表';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.OID
  is '检查内容ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHECK_ID
  is '检查ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHK_TYPE
  is '检查分类
经营资质类、安全生产类、维修质量类、服务质量类、遵章守纪类、环境保护类、企业管理类、加分类';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHK_ITEM
  is '检查项
未按规定配备技术负责人、未按规定配备持技术等级证书、未按规定配备车辆维修、无安全生产责任制或安全应急预案的、设备安全操作规程，防火、防爆、用电等安全制度不健全或执行不到位的';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHK_ITEM_CODE
  is '检查项代码';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.PREF_STD
  is '参考标准';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CHECK_RESULT
  is '检查结果
是、否';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.NUM
  is '分数';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_JG_CHECK_DETL.CREATE_TIME
  is '创建时间';
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
  is '监管检查人员表';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.MGR_ID
  is '人员ID';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.PK_ID
  is '主表ID(监管检查表ID)';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_JG_CHECK_PERSON.UPDATE_TIME
  is '更新时间';
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
  is '行业管理人员表';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.OID
  is '行管ID';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.REGION
  is '所属区县';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.NAME
  is '姓名';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.SEX
  is '性别';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.TEL
  is '联系电话';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.PHONE
  is '联系人手机';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.EMAIL
  is '电子邮箱';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.DEPT
  is '所属部门';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.DOC_TYPE
  is '证件类型';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.DOC_NUM
  is '证件号码';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.BRTH_DATE
  is '出生年月';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.NATION
  is '民族';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.POLIT_AFFL
  is '政治面貌';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.NATL
  is '国籍';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.PSTL_CODE
  is '邮政编码';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.CTCT__ADDRES
  is '联系地址';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.UPDATE_TIME
  is '更新时间';
comment on column BJVMMIS.TR_TMG_MGR_PERSON.CREATE_TIME
  is '创建时间';
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
  is '听证会笔录';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_MATTER
  is '听证事项';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_TIME
  is '时间';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_ADDR
  is '地点';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.IF_OPN
  is '是否公开';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.TZ_RECORD
  is '听证记录';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_TZ_RECORD.UPDATE_TIME
  is '更新时间';
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
  is '行政处罚案件听证报告';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.RECORD_ID
  is '听证笔录ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.BRIEF
  is '案由';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.TZ_HOST
  is '听证主持人';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.TZ_TIME
  is '听证时间';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.TZ_INFO
  is '听证情况';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.ADVICE
  is '主持人对听证案件的处理意';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HOST
  is '主持人签字';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HOST_TIME
  is '主持人签字日期';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.EVIDE
  is '听证笔录证据材料';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HEAD_ADVICE
  is '主管负责人意见';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HEAD_NAME
  is '主管负责人签字';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.HEAD_TIME
  is '主管负责人签字日期';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.ADT_OPIN
  is '审核意见';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.CRE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_PENALTY_RPT.UPDT_TIME
  is '更新时间';
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
  is '企业备案通知书
';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.OID
  is '备案通知ID';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.VERIFY_ID
  is '核对ID';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.ENTERPRISE_ID
  is '企业名称';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.RECORD_CONTENT
  is '备案内容';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.RECORD_TIME
  is '通知时间';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.END_TIME
  is '备案截止日期';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.TR_TMG_RECORD_NOTE.UPDATE_TIME
  is '更新日期';
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
  is '服务质量事件';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.OID
  is '服务质量ID';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.CHK_ITEM
  is '检查项';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.CHK_ITEM_CODE
  is '检查项代码';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.FS_TIME
  is '发生时间';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.REASON
  is '发生原因';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.SOCIAL_YX
  is '社会影响';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.TREAT_RESULT
  is '处置结果';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.NOTE_DEPT
  is '通报部门';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.NUM
  is '分数';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.ZR_NAME
  is '事件责任人';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.FS_ADDR
  is '发生地点';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.EVENT_RMK
  is '事件描述';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.SRC_MODE
  is '来源方式（质量信誉档案添加）';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.NAME
  is '记录人';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_SERVE_QAL.UPDATE_TIME
  is '更新日期';
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
  is '听证审批表';
comment on column BJVMMIS.TR_TMG_TZ_APRV.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_APRV.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_TMG_TZ_APRV.FILE_ID
  is '附件ID';
comment on column BJVMMIS.TR_TMG_TZ_APRV.DS_NAME
  is '当事人';
comment on column BJVMMIS.TR_TMG_TZ_APRV.DEPT
  is '单位';
comment on column BJVMMIS.TR_TMG_TZ_APRV.XKZ_NAME
  is '经营许可证名称';
comment on column BJVMMIS.TR_TMG_TZ_APRV.XKZ_NUM
  is '经营许可证编号';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CERT_NUM
  is '准驾证号或服务证号';
comment on column BJVMMIS.TR_TMG_TZ_APRV.TRANSIT_TYPE
  is '车辆运输证种类';
comment on column BJVMMIS.TR_TMG_TZ_APRV.TRANSIT_NUM
  is '车辆运输证编号';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CAR_NUM
  is '车号';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CAR_TYPE
  is '车  型';
comment on column BJVMMIS.TR_TMG_TZ_APRV.COIOR
  is '颜色';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LGL_PERS
  is '法定代表人';
comment on column BJVMMIS.TR_TMG_TZ_APRV.POSN
  is '职务';
comment on column BJVMMIS.TR_TMG_TZ_APRV.TEL
  is '电话';
comment on column BJVMMIS.TR_TMG_TZ_APRV.ADDRES
  is '地址';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CASE_SRC
  is '案件来源';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LA_COND
  is '立案依据';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CBR_NAME
  is '承办人签字';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CBR_TIME
  is '签字日期（承办人签字）';
comment on column BJVMMIS.TR_TMG_TZ_APRV.ACCT
  is '进行听证的原由';
comment on column BJVMMIS.TR_TMG_TZ_APRV.BMFZR_NAME
  is '部门负责人签字';
comment on column BJVMMIS.TR_TMG_TZ_APRV.BMFZR_TIME
  is '签字日期（部门负责人签字';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LAST_ADVICE
  is '听证员组成建议';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LGL_HEAD
  is '法制部门负责人';
comment on column BJVMMIS.TR_TMG_TZ_APRV.LGL_TIME
  is '签字日期（法制部门负责人签字）';
comment on column BJVMMIS.TR_TMG_TZ_APRV.WFSS
  is '违法事实';
comment on column BJVMMIS.TR_TMG_TZ_APRV.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_TZ_APRV.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_TZ_APRV.UPDATE_TIME
  is '更新时间';
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
  is '听证会通知书';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.APRV_ID
  is '立案审批ID';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.ENTERPRISE_ID
  is '企业ID';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.LAW_PERS
  is '单位法定代表人名称';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.CASE_NAME
  is '案件名称';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.TZ_TIME
  is '听证会日期';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.TZ_ADDR
  is '听证会地址';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.HOST
  is '听证主持人';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.NOTE_COMP
  is '通知单位';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.NOTE_TIME
  is '通知日期';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.SIGN_PERS
  is '签收人名称';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_TZ_NOTICE.UPDATE_TIME
  is '更新时间';
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
  is '听证会人员';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.OID
  is 'ID';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.RECORD_ID
  is '听证记录ID、听证通知书ID';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.NAME
  is '人员名称';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.TYPE
  is '人员分类';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.TEL
  is '联系电话';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.COMPANY
  is '单位';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_TZ_PERSON.UPDATE_TIME
  is '更新时间';
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
  is '现场执法参与人';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.OID
  is '执法参与人ID';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.XCZW_ID
  is '现场证物ID';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.NAME
  is '人员名称';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.TYPE
  is '人员分类
执法人、见证人、取证人';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.TEL
  is '联系电话';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.COMPANY
  is '单位';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.REMARK
  is '备注';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.CREATE_TIME
  is '创建时间';
comment on column BJVMMIS.TR_TMG_XCZW_PERSON.UPDATE_TIME
  is '更新时间';
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
prompt Creating table 连锁维修企业(审批系统)
prompt ===========================
prompt
create table BJVMMIS.连锁维修企业(审批系统)
(
  OID         VARCHAR2(32) not null,
  连锁企业名称      VARCHAR2(128),
  企业许可证号      VARCHAR2(32),
  企业地址        VARCHAR2(1024),
  REMARK      VARCHAR2(1024),
  CREATE_TIME DATE,
  UPDATE_TIME DATE
)
tablespace BJVMMISDT
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BJVMMIS.连锁维修企业(审批系统)
  is '连锁维修企业';
comment on column BJVMMIS.连锁维修企业(审批系统).OID
  is 'OID';
comment on column BJVMMIS.连锁维修企业(审批系统).连锁企业名称
  is '连锁企业名称';
comment on column BJVMMIS.连锁维修企业(审批系统).企业许可证号
  is '企业许可证号';
comment on column BJVMMIS.连锁维修企业(审批系统).企业地址
  is '企业地址';
comment on column BJVMMIS.连锁维修企业(审批系统).REMARK
  is '备注';
comment on column BJVMMIS.连锁维修企业(审批系统).CREATE_TIME
  is '创建日期';
comment on column BJVMMIS.连锁维修企业(审批系统).UPDATE_TIME
  is '更新日期';
alter table BJVMMIS.连锁维修企业(审批系统)
  add constraint PK_连锁维修企业(审批系统) primary key (OID)
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
         (select count(*) from TR_CRD_COMPLAINT_NOTE a where a.complaint_id = t.oid) sl, --受理通知书
         (select count(*) from TR_CRD_DISPUTE_APPLY b where b.complaint_id=t.oid) tjsq,--调解申请书
         (select count(*) from TR_CRD_ANLS_ADVICE c where c.complaint_id=t.oid) qz, --取证
         (select count(*) from TR_CRD_COMPLAINT_RSLT d where d.complaint_id=t.oid) tsgz, --投诉告知
         (select count(*) from TR_CRD_MEDIATION_ADVICE e where e.complaint_id=t.oid) tjyj,--调解意见书
         (select IFAGREE from TR_CRD_DISPUTE_APPLY f where f.complaint_id=t.oid and rownum=1) IFAGREE,  --是否同意调解
         (select count(*) from tr_crd_stop_advice h where h.complaint_id=t.oid ) crsp,    --停止记录
         (select IFACPT from TR_CRD_MEDIATION_ADVICE i where i.complaint_id=t.oid and rownum=1 ) ifac,  --   是否同意调解
         a.ENTERPRISE_NAME,
         (select b.code_name
          from TC_ALL_DICT b
         where b.code_type = 'GL0001'
           and b.code_value = t.acpt_dept) depname,
           (select c.VEHICLEID from TR_RPT_REPAIR_RECORD c where c.oid=t.repair_id)  VEHICLEID,
           (select CREATE_TIME from TR_CRD_COMPLAINT_NOTE c where c.complaint_id=t.oid and rownum=1) slsj,  --受理时间

           (select COMPLAIN_UNIT from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsf,  --投诉方
           (select COMPLAIN_NAME from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsflxr,  --投诉方联系人
           (select COMPLAIN_ADDR from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsfdz,  --投诉方地址
           (select COMPLAIN_TEL from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsfdh,  --投诉方电话

           (select UNCOMPLAIN_UNIT from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsf,  --被投诉方
           (select UNCOMPLAIN_NAME from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsflxr,  --被投诉方联系人
           (select UNCOMPLAIN_ADDR from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsfdz,  --被投诉方地址
           (select UNCOMPLAIN_TEL from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsftel,  --被投诉方电话

           (select COMPLAIN_IDEA from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) tsfyj,  --投诉方意见
           (select UNCOMPLAIN_IDEA from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) btsfyj,  --被投诉方意见
           (select ADMINIST_IDEA from TR_CRD_DISPUTE_APPLY c where c.complaint_id=t.oid and rownum=1) gljgyj  --管理机构意见

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
