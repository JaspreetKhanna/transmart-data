--
-- Type: TABLE; Owner: DEAPP; Name: DE_ENCOUNTER_TYPE
--
 CREATE TABLE "DEAPP"."DE_ENCOUNTER_TYPE" 
  (	"STUDY_ID" VARCHAR2(200 BYTE), 
"LINK_TYPE" VARCHAR2(50 BYTE), 
"LINK_VALUE" VARCHAR2(200 BYTE), 
"ENCOUNTER_NUM" NUMBER(38,0)
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "DEAPP" ;

