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

---------------------------DISTINCT - unique values, no repetition----------------------------
-- if values are repeating distinct will return only unique occurance
Select location from employee -- it will return total location including repeating one gujrawala repearted 4 time it will return gujranwala 4 times 
-- use distinct word before column it will return only unique occurance from that column
select distinct location from employee -- only unique locations will be retured 
-- return distinct dept from tabel
select distinct dept from employee
-- return total number of unique location in number
select count(distinct location) from employee;

drop table employee