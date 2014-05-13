--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: QT_PATIENT_SET_COLLECTION
--
 CREATE TABLE "I2B2DEMODATA"."QT_PATIENT_SET_COLLECTION" 
  (	"PATIENT_SET_COLL_ID" NUMBER(10,0), 
"RESULT_INSTANCE_ID" NUMBER(5,0), 
"SET_INDEX" NUMBER(10,0), 
"PATIENT_NUM" NUMBER(10,0),
CONSTRAINT "QT_PATIENT_SET_COLLECTION_PKEY" PRIMARY KEY ("PATIENT_SET_COLL_ID"), --postgres
   ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS LOGGING
 TABLESPACE "I2B2_DATA" ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: QT_IDX_QPSC_RIID
--
CREATE INDEX "I2B2DEMODATA"."QT_IDX_QPSC_RIID" ON "I2B2DEMODATA"."QT_PATIENT_SET_COLLECTION" ("RESULT_INSTANCE_ID")
TABLESPACE "I2B2_DATA" ;


--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: QT_FK_PSC_RI
--
ALTER TABLE "I2B2DEMODATA"."QT_PATIENT_SET_COLLECTION" ADD CONSTRAINT "QT_FK_PSC_RI" FOREIGN KEY ("RESULT_INSTANCE_ID")
 REFERENCES "I2B2DEMODATA"."QT_QUERY_RESULT_INSTANCE" ("RESULT_INSTANCE_ID") ENABLE;	--postgres
