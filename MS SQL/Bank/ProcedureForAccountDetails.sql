Create procedure Account_details
	@Account_number int
AS
BEGIN
	If (@Account_number = (Select Customer_number from AccountDetails where Customer_number = @Account_number))
	
		(Select * from AccountDetails where Customer_number = @Account_number);

	Else

		Print 'There is no account ' + @Account_number + ' With this bank'

END