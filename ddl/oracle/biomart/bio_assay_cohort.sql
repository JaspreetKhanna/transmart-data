--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASSAY_COHORT
--
 CREATE TABLE "BIOMART"."BIO_ASSAY_COHORT" 
  (	"STUDY_ID" VARCHAR2(500 BYTE), 
"COHORT_ID" VARCHAR2(500 BYTE), 
"DISEASE" VARCHAR2(500 BYTE), 
"SAMPLE_TYPE" VARCHAR2(500 BYTE), 
"TREATMENT" VARCHAR2(500 BYTE), 
"ORGANISM" VARCHAR2(500 BYTE), 
"PATHOLOGY" VARCHAR2(500 BYTE), 
"COHORT_TITLE" VARCHAR2(500 BYTE), 
"SHORT_DESC" VARCHAR2(500 BYTE), 
"LONG_DESC" VARCHAR2(500 BYTE), 
"IMPORT_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
"BIO_ASSAY_COHORT_ID" NUMBER NOT NULL ENABLE, 
 CONSTRAINT "PK_BIO_ASSAY_COHORT" PRIMARY KEY ("BIO_ASSAY_COHORT_ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "BIOMART" ;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_ASSAY_COHORT_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_ASSAY_COHORT_ID" 
before insert on biomart.bio_assay_cohort
for each row begin
       	if inserting then
               	if :NEW.bio_assay_cohort_id is null then
                       	select seq_bio_data_id.nextval into :NEW.bio_assay_cohort_id from dual;
               	end if;
       	end if;
end;
/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASSAY_COHORT_ID" ENABLE;
 
