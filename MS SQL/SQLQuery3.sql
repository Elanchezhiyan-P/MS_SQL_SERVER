create database Elanchezhiyan;

create table employees(
First_name varchar(50),
last_name varchar(50),
SALARY int,
email varchar(50),
mobile_number int
);

insert into employees 
(first_name, last_name, salary, email, mobile_number)
values ( 'Elanchezhiyan', 'P', 17, 'elanche97@gmail.com', 807520778);

insert into employees 
(employee_id, first_name, last_name, salary, email, mobile_number)
values (5, 'Praveen', 'D', 14, 'Praveen007@gmail.com', 956847432);

Select * from employees;

drop database Elanchezhiyan;

select count(*) as No_of_Employees, sum(salary) as Salary from employees;

EXEC sp_rename 'employees.Enmployee_Id', 'Employee_id', 'COLUMN'; 

Select top(2) First_name  from  employees;

update employees set Employee_id = 3  where email = 'reka@gmail.com';

alter table employees add constraint pk_employee_id primary key (Employee_id);

alter table employees alter column employee_id int not null;

select top(3) Employee_id, First_name as Name from employees where salary <= 15;

select top(3) Employee_id, First_name as Name from employees order by First_name Asc;

select top(2) with ties First_name from employees order by First_name Asc;

select First_name from employees order by First_name Asc offset 2 rows fetch next 3 rows only;