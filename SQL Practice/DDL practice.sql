--------------------------------DDL (Data Definition Language)--------------------------------
--------------------------------Create, Alter, Drop, Truncate-------------------------------
CREATE TABLE student (-- base table
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    age INT
)
-- ALTER TABLE (Add / Drop / Modify / Rename)
------------------------Adding location using alter-----------------------------------------
ALTER TABLE student ADD location VARCHAR(30) NOT NULL DEFAULT 'Hyderabad'
-- show table
select *from student
------------------------Drop location column using alter------------------------------------
ALTER TABLE student DROP COLUMN location
-- show table
select *from student
--------------------=---modify datatype using alter-----------------------------------------
ALTER TABLE student ALTER COLUMN first_name TYPE VARCHAR(50)-- from 30 to 50
-- show table
select *from student
-----------------------Rename column using alter--------------------------------------------
ALTER TABLE student RENAME COLUMN first_name TO f_name
-- show table
select *from student
--------------------------DROP TABLE (remove everything)------------------------------------
DROP TABLE student -- whole table is deleted from database incluing rows, column, structure
-- TRUNCATE (remove all rows, keep structure)
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    age INT
)
-- insert data
INSERT INTO student (first_name, age) VALUES ('Ali', 20), ('Sara', 22)
-- Truncate table
TRUNCATE TABLE student -- Structure remains but all rows would be removed 
-- show table
select *from student
-----------------------DELETE (remove specific rows)--------------------------------------
-- insert data 
INSERT INTO student (first_name, age) VALUES ('Ali', 20), ('Sara', 22)
DELETE FROM student WHERE first_name = 'Ali'-- delete only remove specific rows
-- show table
select *from student
