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



create table food_in_vessel_composting 
(
    process_date Date,
    process_id varchar2(15),
	shredding  NUMBER(15,5),
    mixing_with_garden_waste NUMBER(15,5),
	compost  NUMBER(15,5),
	left_outside NUMBER(15,5),
	useable_amount NUMBER(15,5),
	
	CONSTRAINT FVC_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT FVC_pro_dat_Id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES FOOD_RECYCLING (process_date,process_id)
);


INSERT INTO food_in_vessel_composting VALUES(TO_DATE('6-JAN-2019','DD-MON-YYYY'),'PROC_00000008', 250, 200, 150, 2, 125);




create table food_anaerobic_digestion
(
	process_date Date,
    process_id varchar2(15),
    enclosed_system NUMBER(15,5),
    methane  NUMBER(15,5),
	nutrientrich_disestate  NUMBER(15,5),
	biohas  NUMBER(15,5),
	
	CONSTRAINT FAD_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT FAD_pro_dat_Id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES FOOD_RECYCLING (process_date,process_id)
);


INSERT INTO food_in_vessel_composting VALUES(TO_DATE('6-JAN-2019','DD-MON-YYYY'),'PROC_00000008', 250, 125, 50, 500, 75);