CREATE TABLE  COMMUNITY_WORKER(
  COLLECTOR_ID  VARCHAR2(20),
  COMMUNITY_NAME VARCHAR2(40),
  COMMUNITY_HEAD VARCHAR2(25),
  COMMUNITY_HEAD_CONTACT_NUM VARCHAR2(11),
  COMMUNITY_WASTE_COLLECTOR_NUM NUMBER(20,5) CHECK (COMMUNITY_WASTE_COLLECTOR_NUM>0),

  CONSTRAINT LWC_CW_Collector_ID_pk_fk
  	PRIMARY KEY(Collector_ID),
  	FOREIGN KEY(Collector_ID)
  	REFERENCES  Local_Waste_Collector (Collector_ID)
  	ON DELETE CASCADE

);


INSERT INTO COMMUNITY_WORKER VALUES ('COL_00000007','MOHAKHALI BARIDHARA SHOMOITI','MD. RAHIM','01515255366',15);
INSERT INTO COMMUNITY_WORKER VALUES ('COL_00000008','MOHAMMADPUR BARIDHARA SHOMOITI','MD. KARIM','01515266344',7);
