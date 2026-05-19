----------------------------------------PRIMARY KEY-------------------------------
-- create table command used to create table
-- student is table name
create table student(
-- columns with datatype
f_name varchar(20) not null,
l_name varchar(30) not null,
age int not null,
-- default key will repeat automatically
course_enrolled varchar(29) default 'Biotechnology',
course_fee int not null
)
-- insert into is used to insert values according to the sequence and datatype of column
-- Donot write default column name while listing column name (f_name, l_name, age, course_fee)
-- values will be repeated because there is no  primary key decided
-- id primary key is not decided values will repeat
insert into student (f_name, l_name, age, course_fee) values ('Saba', 'Junaid', 25, 75000), ('Saba', 'Junaid', 25, 75000)
-- following command will show the table
select *from student
-- following command will delet table
drop table student
-- create a new column with ID to see if same ID is repeated
create table student(
-- column names with datatypes
id int,
f_name varchar(30) not null,
l_name varchar(20) not null,
age int not null,
-- default column
course_enrolled varchar(15) default 'Biotechnology' not null,
course_fee int not null
)
--insert values
-- Same ID is repeated because it is not recognized as unique or distint
insert into student (id, f_name, l_name, age, course_fee) values (1, 'Saba', 'Junaid', 25, 75000)
-- repeat values
insert into student (id, f_name, l_name, age, course_fee) values (1, 'Saba', 'Junaid', 25, 75000)
-- show table
select *from student 
-- drop table
drop table student
-- using primary key table can have only one primary key
create table student(
id int primary key, -- just write column name its datatype and primary key word
first_name varchar(20) not null,
last_name varchar(20) not null,
age int not null,
-- default column
course_enrolled varchar(20) not null default 'Data Analytics',
course_fee int not null
);
--- this will show an error because Primary Key cannot be null.
insert into student(id,first_name,last_name,age,course_fee) values (null,'Madhavi','Kumari',24,40000)
---this will show an error that primary key cannot be duplicate
insert into student(id,first_name,last_name,age,course_fee) values (1,'Saba','Junaid',25,75000)
insert into student(id,first_name,last_name,age,course_fee) values (1,'Saba','Junaid',25,75000)
-- drop table
drop table student
-- Creating rtable with primary key
create table student(
id int primary key, -- id column is now primary key it will not be null and will not be duplicate
f_name varchar (20) not null,
l_name varchar(20) not null,
age int not null,
course_enrolled varchar(20) default 'Biotech' not null,
course_fee  int not null
)
-- both ids are different 
insert into student (id, f_name, l_name, age, course_fee) values (1, 'Saba', 'Junaid', 25, 75000)
insert into student (id, f_name, l_name, age, course_fee) values (2, 'Saba', 'Junaid', 25, 75000)
-- show whole table
select *from student
-- drop table
drop table student
-- primary key can be decided later 
create table student(
id int,
f_name varchar(20) not null,
l_name varchar(20) not null,
age int not null,
course_enrolled varchar(20) not null default 'Data Analytics',
course_fee int not null,
primary key(id) -- column is created 1st then make primary key later
)
-- insert values
insert into student (id, f_name, l_name, age, course_fee) values (1, 'Saba', 'Junaid', 25, 75000)
insert into student (id, f_name, l_name, age, course_fee) values (2, 'Saba', 'Junaid', 25, 75000)
-- show table
select *from student
-- drop table
drop table student



