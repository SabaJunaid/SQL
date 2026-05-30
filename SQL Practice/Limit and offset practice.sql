-------------------------------Create Basic Table-------------------------------------------
create table employee(
id SERIAL primary key,
f_nm varchar(20) not null,
l_nm varchar(20) not null,
age int not null,
-- default column the values Gujranwala will be repeated automatically
location varchar(20) not null default 'Gujranwala',
dept varchar(20) not null
)
-------------------add new column into table using alter----------------------------------
alter table employee add salary real not null -- add new column named salary to basic table
-- show table
select *from employee
-- insert data
insert into employee (f_nm,l_nm,age,dept,salary) values ('Ravi','Kiran',25,'HR',30000.00),
('Saba','Junaid',28,'HR',32000.00),
('Ayesha','Abaidullah',35,'IT',40000.00),
('Ahsan','Junaid',40,'IT',45000.00);
-- default location is Gujranwala but if you want to add different location than default then add location in column list
-- add add corrosponding value
insert into employee (f_nm,l_nm,age,location,dept,salary) values 
('Aneeqa','Riaz',26,'FSD','IT',42000.00),
('Umer','M',35,'Lahore','IT',60000.00),
('Ahmad','Muzammil',40,'Islamabad','IT',44000.00)
-- show table
select * from employee
-----------------------------------------LIMIT---------------------------------------------
-- To put a limit on the number of records to be fetched (filter - eliminate what is not required)
select * from employee limit 3; -- it will return only 3 rows from employee table
select * from employee order by salary limit 3;  --3 employees with the LOWEST salary
select * from employee order by salary desc limit 3; --3 employees with the HIGHEST salary
select * from employee order by age limit 5; -- It returns the 5 youngest employees
-- First, sort all rows by age (ascending) 
-- If TWO employees have the same age, then sort those rows by salary (ascending)
-- Return only the first 4 rows from the sorted result
-- Return the 4 youngest employees, and if some have the same age, the lower salary comes first among them
select * from employee order by age,salary limit 4;
-------------------------ASC → lowest first (bottom)-----------------------------------------
-------------------------DESC → highest first (top)------------------------------------------

--===============offset ignore from the given number and return according to set limit---=========
-- OFFSET tells SQL to skip a number of rows first, then start returning results.
select id,f_nm,l_nm from employee order by id limit 4 offset 0;  --- Skip 0 rows, Return 4 row, resul 1,2,3,4
select id,f_nm,l_nm from employee order by id limit 3 offset 3;  --- Skip first 3 rows, Start from 4th row, Return 3 rows
-- result: 4th, 5th, and 6th records