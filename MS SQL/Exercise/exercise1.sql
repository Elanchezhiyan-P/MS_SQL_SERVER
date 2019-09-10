USE Elanche
GO

SET XACT_ABORT OFF;
GO

DECLARE @IntErrorCode int
		

BEGIN TRAN
	INSERT INTO ACCOUNTDETAILS (CUSTOMER_NAME, CUSTOMER_NUMBER, Mobile_number, City, Postal_Code, AccountNumber)
	values('Ram', '747475', 987456322, 'Erode', '788545', 26541);

	SELECT @intErrorCode = @@ERROR
    IF (@intErrorCode <> 0) GOTO PROBLEM

	COMMIT TRAN

PROBLEM:
IF (@intErrorCode <> 0) BEGIN
PRINT 'Unexpected error occurred!'
    ROLLBACK TRAN
END