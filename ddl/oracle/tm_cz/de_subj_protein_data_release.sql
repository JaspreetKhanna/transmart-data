--
-- Type: TABLE; Owner: TM_CZ; Name: DE_SUBJ_PROTEIN_DATA_RELEASE
--
 CREATE TABLE "TM_CZ"."DE_SUBJ_PROTEIN_DATA_RELEASE" 
  (	"TRIAL_NAME" VARCHAR2(15 BYTE), 
"COMPONENT" VARCHAR2(15 BYTE), 
"INTENSITY" NUMBER, 
"PATIENT_ID" NUMBER(38,0), 
"SUBJECT_ID" VARCHAR2(10 BYTE), 
"GENE_SYMBOL" VARCHAR2(100 BYTE), 
"GENE_ID" NUMBER(10,0), 
"ASSAY_ID" NUMBER, 
"TIMEPOINT" VARCHAR2(20 BYTE), 
"N_VALUE" NUMBER, 
"MEAN_INTENSITY" NUMBER, 
"STDDEV_INTENSITY" NUMBER, 
"MEDIAN_INTENSITY" NUMBER, 
"ZSCORE" NUMBER, 
"RELEASE_STUDY" VARCHAR2(15 BYTE)
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS NOLOGGING
 TABLESPACE "TRANSMART" ;
