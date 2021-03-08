create table Cloath_recycling
(
    process_date Date,
    process_id varchar2(15),
    sorting    number(20,5),
	shredding  number(20,5),
	mixing     number(20,5),
	screaning  number(20,5),
  	weaving    number(20,5),
	pallets    number(20,5),


    CONSTRAINT PR_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT PR_pro_dat_Id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)

);

INSERT INTO Cloath_recycling VALUES (TO_DATE('4-JAN-2019','DD-MON-YYYY'),'PROC_00000004',2200,2100,2050,2000,1950,1900);