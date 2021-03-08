create table used_tecnology
(
	process_date 	Date,
	process_id 		varchar2(15),
	machine_no 		varchar2(20),
	 
	CONSTRAINT UT_pro_dat_id_machId_pk
		PRIMARY KEY (process_date, process_id,machine_no),		
	CONSTRAINT UT_pro_dat_id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES recycling_process (process_date,process_id),		
	CONSTRAINT UT_machId_fk
		FOREIGN KEY (machine_no)
		REFERENCES machine (machine_no)
);

INSERT INTO used_tecnology VALUES (TO_DATE('1-JAN-2019','DD-MON-YYYY'),'PROC_00000001','MACH_00000001');
INSERT INTO used_tecnology VALUES (TO_DATE('1-JAN-2019','DD-MON-YYYY'),'PROC_00000001','MACH_00000002');
INSERT INTO used_tecnology VALUES (TO_DATE('2-JAN-2019','DD-MON-YYYY'),'PROC_00000002','MACH_00000002');
INSERT INTO used_tecnology VALUES (TO_DATE('2-JAN-2019','DD-MON-YYYY'),'PROC_00000002','MACH_00000003');
INSERT INTO used_tecnology VALUES (TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','MACH_00000003');
INSERT INTO used_tecnology VALUES (TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','MACH_00000004');
INSERT INTO used_tecnology VALUES (TO_DATE('4-JAN-2019','DD-MON-YYYY'),'PROC_00000004','MACH_00000004');
INSERT INTO used_tecnology VALUES (TO_DATE('4-JAN-2019','DD-MON-YYYY'),'PROC_00000004','MACH_00000005');
INSERT INTO used_tecnology VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','MACH_00000005');
INSERT INTO used_tecnology VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','MACH_00000001');