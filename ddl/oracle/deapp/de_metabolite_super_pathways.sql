--
-- Type: TABLE; Owner: DEAPP; Name: DE_METABOLITE_SUPER_PATHWAYS
--
 CREATE TABLE "DEAPP"."DE_METABOLITE_SUPER_PATHWAYS" 
  (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
"GPL_ID" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"SUPER_PATHWAY_NAME" VARCHAR2(200 BYTE), 
 CONSTRAINT "DE_METABOLITE_SUPER_PATHWAY_PK" PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "DEAPP"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS NOLOGGING
 TABLESPACE "DEAPP" ;
