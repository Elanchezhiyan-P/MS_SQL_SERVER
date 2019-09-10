CREATE PROCEDURE UpdateQueryForEmployees
	@Employee_id int,
	@First_name varchar(50),
	@Last_name varchar(50),
	@hire_date date,
	@Department varchar(50),
	@Salary int,
	@Mobile_Number int,
	@Email varchar(50)

AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO EMPLOYEES (EMPLOYEE_ID, First_name, Last_name, Hire_date, Department, Salary, Mobile_Number, Email) 
	VALUES (@Employee_id, @First_name, @Last_name, @hire_date, @Department, @Salary, @Mobile_Number, @email)
	
END
GO
