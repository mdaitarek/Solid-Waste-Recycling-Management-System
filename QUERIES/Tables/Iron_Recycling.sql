create table Metal_Recycling
(
	process_date 			Date,
	process_id 				varchar2(15),
	type_of_metal 			varchar2(15),
	crushing_n_shredding	number(20,5),
	separation 				number(20,5),
	melting 				number(20,5),
	purification 			number(20,5),

    CONSTRAINT MTR_pro_dat_id_pk
		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT MTR_pro_dat_Id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)
);

INSERT INTO Metal_Recycling VALUES (TO_DATE('1-JAN-2019','DD-MON-YYYY'),'PROC_00000001','IRON',1500,1200,1150,1000);
INSERT INTO Metal_Recycling VALUES (TO_DATE('6-JAN-2018','DD-MON-YYYY'),'PROC_00000009','ALUMINIAM',1200,1070,1000,990);
INSERT INTO Metal_Recycling VALUES (TO_DATE('7-JAN-2018','DD-MON-YYYY'),'PROC_00000010','ZINC',1300,1150,1090,1050);
INSERT INTO Metal_Recycling VALUES (TO_DATE('8-JAN-2019','DD-MON-YYYY'),'PROC_00000011','IRON',1200,1070,1000,990);