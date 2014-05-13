--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: JMS_USERS
--
 CREATE TABLE "I2B2DEMODATA"."JMS_USERS" 
  (	"USERID" VARCHAR2(32 BYTE) NOT NULL ENABLE, 
"PASSWD" VARCHAR2(32 BYTE) NOT NULL ENABLE, 
"CLIENTID" VARCHAR2(128 BYTE), 
 PRIMARY KEY ("USERID")
 USING INDEX
 TABLESPACE "I2B2_DATA"  ENABLE
  ) SEGMENT CREATION DEFERRED
NOCOMPRESS LOGGING
 TABLESPACE "I2B2_DATA" ;
