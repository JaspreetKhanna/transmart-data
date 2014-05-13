--
-- Type: TABLE; Owner: I2B2METADATA; Name: TABLE_ACCESS
--
 CREATE TABLE "I2B2METADATA"."TABLE_ACCESS" 
  (	"C_TABLE_CD" VARCHAR2(65 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_TABLE_NAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_PROTECTED_ACCESS" CHAR(1 BYTE), 
"C_HLEVEL" NUMBER(22,0) NOT NULL ENABLE, --postgres NOT NULL
"C_FULLNAME" VARCHAR2(700 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_NAME" VARCHAR2(2000 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_SYNONYM_CD" CHAR(1 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_VISUALATTRIBUTES" CHAR(3 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_TOTALNUM" NUMBER(22,0), 
"C_BASECODE" VARCHAR2(50 BYTE), 
"C_METADATAXML" CLOB, 
"C_FACTTABLECOLUMN" VARCHAR2(50 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_DIMTABLENAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_COLUMNNAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_COLUMNDATATYPE" VARCHAR2(50 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_OPERATOR" VARCHAR2(10 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_DIMCODE" VARCHAR2(700 BYTE) NOT NULL ENABLE, --postgres NOT NULL
"C_COMMENT" CLOB, 
"C_TOOLTIP" VARCHAR2(900 BYTE), 
"C_ENTRY_DATE" DATE, 
"C_CHANGE_DATE" DATE, 
"C_STATUS_CD" CHAR(1 BYTE), 
"VALUETYPE_CD" VARCHAR2(50 BYTE),
CONSTRAINT "TABLE_ACCESS_PK" PRIMARY KEY ("C_TABLE_CD")
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS LOGGING
 TABLESPACE "I2B2_DATA" 
LOB ("C_METADATAXML") STORE AS BASICFILE (
 TABLESPACE "I2B2_DATA" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE LOGGING ) 
LOB ("C_COMMENT") STORE AS BASICFILE (
 TABLESPACE "I2B2_DATA" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE LOGGING ) ;
