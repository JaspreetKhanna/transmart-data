--
-- Name: wt_subject_info; Type: TABLE; Schema: tm_wz; Owner: -
--
CREATE TABLE wt_subject_info (
    usubjid character varying(100), --oracle was (107) in postgres
    age_in_years_num smallint,
    sex_cd character varying(50),
    race_cd character varying(50)
);

