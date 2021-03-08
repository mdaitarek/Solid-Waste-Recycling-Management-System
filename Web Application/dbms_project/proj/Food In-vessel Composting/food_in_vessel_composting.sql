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
