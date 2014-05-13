--
-- Type: TABLE; Owner: TM_CZ; Name: CZ_JOB_MESSAGE
--
 CREATE TABLE "TM_CZ"."CZ_JOB_MESSAGE" 
  (	"JOB_ID" NUMBER(18,0) NOT NULL ENABLE, 
"MESSAGE_ID" NUMBER(18,0), 
"MESSAGE_LINE" NUMBER(18,0), 
"MESSAGE_PROCEDURE" NVARCHAR2(100), 
"INFO_MESSAGE" NVARCHAR2(2000), 
"SEQ_ID" NUMBER(18,0) NOT NULL ENABLE
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS LOGGING
 TABLESPACE "TRANSMART" ;
--
-- Type: SEQUENCE; Owner: TM_CZ; Name: SEQ_CZ_JOB_MESSAGE
--
CREATE SEQUENCE  "TM_CZ"."SEQ_CZ_JOB_MESSAGE"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 63 CACHE 2 NOORDER  NOCYCLE  NOPARTITION ;
--
-- Type: TRIGGER; Owner: TM_CZ; Name: TRG_CZ_MESSAGE_SEQ_ID
--
  CREATE OR REPLACE EDITIONABLE TRIGGER "TM_CZ"."TRG_CZ_MESSAGE_SEQ_ID" 
  before insert on CZ_JOB_MESSAGE    for each row 
  begin     
    if inserting then       
      if :NEW.SEQ_ID is null then          
        select SEQ_CZ_JOB_MESSAGE.nextval into :NEW.SEQ_ID from dual;       
      end if;       
    end if;   
  end;

/
ALTER TRIGGER "TM_CZ"."TRG_CZ_MESSAGE_SEQ_ID" ENABLE;
