1.
/* USER VIEW METAL RECYCLING */ 

/* MACHINE RELATED TO METAL RECYCLING */
SELECT M.machine_name "MACHINE NAME", M.processing_type "PROCESSING TYPE"
FROM machine M JOIN used_tecnology UT ON M.machine_no = UT.machine_no
	JOIN Recycling_Process RP ON (RP.process_id = UT.process_id AND RP.process_date = UT.process_date )
JOIN Metal_Recycling MR ON (MR.process_id = RP.process_id AND MR.process_date = RP.process_date);

/* COMPANY RELATED TO METAL RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN Metal_Recycling USING (process_id,process_date);

/* CHEMICAL RELATED TO METAL RECYCLING */
SELECT chemical_name "NAME", chemical_symbol "SYMBOL", country_of_origin "COUNTRY OF ORIGIN"
FROM chemicals JOIN used_chemicals USING (chemical_name)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN Metal_Recycling USING (process_id,process_date);

/* RECYCLING RATE PER YEAR OF METAL RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN Metal_Recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY');


/* END PRODUCTS OF METAL RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN Metal_Recycling USING (process_id,process_date)








2.
/* USER VIEW GLASS RECYCLING */ 

/* MACHINE RELATED TO GLASS RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN glass_Recycling USING(process_id,process_date)

/* COMPANY RELATED TO GLASS RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN glass_Recycling USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF GLASS RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN glass_Recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF METAL RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN glass_Recycling USING (process_id,process_date)








3.
/* USER VIEW PLASTIC RECYCLING */ 

/* MACHINE RELATED TO PLASTIC RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN plastic_recycling USING(process_id,process_date)

/* COMPANY RELATED TO PLASTIC RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN plastic_recycling USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF PLASTIC RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN plastic_recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF PLASTIC RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN plastic_recycling USING (process_id,process_date)
	
	







4.
/* USER VIEW WOOD RECYCLING */ 

/* MACHINE RELATED TO WOOD RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN wood_recycling USING(process_id,process_date)

/* COMPANY RELATED TO WOOD RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN wood_recycling USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF WOOD RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN wood_recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF WOOD RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN wood_recycling USING (process_id,process_date)	
	
	
	
	




5.
/* USER VIEW TYRE RECYCLING */ 

/* MACHINE RELATED TO TYRE RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN tyre_recycling USING(process_id,process_date)

/* COMPANY RELATED TO TYRE RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN tyre_recycling USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF TYRE RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN tyre_recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF TYRE RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN tyre_recycling USING (process_id,process_date)
	
	
	
	
	
	
	
6.	
/* USER VIEW CLOATH RECYCLING */ 

/* MACHINE RELATED TO CLOATH RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN Cloath_recycling USING(process_id,process_date)

/* COMPANY RELATED TO CLOATH RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN Cloath_recycling USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF CLOATH RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN Cloath_recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF CLOATH RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN Cloath_recycling USING (process_id,process_date)
	
	
	

7.
/* USER VIEW PAPER RECYCLING */ 

/* MACHINE RELATED TO PAPER RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN paper_recycling USING(process_id,process_date)

/* COMPANY RELATED TO PAPER RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN paper_recycling USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF PAPER RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN paper_recycling USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF PAPER RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN paper_recycling USING (process_id,process_date)
	




8.
/* USER VIEW FOOD RECYCLING */ 

/* MACHINE RELATED TO FOOD RECYCLING */
SELECT machine_name "MACHINE NAME", processing_type "PROCESSING TYPE"
FROM machine JOIN used_tecnology USING (machine_no)
	JOIN Recycling_Process USING(process_id,process_date)
	JOIN FOOD_RECYCLING USING(process_id,process_date)

/* COMPANY RELATED TO FOOD RECYCLING */
SELECT NAME, COMPANY_CITY "CITY", COMPANY_DISTRICT "DISTRICT"
FROM COMPANY JOIN waste_recycling USING (COMPANY_TRADE_NUM)
	JOIN Recycling_Process USING (process_id,process_date)
	JOIN FOOD_RECYCLING USING (process_id,process_date)

/* RECYCLING RATE PER YEAR OF FOOD RECYCLING */
SELECT CONCAT(SUM(process_collected_waste), ' kg') "COLLECTED WASTE", CONCAT(SUM(process_recycled_amount),' kg') "RECYCLED WASTE",CONCAT(CAST(SUM(process_recycled_amount)/SUM(process_collected_waste)*100 AS DECIMAL(10,2)), '%') "RECYCLING RATE",
		TO_CHAR(process_date,'YYYY') "YEAR"
FROM Recycling_Process JOIN FOOD_RECYCLING USING (process_id,process_date)
GROUP BY TO_CHAR(process_date,'YYYY')

/* END PRODUCTS OF FOOD RECYCLING */
SELECT DISTINCT PRODUCT_NAME "NAME"
FROM PRODUCT JOIN PRODUCTION USING (PRODUCT_ID,PRODUCT_DATE)
	JOIN COMPANY USING (COMPANY_TRADE_NUM)
	JOIN waste_recycling USING (COMPANY_TRADE_NUM) 
	JOIN Recycling_Process USING (process_date,process_id)
	JOIN FOOD_RECYCLING USING (process_id,process_date)
	
	