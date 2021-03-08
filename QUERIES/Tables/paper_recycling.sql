create table paper_recycling
(
	process_date Date,
	process_id varchar2(15),
	sorting number(20,5),
	pulping number(20,5),
	screaming number(20,5),
	cleaning number(20,5),
	de_linking number(20,5),
	washing number(20,5),
	rolling number(20,5),


    CONSTRAINT PAPR_pro_dat_id_pk
 		PRIMARY KEY (process_date, process_id),		
	CONSTRAINT PAPR_pro_dat_id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES recycling_process (process_date,process_id)

);

INSERT INTO paper_recycling VALUES (TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005',1040,1020,1000,980,960,955,950);

create table paper_bleaching
(
	serial_no 			number(10,0),
	process_date 		Date,
	process_id 			varchar2(15),
	chemical_used		varchar2(20),
	amount 				number(20,5),


	CONSTRAINT PB_serial_chemiUsed_amount_pk
 		PRIMARY KEY (serial_no, process_date, process_id),		
	CONSTRAINT PB_pro_dat_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES recycling_process (process_date,process_id)
);


CREATE SEQUENCE PB_SEQ
INCREMENT BY 1
START WITH 5
MAXVALUE 99999999
NOCACHE
NOCYCLE;


INSERT INTO paper_bleaching VALUES (1,TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','SULPHURIC ACID',10);
INSERT INTO paper_bleaching VALUES (2,TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','HYDROCLORIC ACID',8);
INSERT INTO paper_bleaching VALUES (3,TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','METHANE',6);
INSERT INTO paper_bleaching VALUES (4,TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','BENZENE',2);
INSERT INTO paper_bleaching VALUES (PB_SEQ.NEXTVAL,TO_DATE('5-JAN-2019','DD-MON-YYYY'),'PROC_00000005','BENZENE',10);






