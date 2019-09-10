IF YEAR(SYSDATETIME()) = YEAR(DATEADD(year, 15, '20-08-2018'))
PRINT 'Today is the middle day of the year.';
ELSE
PRINT 'Today is not the middle day of the year.';


select year(sysdatetime());

select year(dateadd(year, 1, '20-08-2018'));

IF YEAR(SYSDATETIME()) <> YEAR(DATEADD(day, 30, SYSDATETIME()))
PRINT 'Today is the last day of the year.';
ELSE
IF MONTH(SYSDATETIME()) <> MONTH(DATEADD(day, 30, SYSDATETIME()))
PRINT 'Today is the last day of the month but not the last day of the year.';
ELSE
PRINT 'Today is not the last day of the month.';

IF (0=0)
PRINT 'IF STATEMENT: CONDITION IS TRUE'
ELSE
PRINT 'ELSE STATEMENT: CONDITION IS FALSE'


IF(1=1)
	BEGIN
	SELECT * FROM EMPLOYEES;
	SELECT FIRST_NAME, mobile_number FROM EMPLOYEES;
	END
ELSE
	BEGIN
	SELECT * FROM EMPLOYEES;
	SELECT LAST_NAME FROM EMPLOYEES;
	END



	DECLARE @age INT
	SET @AGE = 21;

	IF @AGE<18
	PRINT 'UNDER AGE';
	ELSE
	BEGIN
		IF(@AGE = 18)
		PRINT 'CAN APPLY FOR VOTERID BUT WAIT FOR 1 YEAR TO VOTE'; 
		ELSE
		PRINT 'SENIOR';
	END

	SELECT FIRST_NAME, MAX(HIRE_DATE) AS MAX_DATE FROM EMPLOYEES GROUP BY FIRST_NAME HAVING MAX(HIRE_DATE) > '2015-09-15';


	SELECT * FROM employees;

	ALTER TABLE EMPLOYEES ADD GENDER VARCHAR;

	USE ELANCHE
	GO

	IF (EMPLOYEE_ID = 1) 
		UPDATE EMPLOYEES SET GENDER = 'M';
	ELSE IF (EMPLOYEE_ID = 2)
		 UPDATE EMPLOYEES SET GENDER = 'M';
	ELSE
		UPDATE EMPLOYEES SET GENDER= 'F';



UPDATE employees SET GENDER= 'F' WHERE Employee_id = 3;

UPDATE employees SET GENDER= 'M' WHERE Employee_id = 1 or Employee_id = 2 ;

SELECT * FROM employees;

alter table employees add TitleOfCourtesy varchar(20);


-- SWITCH CASE-- 
select employee_id, first_name, last_name,
CASE GENDER
	when 'M' Then 'Mr.'
	when 'F' Then 'Ms.'
	else   'Unknown'
	End as TitleOfCourtesy
	from employees; 

select employee_id, first_name, last_name,
CASE
	WHEN GENDER = 'F' THEN 'Ms.'
	WHEN GENDER = 'M' THEN 'Mr.'
	ELSE 'UNKNOWN'
	END AS TitleOfCourtesy
	FROM employees;


