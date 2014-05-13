--
-- Type: TABLE; Owner: BIOMART; Name: BIO_LIT_INH_DATA
--
 CREATE TABLE "BIOMART"."BIO_LIT_INH_DATA" 
  (	"BIO_LIT_INH_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_LIT_REF_DATA_ID" NUMBER(18,0) NOT NULL DISABLE, 
"ETL_ID" NVARCHAR2(50), 
"TRIAL_TYPE" NVARCHAR2(250), 
"TRIAL_PHASE" NVARCHAR2(250), 
"TRIAL_STATUS" NVARCHAR2(250), 
"TRIAL_EXPERIMENTAL_MODEL" NVARCHAR2(250), 
"TRIAL_TISSUE" NVARCHAR2(250), 
"TRIAL_BODY_SUBSTANCE" NVARCHAR2(250), 
"TRIAL_DESCRIPTION" NVARCHAR2(1000), 
"TRIAL_DESIGNS" NVARCHAR2(250), 
"TRIAL_CELL_LINE" NVARCHAR2(250), 
"TRIAL_CELL_TYPE" NVARCHAR2(250), 
"TRIAL_PATIENTS_NUMBER" NVARCHAR2(100), 
"TRIAL_INCLUSION_CRITERIA" NVARCHAR2(2000), 
"INHIBITOR" NVARCHAR2(250), 
"INHIBITOR_STANDARD_NAME" NVARCHAR2(250), 
"CASID" NVARCHAR2(250), 
"DESCRIPTION" NVARCHAR2(1000), 
"CONCENTRATION" NVARCHAR2(250), 
"TIME_EXPOSURE" NVARCHAR2(500), 
"ADMINISTRATION" NVARCHAR2(250), 
"TREATMENT" NVARCHAR2(2000), 
"TECHNIQUES" NVARCHAR2(1000), 
"EFFECT_MOLECULAR" NVARCHAR2(250), 
"EFFECT_PERCENT" NVARCHAR2(250), 
"EFFECT_NUMBER" NVARCHAR2(50), 
"EFFECT_VALUE" NVARCHAR2(250), 
"EFFECT_SD" NVARCHAR2(250), 
"EFFECT_UNIT" NVARCHAR2(250), 
"EFFECT_RESPONSE_RATE" NVARCHAR2(250), 
"EFFECT_DOWNSTREAM" NVARCHAR2(2000), 
"EFFECT_BENEFICIAL" NVARCHAR2(2000), 
"EFFECT_ADVERSE" NVARCHAR2(2000), 
"EFFECT_DESCRIPTION" NVARCHAR2(2000), 
"EFFECT_PHARMACOS" NVARCHAR2(2000), 
"EFFECT_POTENTIALS" NVARCHAR2(2000), 
 CONSTRAINT "BIO_LIT_INH_DATA_PK" PRIMARY KEY ("BIO_LIT_INH_DATA_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_LIT_INH_DATA_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "BIOMART"."TRG_BIO_LIT_INH_DATA_ID" 
before insert on "BIO_LIT_INH_DATA"
for each row
begin
     if inserting then
       if :NEW."BIO_LIT_INH_DATA_ID" is null then
          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_LIT_INH_DATA_ID" from dual;
       end if;
    end if; end;








/
ALTER TRIGGER "BIOMART"."TRG_BIO_LIT_INH_DATA_ID" ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_LIT_INH_REF_FK
--
ALTER TABLE "BIOMART"."BIO_LIT_INH_DATA" ADD CONSTRAINT "BIO_LIT_INH_REF_FK" FOREIGN KEY ("BIO_LIT_REF_DATA_ID")
 REFERENCES "BIOMART"."BIO_LIT_REF_DATA" ("BIO_LIT_REF_DATA_ID") ENABLE;
