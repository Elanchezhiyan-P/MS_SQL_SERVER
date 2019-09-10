USE Elanche
GO

Create Procedure ToFindAccountAndCustomer
	@Accountnumber int
AS
BEGIN TRAN
	BEGIN TRY

		if (@Accountnumber = (select account_number from Moneyinfo where account_number = @Accountnumber))
	
		SELECT Customer_number, Accountnumber, Customer_Name, City from AccountDetails where accountnumber = @Accountnumber;
		
		Else
			PRINT N'OOPS! The Entered Account number is Wrong. Please try again!';

	END TRY 

	BEGIN CATCH

		PRINT N'OOPS! The Entered Account number is Wrong. Please try again!';

	END CATCH
COMMIT TRAN

--Drop procedure ToFindAccountAndCustomer




SELECT
	SOUNDEX('HEAR') SOUNDEX_HEAR,
	SOUNDEX('TOUR') SOUNDEX_EAR,
	DIFFERENCE ('HEAR', 'TOUR') SIMILARITY; 