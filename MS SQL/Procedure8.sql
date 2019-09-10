CREATE PROCEDURE UpdateQueryForDepartment
	@Employee_id int,
	@work_location  varchar(50),
	@permanent_location varchar(50),
	@skills varchar(50),
	@works_from varchar(50)

AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO DEPARTMENT(EMPLOYEE_ID, WORK_LOCATION, PERMANENT_LOCATION, SKILLS, WORKS_FROM) 
	VALUES (@Employee_id, @work_location, @permanent_location, @skills, @works_from)
	
END
GO

use elanche
go

drop procedure UpdateQueryForDepartment;