USE Elanche
GO

Create Procedure QueryUpdateBalanceTransfer
	@FromAccountNumber int,
	@TransferAmount	int,
	@ToAccountNumber int
	   
AS
BEGIN TRAN
	BEGIN TRY
	
		if(@TransferAmount <= (select Current_balance from Moneyinfo where Account_number = @FromAccountNumber))
		
		Update MoneyInfo set Current_Balance = (Current_Balance - @TransferAmount) where Account_Number = @FromAccountNumber;
	
		Update Moneyinfo set Current_Balance = (Current_Balance + @TransferAmount) where Account_number = @ToAccountNumber;	

		SELECT a.CUSTOMER_NAME, M.ACCOUNT_NUMBER, m.CURRENT_BALANCE FROM AccountDetails a, Moneyinfo M WHERE Account_number = @ToAccountNumber;

	END TRY 

	BEGIN CATCH

		Print 'Error occurred please try again!!!';

	END CATCH
COMMIT TRAN


--drop procedure QueryUpdateBalanceTransfer;


--EXEC QueryUpdateBalanceTransfer 26541, 500, 25001;

--UPDATE Moneyinfo SET Current_Balance = 10000 WHERE Account_number = 26541;