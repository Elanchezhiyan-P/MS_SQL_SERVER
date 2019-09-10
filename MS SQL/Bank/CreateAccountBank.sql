use Elanche
go

create table AccountDetails
(
Customer_name varchar(50) not null,
Customer_number int primary key not null,
Mobile_number int,
City varchar(50),
State varchar(50),
Postal_Code int
);

