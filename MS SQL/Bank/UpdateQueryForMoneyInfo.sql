create Procedure UpdateMoneyInfo
	@Account_number int,
	@Customer_Number int,
	@Current_Balance int,
	@Withdraw_Date date

AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO MoneyInfo(Account_number, Customer_number, Current_balance, withdraw_date) 
	VALUES (@Account_number, @Customer_Number, @Current_Balance, @Withdraw_Date)
	
END
GO
