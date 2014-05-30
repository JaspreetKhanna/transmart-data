--
-- Type: TABLE; Owner: DEAPP; Name: DE_VARIANT_DATASET
--
 CREATE TABLE "DEAPP"."DE_VARIANT_DATASET" 
  (	"DATASET_ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"DATASOURCE_ID" VARCHAR2(200 BYTE), 
"ETL_ID" VARCHAR2(20 BYTE), 
"ETL_DATE" DATE, 
"GENOME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"METADATA_COMMENT" CLOB, 
"VARIANT_DATASET_TYPE" VARCHAR2(50 BYTE), 
"GPL_ID" VARCHAR2(50 BYTE), 
 CONSTRAINT "DATASET_ID" PRIMARY KEY ("DATASET_ID")
 USING INDEX
 TABLESPACE "DEAPP"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "DEAPP" 
LOB ("METADATA_COMMENT") STORE AS BASICFILE (
 TABLESPACE "DEAPP" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;

--
-- Type: REF_CONSTRAINT; Owner: DEAPP; Name: GPL_ID
--
ALTER TABLE "DEAPP"."DE_VARIANT_DATASET" ADD CONSTRAINT "GPL_ID" FOREIGN KEY ("GPL_ID")
 REFERENCES "DEAPP"."DE_GPL_INFO" ("PLATFORM") ENABLE;

