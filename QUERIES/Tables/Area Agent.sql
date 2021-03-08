CREATE TABLE Area_Agent  (
	agent_id 				 VARCHAR2(15) NOT NULL,
	agent_name				 VARCHAR2(25),
	agent_city 				 VARCHAR2(15),
	agent_area 				 VARCHAR2(15),
	agent_shop_name			 VARCHAR2(30),
	agent_shop_open_time	 VARCHAR2(10),
	agent_shop_close_time 	 VARCHAR2(10),
	CONSTRAINT AA_agent_id_pk
		PRIMARY KEY (agent_id)
);

CREATE TABLE Area_Agent_Contact_No(
	agent_phone_no 		VARCHAR2(11),
	agent_id 			VARCHAR2(15) NOT NULL,
	CONSTRAINT ACN_ag_phnNo_id_pk
		PRIMARY KEY (agent_phone_no,agent_id),
	CONSTRAINT ACN_agent_id_fk
		FOREIGN KEY (agent_id)
		REFERENCES Area_Agent (agent_id)
);

INSERT INTO Area_Agent VALUES ('AA_0000001','Bashir Ahmed','Mirpur-10','Mirpur','Bashir Store','10:00 am','10:00 pm');
INSERT INTO Area_Agent VALUES ('AA_0000002','Shawon Ahmed','Mirpur-12','Mirpur','Bhai Bhai Store','10:00 am','10:00 pm');
INSERT INTO Area_Agent VALUES ('AA_0000003','Sumon Ahmed','Mirpur-11.5','Mirpur','Mirpur Store','10:00 am','10:00 pm');
INSERT INTO Area_Agent VALUES ('AA_0000004','Khalil Ahmed','Mirpur-11.5','Mirpur','Mirpur Store','10:00 am','10:00 pm');
INSERT INTO Area_Agent VALUES ('AA_0000005','Salam Ahmed','Mirpur-11.5','Mirpur','Mirpur Store','10:00 am','10:00 pm');


INSERT INTO Area_Agent_Contact_No VALUES ('01515288484','AA_0000001');
INSERT INTO Area_Agent_Contact_No VALUES ('01829259511','AA_0000001');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288444','AA_0000002');
INSERT INTO Area_Agent_Contact_No VALUES ('01515289984','AA_0000002');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288994','AA_0000003');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288994','AA_0000004');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288994','AA_0000005');
