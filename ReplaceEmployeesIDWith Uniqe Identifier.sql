use DBProblems
Create table Employees (id int, name varchar(20))
Create table EmployeeUNI (id int, unique_id int)
Truncate table Employees
insert into Employees (id, name) values ('1', 'Alice')
insert into Employees (id, name) values ('7', 'Bob')
insert into Employees (id, name) values ('11', 'Meir')
insert into Employees (id, name) values ('90', 'Winston')
insert into Employees (id, name) values ('3', 'Jonathan')
Truncate table EmployeeUNI
insert into EmployeeUNI (id, unique_id) values ('3', '1')
insert into EmployeeUNI (id, unique_id) values ('11', '2')
insert into EmployeeUNI (id, unique_id) values ('90', '3')
----
select * from Employees
select * from EmployeeUNI
----

--# Write your MySQL query statement below
/* Write your PL/SQL query statement below */
select b.unique_id ,a.name from employees a left join employeeuni b
on a.id = b.id ; 

select EmployeeUNI.unique_id,Employees.name
from Employees
left Join EmployeeUNI
ON EmployeeUNI.id = Employees.id;

--SELECT column_name(s)
--FROM table1
--LEFT JOIN table2
--ON table1.column_name = table2.column_name;




