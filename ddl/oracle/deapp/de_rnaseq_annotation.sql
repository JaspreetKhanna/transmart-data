--
-- Type: TABLE; Owner: DEAPP; Name: DE_RNASEQ_ANNOTATION
--
 CREATE TABLE "DEAPP"."DE_RNASEQ_ANNOTATION" 
  (	"GPL_ID" VARCHAR2(50 BYTE), 
"TRANSCRIPT_ID" VARCHAR2(50 BYTE), 
"GENE_SYMBOL" VARCHAR2(50 BYTE), 
"GENE_ID" VARCHAR2(50 BYTE), 
"ORGANISM" VARCHAR2(30 BYTE), 
"PROBESET_ID" NUMBER(38,0)
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS LOGGING
 TABLESPACE "DEAPP" ;
