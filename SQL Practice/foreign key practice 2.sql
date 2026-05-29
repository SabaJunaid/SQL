-- create table 1

create table Department1(
dept_name varchar(30) primary key,
dept_head varchar(30)
)
insert into Department1 (dept_name,dept_head) values ('IT','Ravi Kiran'),('Finance',null),('HR','Swati Rao')
select *from Department1

-- create table 2

create table employeee(
id serial primary key,
f_nm varchar(20) not null,
l_nm varchar(20) not null,
age int not null,
location varchar(20) not null default 'Hyderabad',
dept varchar(20) not null
)
insert into employeee (f_nm,l_nm,age,dept) values ('mohan','bhargav',30,'IT'),('manoj','bajpai',35,'HR'),('Rani','Kumari',40,'Finance');
select *from employeee
drop table Department1

-- add healthcare dept in employeee table

insert into employeee (f_nm,l_nm,age,dept) values ('priya','darshini',30,'HealthCare')

-- will get error because health care is present in employeee table but not in department1 table
-- Every value in employeee.dept MUST exist in department1.dept_name

alter table employeee add foreign key(dept) references Department1(dept_name)
-- ERROR:  insert or update on table "employeee" violates foreign key constraint "employeee_dept_fkey"
-- Key (dept)=(HealthCare) is not present in table "department1". 
-- if healthcare is in employeee table it must be in department1 table
-- if not delet healthcare from employeee
delete from employeee where f_nm = 'priya'
-- Add foreign key
alter table employeee add foreign key(dept) references Department1(dept_name)
-- following will not be added because healthcare is present in employeee but not in department1 table
insert into employeee (f_nm,l_nm,age,dept) values ('priya','darshini',30,'HealthCare')
-- this will add because IT department is present in both tables
insert into employeee (f_nm,l_nm,age,dept) values ('priya','darshini',30,'IT');
-- show table after adding foreign key
select *from employeee

