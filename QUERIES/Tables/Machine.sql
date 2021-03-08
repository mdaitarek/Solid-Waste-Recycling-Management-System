create table machine
(
	machine_no 					varchar2(20),
	machine_name 				varchar2(30),
	machine_price 				number(20,5),
	creating_company 			varchar2(40),
	creating_company_country  	varchar2(20),
	processing_type 			varchar2(20),
	processing_rate 			number(20,5),
	
	
	CONSTRAINT MA_Machine_no_pk
		PRIMARY KEY (machine_no)		
);


INSERT INTO machine VALUES ('MACH_00000001', 'CRUSHING MACHINE', 1500000, 'CHINESE MACHINARIES LTD.', 'CHINA', 'CRUSHING', 80);
INSERT INTO machine VALUES ('MACH_00000002', 'MELTING MACHINE', 2000000, 'CHINESE MACHINARIES LTD.', 'CHINA', 'MELTING', 95);
INSERT INTO machine VALUES ('MACH_00000003', 'CLEANING MACHINE', 2500000, 'CHINESE MACHINARIES LTD.', 'CHINA', 'CLEANING', 73);
INSERT INTO machine VALUES ('MACH_00000004', 'SEPARATING MACHINE', 3000000, 'CHINESE MACHINARIES LTD.', 'CHINA', 'SEPARATING', 69);
INSERT INTO machine VALUES ('MACH_00000005', 'SCREENING MACHINE', 3500000, 'CHINESE MACHINARIES LTD.', 'CHINA', 'SCREENING', 78);