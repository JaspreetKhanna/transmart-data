--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASSAY_PLATFORM
--
 CREATE TABLE "BIOMART"."BIO_ASSAY_PLATFORM" 
  (	"BIO_ASSAY_PLATFORM_ID" NUMBER(18,0) NOT NULL ENABLE, 
"PLATFORM_NAME" NVARCHAR2(200), 
"PLATFORM_VERSION" NVARCHAR2(200), 
"PLATFORM_DESCRIPTION" NVARCHAR2(2000), 
"PLATFORM_ARRAY" VARCHAR2(50 BYTE), 
"PLATFORM_ACCESSION" VARCHAR2(20 BYTE), 
"PLATFORM_ORGANISM" VARCHAR2(200 BYTE), 
"PLATFORM_VENDOR" VARCHAR2(200 BYTE), 
"PLATFORM_TYPE" NVARCHAR2(200), 
"PLATFORM_TECHNOLOGY" NVARCHAR2(200), 
 CONSTRAINT "BIO_ASSAY_PLATFORM_PK" PRIMARY KEY ("BIO_ASSAY_PLATFORM_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
COMPRESS BASIC NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_ASSAY_PLATFORM_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "BIOMART"."TRG_BIO_ASSAY_PLATFORM_ID" before insert on "BIO_ASSAY_PLATFORM"    for each row begin     if inserting then       if :NEW."BIO_ASSAY_PLATFORM_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_ASSAY_PLATFORM_ID" from dual;       end if;    end if; end;








/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASSAY_PLATFORM_ID" ENABLE;
