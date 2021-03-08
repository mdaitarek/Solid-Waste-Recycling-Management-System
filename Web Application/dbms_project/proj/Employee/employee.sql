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
