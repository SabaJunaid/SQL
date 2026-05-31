---------------------------------CHECK CONSTRAINS------------------------------------------
---------------------------------Example 1-------------------------------------------------
CREATE TABLE school (
    name VARCHAR(20), 
    schoolname VARCHAR(50) DEFAULT 'Govt High School Gujranwala', 
    age INT, 
    CHECK (age >= 10) -- This is a strict rule
	-- Only ages 10 or above are allowed in the table
)
-- insert values
INSERT INTO school (name, age) VALUES ('Saba', 10), ('Ayesha', 20)
-- show table
SELECT * FROM school
-- drop table
drop table school
-- age below 10 will not be added because constrain only allow ages equal and above 10
INSERT INTO school (name, age) VALUES ('Priya', 8)

------------------------------------Example 2---------------------------------
CREATE TABLE products (
    product_no Integer,
    name text,
    price numeric 
	CHECK (price > 0) -- price must be greater than 0
)
-- insert values
INSERT INTO products VALUES (1,'apples',100.00), (2,'oranges',200.00)
-- show table
select *from products
-- Try inserting values less than zero
INSERT INTO products 
VALUES (3,'grapes',-100.00), -- value below zero voilate constrain this will not be added,
       (4,'plums',200.00) -- even if this value is above zero this will be rejected because of above wrong value
-- If ANY row in the INSERT violates CHECK → ENTIRE insert is rejected
-- So even though "plums" is correct, PostgreSQL rejects both rows.
INSERT INTO products -- insert correct values satisfying constrain
VALUES (3,'grapes',150.00),
       (4,'plums',200.00)
select *from products
-----------------------------------Example 3------------------------------------
create table student(
f_name text,
age integer,
dept text default 'Biotech',
check (age>=18)
)
-- insert values
insert into student values('Saba', 25), ('Ayesha', 24)
-- show table
select *from student
insert into student values ('Ahsan', 13), ('Arham',19)
-- error age less than 18 will not be added and if anyone value less than 18 whole insert will be rejected
-- insert values satisfying constrain
insert into student values ('Ahsan', 19), ('Arham',21)
-- show table
select *from student

