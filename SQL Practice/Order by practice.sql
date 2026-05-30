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
--------------------------------------order by-------------------------------------------
--Sort the Data, arrange the data in a sequence, either ascending order (default) or in descending order (desc)
select f_nm from employee; -- return only f_nm column
select f_nm from employee order by f_nm; -- return f_nm column sorted in ascending order by f_nm
select f_nm from employee order by f_nm desc;  -- return f_nm column sorted in descending order by f_nm
select f_nm from employee order by age; -- sort f_nm ascendingly on basis of age
select f_nm from employee order by age desc;-- sort f_nm descendingly on basis of age
select * from employee order by age, salary;-- arranging whole table on basis of age and salary
---second level sort will happen incase of a clash
