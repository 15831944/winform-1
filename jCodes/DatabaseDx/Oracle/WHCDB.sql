/*==============================================================*/
/* Table: TB_CITY                                               */
/*==============================================================*/
create table TB_CITY  (
   ID                   number                          not null,
   CITYNAME             NVARCHAR2(50),
   ZIPCODE              NVARCHAR2(50),
   PROVINCEID           number,
   constraint PK_TB_CITY primary key (ID)
);

comment on table TB_CITY is
'ȫ�����б�';

comment on column TB_CITY.CITYNAME is
'��������';

comment on column TB_CITY.ZIPCODE is
'��������';

comment on column TB_CITY.PROVINCEID is
'ʡ��ID';

/*==============================================================*/
/* Table: TB_DICTDATA                                           */
/*==============================================================*/
create table TB_DICTDATA  (
   ID                   NVARCHAR2(50)                   not null,
   DICTTYPE_ID          NVARCHAR2(50),
   NAME                 NVARCHAR2(50),
   VALUE                NVARCHAR2(50),
   REMARK               NVARCHAR2(255),
   SEQ                  NVARCHAR2(50),
   EDITOR               NVARCHAR2(50),
   LASTUPDATED          DATE                           default sysdate,
   constraint PK_TB_DICTDATA primary key (ID)
);

comment on table TB_DICTDATA is
'ͨ���ֵ���ϸ��Ŀ��Ϣ';

comment on column TB_DICTDATA.ID is
'���';

comment on column TB_DICTDATA.DICTTYPE_ID is
'�ֵ����';

comment on column TB_DICTDATA.NAME is
'�ֵ�����';

comment on column TB_DICTDATA.VALUE is
'�ֵ�ֵ';

comment on column TB_DICTDATA.REMARK is
'��ע';

comment on column TB_DICTDATA.SEQ is
'����';

comment on column TB_DICTDATA.EDITOR is
'�༭��';

comment on column TB_DICTDATA.LASTUPDATED is
'�༭ʱ��';


/*==============================================================*/
/* Table: TB_DICTTYPE                                           */
/*==============================================================*/
create table TB_DICTTYPE  (
   ID                   NVARCHAR2(50)                   not null,
   NAME                 NVARCHAR2(50),
   REMARK               NVARCHAR2(255),
   SEQ                  NVARCHAR2(50),
   EDITOR               NVARCHAR2(50),
   LASTUPDATED          DATE                           default sysdate,
   PID                  NVARCHAR2(50),
   constraint "PK_TB_DictType" primary key (ID)
);

comment on table TB_DICTTYPE is
'ͨ���ֵ������Ϣ';

comment on column TB_DICTTYPE.NAME is
'��������';

comment on column TB_DICTTYPE.REMARK is
'��ע';

comment on column TB_DICTTYPE.SEQ is
'����';

comment on column TB_DICTTYPE.EDITOR is
'�༭��';

comment on column TB_DICTTYPE.LASTUPDATED is
'�༭ʱ��';

comment on column TB_DICTTYPE.PID is
'��ID';

/*==============================================================*/
/* Table: TB_USERPARAMETER                                      */
/*==============================================================*/
create table TB_USERPARAMETER  (
   ID                   NVARCHAR2(50)                   not null,
   NAME                 NVARCHAR2(255),
   CONTENT              CLOB,
   CREATOR              NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   constraint PK_TB_USERPARAMETER primary key (ID)
);

comment on table TB_USERPARAMETER is
'�û���������';

comment on column TB_USERPARAMETER.NAME is
'��������';

comment on column TB_USERPARAMETER.CONTENT is
'�����ı�����';

comment on column TB_USERPARAMETER.CREATOR is
'������';

comment on column TB_USERPARAMETER.CREATETIME is
'����ʱ��';


/*==============================================================*/
/* Table: TB_DISTRICT                                           */
/*==============================================================*/
create table TB_DISTRICT  (
   ID                   number                          not null,
   DISTRICTNAME         NVARCHAR2(50),
   CITYID               number,
   constraint PK_TB_DISTRICT primary key (ID)
);

comment on table TB_DISTRICT is
'������������';

comment on column TB_DISTRICT.DISTRICTNAME is
'��������';

comment on column TB_DISTRICT.CITYID is
'����ID';

/*==============================================================*/
/* Table: TB_FILEUPLOAD                                         */
/*==============================================================*/
create table TB_FILEUPLOAD  (
   ID                   NVARCHAR2(50)                   not null,
   OWNER_ID             NVARCHAR2(50),
   ATTACHMENTGUID       NVARCHAR2(50),
   FILENAME             NVARCHAR2(255),
   BASEPATH             NVARCHAR2(255),
   SAVEPATH             NVARCHAR2(255),
   CATEGORY             NVARCHAR2(255),
   FILESIZE             INTEGER,
   FILEEXTEND           NVARCHAR2(10),
   EDITOR               NVARCHAR2(50),
   ADDTIME              DATE                           default sysdate,
   DELETEFLAG           INTEGER                        default 0,
   constraint PK_TB_FILEUPLOAD primary key (ID)
);

comment on table TB_FILEUPLOAD is
'�ϴ�������Ϣ';

comment on column TB_FILEUPLOAD.OWNER_ID is
'�����������ļ�¼ID';

comment on column TB_FILEUPLOAD.ATTACHMENTGUID is
'������GUID';

comment on column TB_FILEUPLOAD.FILENAME is
'�ļ���';

comment on column TB_FILEUPLOAD.BASEPATH is
'����·��';

comment on column TB_FILEUPLOAD.SAVEPATH is
'�ļ��������·��';

comment on column TB_FILEUPLOAD.CATEGORY is
'�ļ�����';

comment on column TB_FILEUPLOAD.FILESIZE is
'�ļ���С';

comment on column TB_FILEUPLOAD.FILEEXTEND is
'�ļ���չ��';

comment on column TB_FILEUPLOAD.EDITOR is
'�����û�';

comment on column TB_FILEUPLOAD.ADDTIME is
'���ʱ��';

comment on column TB_FILEUPLOAD.DELETEFLAG is
'ɾ����־��1Ϊɾ����0Ϊ����';

/*==============================================================*/
/* Table: TB_PROVINCE                                           */
/*==============================================================*/
create table TB_PROVINCE  (
   ID                   number                          not null,
   PROVINCENAME         NVARCHAR2(50),
   constraint PK_TB_PROVINCE primary key (ID)
);

comment on table TB_PROVINCE is
'ȫ��ʡ�ݱ�';

comment on column TB_PROVINCE.PROVINCENAME is
'ʡ������';

/*==============================================================*/
/* Table: T_ACL_BLACKIP                                         */
/*==============================================================*/
create table T_ACL_BLACKIP  (
   ID                   NVARCHAR2(50)                   not null,
   NAME                 NVARCHAR2(250),
   AUTHORIZETYPE        INTEGER                        default 0,
   FORBID               INTEGER                        default 0,
   IPSTART              NVARCHAR2(100),
   IPEND                NVARCHAR2(100),
   NOTE                 CLOB,
   CREATOR              NVARCHAR2(50),
   CREATOR_ID           NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   EDITOR               NVARCHAR2(50),
   EDITOR_ID            NVARCHAR2(50),
   EDITTIME             DATE                           default sysdate,
   constraint PK_T_ACL_BLACKIP primary key (ID)
);

comment on table T_ACL_BLACKIP is
'��½ϵͳ�ĺڰ������б�';

comment on column T_ACL_BLACKIP.NAME is
'��ʾ����';

comment on column T_ACL_BLACKIP.AUTHORIZETYPE is
'��Ȩ����';

comment on column T_ACL_BLACKIP.FORBID is
'�Ƿ����';

comment on column T_ACL_BLACKIP.IPSTART is
'IP��ʼ��ַ';

comment on column T_ACL_BLACKIP.IPEND is
'IP������ַ';

comment on column T_ACL_BLACKIP.NOTE is
'��ע';

comment on column T_ACL_BLACKIP.CREATOR is
'������';

comment on column T_ACL_BLACKIP.CREATOR_ID is
'������ID';

comment on column T_ACL_BLACKIP.CREATETIME is
'����ʱ��';

comment on column T_ACL_BLACKIP.EDITOR is
'�༭��';

comment on column T_ACL_BLACKIP.EDITOR_ID is
'�༭��ID';

comment on column T_ACL_BLACKIP.EDITTIME is
'�༭ʱ��';

/*==============================================================*/
/* Table: T_ACL_BLACKIP_USER                                    */
/*==============================================================*/
create table T_ACL_BLACKIP_USER  (
   BLACKIP_ID           NVARCHAR2(50)                   not null,
   USER_ID              NUMBER(6)                       not null,
   constraint PK_T_ACL_BLACKIP_USER primary key (BLACKIP_ID, USER_ID)
);

comment on table T_ACL_BLACKIP_USER is
'ϵͳ�ڰ��������û���ϵ��';

comment on column T_ACL_BLACKIP_USER.BLACKIP_ID is
'�ڰ�����ID';

comment on column T_ACL_BLACKIP_USER.USER_ID is
'�û�ID';

/*==============================================================*/
/* Table: T_ACL_FUNCTION                                        */
/*==============================================================*/
create table T_ACL_FUNCTION  (
   ID                   NVARCHAR2(50)                   not null,
   PID                  NVARCHAR2(50)                  default '-1',
   NAME                 NVARCHAR2(100)                  not null,
   CONTROLID            NVARCHAR2(100)                  not null,
   SYSTEMTYPE_ID        NVARCHAR2(50)                   not null,
   SORTCODE             NVARCHAR2(50),
   constraint "PK_Function" primary key (ID)
);

comment on table T_ACL_FUNCTION is
'ϵͳ���ܶ���';

comment on column T_ACL_FUNCTION.PID is
'��ID';

comment on column T_ACL_FUNCTION.NAME is
'��������';

comment on column T_ACL_FUNCTION.CONTROLID is
'���Ʊ�ʶ';

comment on column T_ACL_FUNCTION.SYSTEMTYPE_ID is
'ϵͳ���';

comment on column T_ACL_FUNCTION.SORTCODE is
'������';

/*==============================================================*/
/* Table: T_ACL_LOGINLOG                                        */
/*==============================================================*/
create table T_ACL_LOGINLOG  (
   ID                   NUMBER(6)                       not null,
   USER_ID              NVARCHAR2(50),
   LOGINNAME            NVARCHAR2(50),
   FULLNAME             NVARCHAR2(50),
   COMPANY_ID           NVARCHAR2(50),
   COMPANYNAME          NVARCHAR2(255),
   NOTE                 NVARCHAR2(255),
   IPADDRESS            NVARCHAR2(255),
   MACADDRESS           NVARCHAR2(255),
   LASTUPDATED          DATE                           default sysdate,
   SYSTEMTYPE_ID        NVARCHAR2(50),
   constraint "PK_TB_LoginLog" primary key (ID)
);

comment on table T_ACL_LOGINLOG is
'�û���¼��־��Ϣ';

comment on column T_ACL_LOGINLOG.USER_ID is
'��¼�û�ID';

comment on column T_ACL_LOGINLOG.LOGINNAME is
'��¼��';

comment on column T_ACL_LOGINLOG.FULLNAME is
'��ʵ����';

comment on column T_ACL_LOGINLOG.COMPANY_ID is
'������˾ID';

comment on column T_ACL_LOGINLOG.COMPANYNAME is
'������˾����';

comment on column T_ACL_LOGINLOG.NOTE is
'��־����';

comment on column T_ACL_LOGINLOG.IPADDRESS is
'IP��ַ';

comment on column T_ACL_LOGINLOG.MACADDRESS is
'Mac��ַ';

comment on column T_ACL_LOGINLOG.LASTUPDATED is
'����ʱ��';

comment on column T_ACL_LOGINLOG.SYSTEMTYPE_ID is
'ϵͳ���';

/*==============================================================*/
/* Table: T_ACL_MENU                                            */
/*==============================================================*/
create table T_ACL_MENU  (
   ID                   NVARCHAR2(50)                   not null,
   PID                  NVARCHAR2(50)                  default '-1',
   NAME                 NVARCHAR2(50),
   ICON                 NVARCHAR2(50),
   SEQ                  NVARCHAR2(50),
   FUNCTIONID           NVARCHAR2(50),
   VISIBLE              INTEGER                        default 1,
   WINFORMTYPE          NVARCHAR2(100),
   URL                  NVARCHAR2(100),
   WEBICON              NVARCHAR2(100),
   SYSTEMTYPE_ID        NVARCHAR2(50)                   not null,
   CREATOR              NVARCHAR2(50),
   CREATOR_ID           NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   EDITOR               NVARCHAR2(50),
   EDITOR_ID            NVARCHAR2(50),
   EDITTIME             DATE                           default sysdate,
   DELETED              INTEGER,
   constraint PK_T_ACL_MENU primary key (ID)
);

comment on table T_ACL_MENU is
'���ܲ˵�';

comment on column T_ACL_MENU.PID is
'��ID';

comment on column T_ACL_MENU.NAME is
'��ʾ����';

comment on column T_ACL_MENU.ICON is
'ͼ��';

comment on column T_ACL_MENU.SEQ is
'����';

comment on column T_ACL_MENU.FUNCTIONID is
'����ID';

comment on column T_ACL_MENU.VISIBLE is
'�Ƿ�ɼ�';

comment on column T_ACL_MENU.WINFORMTYPE is
'Winform��������';

comment on column T_ACL_MENU.URL is
'Web����Url��ַ';

comment on column T_ACL_MENU.WEBICON is
'Web����Ĳ˵�ͼ��';

comment on column T_ACL_MENU.SYSTEMTYPE_ID is
'ϵͳ���';

comment on column T_ACL_MENU.CREATOR is
'������';

comment on column T_ACL_MENU.CREATOR_ID is
'������ID';

comment on column T_ACL_MENU.CREATETIME is
'����ʱ��';

comment on column T_ACL_MENU.EDITOR is
'�༭��';

comment on column T_ACL_MENU.EDITOR_ID is
'�༭��ID';

comment on column T_ACL_MENU.EDITTIME is
'�༭ʱ��';

comment on column T_ACL_MENU.DELETED is
'�Ƿ���ɾ��';

/*==============================================================*/
/* Table: T_ACL_OPERATIONLOG                                    */
/*==============================================================*/
create table T_ACL_OPERATIONLOG  (
   ID                   NVARCHAR2(50)                   not null,
   USER_ID              NVARCHAR2(50),
   LOGINNAME            NVARCHAR2(50),
   FULLNAME             NVARCHAR2(50),
   COMPANY_ID           NVARCHAR2(50),
   COMPANYNAME          NVARCHAR2(255),
   TABLENAME            NVARCHAR2(50),
   OPERATIONTYPE        NVARCHAR2(50),
   NOTE                 CLOB,
   IPADDRESS            NVARCHAR2(255),
   MACADDRESS           NVARCHAR2(255),
   CREATETIME           DATE                           default sysdate,
   constraint PK_T_ACL_OPERATIONLOG primary key (ID)
);

comment on table T_ACL_OPERATIONLOG is
'�û��ؼ�������¼';

comment on column T_ACL_OPERATIONLOG.USER_ID is
'��¼�û�ID';

comment on column T_ACL_OPERATIONLOG.LOGINNAME is
'��¼��';

comment on column T_ACL_OPERATIONLOG.FULLNAME is
'��ʵ����';

comment on column T_ACL_OPERATIONLOG.COMPANY_ID is
'������˾ID';

comment on column T_ACL_OPERATIONLOG.COMPANYNAME is
'������˾����';

comment on column T_ACL_OPERATIONLOG.TABLENAME is
'����������';

comment on column T_ACL_OPERATIONLOG.OPERATIONTYPE is
'��������';

comment on column T_ACL_OPERATIONLOG.NOTE is
'��־����';

comment on column T_ACL_OPERATIONLOG.IPADDRESS is
'IP��ַ';

comment on column T_ACL_OPERATIONLOG.MACADDRESS is
'Mac��ַ';

comment on column T_ACL_OPERATIONLOG.CREATETIME is
'����ʱ��';

/*==============================================================*/
/* Table: T_ACL_OPERATIONLOGSETTING                             */
/*==============================================================*/
create table T_ACL_OPERATIONLOGSETTING  (
   ID                   NVARCHAR2(50)                   not null,
   FORBID               INTEGER                        default 0,
   TABLENAME            NVARCHAR2(50),
   INSERTLOG            INTEGER,
   DELETELOG            INTEGER,
   UPDATELOG            INTEGER,
   NOTE                 CLOB,
   CREATOR              NVARCHAR2(50),
   CREATOR_ID           NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   EDITOR               NVARCHAR2(50),
   EDITOR_ID            NVARCHAR2(50),
   EDITTIME             DATE                           default sysdate,
   constraint PK_T_ACL_OPERATIONLOGSETTING primary key (ID)
);

comment on table T_ACL_OPERATIONLOGSETTING is
'��¼������־�����ݱ�����';

comment on column T_ACL_OPERATIONLOGSETTING.FORBID is
'�Ƿ����';

comment on column T_ACL_OPERATIONLOGSETTING.TABLENAME is
'���ݿ��';

comment on column T_ACL_OPERATIONLOGSETTING.INSERTLOG is
'��¼������־';

comment on column T_ACL_OPERATIONLOGSETTING.DELETELOG is
'��¼ɾ����־';

comment on column T_ACL_OPERATIONLOGSETTING.UPDATELOG is
'��¼������־';

comment on column T_ACL_OPERATIONLOGSETTING.NOTE is
'��ע';

comment on column T_ACL_OPERATIONLOGSETTING.CREATOR is
'������';

comment on column T_ACL_OPERATIONLOGSETTING.CREATOR_ID is
'������ID';

comment on column T_ACL_OPERATIONLOGSETTING.CREATETIME is
'����ʱ��';

comment on column T_ACL_OPERATIONLOGSETTING.EDITOR is
'�༭��';

comment on column T_ACL_OPERATIONLOGSETTING.EDITOR_ID is
'�༭��ID';

comment on column T_ACL_OPERATIONLOGSETTING.EDITTIME is
'�༭ʱ��';

/*==============================================================*/
/* Table: T_ACL_OU                                              */
/*==============================================================*/
create table T_ACL_OU  (
   ID                   NUMBER(6)                       not null,
   PID                  NUMBER(6)                      default -1,
   HANDNO               NVARCHAR2(50),
   NAME                 NVARCHAR2(100)                  not null,
   SORTCODE             NVARCHAR2(50),
   CATEGORY             NVARCHAR2(50),
   ADDRESS              NVARCHAR2(200),
   OUTERPHONE           NVARCHAR2(50),
   INNERPHONE           NVARCHAR2(50),
   NOTE                 CLOB,
   CREATOR              NVARCHAR2(50),
   CREATOR_ID           NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   EDITOR               NVARCHAR2(50),
   EDITOR_ID            NVARCHAR2(50),
   EDITTIME             DATE                           default sysdate,
   DELETED              NUMBER,
   ENABLED              NUMBER,
   COMPANY_ID           NVARCHAR2(50),
   COMPANYNAME          NVARCHAR2(255),
   constraint "PK_Department" primary key (ID)
);

comment on table T_ACL_OU is
'���������ţ���Ϣ';

comment on column T_ACL_OU.PID is
'��ID';

comment on column T_ACL_OU.HANDNO is
'��������';

comment on column T_ACL_OU.NAME is
'��������';

comment on column T_ACL_OU.SORTCODE is
'������';

comment on column T_ACL_OU.CATEGORY is
'��������';

comment on column T_ACL_OU.ADDRESS is
'������ַ';

comment on column T_ACL_OU.OUTERPHONE is
'���ߵ绰';

comment on column T_ACL_OU.INNERPHONE is
'���ߵ绰';

comment on column T_ACL_OU.NOTE is
'��ע';

comment on column T_ACL_OU.CREATOR is
'������';

comment on column T_ACL_OU.CREATOR_ID is
'������ID';

comment on column T_ACL_OU.CREATETIME is
'����ʱ��';

comment on column T_ACL_OU.EDITOR is
'�༭��';

comment on column T_ACL_OU.EDITOR_ID is
'�༭��ID';

comment on column T_ACL_OU.EDITTIME is
'�༭ʱ��';

comment on column T_ACL_OU.DELETED is
'�Ƿ���ɾ��';

comment on column T_ACL_OU.ENABLED is
'��Ч��־';

comment on column T_ACL_OU.COMPANY_ID is
'������˾ID';

comment on column T_ACL_OU.COMPANYNAME is
'������˾����';

/*==============================================================*/
/* Table: T_ACL_OU_ROLE                                         */
/*==============================================================*/
create table T_ACL_OU_ROLE  (
   OU_ID                NUMBER(6)                       not null,
   ROLE_ID              NUMBER(6)                       not null,
   constraint "PK_Group_Role" primary key (OU_ID, ROLE_ID)
);

comment on table T_ACL_OU_ROLE is
'������ɫ����';

comment on column T_ACL_OU_ROLE.OU_ID is
'����ID';

comment on column T_ACL_OU_ROLE.ROLE_ID is
'��ɫID';

/*==============================================================*/
/* Table: T_ACL_OU_USER                                         */
/*==============================================================*/
create table T_ACL_OU_USER  (
   USER_ID              NUMBER(6)                       not null,
   OU_ID                NUMBER(6)                       not null,
   constraint "PK_Group_User" primary key (USER_ID, OU_ID)
);

comment on table T_ACL_OU_USER is
'�����û�����';

comment on column T_ACL_OU_USER.USER_ID is
'�û�ID';

comment on column T_ACL_OU_USER.OU_ID is
'����ID';

/*==============================================================*/
/* Table: T_ACL_ROLE                                            */
/*==============================================================*/
create table T_ACL_ROLE  (
   ID                   NUMBER(6)                       not null,
   PID                  NUMBER                         default -1,
   HANDNO               NVARCHAR2(50),
   NAME                 NVARCHAR2(100)                  not null,
   NOTE                 CLOB,
   SORTCODE             NVARCHAR2(50),
   CATEGORY             NVARCHAR2(50),
   COMPANY_ID           NVARCHAR2(50),
   COMPANYNAME          NVARCHAR2(255),
   CREATOR              NVARCHAR2(50),
   CREATOR_ID           NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   EDITOR               NVARCHAR2(50),
   EDITOR_ID            NVARCHAR2(50),
   EDITTIME             DATE                           default sysdate,
   DELETED              INTEGER,
   ENABLED              INTEGER,
   constraint "PK_Role" primary key (ID)
);

comment on table T_ACL_ROLE is
'��ɫ��Ϣ';

comment on column T_ACL_ROLE.PID is
'��ID';

comment on column T_ACL_ROLE.HANDNO is
'��ɫ����';

comment on column T_ACL_ROLE.NAME is
'��ɫ����';

comment on column T_ACL_ROLE.NOTE is
'��ע';

comment on column T_ACL_ROLE.SORTCODE is
'������';

comment on column T_ACL_ROLE.CATEGORY is
'��ɫ����';

comment on column T_ACL_ROLE.COMPANY_ID is
'������˾ID';

comment on column T_ACL_ROLE.COMPANYNAME is
'������˾����';

comment on column T_ACL_ROLE.CREATOR is
'������';

comment on column T_ACL_ROLE.CREATOR_ID is
'������ID';

comment on column T_ACL_ROLE.CREATETIME is
'����ʱ��';

comment on column T_ACL_ROLE.EDITOR is
'�༭��';

comment on column T_ACL_ROLE.EDITOR_ID is
'�༭��ID';

comment on column T_ACL_ROLE.EDITTIME is
'�༭ʱ��';

comment on column T_ACL_ROLE.DELETED is
'�Ƿ���ɾ��';

comment on column T_ACL_ROLE.ENABLED is
'��Ч��־';

/*==============================================================*/
/* Table: T_ACL_ROLEDATA                                        */
/*==============================================================*/
create table T_ACL_ROLEDATA  (
   ID                   NVARCHAR2(50)                   not null,
   ROLE_ID              INTEGER                         not null,
   BELONGCOMPANYS       NVARCHAR2(255),
   BELONGDEPTS          NVARCHAR2(255),
   EXCLUDEDEPTS         NVARCHAR2(255),
   NOTE                 CLOB,
   constraint PK_T_ACL_ROLEDATA primary key (ID)
);

comment on table T_ACL_ROLEDATA is
'��ɫ������Ȩ��';

comment on column T_ACL_ROLEDATA.ROLE_ID is
'��ɫID';

comment on column T_ACL_ROLEDATA.BELONGCOMPANYS is
'������˾';

comment on column T_ACL_ROLEDATA.BELONGDEPTS is
'��������';

comment on column T_ACL_ROLEDATA.EXCLUDEDEPTS is
'�ų�����';

comment on column T_ACL_ROLEDATA.NOTE is
'��ע';

/*==============================================================*/
/* Table: T_ACL_ROLE_FUNCTION                                   */
/*==============================================================*/
create table T_ACL_ROLE_FUNCTION  (
   ROLE_ID              NUMBER(6)                       not null,
   FUNCTION_ID          NVARCHAR2(50)                   not null,
   constraint "PK_Role_Function" primary key (ROLE_ID, FUNCTION_ID)
);

comment on table T_ACL_ROLE_FUNCTION is
'��ɫ���ܹ���';

comment on column T_ACL_ROLE_FUNCTION.ROLE_ID is
'��ɫID';

comment on column T_ACL_ROLE_FUNCTION.FUNCTION_ID is
'����ID';

/*==============================================================*/
/* Table: T_ACL_SYSTEMAUTHORIZE                                 */
/*==============================================================*/
create table T_ACL_SYSTEMAUTHORIZE  (
   ID                   NUMBER(6)                       not null,
   SYSTEMTYPE_OID       NVARCHAR2(50)                   not null,
   CONTENT              NVARCHAR2(100),
   constraint "PK_SystemAuthorize" primary key (ID)
);

comment on table T_ACL_SYSTEMAUTHORIZE is
'ϵͳ������Ȩ��Ϣ';

comment on column T_ACL_SYSTEMAUTHORIZE.SYSTEMTYPE_OID is
'ϵͳ��ʶID';

comment on column T_ACL_SYSTEMAUTHORIZE.CONTENT is
'��ע����';

/*==============================================================*/
/* Table: T_ACL_SYSTEMTYPE                                      */
/*==============================================================*/
create table T_ACL_SYSTEMTYPE  (
   OID                  NVARCHAR2(50)                   not null,
   NAME                 NVARCHAR2(100)                  not null,
   CUSTOMID             NVARCHAR2(50),
   AUTHORIZE            NVARCHAR2(100),
   NOTE                 CLOB,
   constraint "PK_SystemType" primary key (OID)
);

comment on table T_ACL_SYSTEMTYPE is
'ϵͳ������Ϣ';

comment on column T_ACL_SYSTEMTYPE.OID is
'ϵͳ��ʶ';

comment on column T_ACL_SYSTEMTYPE.NAME is
'ϵͳ����';

comment on column T_ACL_SYSTEMTYPE.CUSTOMID is
'�ͻ�����';

comment on column T_ACL_SYSTEMTYPE.AUTHORIZE is
'��Ȩ����';

comment on column T_ACL_SYSTEMTYPE.NOTE is
'��ע';

/*==============================================================*/
/* Table: T_ACL_USER                                            */
/*==============================================================*/
create table T_ACL_USER  (
   ID                   NUMBER(6)                       not null,
   PID                  NUMBER                         default -1,
   HANDNO               NVARCHAR2(50),
   NAME                 NVARCHAR2(50)                   not null,
   PASSWORD             NVARCHAR2(100)                  not null,
   FULLNAME             NVARCHAR2(100),
   NICKNAME             NVARCHAR2(100),
   ISEXPIRE             NUMBER                         default 0,
   TITLE                NVARCHAR2(100),
   IDENTITYCARD         NVARCHAR2(50),
   MOBILEPHONE          NVARCHAR2(100),
   OFFICEPHONE          NVARCHAR2(100),
   HOMEPHONE            NVARCHAR2(100),
   EMAIL                NVARCHAR2(100),
   ADDRESS              NVARCHAR2(255),
   WORKADDR             NVARCHAR2(255),
   GENDER               NVARCHAR2(50),
   BIRTHDAY             DATE,
   QQ                   NVARCHAR2(50),
   SIGNATURE            NVARCHAR2(255),
   AUDITSTATUS          NVARCHAR2(50),
   PORTRAIT             BLOB,
   NOTE                 CLOB,
   CUSTOMFIELD          CLOB,
   DEPT_ID              NVARCHAR2(50),
   DEPTNAME             NVARCHAR2(255),
   COMPANY_ID           NVARCHAR2(50),
   COMPANYNAME          NVARCHAR2(255),
   SORTCODE             NVARCHAR2(50),
   CREATOR              NVARCHAR2(50),
   CREATOR_ID           NVARCHAR2(50),
   CREATETIME           DATE                           default sysdate,
   EDITOR               NVARCHAR2(50),
   EDITOR_ID            NVARCHAR2(50),
   EDITTIME             DATE                           default sysdate,
   DELETED              INTEGER,
   QUESTION             NVARCHAR2(100),
   ANSWER               NVARCHAR2(100),
   LASTLOGINIP          NVARCHAR2(50),
   LASTLOGINTIME        DATE,
   LASTMACADDRESS       NVARCHAR2(100),
   CURRENTLOGINIP       NVARCHAR2(50),
   CURRENTLOGINTIME     DATE,
   CURRENTMACADDRESS    NVARCHAR2(100),
   LASTPASSWORDTIME     DATE,
   constraint "PK_User" primary key (ID)
);

comment on table T_ACL_USER is
'ϵͳ�û���Ϣ';

comment on column T_ACL_USER.PID is
'��ID';

comment on column T_ACL_USER.HANDNO is
'�û�����';

comment on column T_ACL_USER.NAME is
'�û���/��¼��';

comment on column T_ACL_USER.PASSWORD is
'�û�����';

comment on column T_ACL_USER.FULLNAME is
'��ʵ����';

comment on column T_ACL_USER.NICKNAME is
'�û��س�';

comment on column T_ACL_USER.ISEXPIRE is
'�Ƿ����';

comment on column T_ACL_USER.TITLE is
'ְ��ͷ��';

comment on column T_ACL_USER.IDENTITYCARD is
'���֤����';

comment on column T_ACL_USER.MOBILEPHONE is
'�ƶ��绰';

comment on column T_ACL_USER.OFFICEPHONE is
'�칫�绰';

comment on column T_ACL_USER.HOMEPHONE is
'��ͥ�绰';

comment on column T_ACL_USER.EMAIL is
'�ʼ���ַ';

comment on column T_ACL_USER.ADDRESS is
'סַ';

comment on column T_ACL_USER.WORKADDR is
'�칫��ַ';

comment on column T_ACL_USER.GENDER is
'�Ա�';

comment on column T_ACL_USER.BIRTHDAY is
'��������';

comment on column T_ACL_USER.QQ is
'QQ����';

comment on column T_ACL_USER.SIGNATURE is
'����ǩ��';

comment on column T_ACL_USER.AUDITSTATUS is
'���״̬';

comment on column T_ACL_USER.PORTRAIT is
'����ͼƬ';

comment on column T_ACL_USER.NOTE is
'��ע';

comment on column T_ACL_USER.CUSTOMFIELD is
'�Զ����ֶ�';

comment on column T_ACL_USER.DEPT_ID is
'Ĭ�ϲ���ID';

comment on column T_ACL_USER.DEPTNAME is
'Ĭ�ϲ�������';

comment on column T_ACL_USER.COMPANY_ID is
'������˾ID';

comment on column T_ACL_USER.COMPANYNAME is
'������˾����';

comment on column T_ACL_USER.SORTCODE is
'������';

comment on column T_ACL_USER.CREATOR is
'������';

comment on column T_ACL_USER.CREATOR_ID is
'������ID';

comment on column T_ACL_USER.CREATETIME is
'����ʱ��';

comment on column T_ACL_USER.EDITOR is
'�༭��';

comment on column T_ACL_USER.EDITOR_ID is
'�༭��ID';

comment on column T_ACL_USER.EDITTIME is
'�༭ʱ��';

comment on column T_ACL_USER.DELETED is
'�Ƿ���ɾ��';

comment on column T_ACL_USER.QUESTION is
'�ܱ�����ʾ����';

comment on column T_ACL_USER.ANSWER is
'�ܱ�:�����';

comment on column T_ACL_USER.LASTLOGINIP is
'�ϴε�¼IP';

comment on column T_ACL_USER.LASTLOGINTIME is
'�ϴε�¼ʱ��';

comment on column T_ACL_USER.LASTMACADDRESS is
'�ϴ�Mac��ַ';

comment on column T_ACL_USER.CURRENTLOGINIP is
'��ǰ��¼IP';

comment on column T_ACL_USER.CURRENTLOGINTIME is
'��ǰ��¼ʱ��';

comment on column T_ACL_USER.CURRENTMACADDRESS is
'��ǰMac��ַ';

comment on column T_ACL_USER.LASTPASSWORDTIME is
'����޸���������';

/*==============================================================*/
/* Table: T_ACL_USER_ROLE                                       */
/*==============================================================*/
create table T_ACL_USER_ROLE  (
   USER_ID              NUMBER(6)                       not null,
   ROLE_ID              NUMBER(6)                       not null,
   constraint "PK_User_Role" primary key (USER_ID, ROLE_ID)
);

comment on table T_ACL_USER_ROLE is
'�û���ɫ����';

comment on column T_ACL_USER_ROLE.USER_ID is
'�û�ID';

comment on column T_ACL_USER_ROLE.ROLE_ID is
'��ɫID';

/*==============================================================*/
/* Table: TB_INFORMATION                                        */
/*==============================================================*/
create table TB_INFORMATION  (
   ID                   NVARCHAR2(50)                   not null,
   TITLE                NVARCHAR2(255),
   CONTENT              CLOB,
   ATTACHMENT_GUID      NVARCHAR2(50),
   CATEGORY             NVARCHAR2(255),
   SUBTYPE              NVARCHAR2(255),
   EDITOR               NVARCHAR2(50),
   EDITTIME             date,
   ISCHECKED            INTEGER,
   CHECKUSER            NVARCHAR2(50),
   CHECKTIME            DATE,
   FORCEEXPIRE          INTEGER,
   TIMEOUT              DATE,
   constraint PK_TB_INFORMATION primary key (ID)
);

comment on table TB_INFORMATION is
'���߷��湫�涯̬';

comment on column TB_INFORMATION.TITLE is
'����';

comment on column TB_INFORMATION.CONTENT is
'����';

comment on column TB_INFORMATION.ATTACHMENT_GUID is
'����GUID';

comment on column TB_INFORMATION.CATEGORY is
'��������';

comment on column TB_INFORMATION.SUBTYPE is
'��������';

comment on column TB_INFORMATION.EDITOR is
'�༭��';

comment on column TB_INFORMATION.EDITTIME is
'�༭ʱ��';

comment on column TB_INFORMATION.ISCHECKED is
'�Ƿ�����ͨ��';

comment on column TB_INFORMATION.CHECKUSER is
'������';

comment on column TB_INFORMATION.CHECKTIME is
'����ʱ��';

comment on column TB_INFORMATION.FORCEEXPIRE is
'�Ƿ�ǿ�ƹ���';

comment on column TB_INFORMATION.TIMEOUT is
'���ڽ�ֹʱ��';

/*==============================================================*/
/* Table: TB_INFORMATIONSTATUS                                  */
/*==============================================================*/
create table TB_INFORMATIONSTATUS  (
   ID                   NVARCHAR2(50)                   not null,
   CATEGORY             NVARCHAR2(50),
   INFORMATION_ID       NVARCHAR2(50),
   STATUS               INTEGER,
   USER_ID              NVARCHAR2(50),
   constraint PK_TB_INFORMATIONSTATUS primary key (ID)
);

comment on table TB_INFORMATIONSTATUS is
'�û���ָ�����ݵĲ���״̬��¼';

comment on column TB_INFORMATIONSTATUS.CATEGORY is
'��Ϣ����';

comment on column TB_INFORMATIONSTATUS.INFORMATION_ID is
'��ϢID';

comment on column TB_INFORMATIONSTATUS.STATUS is
'�Ķ�״̬��0��δ����1���Ѷ�������������';

comment on column TB_INFORMATIONSTATUS.USER_ID is
'�û�ID';


alter table T_ACL_OU_ROLE
   add constraint "FK_OU_Role_OU" foreign key (OU_ID)
      references T_ACL_OU (ID)
      on delete cascade;

alter table T_ACL_OU_ROLE
   add constraint "FK_OU_Role_Role" foreign key (ROLE_ID)
      references T_ACL_ROLE (ID)
      on delete cascade;

alter table T_ACL_OU_USER
   add constraint "FK_OU_User_OU" foreign key (OU_ID)
      references T_ACL_OU (ID)
      on delete cascade;

alter table T_ACL_OU_USER
   add constraint "FK_User_OU_User" foreign key (USER_ID)
      references T_ACL_USER (ID)
      on delete cascade;

alter table T_ACL_ROLEDATA
   add constraint FK_T_ACL_RO_FK_ROLE_D_T_ACL_RO foreign key (ROLE_ID)
      references T_ACL_ROLE (ID)
      on delete cascade;

alter table T_ACL_ROLE_FUNCTION
   add constraint "FK_Role_Function_Function" foreign key (FUNCTION_ID)
      references T_ACL_FUNCTION (ID)
      on delete cascade;

alter table T_ACL_ROLE_FUNCTION
   add constraint "FK_Role_Function_Role" foreign key (ROLE_ID)
      references T_ACL_ROLE (ID)
      on delete cascade;

alter table T_ACL_SYSTEMAUTHORIZE
   add constraint "FK_SystemAuthorize_SystemType" foreign key (SYSTEMTYPE_OID)
      references T_ACL_SYSTEMTYPE (OID)
      on delete cascade;

alter table T_ACL_USER_ROLE
   add constraint "FK_User_Role_Role" foreign key (ROLE_ID)
      references T_ACL_ROLE (ID)
      on delete cascade;

alter table T_ACL_USER_ROLE
   add constraint "FK_User_Role_User" foreign key (USER_ID)
      references T_ACL_USER (ID)
      on delete cascade;

commit;



--�ֿ����ϵͳ�ı�
/*==============================================================*/
/* Table: WM_ITEMDETAIL                                         */
/*==============================================================*/
create table WM_ITEMDETAIL  (
   ID                   NUMBER(6)                       not null,
   ITEMNO               NVARCHAR2(50),
   ITEMNAME             NVARCHAR2(50),
   MANUFACTURE          NVARCHAR2(50),
   MAPNO                NVARCHAR2(50),
   SPECIFICATION        NVARCHAR2(50),
   MATERIAL             NVARCHAR2(50),
   ITEMBIGTYPE          NVARCHAR2(50),
   ITEMTYPE             NVARCHAR2(50),
   UNIT                 NVARCHAR2(50),
   PRICE                NUMBER(8,2),
   SOURCE               NVARCHAR2(255),
   STORAGEPOS           NVARCHAR2(255),
   USAGEPOS             NVARCHAR2(255),
   NOTE                 NVARCHAR2(255),
   WAREHOUSE            NVARCHAR2(50),
   DEPT                 NVARCHAR2(50),
   constraint "PK_TB_ItemDetail" primary key (ID)
);

comment on table WM_ITEMDETAIL is
'������Ϣ';

comment on column WM_ITEMDETAIL.ITEMNO is
'�������';

comment on column WM_ITEMDETAIL.ITEMNAME is
'��������';

comment on column WM_ITEMDETAIL.MANUFACTURE is
'������';

comment on column WM_ITEMDETAIL.MAPNO is
'ͼ��';

comment on column WM_ITEMDETAIL.SPECIFICATION is
'����ͺ�';

comment on column WM_ITEMDETAIL.MATERIAL is
'����';

comment on column WM_ITEMDETAIL.ITEMBIGTYPE is
'��������';

comment on column WM_ITEMDETAIL.ITEMTYPE is
'�������';

comment on column WM_ITEMDETAIL.UNIT is
'��λ';

comment on column WM_ITEMDETAIL.PRICE is
'����';

comment on column WM_ITEMDETAIL.SOURCE is
'��Դ';

comment on column WM_ITEMDETAIL.STORAGEPOS is
'��λ';

comment on column WM_ITEMDETAIL.USAGEPOS is
'ʹ��λ��';

comment on column WM_ITEMDETAIL.NOTE is
'��ע';

comment on column WM_ITEMDETAIL.WAREHOUSE is
'�����ⷿ';

comment on column WM_ITEMDETAIL.DEPT is
'��������';

/*==============================================================*/
/* Table: WM_PURCHASEDETAIL                                     */
/*==============================================================*/
create table WM_PURCHASEDETAIL  (
   ID                   NUMBER(6)                       not null,
   PURCHASEHEAD_ID      INTEGER,
   OPERATIONTYPE        NVARCHAR2(50),
   ITEMNO               NVARCHAR2(50),
   ITEMNAME             NVARCHAR2(50),
   MAPNO                NVARCHAR2(50),
   SPECIFICATION        NVARCHAR2(50),
   MATERIAL             NVARCHAR2(50),
   ITEMBIGTYPE          NVARCHAR2(50),
   ITEMTYPE             NVARCHAR2(50),
   UNIT                 NVARCHAR2(50),
   PRICE                DECIMAL,
   QUANTITY             DECIMAL,
   AMOUNT               DECIMAL,
   SOURCE               NVARCHAR2(255),
   STORAGEPOS           NVARCHAR2(255),
   USAGEPOS             NVARCHAR2(255),
   WAREHOUSE            NVARCHAR2(50),
   DEPT                 NVARCHAR2(50),
   constraint "PK_TB_PurchaseDetail" primary key (ID)
);

comment on table WM_PURCHASEDETAIL is
'��������ϸ';

comment on column WM_PURCHASEDETAIL.PURCHASEHEAD_ID is
'������ͷ';

comment on column WM_PURCHASEDETAIL.OPERATIONTYPE is
'��������(���������˻�)';

comment on column WM_PURCHASEDETAIL.ITEMNO is
'�������';

comment on column WM_PURCHASEDETAIL.ITEMNAME is
'��������';

comment on column WM_PURCHASEDETAIL.MAPNO is
'ͼ��';

comment on column WM_PURCHASEDETAIL.SPECIFICATION is
'����ͺ�';

comment on column WM_PURCHASEDETAIL.MATERIAL is
'����';

comment on column WM_PURCHASEDETAIL.ITEMBIGTYPE is
'��������';

comment on column WM_PURCHASEDETAIL.ITEMTYPE is
'�������';

comment on column WM_PURCHASEDETAIL.UNIT is
'��λ';

comment on column WM_PURCHASEDETAIL.PRICE is
'����';

comment on column WM_PURCHASEDETAIL.QUANTITY is
'����';

comment on column WM_PURCHASEDETAIL.AMOUNT is
'���';

comment on column WM_PURCHASEDETAIL.SOURCE is
'��Դ';

comment on column WM_PURCHASEDETAIL.STORAGEPOS is
'��λ';

comment on column WM_PURCHASEDETAIL.USAGEPOS is
'ʹ��λ��';

comment on column WM_PURCHASEDETAIL.WAREHOUSE is
'�����ⷿ';

comment on column WM_PURCHASEDETAIL.DEPT is
'��������';

/*==============================================================*/
/* Table: WM_PURCHASEHEADER                                     */
/*==============================================================*/
create table WM_PURCHASEHEADER  (
   ID                   NUMBER(6)                       not null,
   HANDNO               NVARCHAR2(50),
   OPERATIONTYPE        CHAR(10),
   MANUFACTURE          NVARCHAR2(50),
   WAREHOUSE            NVARCHAR2(50),
   COSTCENTER           NVARCHAR2(50),
   NOTE                 NVARCHAR2(255),
   CREATEDATE           DATE,
   CREATOR              NVARCHAR2(50),
   CREATEYEAR           INTEGER,
   CREATEMONTH          INTEGER,
   PICKINGPEOPLE        NVARCHAR2(50),
   constraint "PK_TB_PurchaseHeader" primary key (ID)
);

comment on table WM_PURCHASEHEADER is
'�������ͷ';

comment on column WM_PURCHASEHEADER.HANDNO is
'�������';

comment on column WM_PURCHASEHEADER.OPERATIONTYPE is
'�������ͣ����������˻���';

comment on column WM_PURCHASEHEADER.MANUFACTURE is
'��Ӧ��';

comment on column WM_PURCHASEHEADER.WAREHOUSE is
'�ⷿ���';

comment on column WM_PURCHASEHEADER.COSTCENTER is
'�ɱ�����';

comment on column WM_PURCHASEHEADER.NOTE is
'��ע';

comment on column WM_PURCHASEHEADER.CREATEDATE is
'��������';

comment on column WM_PURCHASEHEADER.CREATOR is
'����Ա';

comment on column WM_PURCHASEHEADER.CREATEYEAR is
'��¼��';

comment on column WM_PURCHASEHEADER.CREATEMONTH is
'��¼��';

comment on column WM_PURCHASEHEADER.PICKINGPEOPLE is
'������';

/*==============================================================*/
/* Table: WM_REPORTANNUALCOSTDETAIL                             */
/*==============================================================*/
create table WM_REPORTANNUALCOSTDETAIL  (
   ID                   NUMBER(6)                       not null,
   HEADER_ID            INTEGER,
   REPORTYEAR           INTEGER,
   ITEMTYPE             NVARCHAR2(50),
   COSTCENTERORDEPT     NVARCHAR2(50),
   ONE                  NUMBER(8,2),
   TWO                  NUMBER(8,2),
   THREE                NUMBER(8,2),
   FOUR                 NUMBER(8,2),
   FIVE                 NUMBER(8,2),
   SIX                  NUMBER(8,2),
   SEVEN                NUMBER(8,2),
   EIGHT                NUMBER(8,2),
   NINE                 NUMBER(8,2),
   TEN                  NUMBER(8,2),
   ELEVEN               NUMBER(8,2),
   TWELVE               NUMBER(8,2),
   TOTAL                NUMBER(8,2),
   REPORTCODE           NVARCHAR2(50),
   constraint PK_WM_REPORTANNUALCOSTDETAIL primary key (ID)
);

comment on table WM_REPORTANNUALCOSTDETAIL is
'��ȳɱ�������ϸ��Ϣ';

comment on column WM_REPORTANNUALCOSTDETAIL.HEADER_ID is
'����ͷID';

comment on column WM_REPORTANNUALCOSTDETAIL.REPORTYEAR is
'�������';

comment on column WM_REPORTANNUALCOSTDETAIL.ITEMTYPE is
'�������';

comment on column WM_REPORTANNUALCOSTDETAIL.COSTCENTERORDEPT is
'�ɱ����Ļ���';

comment on column WM_REPORTANNUALCOSTDETAIL.ONE is
'�ܽ��';

comment on column WM_REPORTANNUALCOSTDETAIL.REPORTCODE is
'��������ݷ�����';

/*==============================================================*/
/* Table: WM_REPORTANNUALCOSTHEADER                             */
/*==============================================================*/
create table WM_REPORTANNUALCOSTHEADER  (
   ID                   NUMBER(6)                       not null,
   REPORTTYPE           INTEGER,
   REPORTTITLE          NVARCHAR2(50),
   REPORTYEAR           INTEGER,
   CREATEDATE           DATE,
   CREATOR              NVARCHAR2(50),
   NOTE                 NVARCHAR2(255),
   constraint "PK_TB_ReportAnnualCostHeader" primary key (ID)
);

comment on table WM_REPORTANNUALCOSTHEADER is
'��ȳɱ�����ͷ��Ϣ';

comment on column WM_REPORTANNUALCOSTHEADER.REPORTTYPE is
'�������ͣ�1Ϊȫ����û��ܱ���';

comment on column WM_REPORTANNUALCOSTHEADER.REPORTTITLE is
'�������';

comment on column WM_REPORTANNUALCOSTHEADER.REPORTYEAR is
'�������';

comment on column WM_REPORTANNUALCOSTHEADER.CREATEDATE is
'����������';

comment on column WM_REPORTANNUALCOSTHEADER.CREATOR is
'��������Ա';

comment on column WM_REPORTANNUALCOSTHEADER.NOTE is
'��ע';

/*==============================================================*/
/* Table: WM_REPORTDEPTCOST                                     */
/*==============================================================*/
create table WM_REPORTDEPTCOST  (
   ID                   NUMBER(6)                       not null,
   REPORTTITLE          NVARCHAR2(50),
   REPORTYEAR           INTEGER,
   REPORTMONTH          INTEGER,
   YEARMONTH            NVARCHAR2(50),
   DEPTNAME             NVARCHAR2(50),
   ITEMTYPE             NVARCHAR2(50),
   TOTALMONEY           DECIMAL,
   CREATEDATE           DATE,
   CREATOR              NVARCHAR2(50),
   NOTE                 NVARCHAR2(255),
   constraint "PK_TB_ReportDeptCost" primary key (ID)
);

comment on table WM_REPORTDEPTCOST is
'���ųɱ�����';

comment on column WM_REPORTDEPTCOST.REPORTTITLE is
'�������';

comment on column WM_REPORTDEPTCOST.REPORTYEAR is
'�������';

comment on column WM_REPORTDEPTCOST.REPORTMONTH is
'�����·�';

comment on column WM_REPORTDEPTCOST.YEARMONTH is
'��������';

comment on column WM_REPORTDEPTCOST.DEPTNAME is
'������Ŀ';

comment on column WM_REPORTDEPTCOST.ITEMTYPE is
'�������';

comment on column WM_REPORTDEPTCOST.TOTALMONEY is
'�ܽ��';

comment on column WM_REPORTDEPTCOST.CREATEDATE is
'����������';

comment on column WM_REPORTDEPTCOST.CREATOR is
'������';

comment on column WM_REPORTDEPTCOST.NOTE is
'��ע';

/*==============================================================*/
/* Table: WM_REPORTMONTHCHECKOUT                                */
/*==============================================================*/
create table WM_REPORTMONTHCHECKOUT  (
   ID                   NUMBER(6)                       not null,
   REPORTTYPE           INTEGER,
   REPORTTITLE          NVARCHAR2(50),
   REPORTYEAR           INTEGER,
   REPORTMONTH          INTEGER,
   YEARMONTH            NVARCHAR2(50),
   ITEMNAME             NVARCHAR2(50),
   LASTCOUNT            INTEGER,
   LASTMONEY            NUMBER(8,2),
   CURRENTINCOUNT       INTEGER,
   CURRENTINMONEY       NUMBER(8,2),
   CURRENTOUTCOUNT      INTEGER,
   CURRENTOUTMONEY      NUMBER(8,2),
   CURRENTCOUNT         INTEGER,
   CURRENTMONEY         NUMBER(8,2),
   CREATEDATE           DATE,
   CREATOR              NVARCHAR2(50),
   NOTE                 NVARCHAR2(255),
   constraint "PK_TB_ReportMonthCheckOut" primary key (ID)
);

comment on table WM_REPORTMONTHCHECKOUT is
'�ⷿ����±���';

comment on column WM_REPORTMONTHCHECKOUT.REPORTTYPE is
'�������ͣ�1Ϊ�ⷿ���Ž�棬2�ⷿ��棬3Ϊ��������Ŀⷿ��棬4Ϊ�������Ŀⷿ���';

comment on column WM_REPORTMONTHCHECKOUT.REPORTTITLE is
'�������';

comment on column WM_REPORTMONTHCHECKOUT.REPORTYEAR is
'�������';

comment on column WM_REPORTMONTHCHECKOUT.REPORTMONTH is
'�����·�';

comment on column WM_REPORTMONTHCHECKOUT.YEARMONTH is
'��������';

comment on column WM_REPORTMONTHCHECKOUT.ITEMNAME is
'��Ŀ����';

comment on column WM_REPORTMONTHCHECKOUT.LASTCOUNT is
'���½������';

comment on column WM_REPORTMONTHCHECKOUT.LASTMONEY is
'���½����';

comment on column WM_REPORTMONTHCHECKOUT.CURRENTINCOUNT is
'�����������';

comment on column WM_REPORTMONTHCHECKOUT.CURRENTINMONEY is
'���������';

comment on column WM_REPORTMONTHCHECKOUT.CURRENTOUTCOUNT is
'���³�������';

comment on column WM_REPORTMONTHCHECKOUT.CURRENTOUTMONEY is
'���³�����';

comment on column WM_REPORTMONTHCHECKOUT.CURRENTCOUNT is
'���½������';

comment on column WM_REPORTMONTHCHECKOUT.CURRENTMONEY is
'���½����';

comment on column WM_REPORTMONTHCHECKOUT.CREATEDATE is
'����������';

comment on column WM_REPORTMONTHCHECKOUT.CREATOR is
'��������Ա';

comment on column WM_REPORTMONTHCHECKOUT.NOTE is
'��ע';

/*==============================================================*/
/* Table: WM_REPORTMONTHLYCOSTDETAIL                            */
/*==============================================================*/
create table WM_REPORTMONTHLYCOSTDETAIL  (
   ID                   NUMBER(6)                       not null,
   HEADER_ID            INTEGER,
   REPORTYEAR           INTEGER,
   REPORTMONTH          INTEGER,
   YEARMONTH            NVARCHAR2(50),
   DEPTNAME             NVARCHAR2(50),
   ITEMTYPE             NVARCHAR2(50),
   TOTALMONEY           NUMBER(8,2),
   REPORTCODE           NVARCHAR2(50),
   constraint "PK_TB_ReportMonthlyCostDetail" primary key (ID)
);

comment on table WM_REPORTMONTHLYCOSTDETAIL is
'�±���ɱ���ϸ';

comment on column WM_REPORTMONTHLYCOSTDETAIL.HEADER_ID is
'����ͷID';

comment on column WM_REPORTMONTHLYCOSTDETAIL.REPORTYEAR is
'�������';

comment on column WM_REPORTMONTHLYCOSTDETAIL.REPORTMONTH is
'�����·�';

comment on column WM_REPORTMONTHLYCOSTDETAIL.YEARMONTH is
'��������';

comment on column WM_REPORTMONTHLYCOSTDETAIL.DEPTNAME is
'������Ŀ';

comment on column WM_REPORTMONTHLYCOSTDETAIL.ITEMTYPE is
'�������';

comment on column WM_REPORTMONTHLYCOSTDETAIL.TOTALMONEY is
'�ܽ��';

comment on column WM_REPORTMONTHLYCOSTDETAIL.REPORTCODE is
'��������ݷ�����';

create cluster  C_WM_REPORTMONTHLYDETAIL (
   ID		NUMBER
);

/*==============================================================*/
/* Table: WM_REPORTMONTHLYDETAIL                                */
/*==============================================================*/
create table WM_REPORTMONTHLYDETAIL  (
   ID                   NUMBER(6)                       not null,
   HEADER_ID            INTEGER,
   REPORTYEAR           INTEGER,
   REPORTMONTH          INTEGER,
   YEARMONTH            NVARCHAR2(50),
   ITEMNAME             NVARCHAR2(50),
   LASTCOUNT            INTEGER,
   LASTMONEY            NUMBER(8,2),
   CURRENTINCOUNT       INTEGER,
   CURRENTINMONEY       NUMBER(8,2),
   CURRENTOUTCOUNT      INTEGER,
   CURRENTOUTMONEY      NUMBER(8,2),
   CURRENTCOUNT         INTEGER,
   CURRENTMONEY         NUMBER(8,2),
   REPORTCODE           NVARCHAR2(50),
   constraint "PK_TB_ReportMonthlyDetail" primary key (ID)
);

comment on table WM_REPORTMONTHLYDETAIL is
'�±�����ϸ��Ϣ';

comment on column WM_REPORTMONTHLYDETAIL.HEADER_ID is
'����ͷID';

comment on column WM_REPORTMONTHLYDETAIL.REPORTYEAR is
'�������';

comment on column WM_REPORTMONTHLYDETAIL.REPORTMONTH is
'�����·�';

comment on column WM_REPORTMONTHLYDETAIL.YEARMONTH is
'��������';

comment on column WM_REPORTMONTHLYDETAIL.ITEMNAME is
'��Ŀ����';

comment on column WM_REPORTMONTHLYDETAIL.LASTCOUNT is
'���½������';

comment on column WM_REPORTMONTHLYDETAIL.LASTMONEY is
'���½����';

comment on column WM_REPORTMONTHLYDETAIL.CURRENTINCOUNT is
'�����������';

comment on column WM_REPORTMONTHLYDETAIL.CURRENTINMONEY is
'���������';

comment on column WM_REPORTMONTHLYDETAIL.CURRENTOUTCOUNT is
'���³�������';

comment on column WM_REPORTMONTHLYDETAIL.CURRENTOUTMONEY is
'���³�����';

comment on column WM_REPORTMONTHLYDETAIL.CURRENTCOUNT is
'���½������';

comment on column WM_REPORTMONTHLYDETAIL.CURRENTMONEY is
'���½����';

comment on column WM_REPORTMONTHLYDETAIL.REPORTCODE is
'��������ݷ�����';

/*==============================================================*/
/* Table: WM_REPORTMONTHLYHEADER                                */
/*==============================================================*/
create table WM_REPORTMONTHLYHEADER  (
   ID                   NUMBER(6)                       not null,
   REPORTTYPE           INTEGER,
   REPORTTITLE          NVARCHAR2(50),
   REPORTYEAR           INTEGER,
   REPORTMONTH          INTEGER,
   YEARMONTH            NVARCHAR2(50),
   CREATEDATE           DATE,
   CREATOR              NVARCHAR2(50),
   NOTE                 NVARCHAR2(255),
   constraint "PK_TB_ReportMonthlyHeader" primary key (ID)
);

comment on table WM_REPORTMONTHLYHEADER is
'�±���ͷ��Ϣ';

comment on column WM_REPORTMONTHLYHEADER.REPORTTYPE is
'�������ͣ�1Ϊ�ⷿ���Ž�棬2�ⷿ��棬3Ϊ���пⷿ��汨�������������࣬�������ͣ���4Ϊ����ɱ��±���';

comment on column WM_REPORTMONTHLYHEADER.REPORTTITLE is
'�������';

comment on column WM_REPORTMONTHLYHEADER.REPORTYEAR is
'�������';

comment on column WM_REPORTMONTHLYHEADER.REPORTMONTH is
'�����·�';

comment on column WM_REPORTMONTHLYHEADER.YEARMONTH is
'��������';

comment on column WM_REPORTMONTHLYHEADER.CREATEDATE is
'����������';

comment on column WM_REPORTMONTHLYHEADER.CREATOR is
'��������Ա';

comment on column WM_REPORTMONTHLYHEADER.NOTE is
'��ע';

/*==============================================================*/
/* Table: WM_STOCK                                              */
/*==============================================================*/
create table WM_STOCK  (
   ID                   NUMBER(6)                       not null,
   ITEMNO               NVARCHAR2(50),
   ITEMNAME             NVARCHAR2(50),
   ITEMBIGTYPE          NVARCHAR2(50),
   ITEMTYPE             NVARCHAR2(50),
   STOCKQUANTITY        INTEGER,
   STOCKMONEY           NVARCHAR2(50),
   LOWWARNING           INTEGER,
   HIGHWARNING          INTEGER,
   WAREHOUSE            NVARCHAR2(50),
   NOTE                 NVARCHAR2(255),
   constraint "PK_TB_Stock" primary key (ID)
);

comment on table WM_STOCK is
'�����Ϣ';

comment on column WM_STOCK.ITEMNO is
'�������';

comment on column WM_STOCK.ITEMNAME is
'��������';

comment on column WM_STOCK.ITEMBIGTYPE is
'��������';

comment on column WM_STOCK.ITEMTYPE is
'�������';

comment on column WM_STOCK.STOCKQUANTITY is
'�����';

comment on column WM_STOCK.STOCKMONEY is
'�����';

comment on column WM_STOCK.LOWWARNING is
'�ʹ�Ԥ��';

comment on column WM_STOCK.HIGHWARNING is
'����Ԥ��';

comment on column WM_STOCK.WAREHOUSE is
'�����ⷿ';

comment on column WM_STOCK.NOTE is
'��ע';

/*==============================================================*/
/* Table: WM_WAREHOUSE                                          */
/*==============================================================*/
create table WM_WAREHOUSE  (
   ID                   NUMBER(6)                       not null,
   NAME                 NVARCHAR2(50),
   MANAGER              NVARCHAR2(255),
   PHONE                NVARCHAR2(50),
   ADDRESS              NVARCHAR2(255),
   NOTE                 NVARCHAR2(255),
   RESERVED             NUMBER,
   constraint "PK_TB_WareHouse" primary key (ID)
);

comment on table WM_WAREHOUSE is
'�ⷿ��';

comment on column WM_WAREHOUSE.NAME is
'�ֿ�����';

comment on column WM_WAREHOUSE.MANAGER is
'�ֿ⸺����';

comment on column WM_WAREHOUSE.PHONE is
'��ϵ�绰';

comment on column WM_WAREHOUSE.ADDRESS is
'�ֿ��ַ';

comment on column WM_WAREHOUSE.NOTE is
'��ע';

comment on column WM_WAREHOUSE.RESERVED is
'�Ƿ���';



--����ģ�����ݿ��
/*==============================================================*/
/* Table: MPS_MAILATTACH                                        */
/*==============================================================*/
create table MPS_MAILATTACH  (
   ID                   NUMBER(6)                       not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   DOCTYPE              NVARCHAR2(10),
   CREATETIME           DATE,
   DOC_ID               INTEGER,
   FILENAME             NVARCHAR2(100),
   REALFILENAME         NVARCHAR2(100),
   FILESIZE             INTEGER,
   constraint PK_MPS_MAILATTACH primary key (ID)
);

comment on table MPS_MAILATTACH is
'���ͺͽ��ܵ��ʼ�������
(�ñ���ʹ�ã�ʹ��TB_FileUpload����д���)';

comment on column MPS_MAILATTACH.ID is
'���';

comment on column MPS_MAILATTACH.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILATTACH.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILATTACH.DOCTYPE is
'��������:�����ʼ�Ϊmail����ȡΪmailrcv';

comment on column MPS_MAILATTACH.CREATETIME is
'��������';

comment on column MPS_MAILATTACH.DOC_ID is
'��Ӧ���ʼ�ID,��mps_MailSend�е�ID';

comment on column MPS_MAILATTACH.FILENAME is
'�Ѻ���ʾ�ļ�����������·��';

comment on column MPS_MAILATTACH.REALFILENAME is
'����洢��ʵ���ļ���������·��';

comment on column MPS_MAILATTACH.FILESIZE is
'�ļ���С(byte)';

/*==============================================================*/
/* Table: MPS_MAILCONFIG                                        */
/*==============================================================*/
create table MPS_MAILCONFIG  (
   ID                   NUMBER(6)                       not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   EMAIL                NVARCHAR2(50),
   POP3SERVER           NVARCHAR2(50),
   POP3PORT             INTEGER                        default 110,
   SMTPSERVER           NVARCHAR2(50),
   SMTPPORT             INTEGER                        default 25,
   LOGINID              NVARCHAR2(50),
   PASSWORD             NVARCHAR2(50),
   USESSL               INTEGER                        default 0,
   ISDEFAULT            INTEGER                        default 0,
   CHECKOUT             INTEGER                        default 0,
   CREATETIME           DATE,
   constraint PK_MPS_MAILCONFIG primary key (ID)
);

comment on table MPS_MAILCONFIG is
'Ա���ʺű�';

comment on column MPS_MAILCONFIG.ID is
'�Զ����';

comment on column MPS_MAILCONFIG.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILCONFIG.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILCONFIG.EMAIL is
'�ʼ��ʺ�';

comment on column MPS_MAILCONFIG.POP3SERVER is
'POP3������';

comment on column MPS_MAILCONFIG.POP3PORT is
'POP3�˿�';

comment on column MPS_MAILCONFIG.SMTPSERVER is
'SMTP������';

comment on column MPS_MAILCONFIG.SMTPPORT is
'SMTP�˿�';

comment on column MPS_MAILCONFIG.LOGINID is
'��¼�˺�';

comment on column MPS_MAILCONFIG.PASSWORD is
'��¼����';

comment on column MPS_MAILCONFIG.USESSL is
'�Ƿ�ʹ��SSL��֤:0���ã�1��ҪSSL';

comment on column MPS_MAILCONFIG.ISDEFAULT is
'ȱʡ�ʺţ� 0��ʾfalse, 1��ʾtrue';

comment on column MPS_MAILCONFIG.CHECKOUT is
'�Ƿ�ǩ����ִ����ȡ������ʱ��ǩ��1,Ĭ��0Ϊ����״̬';

comment on column MPS_MAILCONFIG.CREATETIME is
'����ʱ��';

/*==============================================================*/
/* Table: MPS_MAILDETAIL                                        */
/*==============================================================*/
create table MPS_MAILDETAIL  (
   ID                   NUMBER(6)                       not null,
   USER_ID              INTEGER,
   COMPANY_ID           INTEGER,
   CATEGORY             NVARCHAR2(200),
   TITLE                NVARCHAR2(200),
   MAILBODY             CLOB,
   CREATETIME           DATE,
   constraint PK_MPS_MAILDETAIL primary key (ID)
);

comment on table MPS_MAILDETAIL is
'�ʼ���ϸ����';

comment on column MPS_MAILDETAIL.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILDETAIL.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILDETAIL.CATEGORY is
'�ʼ�����';

comment on column MPS_MAILDETAIL.TITLE is
'�ʼ�����';

comment on column MPS_MAILDETAIL.MAILBODY is
'�ʼ�����';

comment on column MPS_MAILDETAIL.CREATETIME is
'�ʼ�����';

/*==============================================================*/
/* Table: MPS_MAILRECEIVE                                       */
/*==============================================================*/
create table MPS_MAILRECEIVE  (
   ID                   NUMBER(6)                       not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   MAILCONFIG_ID        INTEGER,
   EMAIL                NVARCHAR2(50),
   MAILUID              NVARCHAR2(50),
   SENDDATE             DATE,
   TITLE                NVARCHAR2(200),
   MAILFROM             NVARCHAR2(200),
   SENDERS              NVARCHAR2(200),
   CARBONCOPY           NVARCHAR2(200),
   MAILBODY             CLOB,
   RECEIVEDDATE         DATE,
   ISDELETED            INTEGER                        default 0,
   STATUS               INTEGER                        default 0,
   DELETETIME           DATE,
   TRYCOUNT             INTEGER                        default 0,
   CHECKOUT             INTEGER,
   constraint PK_MPS_MAILRECEIVE primary key (ID)
);

comment on table MPS_MAILRECEIVE is
'�ʼ����ձ�';

comment on column MPS_MAILRECEIVE.ID is
'���';

comment on column MPS_MAILRECEIVE.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILRECEIVE.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILRECEIVE.MAILCONFIG_ID is
'�����˺�ID';

comment on column MPS_MAILRECEIVE.EMAIL is
'�����˺�';

comment on column MPS_MAILRECEIVE.MAILUID is
'�ʼ�Ψһ��ʶ';

comment on column MPS_MAILRECEIVE.SENDDATE is
'�ʼ���������';

comment on column MPS_MAILRECEIVE.TITLE is
'�ʼ�����';

comment on column MPS_MAILRECEIVE.MAILFROM is
'���͵�ַ';

comment on column MPS_MAILRECEIVE.SENDERS is
'���յ�ַ';

comment on column MPS_MAILRECEIVE.CARBONCOPY is
'����';

comment on column MPS_MAILRECEIVE.MAILBODY is
'�ʼ�����';

comment on column MPS_MAILRECEIVE.RECEIVEDDATE is
'�ʼ����յ�����ʱ��';

comment on column MPS_MAILRECEIVE.ISDELETED is
'ɾ����ǣ�Ĭ��Ϊ0��ɾ������1Ϊɾ�����������ʼ�����������������ɾ��״̬��';

comment on column MPS_MAILRECEIVE.STATUS is
'������ɾ��״̬��0=���� 1=�ɹ� -1=ʧ��';

comment on column MPS_MAILRECEIVE.DELETETIME is
'���ɾ��������ʱ��';

comment on column MPS_MAILRECEIVE.TRYCOUNT is
'ִ��ɾ�����ԵĴ���';

comment on column MPS_MAILRECEIVE.CHECKOUT is
'�Ƿ�ǩ����ִ��ɾ��������ʱ��ǩ��1,Ĭ��0Ϊ����״̬';

/*==============================================================*/
/* Table: MPS_MAILRECEIVETASK                                   */
/*==============================================================*/
create table MPS_MAILRECEIVETASK  (
   ID                   NUMBER(6)                       not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   MAILCONFIG_ID        INTEGER,
   constraint PK_MPS_MAILRECEIVETASK primary key (ID)
);

comment on table MPS_MAILRECEIVETASK is
'�ʼ����������';

comment on column MPS_MAILRECEIVETASK.ID is
'���';

comment on column MPS_MAILRECEIVETASK.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILRECEIVETASK.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILRECEIVETASK.MAILCONFIG_ID is
'�����˺�ID';

/*==============================================================*/
/* Table: MPS_MAILSEND                                          */
/*==============================================================*/
create table MPS_MAILSEND  (
   ID                   NUMBER(6)                       not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   MAILDETAIL_ID        INTEGER,
   CREATETIME           DATE,
   RECEIVERS            NVARCHAR2(200),
   CARBONCOPY           NVARCHAR2(200),
   USEMULTISENDJOB      INTEGER                        default 0,
   STATUS               INTEGER,
   REASON               NVARCHAR2(200),
   SENDTIME             DATE,
   TRYCOUNT             INTEGER                        default 0,
   CHECKOUT             INTEGER,
   MAILCONFIG_ID        NVARCHAR2(50),
   constraint PK_MPS_MAILSEND primary key (ID)
);

comment on table MPS_MAILSEND is
'�ʼ����ͱ�';

comment on column MPS_MAILSEND.ID is
'���';

comment on column MPS_MAILSEND.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILSEND.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILSEND.MAILDETAIL_ID is
'�ʼ��ĵ�ID';

comment on column MPS_MAILSEND.CREATETIME is
'�ʼ���������';

comment on column MPS_MAILSEND.RECEIVERS is
'�������������������� ;�ָ�';

comment on column MPS_MAILSEND.CARBONCOPY is
'������������������ ;�ָ�';

comment on column MPS_MAILSEND.USEMULTISENDJOB is
'ʹ�ö��˻���������0ΪĬ���˻����� 1Ϊ���˻�����';

comment on column MPS_MAILSEND.STATUS is
'״̬��1=���� 0=�ɹ� -1=ʧ��';

comment on column MPS_MAILSEND.REASON is
'ʧ��ԭ��';

comment on column MPS_MAILSEND.SENDTIME is
'�����ʱ��';

comment on column MPS_MAILSEND.TRYCOUNT is
'���ԵĴ���';

comment on column MPS_MAILSEND.CHECKOUT is
'�Ƿ�ǩ����ִ�з��Ͳ�����ʱ��ǩ��1,Ĭ��0Ϊ����״̬';

comment on column MPS_MAILSEND.MAILCONFIG_ID is
'���͵��˺�����ID��Ϊ����ΪĬ���˻�';

/*==============================================================*/
/* Table: MPS_MAILSENDHISTORY                                   */
/*==============================================================*/
create table MPS_MAILSENDHISTORY  (
   ID                   INTEGER                         not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   MAILDETAIL_ID        INTEGER,
   CREATETIME           DATE,
   RECEIVERS            NVARCHAR2(200),
   CARBONCOPY           NVARCHAR2(200),
   USEMULTISENDJOB      INTEGER                        default 0,
   STATUS               INTEGER,
   REASON               NVARCHAR2(200),
   SENDTIME             DATE,
   TRYCOUNT             INTEGER                        default 0,
   CHECKOUT             INTEGER,
   constraint PK_MPS_MAILSENDHISTORY primary key (ID)
);

comment on table MPS_MAILSENDHISTORY is
'�ʼ����ͱ���ʷ���ɹ���¼��';

comment on column MPS_MAILSENDHISTORY.ID is
'���';

comment on column MPS_MAILSENDHISTORY.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILSENDHISTORY.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILSENDHISTORY.MAILDETAIL_ID is
'�ʼ��ĵ�ID';

comment on column MPS_MAILSENDHISTORY.CREATETIME is
'�ʼ���������';

comment on column MPS_MAILSENDHISTORY.RECEIVERS is
'��������������������;�ָ�';

comment on column MPS_MAILSENDHISTORY.CARBONCOPY is
'������������������ ;�ָ�';

comment on column MPS_MAILSENDHISTORY.USEMULTISENDJOB is
'ʹ�ö��˻���������0ΪĬ���˻����� 1Ϊ���˻�����';

comment on column MPS_MAILSENDHISTORY.STATUS is
'״̬��1=���� 0=�ɹ� -1=ʧ��';

comment on column MPS_MAILSENDHISTORY.REASON is
'ʧ��ԭ��';

comment on column MPS_MAILSENDHISTORY.SENDTIME is
'�����ʱ��';

comment on column MPS_MAILSENDHISTORY.TRYCOUNT is
'���ԵĴ���';

comment on column MPS_MAILSENDHISTORY.CHECKOUT is
'�Ƿ�ǩ����ִ�з��Ͳ�����ʱ��ǩ��1,Ĭ��0Ϊ����״̬';

/*==============================================================*/
/* Table: MPS_MAILUNIFIEDCONFIG                                 */
/*==============================================================*/
create table MPS_MAILUNIFIEDCONFIG  (
   ID                   NUMBER(6)                       not null,
   COMPANY_ID           INTEGER,
   USER_ID              INTEGER,
   UNIFIEDREPLYTO       NVARCHAR2(100),
   NOFITYEMAIL          NVARCHAR2(100),
   UNIFIEDDISPLAYNAME   NVARCHAR2(100),
   EMAILTAIL            NVARCHAR2(255),
   HTMLALTERNATETEXT    NVARCHAR2(255),
   constraint PK_MPS_MAILUNIFIEDCONFIG primary key (ID)
);

comment on table MPS_MAILUNIFIEDCONFIG is
'�ʼ�ͳһ���͵�������Ϣ';

comment on column MPS_MAILUNIFIEDCONFIG.ID is
'���';

comment on column MPS_MAILUNIFIEDCONFIG.COMPANY_ID is
'��ҵ��ʶ';

comment on column MPS_MAILUNIFIEDCONFIG.USER_ID is
'Ա����ʶ';

comment on column MPS_MAILUNIFIEDCONFIG.UNIFIEDREPLYTO is
'ͳһ�ظ���ַ';

comment on column MPS_MAILUNIFIEDCONFIG.NOFITYEMAIL is
'��ִ��Ϣ֪ͨ�ʼ���ַ';

comment on column MPS_MAILUNIFIEDCONFIG.UNIFIEDDISPLAYNAME is
'�˻�������ʾ����';

comment on column MPS_MAILUNIFIEDCONFIG.EMAILTAIL is
'�ʼ�β����Ϣ';

comment on column MPS_MAILUNIFIEDCONFIG.HTMLALTERNATETEXT is
'HTML�ʼ����ı�˵��';



----ͨѶ¼��Ա����ű�
/*==============================================================*/
/* Table: TB_ADDRESS                                            */
/*==============================================================*/
create table TB_ADDRESS  (
   ID                   NVARCHAR2(50)                   not null,
   ADDRESSTYPE          NVARCHAR2(50)                  default '0',
   NAME                 NVARCHAR2(255),
   SEX                  NVARCHAR2(50),
   BIRTHDATE            DATE,
   MOBILE               NVARCHAR2(255),
   EMAIL                NVARCHAR2(50),
   QQ                   NVARCHAR2(50),
   HOMETELEPHONE        NVARCHAR2(255),
   OFFICETELEPHONE      NVARCHAR2(255),
   HOMEADDRESS          NVARCHAR2(255),
   OFFICEADDRESS        NVARCHAR2(255),
   FAX                  NVARCHAR2(50),
   COMPANY              NVARCHAR2(255),
   DEPT                 NVARCHAR2(255),
   OTHER                CLOB,
   NOTE                 CLOB,
   CREATOR              NVARCHAR2(50),
   CREATETIME           DATE,
   EDITOR               NVARCHAR2(50),
   EDITTIME             DATE,
   DEPT_ID              NVARCHAR2(50),
   COMPANY_ID           NVARCHAR2(50),
   constraint PK_TB_ADDRESS primary key (ID)
);

comment on table TB_ADDRESS is
'ͨѶ¼��ϵ��';

comment on column TB_ADDRESS.ADDRESSTYPE is
'ͨѶ¼����[����,��˾]';

comment on column TB_ADDRESS.NAME is
'����';

comment on column TB_ADDRESS.SEX is
'�Ա�';

comment on column TB_ADDRESS.BIRTHDATE is
'��������';

comment on column TB_ADDRESS.MOBILE is
'�ֻ�';

comment on column TB_ADDRESS.EMAIL is
'��������';

comment on column TB_ADDRESS.QQ is
'QQ';

comment on column TB_ADDRESS.HOMETELEPHONE is
'��ͥ�绰';

comment on column TB_ADDRESS.OFFICETELEPHONE is
'�칫�绰';

comment on column TB_ADDRESS.HOMEADDRESS is
'��ͥסַ';

comment on column TB_ADDRESS.OFFICEADDRESS is
'�칫��ַ';

comment on column TB_ADDRESS.FAX is
'�������';

comment on column TB_ADDRESS.COMPANY is
'��˾��λ';

comment on column TB_ADDRESS.DEPT is
'����';

comment on column TB_ADDRESS.OTHER is
'����';

comment on column TB_ADDRESS.NOTE is
'��ע';

comment on column TB_ADDRESS.CREATOR is
'������';

comment on column TB_ADDRESS.CREATETIME is
'����ʱ��';

comment on column TB_ADDRESS.EDITOR is
'�༭��';

comment on column TB_ADDRESS.EDITTIME is
'�༭ʱ��';

comment on column TB_ADDRESS.DEPT_ID is
'��������';

comment on column TB_ADDRESS.COMPANY_ID is
'������˾';

/*==============================================================*/
/* Table: TB_ADDRESSGROUP                                       */
/*==============================================================*/
create table TB_ADDRESSGROUP  (
   ID                   NVARCHAR2(50)                   not null,
   PID                  NVARCHAR2(50),
   ADDRESSTYPE          NVARCHAR2(50)                  default '0',
   NAME                 NVARCHAR2(255),
   NOTE                 CLOB,
   SEQ                  NVARCHAR2(50),
   CREATOR              NVARCHAR2(50),
   CREATETIME           DATE,
   EDITOR               NVARCHAR2(50),
   EDITTIME             DATE,
   DEPT_ID              NVARCHAR2(50),
   COMPANY_ID           NVARCHAR2(50),
   constraint PK_TB_ADDRESSGROUP primary key (ID)
);

comment on table TB_ADDRESSGROUP is
'ͨѶ¼����';

comment on column TB_ADDRESSGROUP.PID is
'��ID';

comment on column TB_ADDRESSGROUP.ADDRESSTYPE is
'ͨѶ¼����[����,��˾]';

comment on column TB_ADDRESSGROUP.NAME is
'��������';

comment on column TB_ADDRESSGROUP.NOTE is
'��ע';

comment on column TB_ADDRESSGROUP.SEQ is
'�������';

comment on column TB_ADDRESSGROUP.CREATOR is
'������';

comment on column TB_ADDRESSGROUP.CREATETIME is
'����ʱ��';

comment on column TB_ADDRESSGROUP.EDITOR is
'�༭��';

comment on column TB_ADDRESSGROUP.EDITTIME is
'�༭ʱ��';

comment on column TB_ADDRESSGROUP.DEPT_ID is
'��������';

comment on column TB_ADDRESSGROUP.COMPANY_ID is
'������˾';

/*==============================================================*/
/* Table: TB_ADDRESSGROUP_ADDRESS                               */
/*==============================================================*/
create table TB_ADDRESSGROUP_ADDRESS  (
   GROUP_ID             NVARCHAR2(50)                   not null,
   ADDRESS_ID           NVARCHAR2(50)                   not null,
   constraint PK_TB_ADDRESSGROUP_ADDRESS primary key (GROUP_ID, ADDRESS_ID)
);

comment on table TB_ADDRESSGROUP_ADDRESS is
'ͨѶ¼�������ϵ�˹�����';


----��Ա�����ű�
/*==============================================================*/
/* Table: TB_STAFF                                              */
/*==============================================================*/
create table TB_STAFF  (
   ID                   NVARCHAR2(50)                   not null,
   NAME                 NVARCHAR2(50),
   SEX                  NVARCHAR2(50),
   BIRTHDATE            DATE,
   POLITICAL            NVARCHAR2(50),
   PARTYDATE            DATE,
   NATIONALITY          NVARCHAR2(50),
   NATIVEPLACE          NVARCHAR2(150),
   OFFICIALRANK         NVARCHAR2(50),
   SERVINGDATE          NVARCHAR2(50),
   WORKINGDATE          NVARCHAR2(50),
   HIGHESTEDUCATION     NVARCHAR2(50),
   EDUCATIONDATE        NVARCHAR2(50),
   HIGHESTDEGREE        NVARCHAR2(50),
   DEGREEDATE           NVARCHAR2(50),
   MARRIAGESTATUS       NVARCHAR2(50),
   TITLES               NVARCHAR2(50),
   TITLESDATE           NVARCHAR2(50),
   CHILDSTATUS          NVARCHAR2(50),
   USERIDENTITY         NVARCHAR2(50),
   EMAIL                NVARCHAR2(50),
   MOBILE               NVARCHAR2(50),
   OFFICEPHONE          NVARCHAR2(50),
   HOMEPHONE            NVARCHAR2(50),
   ACADEMIC             CLOB,
   RESEARCH             CLOB,
   INTRODUCE            CLOB,
   NOTE                 CLOB,
   PORTRAINT            CLOB,
   ATTACHGUID           NVARCHAR2(50),
   CHECKUSER            NVARCHAR2(50),
   CREATOR              NVARCHAR2(50),
   CREATETIME           DATE,
   EDITOR               NVARCHAR2(50),
   EDITTIME             DATE,
   DEPT_ID              NVARCHAR2(50),
   COMPANY_ID           NVARCHAR2(50),
   constraint PK_TB_STAFF primary key (ID)
);

comment on table TB_STAFF is
'��Ա������Ϣ';

comment on column TB_STAFF.NAME is
'����';

comment on column TB_STAFF.SEX is
'�Ա�';

comment on column TB_STAFF.BIRTHDATE is
'����ʱ��';

comment on column TB_STAFF.POLITICAL is
'������ò';

comment on column TB_STAFF.PARTYDATE is
'����ʱ��';

comment on column TB_STAFF.NATIONALITY is
'����';

comment on column TB_STAFF.NATIVEPLACE is
'����';

comment on column TB_STAFF.OFFICIALRANK is
'ְ��';

comment on column TB_STAFF.SERVINGDATE is
'��ְʱ��';

comment on column TB_STAFF.WORKINGDATE is
'����ʱ��';

comment on column TB_STAFF.HIGHESTEDUCATION is
'���ѧ��';

comment on column TB_STAFF.EDUCATIONDATE is
'��ѧ��ʱ��';

comment on column TB_STAFF.HIGHESTDEGREE is
'���ѧλ';

comment on column TB_STAFF.DEGREEDATE is
'��ѧλʱ��';

comment on column TB_STAFF.MARRIAGESTATUS is
'���';

comment on column TB_STAFF.TITLES is
'ְ��';

comment on column TB_STAFF.TITLESDATE is
'ְ��ʱ��';

comment on column TB_STAFF.CHILDSTATUS is
'�Ƿ������Ů';

comment on column TB_STAFF.USERIDENTITY is
'���';

comment on column TB_STAFF.EMAIL is
'��������';

comment on column TB_STAFF.MOBILE is
'�ֻ�';

comment on column TB_STAFF.OFFICEPHONE is
'�칫�绰';

comment on column TB_STAFF.HOMEPHONE is
'��ͥ�绰';

comment on column TB_STAFF.ACADEMIC is
'ѧ����ְ';

comment on column TB_STAFF.RESEARCH is
'�о�����';

comment on column TB_STAFF.INTRODUCE is
'���˽���';

comment on column TB_STAFF.NOTE is
'��ע��Ϣ';

comment on column TB_STAFF.PORTRAINT is
'������Ƭ';

comment on column TB_STAFF.ATTACHGUID is
'��������';

comment on column TB_STAFF.CHECKUSER is
'���Ϻ˶�';

comment on column TB_STAFF.CREATOR is
'������';

comment on column TB_STAFF.CREATETIME is
'����ʱ��';

comment on column TB_STAFF.EDITOR is
'�༭��';

comment on column TB_STAFF.EDITTIME is
'�༭ʱ��';

comment on column TB_STAFF.DEPT_ID is
'��������';

comment on column TB_STAFF.COMPANY_ID is
'������˾';

/*==============================================================*/
/* Table: TB_STAFFABROAD                                        */
/*==============================================================*/
create table TB_STAFFABROAD  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   COUNTRY              NVARCHAR2(255),
   SERVEUNIT            NVARCHAR2(255),
   ABROADTYPE           NVARCHAR2(50),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFABROAD primary key (ID)
);

comment on table TB_STAFFABROAD is
'��Ա�������';

comment on column TB_STAFFABROAD.STAFF_ID is
'��ԱID';

comment on column TB_STAFFABROAD.STARTDATE is
'��ʼ����';

comment on column TB_STAFFABROAD.ENDDATE is
'��ֹ����';

comment on column TB_STAFFABROAD.COUNTRY is
'����';

comment on column TB_STAFFABROAD.SERVEUNIT is
'������ѧϰ����λ';

comment on column TB_STAFFABROAD.ABROADTYPE is
'��������';

comment on column TB_STAFFABROAD.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFAWARD                                         */
/*==============================================================*/
create table TB_STAFFAWARD  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   NOTE                 BLOB,
   ATTACHGUID           NVARCHAR2(50),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFAWARD primary key (ID)
);

comment on table TB_STAFFAWARD is
'��Ա�ܽ����';

comment on column TB_STAFFAWARD.STAFF_ID is
'��ԱID';

comment on column TB_STAFFAWARD.NOTE is
'�ܽ����';

comment on column TB_STAFFAWARD.ATTACHGUID is
'�������';

comment on column TB_STAFFAWARD.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFBUSINESSTRIP                                  */
/*==============================================================*/
create table TB_STAFFBUSINESSTRIP  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50)                   not null,
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   DESTINATION          NVARCHAR2(255),
   COUNTRY              NVARCHAR2(255),
   REASON               NVARCHAR2(255),
   NOTE                 CLOB,
   SEQ                  INTEGER,
   constraint PK_TB_STAFFBUSINESSTRIP primary key (ID)
);

comment on table TB_STAFFBUSINESSTRIP is
'��Ա�������';

comment on column TB_STAFFBUSINESSTRIP.STAFF_ID is
'��ԱID';

comment on column TB_STAFFBUSINESSTRIP.STARTDATE is
'��ʼ����';

comment on column TB_STAFFBUSINESSTRIP.ENDDATE is
'��ֹ����';

comment on column TB_STAFFBUSINESSTRIP.DESTINATION is
'����Ŀ�ĵ�';

comment on column TB_STAFFBUSINESSTRIP.COUNTRY is
'����';

comment on column TB_STAFFBUSINESSTRIP.REASON is
'����ԭ��';

comment on column TB_STAFFBUSINESSTRIP.NOTE is
'��ע';

comment on column TB_STAFFBUSINESSTRIP.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFFAMILY                                        */
/*==============================================================*/
create table TB_STAFFFAMILY  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   NAME                 NVARCHAR2(50),
   RELATION             NVARCHAR2(50),
   SEX                  NVARCHAR2(50),
   BIRTHDATE            DATE,
   POLITICAL            NVARCHAR2(50),
   SERVEUNIT            NVARCHAR2(255),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFFAMILY primary key (ID)
);

comment on table TB_STAFFFAMILY is
'��Ա��ͥ���';

comment on column TB_STAFFFAMILY.STAFF_ID is
'��ԱID';

comment on column TB_STAFFFAMILY.NAME is
'����';

comment on column TB_STAFFFAMILY.RELATION is
'��ϵ';

comment on column TB_STAFFFAMILY.SEX is
'�Ա�';

comment on column TB_STAFFFAMILY.BIRTHDATE is
'����ʱ��';

comment on column TB_STAFFFAMILY.POLITICAL is
'������ò';

comment on column TB_STAFFFAMILY.SERVEUNIT is
'������ѧϰ����λ';

comment on column TB_STAFFFAMILY.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFPICTURE                                       */
/*==============================================================*/
create table TB_STAFFPICTURE  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   CATEGORY             NVARCHAR2(50),
   NOTE                 CLOB,
   ATTACHGUID           NVARCHAR2(50),
   constraint PK_TB_STAFFPICTURE primary key (ID)
);

comment on table TB_STAFFPICTURE is
'��ԱͼƬ��Ϣ';

comment on column TB_STAFFPICTURE.STAFF_ID is
'��ԱID';

comment on column TB_STAFFPICTURE.CATEGORY is
'���';

comment on column TB_STAFFPICTURE.NOTE is
'˵����Ϣ';

comment on column TB_STAFFPICTURE.ATTACHGUID is
'�������';

/*==============================================================*/
/* Table: TB_STAFFRESEARCH                                      */
/*==============================================================*/
create table TB_STAFFRESEARCH  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   CATEGORY             NVARCHAR2(50),
   NOTE                 CLOB,
   ATTACHGUID           NVARCHAR2(50),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFRESEARCH primary key (ID)
);

comment on table TB_STAFFRESEARCH is
'��Ա�������';

comment on column TB_STAFFRESEARCH.STAFF_ID is
'��ԱID';

comment on column TB_STAFFRESEARCH.CATEGORY is
'��𣨻񽱡����⡢ר�������£�';

comment on column TB_STAFFRESEARCH.NOTE is
'�������';

comment on column TB_STAFFRESEARCH.ATTACHGUID is
'�������';

comment on column TB_STAFFRESEARCH.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFRESUME                                        */
/*==============================================================*/
create table TB_STAFFRESUME  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   SERVECOMPANY         NVARCHAR2(255),
   OFFICERANK           NVARCHAR2(50),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFRESUME primary key (ID)
);

comment on table TB_STAFFRESUME is
'��Ա�������';

comment on column TB_STAFFRESUME.STAFF_ID is
'��ԱID';

comment on column TB_STAFFRESUME.STARTDATE is
'��ʼ����';

comment on column TB_STAFFRESUME.ENDDATE is
'��ҵ����';

comment on column TB_STAFFRESUME.SERVECOMPANY is
'������λ';

comment on column TB_STAFFRESUME.OFFICERANK is
'ְ��';

comment on column TB_STAFFRESUME.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFROTATION                                      */
/*==============================================================*/
create table TB_STAFFROTATION  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50)                   not null,
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   DEPARTMENT           NVARCHAR2(255),
   SUBSPECIALTY         NVARCHAR2(255),
   WITNESS              NVARCHAR2(50),
   WITNESSPHONE         NVARCHAR2(50),
   NOTE                 CLOB,
   SEQ                  INTEGER,
   constraint PK_TB_STAFFROTATION primary key (ID)
);

comment on table TB_STAFFROTATION is
'��Ա��ת��';

comment on column TB_STAFFROTATION.STAFF_ID is
'��ԱID';

comment on column TB_STAFFROTATION.STARTDATE is
'��ʼ����';

comment on column TB_STAFFROTATION.ENDDATE is
'��ֹ����';

comment on column TB_STAFFROTATION.DEPARTMENT is
'��ת����';

comment on column TB_STAFFROTATION.SUBSPECIALTY is
'��ת��רҵ';

comment on column TB_STAFFROTATION.WITNESS is
'֤����';

comment on column TB_STAFFROTATION.WITNESSPHONE is
'֤���˵绰';

comment on column TB_STAFFROTATION.NOTE is
'��ע';

comment on column TB_STAFFROTATION.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFSTUDY                                         */
/*==============================================================*/
create table TB_STAFFSTUDY  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   SCHOOL               NVARCHAR2(255),
   SPECIALTY            NVARCHAR2(50),
   EDUCATION            NVARCHAR2(50),
   DEGREE               NVARCHAR2(50),
   ISFULLTIME           NVARCHAR2(50),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFSTUDY primary key (ID)
);

comment on table TB_STAFFSTUDY is
'��Աѧϰ���';

comment on column TB_STAFFSTUDY.STAFF_ID is
'��ԱID';

comment on column TB_STAFFSTUDY.STARTDATE is
'��ʼ����';

comment on column TB_STAFFSTUDY.ENDDATE is
'��ֹ����';

comment on column TB_STAFFSTUDY.SCHOOL is
'��ҵԺУ';

comment on column TB_STAFFSTUDY.SPECIALTY is
'��ѧרҵ';

comment on column TB_STAFFSTUDY.EDUCATION is
'ѧ��';

comment on column TB_STAFFSTUDY.DEGREE is
'ѧλ';

comment on column TB_STAFFSTUDY.ISFULLTIME is
'�Ƿ�ȫ����';

comment on column TB_STAFFSTUDY.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFTITLES                                        */
/*==============================================================*/
create table TB_STAFFTITLES  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50)                   not null,
   TITLES               NVARCHAR2(255),
   OBTAINDATE           NVARCHAR2(50),
   APPOINTDATE          NVARCHAR2(50),
   SEQ                  INTEGER,
   constraint PK_TB_STAFFTITLES primary key (ID)
);

comment on table TB_STAFFTITLES is
'��Աְ�����';

comment on column TB_STAFFTITLES.STAFF_ID is
'��ԱID';

comment on column TB_STAFFTITLES.TITLES is
'ְ��';

comment on column TB_STAFFTITLES.OBTAINDATE is
'ȡ���ʸ�����';

comment on column TB_STAFFTITLES.APPOINTDATE is
'��������';

comment on column TB_STAFFTITLES.SEQ is
'���';

/*==============================================================*/
/* Table: TB_STAFFVACATION                                      */
/*==============================================================*/
create table TB_STAFFVACATION  (
   ID                   NVARCHAR2(50)                   not null,
   STAFF_ID             NVARCHAR2(50),
   STARTDATE            NVARCHAR2(50),
   ENDDATE              NVARCHAR2(50),
   VACATIONLOCATION     NVARCHAR2(255),
   COUNTRY              NVARCHAR2(255),
   EMERGENCYPHONE       NVARCHAR2(50),
   NOTE                 CLOB,
   SEQ                  INTEGER,
   constraint PK_TB_STAFFVACATION primary key (ID)
);

comment on table TB_STAFFVACATION is
'��Ա�ݼ����';

comment on column TB_STAFFVACATION.STAFF_ID is
'��ԱID';

comment on column TB_STAFFVACATION.STARTDATE is
'��ʼ����';

comment on column TB_STAFFVACATION.ENDDATE is
'��ֹ����';

comment on column TB_STAFFVACATION.VACATIONLOCATION is
'�ݼٵص�';

comment on column TB_STAFFVACATION.COUNTRY is
'����';

comment on column TB_STAFFVACATION.EMERGENCYPHONE is
'������ϵ�绰';

comment on column TB_STAFFVACATION.NOTE is
'��ע';

comment on column TB_STAFFVACATION.SEQ is
'���';


/*==============================================================*/
/* Table: T_Customer                                          */
/*==============================================================*/
create table T_CUSTOMER  (
   ID                   NVARCHAR2(50)                   not null,
   Name               NVARCHAR2(50),
   Age                INTEGER,
   Creator            NVARCHAR2(50),
   CreateTime         DATE,
   constraint PK_T_CUSTOMER primary key (ID)
);

comment on table T_CUSTOMER is
'�ͻ���Ϣ';

comment on column T_CUSTOMER.ID is
'���';

comment on column T_CUSTOMER.NAME is
'����';

comment on column T_CUSTOMER.AGE is
'����';

comment on column T_CUSTOMER.CREATOR is
'������';

comment on column T_CUSTOMER.CREATETIME is
'����ʱ��';



alter table TB_ADDRESSGROUP_ADDRESS
   add constraint FK_CONTACT_REF_GROUP foreign key (GROUP_ID)
      references TB_ADDRESSGROUP (ID);

alter table TB_ADDRESSGROUP_ADDRESS
   add constraint FK_TB_ADDRE_REFERENCE_TB_ADDRE foreign key (ADDRESS_ID)
      references TB_ADDRESS (ID);

alter table TB_STAFFABROAD
   add constraint "FK_TB_STAFF_REF_TB_STAFFAbroad" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFAWARD
   add constraint "FK_TB_STAFF_REF_TB_STAFFAward" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFBUSINESSTRIP
   add constraint "FK_TB_STAFFTrip_REF_TB_STAFF" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFFAMILY
   add constraint "FK_TB_STAFF_REF_TB_STAFFFamily" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFPICTURE
   add constraint FK_TB_STAFF_REF_STAFFPICTURE foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFRESEARCH
   add constraint "FK_TB_STAFF_REF_STAFFResearch" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFRESUME
   add constraint "FK_TB_STAFF_REF_STAFFResume" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFROTATION
   add constraint "FK_TB_STAFFRotation_REF_STAFF" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFSTUDY
   add constraint "FK_TB_STAFF_REF_STAFFStudy" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFTITLES
   add constraint "FK_TB_STAFF_REF_STAFFTitles" foreign key (STAFF_ID)
      references TB_STAFF (ID);

alter table TB_STAFFVACATION
   add constraint "FK_TB_STAFFVacation_REF_STAFF" foreign key (STAFF_ID)
      references TB_STAFF (ID);
