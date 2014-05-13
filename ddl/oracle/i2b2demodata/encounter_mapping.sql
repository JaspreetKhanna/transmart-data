--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: ENCOUNTER_MAPPING
--
 CREATE TABLE "I2B2DEMODATA"."ENCOUNTER_MAPPING" 
  (	"ENCOUNTER_IDE" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
"ENCOUNTER_IDE_SOURCE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"ENCOUNTER_NUM" NUMBER(38,0) NOT NULL ENABLE, 
"PATIENT_IDE" VARCHAR2(200 BYTE), 
"PATIENT_IDE_SOURCE" VARCHAR2(50 BYTE), 
"ENCOUNTER_IDE_STATUS" VARCHAR2(50 BYTE), 
"UPDATE_DATE" DATE, 
"UPLOAD_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER(38,0),
 CONSTRAINT "ENCOUNTER_MAPPING_PK" PRIMARY KEY ("ENCOUNTER_IDE", "ENCOUNTER_IDE_SOURCE")
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS NOLOGGING
 TABLESPACE "I2B2_DATA" ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: EM_IDX_ENCPATH
--
CREATE INDEX "I2B2DEMODATA"."EM_IDX_ENCPATH" ON "I2B2DEMODATA"."ENCOUNTER_MAPPING" ("ENCOUNTER_IDE", "ENCOUNTER_IDE_SOURCE", "PATIENT_IDE", "PATIENT_IDE_SOURCE", "ENCOUNTER_NUM")
TABLESPACE "I2B2_DATA" ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: EM_ENCNUM_IDX
--
CREATE INDEX "I2B2DEMODATA"."EM_ENCNUM_IDX" ON "I2B2DEMODATA"."ENCOUNTER_MAPPING" ("ENCOUNTER_NUM")
TABLESPACE "I2B2_DATA" ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: EM_UPLOADID_IDX
--
CREATE INDEX "I2B2DEMODATA"."EM_UPLOADID_IDX" ON "I2B2DEMODATA"."ENCOUNTER_MAPPING" ("UPLOAD_ID")
TABLESPACE "I2B2_DATA" ;
