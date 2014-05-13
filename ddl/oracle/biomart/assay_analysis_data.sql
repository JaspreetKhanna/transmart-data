--
-- Type: TABLE; Owner: BIOMART; Name: ASSAY_ANALYSIS_DATA
--
 CREATE TABLE "BIOMART"."ASSAY_ANALYSIS_DATA" 
  (	"BIO_ASY_ANALYSIS_DATA_ID" NUMBER(18,0), 
"BIO_EXPERIMENT_ID" NUMBER(18,0), 
"BIO_ASSAY_PLATFORM_ID" NUMBER(18,0), 
"BIO_ASSAY_ANALYSIS_ID" NUMBER(18,0), 
"BIO_ASSAY_FEATURE_GROUP_ID" NUMBER(18,0), 
"FEATURE_GROUP_NAME" VARCHAR2(100 BYTE), 
"TEA_NORMALIZED_PVALUE" NUMBER(18,5), 
"FOLD_CHANGE_RATIO" NUMBER, 
"RAW_PVALUE" NUMBER(18,5), 
"ADJUSTED_PVALUE" NUMBER(18,5), 
"PREFERRED_PVALUE" NUMBER(18,5)
  )
 TABLESPACE "BIOMART" 
 PARTITION BY HASH ("BIO_EXPERIMENT_ID") 
(PARTITION "SYS_P61" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P62" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P63" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P64" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P65" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P66" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P67" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P68" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P69" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS , 
PARTITION "SYS_P70" SEGMENT CREATION IMMEDIATE 
 TABLESPACE "BIOMART" 
NOCOMPRESS ) ;
