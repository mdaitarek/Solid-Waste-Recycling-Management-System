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


