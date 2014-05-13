--
-- Type: SEQUENCE; Owner: BIOMART; Name: SEQ_BIO_DATA_FACT_ID
--
CREATE SEQUENCE  "BIOMART"."SEQ_BIO_DATA_FACT_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 26518741 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASY_DATA_STATS_ALL
--
 CREATE TABLE "BIOMART"."BIO_ASY_DATA_STATS_ALL" 
  (	"BIO_ASSAY_DATA_STATS_ID" NUMBER(18,0) NOT NULL ENABLE, --postgres NOT NULL
"BIO_SAMPLE_COUNT" NUMBER(18,0), 
"QUARTILE_1" NUMBER(18,5), 
"QUARTILE_2" NUMBER(18,5), 
"QUARTILE_3" NUMBER(18,5), 
"MAX_VALUE" NUMBER(18,5), 
"MIN_VALUE" NUMBER(18,5), 
"BIO_SAMPLE_ID" NUMBER(18,0), 
"FEATURE_GROUP_NAME" NVARCHAR2(120), 
"VALUE_NORMALIZE_METHOD" NVARCHAR2(50), 
"BIO_EXPERIMENT_ID" NUMBER(18,0), 
"MEAN_VALUE" NUMBER(18,5), 
"STD_DEV_VALUE" NUMBER(18,5), 
"BIO_ASSAY_DATASET_ID" NUMBER(18,0), 
 CONSTRAINT "BIO_ASY_DT_STATS_PK" PRIMARY KEY ("BIO_ASSAY_DATA_STATS_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION DEFERRED
COMPRESS BASIC NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_ASY_DT_STATS_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "BIOMART"."TRG_BIO_ASY_DT_STATS_ID" before insert on "BIO_ASY_DATA_STATS_ALL"    for each row begin     if inserting then       if :NEW."BIO_ASSAY_DATA_STATS_ID" is null then          select SEQ_BIO_DATA_FACT_ID.nextval into :NEW."BIO_ASSAY_DATA_STATS_ID" from dual;       end if;    end if; end;












/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASY_DT_STATS_ID" ENABLE;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_A__D_S_F_G_IDX
--
CREATE INDEX "BIOMART"."BIO_A__D_S_F_G_IDX" ON "BIOMART"."BIO_ASY_DATA_STATS_ALL" ("FEATURE_GROUP_NAME")
TABLESPACE "INDX" ;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_ASY_DT_STATS_SMP_FK
--
ALTER TABLE "BIOMART"."BIO_ASY_DATA_STATS_ALL" ADD CONSTRAINT "BIO_ASY_DT_STATS_SMP_FK" FOREIGN KEY ("BIO_SAMPLE_ID")
 REFERENCES "BIOMART"."BIO_SAMPLE" ("BIO_SAMPLE_ID") ENABLE;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_A__D_S_EXP_IDX
--
CREATE INDEX "BIOMART"."BIO_A__D_S_EXP_IDX" ON "BIOMART"."BIO_ASY_DATA_STATS_ALL" ("BIO_EXPERIMENT_ID")
TABLESPACE "INDX" ;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_A__D_S_DS_IDX
--
CREATE INDEX "BIOMART"."BIO_A__D_S_DS_IDX" ON "BIOMART"."BIO_ASY_DATA_STATS_ALL" ("BIO_ASSAY_DATASET_ID")
TABLESPACE "INDX" ;
