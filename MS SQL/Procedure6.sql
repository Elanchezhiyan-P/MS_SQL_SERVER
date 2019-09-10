create procedure sp_Add  
@a int,@b int  
as  
begin  
declare @c int  
begin try  
set @c=@a/@b  
print 'Divide is : '+ cast(@c as char)  
end try  
begin catch   
print 'Divde By Zero error'  
end catch  
end 

exec sp_add 4,4  

drop procedure sp_Add;