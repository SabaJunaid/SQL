-----------------------------------FOREIGN KEY----------------------------------
-- To use foreign key you must have 2 tables with primary key
create table employee(-- table 1
id serial primary key,
f_nm varchar(20) not null,
l_nm varchar(20) not null,
age int not null,
location varchar(20) not null default 'Guj',
dept varchar(20) not null
)
-- insert values
insert into employee (f_nm,l_nm,age,dept) values ('Saba','Junaid',25,'Biotech'),('Aneeqa','Junaid',24,'Law'),
('Muneeba','Junaid',20,'CS'), ('Ayesha','Abaidullah',30,'HealthCare');
--show table
select *from employee
-- create 2nd table
create table department(-- table 2
dept_name varchar(30) primary key,
dept_head varchar(30)
)
-- insert values
insert into department (dept_name,dept_head) values ('Biotech','Dr Ibrar'),('Law','Dr Sultan'),('CS','Dr Babar')
-- show table
select *from department
-- the column you want to use as foreign key must have same data across 2 tables
-- healthcare is present in employee (table1) but not in department(table2)
alter table employee add foreign key(dept) references department(dept_name)
-- ERROR:  insert or update on table "employee" violates foreign key constraint "employee_dept_fkey"
-- Key (dept)=(HealthCare) is not present in table "department". 

---------------------------lets delet record with healthcare--------------------------------

delete from employee where dept = 'HealthCare'
-- table will return without healthcare dept
select *from employee
-- drop table
drop table employee
-- Use of foreign key in correct format
-- create table 1
create table employee(-- table 1
id serial primary key,
f_nm varchar(20) not null,
l_nm varchar(20) not null,
age int not null,
location varchar(20) not null default 'Guj',
dept varchar(20) not null
)
insert into employee (f_nm,l_nm,age,dept) values ('Saba','Junaid',25,'Biotech'),('Aneeqa','Junaid',24,'Law'),
('Muneeba','Junaid',20,'CS'), ('Ayesha','Abaidullah',30,'HealthCare')
-- show table 1
select *from employee
-- Every value in employee.dept MUST exist in department.dept_name
-- create table 2
create table department(-- table 2
dept_name varchar(30) primary key,
dept_head varchar(30)
)
-- insert values
insert into department (dept_name,dept_head) values ('Biotech','Dr Ibrar'),('Law','Dr Sultan'),('CS','Dr Babar'), ('HealthCare', 'Dr Usman')
-- show  table 2
select *from department
-- Add foreign key using alter command
-- alter > table > "name of table" > add > foreign key > "key name" > reference > "name of table you want to get data from" > ("name of column you want")
alter table employee add foreign key(dept)references department(dept_name)
-- show table after adding foreign key
select *from employee
