CREATE TABLE Area_Agent_Contact_No(
	agent_phone_no 		VARCHAR2(11),
	agent_id 			VARCHAR2(15) NOT NULL,
	CONSTRAINT ACN_ag_phnNo_id_pk
		PRIMARY KEY (agent_phone_no,agent_id),
	CONSTRAINT ACN_agent_id_fk
		FOREIGN KEY (agent_id)
		REFERENCES Area_Agent (agent_id)
);

INSERT INTO Area_Agent_Contact_No VALUES ('01515288484','AA_0000001');
INSERT INTO Area_Agent_Contact_No VALUES ('01829259511','AA_0000001');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288444','AA_0000002');
INSERT INTO Area_Agent_Contact_No VALUES ('01515289984','AA_0000002');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288994','AA_0000003');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288994','AA_0000004');
INSERT INTO Area_Agent_Contact_No VALUES ('01515288994','AA_0000005');
