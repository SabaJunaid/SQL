---------------------------------UNIQUE KEY----------------------------------- 
-- Allow only distinct values to be entered in a field
-- which means No duplicate values are allowed in that column.
-- it ensures that every value in a column is different from all others
-- A Table can have multiple Unique Keys. Null entries are allowed.
create table email_registration(-- creat simple table
f_name varchar(20) not null,
l_name varchar (20) not null,
email varchar (20) not null
)
-- in following insert command two people have same email adress which is not possible 
-- values can be added but its unrealistic  and should not be allowed
insert into email_registration values('Saba', 'Junaid', 'sabajunaid@gmail.com')
insert into email_registration values('Ayesha', 'Abaidullah', 'sabajunaid@gmail.com')
-- show table
select *from email_registration
-- drop table
drop table email_registration
-- create table with new commands
create table email_registration(
f_name varchar(20) not null,
l_name varchar (20) not null,
email varchar (20) unique,-- unique values can be null
primary key(f_name,l_name)
)
insert into email_registration values('Saba', 'Junaid', 'sabajunaid@gmail.com')
insert into email_registration values('Ayesha', 'Abaidullah', 'ayesha@gmail.com')
-- null is allowed in unique key it will run
insert into email_registration values('Ayesha', 'Saleem', null)
select *from email_registration
drop table email_registration
-- create table with new command 
create table email_registration(
f_name varchar(20) not null,
l_name varchar (20) not null,
-- unique key can bear null values but not when it is set to not null
email varchar (20) not null unique, 
primary key(f_name,l_name)
)
insert into email_registration values('Saba', 'Junaid', 'sabajunaid@gmail.com')
insert into email_registration values('Ayesha', 'Abaidullah', 'ayesha@gmail.com')
-- unique key is set to not null you will get error if null is entered
insert into email_registration values('Ayesha', 'Saleem', null)
-- ERROR:  null value in column "email" of relation "email_registration" violates not-null constraint
-- show table
select *from email_registration
-- drop table
drop table email_registration
create table email_registration(
f_name varchar(20) not null,
l_name varchar (20) not null,
email varchar (20) unique,
primary key(f_name,l_name)
)
-- duplicate values are not allowed after unique key this will through error
insert into email_registration values('Saba', 'Junaid', 'sabajunaid@gmail.com')
insert into email_registration values('Ayesha', 'Abaidullah', 'sabajunaid@gmail.com')
-- ERROR:  duplicate key value violates unique constraint "email_registration_email_key"
-- Key (email)=(sabajunaid@gmail.com) already exists. 
-- drop table
drop table email_registration
-- create correct table 
create table email_registration(
f_name varchar(20) not null,
l_name varchar(20) not null,
email varchar(50) not null unique,
primary key(f_name,l_name)
)
-- insert values
insert into email_registration values ('Saba','Junaid','saba@gmail.com');
insert into email_registration values ('Ayesha','Abaidullah','ayesha@gmail.com');
insert into email_registration values ('Nimra','Junaid','nimra@gmail.com');
-- show table
select * from email_registration
-- drop table
drop table email_registration
-- UNIQUE KEY is used to make sure unique values (no duplicates) are entered into a field.
-- UNIQUE KEY can take NULL also, and we can have multiple unique keys in a table.]
-- Difference between Primary Key and Unique Key - 
-- 1) There can be only 1 Primary key, whereas there can be multiple Unique Keys
-- 2) Primary Key cannot be NULL, whereas Unique Key could be NULL
