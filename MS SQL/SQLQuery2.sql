alter table employees
 add constraint employees_pk Primary key (employee_id);

 select * from employees;

 sp_columns employees;

EXECUTE sp_help 'Employees';