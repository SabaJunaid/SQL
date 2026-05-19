------------------------------COMPOSITE PRIMARY KEY---------------------------------
-- create simple table 
create table sales(
f_name varchar(20) not null,
l_name varchar(20) not null, 
salary int not null
)
-- insert values
-- Duplicate values will be added in table because nothing here is restraining duplication
insert into sales(f_name,l_name,salary) values ('Saba', 'Junaid', 50000000), ('Ayesha', 'Abaidullah', 6000000), ('Saba', 'Junaid', 50000000)
-- show table
select *from sales
--drop table
drop table sales
-- create table with composite primary key 
Create table sales(
f_name varchar(20) not null,
l_name varchar (20) not null,
salary int not null,
-- A table can have only one primary key
-- primary key can be Single column (simple primary key)
-- or primary key can be Multiple columns (composite primary key)
-- composite primary key is when: TWO or MORE columns together uniquely identify a row.
-- A table cannot have more than one primary key, but that one primary key can include multiple columns
primary key(f_name,l_name) -- combination of both columns together must be unique
)
-- this will give error bacause combination of both column f_name and l_name must be unique and must not repeat 
insert into sales(f_name,l_name,salary) values ('Saba', 'Junaid', 50000000),
('Ayesha', 'Abaidullah', 6000000), 
('Saba', 'Junaid', 50000000) -- Entry with saba junaid is repeated
-- ERROR:  duplicate key value violates unique constraint "sales_pkey"
-- Key (f_name, l_name)=(Saba, Junaid) already exists.
--drop table
drop table sales
-- Create table with correct commands 
Create table sales(
f_name varchar(20) not null,
l_name varchar (20) not null,
salary int not null,
primary key(f_name,l_name) -- combination of both columns together must be unique
)
insert into sales(f_name,l_name,salary) values ('Saba', 'Junaid', 50000000),
('Ayesha', 'Abaidullah', 6000000), 
('Ahsan', 'Junaid', 50000000) --this is unique combinatio of f_name and l_name
select *from sales
-- Primary Key is used to recognize each record in a distinct manner, it will not accept nulls and there can be only one Primary Key in a table.
-- Primary Key could be on multiple columns - Composite Primary Key.