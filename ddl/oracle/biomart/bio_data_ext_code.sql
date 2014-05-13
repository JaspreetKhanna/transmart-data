--
-- Type: TABLE; Owner: BIOMART; Name: BIO_DATA_EXT_CODE
--
 CREATE TABLE "BIOMART"."BIO_DATA_EXT_CODE" 
  (	"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"CODE" VARCHAR2(500 BYTE) NOT NULL ENABLE, 
"CODE_SOURCE" NVARCHAR2(200), 
"CODE_TYPE" NVARCHAR2(200), 
"BIO_DATA_TYPE" VARCHAR2(100 BYTE), 
"BIO_DATA_EXT_CODE_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_ID" VARCHAR2(50 BYTE), 
 CONSTRAINT "BIO_DATA_EXT_CODE_PK" PRIMARY KEY ("BIO_DATA_EXT_CODE_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
COMPRESS BASIC NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_DATA_E_C_T_IDX
--
CREATE INDEX "BIOMART"."BIO_DATA_E_C_T_IDX" ON "BIOMART"."BIO_DATA_EXT_CODE" ("CODE_TYPE")
TABLESPACE "INDX" 
PARALLEL 4 ;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_DATA_E_C_C_IDX
--
CREATE INDEX "BIOMART"."BIO_DATA_E_C_C_IDX" ON "BIOMART"."BIO_DATA_EXT_CODE" ("CODE")
TABLESPACE "INDX" 
PARALLEL 4 ;
--
-- Type: INDEX; Owner: BIOMART; Name: BIO_D_E_C_DID_CT_IDX
--
CREATE INDEX "BIOMART"."BIO_D_E_C_DID_CT_IDX" ON "BIOMART"."BIO_DATA_EXT_CODE" ("BIO_DATA_ID", "CODE_TYPE")
TABLESPACE "INDX" 
PARALLEL 4 ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_DATA_EXT_CODE_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "BIOMART"."TRG_BIO_DATA_EXT_CODE_ID" before insert on "BIO_DATA_EXT_CODE"    for each row begin     if inserting then       if :NEW."BIO_DATA_EXT_CODE_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_DATA_EXT_CODE_ID" from dual;       end if;    end if; end;














/
ALTER TRIGGER "BIOMART"."TRG_BIO_DATA_EXT_CODE_ID" ENABLE;
