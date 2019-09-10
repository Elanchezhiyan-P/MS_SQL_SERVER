Create procedure BalanceProcedureWithDrawOnly

	@Accountnumber int,
	@Required_balance int

AS
		
BEGIN TRAN
	Begin try	
		
		UPDATE Moneyinfo SET Current_Balance = (CURRENT_BALANCE - @Required_balance) where Account_number = @accountnumber;

	End try 

	Begin catch
			
		Print 'Error occurred! please try again later';
		
	End catch
COMMIT TRAN