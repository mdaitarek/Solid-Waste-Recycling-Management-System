create table tyre_recycling
(
	process_date Date,
	process_id varchar2(15),
	tyre_prcessing NUMBER(15,5),
	cryogenic_system NUMBER(15,5),
	machinal_system NUMBER(15,5),
	tyre_pyrolysis NUMBER(15,5),
	steal_liberation_stage NUMBER(15,5),
	screening_and_milling NUMBER(15,5),
	stage NUMBER(15,5),
	cleaning_stage NUMBER(15,5),
	produced_carbon NUMBER(15,5),
	produce_rubber NUMBER(15,5),
	produce_steel NUMBER(15,5),
	produce_tdf NUMBER(15,5),
	
	CONSTRAINT IR_pro_dat_id_pk
		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT IR_pro_dat_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES recycling_process (process_date,process_id)
);


INSERT INTO tyre_recycling VALUES (TO_DATE('6-JAN-2019','DD-MON-YYYY'),'PROC_00000007',1950,1900,1800,1750,1700,1600,1550,1500,500,500,300,200);



