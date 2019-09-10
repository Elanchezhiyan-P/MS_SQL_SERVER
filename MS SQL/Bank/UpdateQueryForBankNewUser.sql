create Procedure UpdateBankNewUser
	@Customer_name varchar(50),
	@Customer_number int,
	@Mobile_number int,
	@City varchar(50),
	@Postal_Code varchar(50)

AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO AccountDetails(Customer_name, Customer_number, Mobile_number, City, Postal_Code) 
	VALUES (@Customer_name, @Customer_number, @Mobile_number, @City, @Postal_Code)
	
END
GO
