CREATE TABLE Employee(
	employee_id				VARCHAR2(20),
	employee_name			VARCHAR2(25),
	employee_designation	VARCHAR2(25),
	employee_salary			NUMBER(20,5) CHECK (employee_salary>0),
	employee_email			VARCHAR2(25),
	
	CONSTRAINT EMP_employee_id_pk 
		PRIMARY KEY(employee_id)
);

INSERT INTO Employee VALUES ('EMP_00000001','AHM ZUBAYER','GENERAL MANAGER',50000,'ahmzubayer@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000002','ALOM AJMIR','MANAGER',40000,'aaajmir12@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000003','ISMAIL HOSSAIN','WORKER',20000,'ahmzubayer@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000004','MOHAMMAD ZUBAYER','MANAGING DIRECTOR',60000,'md.zubayer@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000005','ABIR HOSSAIN','MANAGER',45000,'abirhossain@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000006','ABIR HOSSAIN','MANAGER',45000,'abirhossain@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000007','ABIR HOSSAIN','MANAGER',45000,'abirhossain@gmail.com');
INSERT INTO Employee VALUES ('EMP_00000008','ABIR HOSSAIN','MANAGER',45000,'abirhossain@gmail.com');



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