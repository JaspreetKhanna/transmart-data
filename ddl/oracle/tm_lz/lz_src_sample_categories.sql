--
-- Type: TABLE; Owner: TM_LZ; Name: LZ_SRC_SAMPLE_CATEGORIES
--
 CREATE TABLE "TM_LZ"."LZ_SRC_SAMPLE_CATEGORIES" 
  (	"TRIAL_CD" VARCHAR2(200 BYTE), 
"SITE_CD" VARCHAR2(200 BYTE), 
"SUBJECT_CD" VARCHAR2(200 BYTE), 
"SAMPLE_CD" VARCHAR2(200 BYTE), 
"CATEGORY_CD" VARCHAR2(200 BYTE), 
"CATEGORY_VALUE" VARCHAR2(200 BYTE)
  ) SEGMENT CREATION DEFERRED
COMPRESS BASIC NOLOGGING
 TABLESPACE "TRANSMART" ;
