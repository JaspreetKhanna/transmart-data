--
-- Type: TABLE; Owner: TM_LZ; Name: LT_SRC_STUDY_METADATA_ORIG
--
 CREATE TABLE "TM_LZ"."LT_SRC_STUDY_METADATA_ORIG" 
  (	"STUDY_TITLE" VARCHAR2(500 BYTE), 
"STUDY_DATE" VARCHAR2(50 BYTE), 
"STUDY_OWNER" VARCHAR2(500 BYTE), 
"STUDY_INSTITUTION" VARCHAR2(500 BYTE), 
"STUDY_COUNTRY" VARCHAR2(500 BYTE), 
"STUDY_RELATED_PUBLICATION" VARCHAR2(500 BYTE), 
"STUDY_DESCRIPTION" VARCHAR2(2000 BYTE), 
"STUDY_ACCESS_TYPE" VARCHAR2(500 BYTE), 
"STUDY_PHASE" VARCHAR2(500 BYTE), 
"STUDY_OBJECTIVE" VARCHAR2(2000 BYTE), 
"STUDY_BIOMARKER_TYPE" VARCHAR2(500 BYTE), 
"STUDY_COMPOUND" VARCHAR2(500 BYTE), 
"STUDY_DESIGN_FACTORS" VARCHAR2(2000 BYTE), 
"STUDY_NBR_SUBJECTS" VARCHAR2(20 BYTE), 
"STUDY_ORGANISM" VARCHAR2(500 BYTE), 
"STUDY_ID" VARCHAR2(50 BYTE)
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS LOGGING
 TABLESPACE "TRANSMART" ;
