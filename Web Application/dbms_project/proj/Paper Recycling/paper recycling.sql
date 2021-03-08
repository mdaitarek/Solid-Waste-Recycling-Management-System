create table paper_recycling
(
	process_date Date,
	process_id varchar2(15),
	sorting number(20,5),
	pulping number(20,5),
	screaming number(20,5),
	cleaning number(20,5),
	de_linking number(20,5),
	washing number(20,5),
	rolling number(20,5),


    CONSTRAINT PAPR_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT PAPR_pro_dat_id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES recycling_process (process_date,process_id)

);

INSERT INTO paper_recycling VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005',1040,1020,1000,980,960,955,950);
