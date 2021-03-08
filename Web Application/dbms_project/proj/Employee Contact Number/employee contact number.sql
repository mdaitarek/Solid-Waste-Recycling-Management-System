CREATE TABLE Employee_Contact_No(
	employee_phone_no 		VARCHAR2(11),
	employee_id 			VARCHAR2(20) NOT NULL,
	CONSTRAINT ECN_employee_cont_serial_pk
		PRIMARY KEY (employee_phone_no,employee_id),
	CONSTRAINT ECN_employee_id_fk
		FOREIGN KEY (employee_id)
		REFERENCES Employee (employee_id)
);


INSERT INTO Employee_Contact_No VALUES ('01525131619','EMP_00000001');
INSERT INTO Employee_Contact_No VALUES ('01525131618','EMP_00000001');
INSERT INTO Employee_Contact_No VALUES ('01912983636','EMP_00000002');
INSERT INTO Employee_Contact_No VALUES ('01525132525','EMP_00000002');
INSERT INTO Employee_Contact_No VALUES ('01525137819','EMP_00000003');
INSERT INTO Employee_Contact_No VALUES ('01421523664','EMP_00000004');
INSERT INTO Employee_Contact_No VALUES ('01612158619','EMP_00000005');