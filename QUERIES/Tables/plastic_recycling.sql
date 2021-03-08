create table plastic_recycling
(
	process_date Date,
	process_id varchar2(15),
	sorting number(20,5),
	washing number(20,5),
	shredding number(20,5),
	disinfection number(20,5),
	extrading number(20,5),


    CONSTRAINT PSTR_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT PSTR_pro_dat_id_fk
		FOREIGN KEY ( process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)
);

INSERT INTO plastic_recycling VALUES (TO_DATE('2-JAN-2019','DD-MON-YYYY'),'PROC_00000002',490,490,485,483,480);