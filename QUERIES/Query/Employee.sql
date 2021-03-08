CREATE TABLE Employee_log(
	employee_id				VARCHAR2(20),
	employee_name			VARCHAR2(25),
	employee_designation	VARCHAR2(25),
	employee_salary			NUMBER(20,5) CHECK (employee_salary>0),
	employee_email			VARCHAR2(25),
	log_action              varchar2(50)
	log_time_of_insert      date
);


CREATE OR REPLACE TRIGGER TriggerEmp 
  AFTER INSERT OR UPDATE OR DELETE
  ON employee
  for each row
DECLARE
     empId              VARCHAR2(20);
	 empName            VARCHAR2(25);
	 emp_designation    VARCHAR2(25);
	 empsal	      NUMBER(20,5);
	 emp_email		  VARCHAR2(25);
	 log_action              varchar2(50);
	 
  
BEGIN
    empId := :new.employee_id;	
	empName := :new.employee_name;
	emp_designation  := :new.employee_designation;
	empsal  :=:new.employee_salary;		
	emp_email  := :new.employee_email;
	log_action  := 'inserted';
	
  
    insert into Employee_log 
	(employee_id,employee_name,employee_designation,employee_salary,employee_email,log_action,log_time_of_insert)
    values(empId,empName,emp_designation,empsal	,emp_email,log_action,sysdate);
	   
	   
END;
/


CREATE OR REPLACE TRIGGER WrongDayUpdate 
before INSERT OR UPDATE OR DELETE
on employee 
begin
if (to_char(sysdate,'day') in ('saturday','friday') )
or(to_char (sysdate,'hh:mi') not between '10.00' and '18:00')
then
raise_application_error(-20343,'Any type of INSERT OR UPDATE OR DELETE canceled ');
end if;
end;
/
