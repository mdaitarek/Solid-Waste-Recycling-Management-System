create table chemicals
(
	chemical_name 				varchar2(20),
	chemical_symbol 			varchar2(40),
 	producing_company_name 		varchar2(50),
	using_reason 				varchar2(30),
	amount_perday 				number(20,5),
	price_per_unit				number(20,5),
	country_of_origin 			varchar2(15),
	
	CONSTRAINT CH_chemical_name_pk
 	PRIMARY KEY (chemical_name)		
);




INSERT INTO chemicals VALUES ('SULFURIC ACID', 'H2SO4', 'BANGLASDESH CHEMICALS LTD', 'MELTING', 150, 75, 'BANGLASDESH');
INSERT INTO chemicals VALUES ('HYDROCLORIC ACID', 'HCl', 'BANGLASDESH CHEMICALS LTD', 'MELTING', 100, 80, 'BANGLASDESH');
INSERT INTO chemicals VALUES ('METHANE', 'CH4', 'BANGLASDESH CHEMICALS LTD', 'BURNING', 200, 60, 'BANGLASDESH');
INSERT INTO chemicals VALUES ('BENZENE', 'C6H6', 'BANGLASDESH CHEMICALS LTD', 'MELTING', 150, 75, 'BANGLASDESH');
INSERT INTO chemicals VALUES ('CYTRIC ACID', 'HClO7', 'BANGLASDESH CHEMICALS LTD', 'MELTING', 150, 75, 'BANGLASDESH');