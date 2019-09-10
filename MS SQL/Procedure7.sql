--- Exception Error_message()---

CREATE PROCEDURE SP_ADDEXCEPTION
@a int,
@b int
as
begin
declare @c int
begin try 
set @c = @a / @b;
print 'Add is : ' + cast(@c as char)
end try 
begin catch
print error_message();
end catch
end

--execution of above sp--
exec SP_ADDEXCEPTION 4,0;

--execution of above sp with error_number exception--
exec SP_ADDEXCEPTION 8134, 34;

select * from sys.messages;


IF EXISTS(SELECT * FROM sys.sysobjects WHERE type = 'U' AND name = 'TestTable')
BEGIN
    DROP TABLE [dbo].[TestTable];
END
GO

