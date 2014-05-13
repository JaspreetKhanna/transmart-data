--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: CODE_LOOKUP
--
 CREATE TABLE "I2B2DEMODATA"."CODE_LOOKUP" 
  (	"TABLE_CD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
"COLUMN_CD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
"CODE_CD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"NAME_CHAR" VARCHAR2(650 BYTE), 
"LOOKUP_BLOB" CLOB, 
"UPLOAD_DATE" DATE, 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER(38,0), 
 CONSTRAINT "CODE_LOOKUP_PK" PRIMARY KEY ("TABLE_CD", "COLUMN_CD", "CODE_CD")
 USING INDEX
 TABLESPACE "I2B2_DATA"  ENABLE
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS NOLOGGING
 TABLESPACE "I2B2_DATA" 
LOB ("LOOKUP_BLOB") STORE AS BASICFILE (
 TABLESPACE "I2B2_DATA" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE NOLOGGING ) ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: CL_IDX_UPLOADID
--
CREATE INDEX "I2B2DEMODATA"."CL_IDX_UPLOADID" ON "I2B2DEMODATA"."CODE_LOOKUP" ("UPLOAD_ID")
TABLESPACE "I2B2_DATA" ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: CL_IDX_NAME_CHAR
--
CREATE INDEX "I2B2DEMODATA"."CL_IDX_NAME_CHAR" ON "I2B2DEMODATA"."CODE_LOOKUP" ("NAME_CHAR")
TABLESPACE "I2B2_DATA" ;
