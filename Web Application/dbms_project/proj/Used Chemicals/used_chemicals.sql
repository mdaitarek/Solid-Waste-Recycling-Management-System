create table used_chemicals
(
    process_date		Date,
 	process_id 			varchar2(15),
	chemical_name 		varchar2(20),
	
	CONSTRAINT UC_pro_date_id_chName_pk
 		PRIMARY KEY (process_date,process_id,chemical_name),
    CONSTRAINT UC_pro_date_id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id),
	CONSTRAINT UC_chemical_name_fk
		FOREIGN KEY (chemical_name)
		REFERENCES chemicals (chemical_name)		
);


INSERT INTO used_chemicals VALUES (TO_DATE('1-JAN-2019','DD-MON-YYYY'),'PROC_00000001','SULFURIC ACID');
INSERT INTO used_chemicals VALUES (TO_DATE('1-JAN-2019','DD-MON-YYYY'),'PROC_00000001','METHANE');
INSERT INTO used_chemicals VALUES (TO_DATE('2-JAN-2019','DD-MON-YYYY'),'PROC_00000002','CYTRIC ACID');
INSERT INTO used_chemicals VALUES (TO_DATE('2-JAN-2019','DD-MON-YYYY'),'PROC_00000002','METHANE');
INSERT INTO used_chemicals VALUES (TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','SULFURIC ACID');
INSERT INTO used_chemicals VALUES (TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','BENZENE');
INSERT INTO used_chemicals VALUES (TO_DATE('4-JAN-2019','DD-MON-YYYY'),'PROC_00000004','HYDROCLORIC ACID');
INSERT INTO used_chemicals VALUES (TO_DATE('4-JAN-2019','DD-MON-YYYY'),'PROC_00000004','BENZENE');
INSERT INTO used_chemicals VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','HYDROCLORIC ACID');
INSERT INTO used_chemicals VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','METHANE');