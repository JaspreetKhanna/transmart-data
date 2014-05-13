--
-- Type: TABLE; Owner: DEAPP; Name: DE_SNP_SUBJECT_SORTED_DEF_BK
--
 CREATE TABLE "DEAPP"."DE_SNP_SUBJECT_SORTED_DEF_BK" 
  (	"SNP_SUBJECT_SORTED_DEF_ID" NUMBER(22,0), 
"TRIAL_NAME" VARCHAR2(255 BYTE), 
"PATIENT_POSITION" NUMBER(5,0), 
"PATIENT_NUM" NUMBER, 
"SUBJECT_ID" VARCHAR2(255 BYTE)
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS LOGGING
 TABLESPACE "DEAPP" ;
