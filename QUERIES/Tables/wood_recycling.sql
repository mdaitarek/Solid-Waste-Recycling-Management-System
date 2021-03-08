create table wood_recycling
(
	process_date Date,
    process_id  varchar2(15),
	cleaning    NUMBER(15,5),
	happening   NUMBER(15,5),
    classifying NUMBER(15,5),
    grinding    NUMBER(15,5),	  


    CONSTRAINT WDR_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT WDR_pro_dat_Id_fk
		FOREIGN KEY ( process_date,process_id)
		REFERENCES recycling_process (process_date,process_id)
);

INSERT INTO wood_recycling VALUES (TO_DATE('6-JAN-2019','DD-MON-YYYY'),'PROC_00000006',1500,1200,1100,1000);