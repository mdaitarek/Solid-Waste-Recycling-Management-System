CREATE TABLE Local_Dealer(
	dealer_dealership_no 	VARCHAR2(10),
	dealer_name				VARCHAR2(25),
	dealer_city				VARCHAR2(10),
	dealer_district			VARCHAR2(10),
	CONSTRAINT LD_dealer_dealership_no_pk 
		PRIMARY KEY(dealer_dealership_no)
);

INSERT INTO Local_Dealer VALUES ('LD_0000001','Mashrur Hasan','Mirpur','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000002','Rakib Hasan','Shahbag','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000003','Faisal Hasan','Gulistan','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000004','Abir Ahmed','Gulshan','Dhaka');
INSERT INTO Local_Dealer VALUES ('LD_0000005','Ayon Roy','Dhanmondi','Dhaka');