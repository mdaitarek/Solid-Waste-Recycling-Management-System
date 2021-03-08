
CREATE TABLE Local_Dealer(
	dealer_dealership_no 	VARCHAR2(10),
	dealer_name				VARCHAR2(25),
	dealer_city				VARCHAR2(10),
	dealer_district			VARCHAR2(10),
	CONSTRAINTS LD_dealer_dealership_no_pk 
		PRIMARY KEY(dealer_dealership_no)
);

CREATE TABLE Dealer_Contact_No(
	dealer_cont_serial 		INT,
	dealer_phone_no 		VARCHAR2(11),
	dealer_dealership_no 	VARCHAR2(10),
	CONSTRAINTS  DNC_dealer_cont_serial_pk 
		PRIMARY KEY (dealer_cont_serial),
	CONSTRAINTS DNC_dealer_dealership_no_fk
		FOREIGN KEY (dealer_dealership_no) 
		REFERENCES Local_Dealer	(dealer_dealership_no)
);





CREATE TABLE Area_Agent (
	agent_id 				 VARCHAR2(10) NOT NULL,
	agent_name				 VARCHAR2(25),
	agent_city 				 VARCHAR2(15),
	agent_area 				 VARCHAR2(15),
	agent_shop_name			 VARCHAR2(30),
	agent_shop_open_time	 VARCHAR2(10),
	agent_shop_close_time 	 VARCHAR2(10),
	CONSTRAINTS AA_agent_id_pk
		PRIMARY KEY (agent_id)
);

CREATE TABLE Area_Agent_Contact_No(
	agent_cont_serial 	INT,
	agent_phone_no 		VARCHAR2(11),
	agent_id 			VARCHAR2(10),
	CONSTRAINTS ACN_agent_cont_serial_pk
		PRIMARY KEY (agent_cont_serial),
	CONSTRAINTS ACN_agent_id_fk
		FOREIGN KEY (agent_id)
		REFERENCES Area_Agent (agent_id)
);









CREATE TABLE Local_Waste_Collector(
	Collector
);




