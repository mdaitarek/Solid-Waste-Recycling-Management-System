CREATE TABLE Local_Dealer(
	dealer_dealership_no 	VARCHAR2(10),
	dealer_name				VARCHAR2(25),
	dealer_city				VARCHAR2(10),
	dealer_district			VARCHAR2(10),
	CONSTRAINT LD_dealer_dealership_no_pk 
		PRIMARY KEY(dealer_dealership_no)
);

CREATE TABLE Dealer_Contact_No(
	dealer_phone_no 		VARCHAR2(11),
	dealer_dealership_no 	VARCHAR2(10),
	CONSTRAINT  DNC_dealer_phnNo_dealNo_pk 
		PRIMARY KEY (dealer_phone_no,dealer_dealership_no),
	CONSTRAINT DNC_dealer_dealership_no_fk
		FOREIGN KEY (dealer_dealership_no) 
		REFERENCES Local_Dealer	(dealer_dealership_no)
		ON DELETE CASCADE
);


INSERT INTO Local_Dealer VALUES ('LD_0000001','Mashrur Hasan','Mirpur','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000002','Rakib Hasan','Shahbag','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000003','Faisal Hasan','Gulistan','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000004','Abir Ahmed','Gulshan','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000005','Ayon Roy','Dhanmondi','Dhaka');
INSERT INTO Dealer_Contact_No VALUES ('01515288484','LD_0000001');
INSERT INTO Dealer_Contact_No VALUES ('01829259511','LD_0000002');
INSERT INTO Dealer_Contact_No VALUES ('01515288444','LD_0000003');
INSERT INTO Dealer_Contact_No VALUES ('01515289984','LD_0000004');
INSERT INTO Dealer_Contact_No VALUES ('01515288994','LD_0000005');
INSERT INTO Dealer_Contact_No VALUES ('01515289546','LD_0000004');
INSERT INTO Dealer_Contact_No VALUES ('01515288475','LD_0000005');
