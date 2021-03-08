create table waste_recycling
(
	process_date Date,
	process_id varchar2(15),
	COMPANY_TRADE_NUM VARCHAR2(15),
 
	CONSTRAINT WR_pro_dat_id_cmpTrade_pk
		PRIMARY KEY (process_date, process_id,COMPANY_TRADE_NUM),
	CONSTRAINT WR_pro_dat_id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)
);


INSERT INTO waste_recycling VALUES (TO_DATE('1-JAN-2019','DD-MON-YYYY'),'PROC_00000001','COMP_00000002');
INSERT INTO waste_recycling VALUES (TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','COMP_00000001');
INSERT INTO waste_recycling VALUES (TO_DATE('2-JAN-2019','DD-MON-YYYY'),'PROC_00000002','COMP_00000003');
INSERT INTO waste_recycling VALUES (TO_DATE('6-JAN-2019','DD-MON-YYYY'),'PROC_00000007','COMP_00000004');
INSERT INTO waste_recycling VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','COMP_00000005');


