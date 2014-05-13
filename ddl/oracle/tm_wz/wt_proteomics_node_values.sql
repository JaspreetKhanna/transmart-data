--
-- Type: TABLE; Owner: TM_WZ; Name: WT_PROTEOMICS_NODE_VALUES
--
 CREATE TABLE "TM_WZ"."WT_PROTEOMICS_NODE_VALUES" 
  (	"CATEGORY_CD" VARCHAR2(2000 BYTE), 
"PLATFORM" VARCHAR2(2000 BYTE), 
"TISSUE_TYPE" VARCHAR2(2000 BYTE), 
"ATTRIBUTE_1" VARCHAR2(2000 BYTE), 
"ATTRIBUTE_2" VARCHAR2(2000 BYTE), 
"TITLE" VARCHAR2(2000 BYTE), 
"TRANSFORM_METHOD" VARCHAR2(2000 BYTE)
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS LOGGING
 TABLESPACE "TRANSMART" ;
