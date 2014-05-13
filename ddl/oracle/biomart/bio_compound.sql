--
-- Type: TABLE; Owner: BIOMART; Name: BIO_COMPOUND
--
 CREATE TABLE "BIOMART"."BIO_COMPOUND" 
  (	"BIO_COMPOUND_ID" NUMBER(18,0) NOT NULL ENABLE, 
"CNTO_NUMBER" NVARCHAR2(200), 
"JNJ_NUMBER" NVARCHAR2(200), 
"CAS_REGISTRY" NVARCHAR2(400), 
"CODE_NAME" NVARCHAR2(300), 
"GENERIC_NAME" NVARCHAR2(200), 
"BRAND_NAME" NVARCHAR2(200), 
"CHEMICAL_NAME" NVARCHAR2(1000), 
"MECHANISM" NVARCHAR2(400), 
"PRODUCT_CATEGORY" NVARCHAR2(200), 
"DESCRIPTION" NVARCHAR2(1000), 
"ETL_ID_RETIRED" NUMBER(18,0), 
"ETL_ID" VARCHAR2(50 BYTE), 
"SOURCE_CD" NVARCHAR2(100), 
 CONSTRAINT "COMPOUNDDIM_PK" PRIMARY KEY ("BIO_COMPOUND_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION DEFERRED
COMPRESS BASIC NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_COMPOUND_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "BIOMART"."TRG_BIO_COMPOUND_ID" before insert on "BIO_COMPOUND"    for each row begin     if inserting then       if :NEW."BIO_COMPOUND_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_COMPOUND_ID" from dual;       end if;    end if; end;














/
ALTER TRIGGER "BIOMART"."TRG_BIO_COMPOUND_ID" ENABLE;
