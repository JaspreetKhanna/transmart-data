--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_GENE_SIGNATURE_ITEM
--
 CREATE TABLE "SEARCHAPP"."SEARCH_GENE_SIGNATURE_ITEM" 
  (	"SEARCH_GENE_SIGNATURE_ID" NUMBER NOT NULL ENABLE, 
"BIO_MARKER_ID" NUMBER, 
"FOLD_CHG_METRIC" NUMBER, 
"BIO_DATA_UNIQUE_ID" NVARCHAR2(200), 
"ID" NUMBER NOT NULL ENABLE, 
"BIO_ASSAY_FEATURE_GROUP_ID" NUMBER(18,0), 
 CONSTRAINT "SEARCH_GENE_SIGNATURE_ITE_PK" PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS LOGGING
 TABLESPACE "BIOMART" ;
