create table glass_Recycling
(
	process_date Date,
	process_id varchar2(15),
	glass_breaking number(20,5),
	residue_Separation number(20,5),
	trommel number(20,5),
	fluidized number(20,5),
	primary_rotary_screen number(20,5),
	pulverization number(20,5),


	CONSTRAINT GR_pro_dat_id_pk
		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT GR_pro_dat__id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)
);

INSERT INTO glass_Recycling VALUES (TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003',1450, 1400, 1350, 1350, 1300, 1250);
