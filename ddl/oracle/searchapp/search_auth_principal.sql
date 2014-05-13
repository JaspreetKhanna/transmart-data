--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_AUTH_PRINCIPAL
--
 CREATE TABLE "SEARCHAPP"."SEARCH_AUTH_PRINCIPAL" 
  (	"ID" NUMBER(19,0) NOT NULL ENABLE, 
"PRINCIPAL_TYPE" VARCHAR2(255 BYTE), 
"DATE_CREATED" DATE NOT NULL ENABLE, 
"DESCRIPTION" VARCHAR2(255 BYTE), 
"LAST_UPDATED" DATE NOT NULL ENABLE, 
"NAME" VARCHAR2(255 BYTE), 
"UNIQUE_ID" VARCHAR2(255 BYTE), 
"ENABLED" NUMBER(1,0), 
 CONSTRAINT "PK_SEARCH_PRINCIPAL" PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_AU_PRCPL_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "SEARCHAPP"."TRG_SEARCH_AU_PRCPL_ID" 
 before insert on SEARCH_AUTH_PRINCIPAL   
 for each row begin     
 if inserting then      
 if(:NEW.ID is null or :NEW.ID = -2000) then       
 select SEQ_SEARCH_DATA_ID.nextval into :NEW.ID from dual;      
 end if;    end if; end;







/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_AU_PRCPL_ID" ENABLE;
