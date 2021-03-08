CREATE TABLE FOOD_RECYCLING
(
	process_date 	Date,
	process_id		 varchar2(15),
	
	CONSTRAINT FR_pro_dat_id_pk
		PRIMARY KEY (process_date,process_id),
	CONSTRAINT FR_pro_dat_Id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)
);


INSERT INTO FOOD_RECYCLING VALUES(TO_DATE('6-JAN-2019','DD-MON-YYYY'),'PROC_00000008');
