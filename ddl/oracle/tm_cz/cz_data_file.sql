--
-- Type: TABLE; Owner: TM_CZ; Name: CZ_DATA_FILE
--
 CREATE TABLE "TM_CZ"."CZ_DATA_FILE" 
  (	"FILE_NAME" NVARCHAR2(200), 
"PROVIDER" NVARCHAR2(200), 
"EXTRACTION_DATE" DATE, 
"LOCATION" NVARCHAR2(500), 
"DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"CONTACT_ID" NUMBER(18,0), 
"EXP_RECORD_CNT" NUMBER(18,0), 
"ACT_RECORD_CNT" NUMBER(18,0), 
"URL" VARCHAR2(500 BYTE), 
"DESCRIPTION" VARCHAR2(2000 BYTE), 
"DATA_FILE_ID" NUMBER(18,0) NOT NULL ENABLE, 
 CONSTRAINT "CZ_DATA_FILE_PK" PRIMARY KEY ("DATA_FILE_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS LOGGING
 TABLESPACE "TRANSMART" ;
--
-- Type: SEQUENCE; Owner: TM_CZ; Name: SEQ_CZ_DATA_FILE
--
CREATE SEQUENCE  "TM_CZ"."SEQ_CZ_DATA_FILE"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 6 CACHE 2 NOORDER  NOCYCLE  NOPARTITION ;
--
-- Type: TRIGGER; Owner: TM_CZ; Name: TRG_CZ_DATA_FILE_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "TM_CZ"."TRG_CZ_DATA_FILE_ID" 
before insert on "CZ_DATA_FILE"    
for each row 
begin     
if inserting then       
if :NEW."DATA_FILE_ID" is null then          
select SEQ_CZ_DATA_FILE.nextval into :NEW."DATA_FILE_ID" from dual;       end if;    end if; end;










/
ALTER TRIGGER "TM_CZ"."TRG_CZ_DATA_FILE_ID" ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: TM_CZ; Name: CZ_DATA_FILE_CZ_DATA_FK1
--
ALTER TABLE "TM_CZ"."CZ_DATA_FILE" ADD CONSTRAINT "CZ_DATA_FILE_CZ_DATA_FK1" FOREIGN KEY ("DATA_ID")
 REFERENCES "TM_CZ"."CZ_DATA" ("DATA_ID") ENABLE;
