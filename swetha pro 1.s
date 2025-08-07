create database employee;
use employee;
create table employee_details(
EMPLOYEE_ID int,
FIRST_NAME Varchar(100),
LAST_NAME Varchar(50),
SALARY int,
JOINING_DATE varchar(100),
DEPARTMENT varchar(500),
primary key(EMPLOYEE_ID)
);
insert into employee_details(
EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)VALUES
(1,"Venkatesh","S","100000","08/28/2015","BANKING"),
(2,"Ragavi","P","75000","08/28/2015","BUSINESS"),
(3,"Gopinath","C","50000","03/02/2016","PHARMA"),
(4,"Dinesh","G","50000","03/02/2016","INSURANCE"),
(5,"Saibabu","E","40000","07/08/2017","SOFTWARE"),
(6,"Hasan","S","29000","07/08/2017","MANUFACTURING"),
(7,"Divya","P","33000","07/08/2017","HEALTHCARE"),
(8,"Aravidhan","R","40000","07/08/2017","HEALTHCARE"),
(9,"Sathish","MO","45000","03/02/2016","AUTOMOBILE"),
(10,"Prasanth","PKP","34000","03/02/2016","INSURANCE"),
(11,"Vijay","R","25684","03/02/2016","BUSINESS"),
(12,"Sivakumar","K","54789","03/02/2016","SOFTWARE");
select * from employee_details;
create table  Incentives(
EMPLOYEE_REF_ID int,
INCENTIVE_ID varchar(200),
INCENTIVE_AMOUNT int,
foreign key(EMPLOYEE_REF_ID )references employee_details(EMPLOYEE_ID)
);
insert into Incentives(EMPLOYEE_REF_ID,INCENTIVE_ID,INCENTIVE_AMOUNT)VALUES
(1,"01-FEB-16",5000),
(2,"01-FEB-16",3000),
(3,"01-FEB-17",4000),
(4,"01-JAN-17",9500);
select * from Incentives;
select * from employee_details;
select FIRST_NAME ,LAST_NAME FROM employee_details;
select FIRST_NAME  as employee_name from employee_details;
select Upper(FIRST_NAME) FROM employee_details;
select distinct DEPARTMENT from employee_details;
select instr ('ragavi', 'a' ) as position_of_a;
-- get  first_name from employee after removing while spaces in right side
select rtrim(FIRST_NAME) as FIRST_NAME FROM employee_details;
select ltrim( FIRST_NAME ) as FIRST_NAME FROM employee_details;
select concat(FIRST_NAME,'_',LAST_NAME) as full_name from employee_details;

select length(First_name ) as FIRST_NAME FROM employee_details;
select replace(FIRST_NAME,'a','$') as modified_FIRST_NAME from employee_details;
select FIRST_NAME,SUBSTRING(JOINING_DATE,7,4) AS JOINING_YEAR,
SUBSTRING(JOINING_DATE,1,2) AS JOINING_MONTH,
SUBSTRING(JOINING_DATE,4,2) AS JOINING_DATE_DAY FROM employee_details;
select * from employee_details order by FIRST_NAME asc;
select* from employee_details order by FIRST_NAME desc;
select*from employee_details order by FIRST_NAME asc,salary desc;
select * from employee_details where FIRST_NAME='DINESH';
select * from employee_details where FIRST_NAME  in ('DINESH','ROY');
create database employee;
use employee;
create table employee_details(
EMPLOYEE_ID int,
FIRST_NAME Varchar(100),
LAST_NAME Varchar(50),
SALARY int,
JOINING_DATE varchar(100),
DEPARTMENT varchar(500),
primary key(EMPLOYEE_ID)
);
insert into employee_details(
EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)VALUES
(1,"Venkatesh","S","100000","08/28/2015","BANKING"),
(2,"Ragavi","P","75000","08/28/2015","BUSINESS"),
(3,"Gopinath","C","50000","03/02/2016","PHARMA"),
(4,"Dinesh","G","50000","03/02/2016","INSURANCE"),
(5,"Saibabu","E","40000","07/08/2017","SOFTWARE"),
(6,"Hasan","S","29000","07/08/2017","MANUFACTURING"),
(7,"Divya","P","33000","07/08/2017","HEALTHCARE"),
(8,"Aravidhan","R","40000","07/08/2017","HEALTHCARE"),
(9,"Sathish","MO","45000","03/02/2016","AUTOMOBILE"),
(10,"Prasanth","PKP","34000","03/02/2016","INSURANCE"),
(11,"Vijay","R","25684","03/02/2016","BUSINESS"),
(12,"Sivakumar","K","54789","03/02/2016","SOFTWARE");
select * from employee_details;
drop database employee;
create table  Incentives(
EMPLOYEE_REF_ID int,
INCENTIVE_ID varchar(200),
INCENTIVE_AMOUNT int,
foreign key(EMPLOYEE_REF_ID )references employee_details(EMPLOYEE_ID)
);
insert into Incentives(EMPLOYEE_REF_ID,INCENTIVE_ID,INCENTIVE_AMOUNT)VALUES
(1,"01-FEB-16",5000),
(2,"01-FEB-16",3000),
(3,"01-FEB-17",4000),
(4,"01-JAN-17",9500);
select * from Incentives;
select * from employee_details;
select FIRST_NAME ,LAST_NAME FROM employee_details;
select FIRST_NAME  as employee_name from employee_details;
select Upper(FIRST_NAME) FROM employee_details;
select distinct DEPARTMENT from employee_details;
select instr ('ragavi', 'a' ) as position_of_a;
-- get  first_name from employee after removing while spaces in right side
select rtrim(FIRST_NAME) as FIRST_NAME FROM employee_details;
select ltrim( FIRST_NAME ) as FIRST_NAME FROM employee_details;
select concat(FIRST_NAME,'_',LAST_NAME) as full_name from employee_details;

select length(First_name ) as FIRST_NAME FROM employee_details;
select replace(FIRST_NAME,'a','$') as modified_FIRST_NAME from employee_details;
select FIRST_NAME,SUBSTRING(JOINING_DATE,7,4) AS JOINING_YEAR,
SUBSTRING(JOINING_DATE,1,2) AS JOINING_MONTH,
SUBSTRING(JOINING_DATE,4,2) AS JOINING_DATE_DAY FROM employee_details;
select * from employee_details order by FIRST_NAME asc;
select* from employee_details order by FIRST_NAME desc;
select*from employee_details order by FIRST_NAME asc,salary desc;
select *from employee_details where FIRST_NAM='DINESH';
select * from employee_details where FIRST_NAME ('DINESH','ROY');
select * From employee_details where FIRST_NAME like 's%';
select * FROM employee_details where FIRST_NAME like'v%';
select* from employee_details where FIRST_NAME like'n%';
select*from employee_details where FIRST_NAME like'  n' and length(FIRST_NAME)=4;
select*from employee_details where FIRST_NAME like'J. ' and length(FIRST_NAME)=4;
select* from employee_details where salary>60000;
select*from employee_details where salary<80000;
select* from employee_details where salary between 50000 and 80000;
select*from employee_details where FIRST_NAME in('Venkatesh','Ragavi');
select *from employee_details where INSTR(LAST_NAME,'%')>0;
select replace(LAST_NAME,'%','') from employee_details;
select DEPARTMENT,SUM(salary)as total_salary from employee_details group by DEPARTMENT;
select DEPARTMENT,SUM(salary)as total_salary from employee_details group by DEPARTMENT order by total_salary desc;
select DEPARTMENT,count(*)as no_of_employees,sum(salary)as total_salary from employee_details group by DEPARTMENT order by total_salary desc;
select DEPARTMENT,avg(salary)as avg_salary from employee_details group by DEPARTMENT order by avg_salary asc;
select DEPARTMENT,max(salary)as max_salary from employee_details group by DEPARTMENT order by max_salary asc;
select DEPARTMENT,min(salary)as min_salary from employee_details group by DEPARTMENT order by min_salary asc;
select year(joining_date)as join_year,month(joining_date)as join_month,count(*) as no_of_employees from employee_details group by year(joining_date),month(joining_date);
select DEPARTMENT,SUM(salary) as total_salary from employee_details group by DEPARTMENT having total_salary>800000 order by total_salary desc;
select e.FIRST_NAME,I.INCENTIVE_AMOUNT FROM employee_details e join incentives i on employee_id = employee_ref_id;
select e.FIRST_NAME,I.INCENTIVE_AMOUNT FROM employee_details e join incentives i on employee_id = i.employee_ref_id where I.INCENTIVE_AMOUNT>3000;
select  e.FIRST_NAME,I.INCENTIVE_AMOUNT FROM employee_details e LEFT join incentives i on employee_id=i.employee_ref_id;
select e.FIRST_NAME,COALESCE(I.INCENTIVE_AMOUNT,0) AS INCENTIVE_AMOUNT FROM employee_details e LEFT JOIN incentives i on employee_id=i.employee_ref_id;
select e.FIRST_NAME,I.INCENTIVE_AMOUNT FROM employee_details e LEFT JOIN incentives i ON employee_id=i.employee_ref_id where I.INCENTIVE_AMOUNT is not null;
select e.FIRST_NAME,I.INCENTIVE_AMOUNT FROM employee_details e JOIN incentives i ON employee_id=i.employee_ref_id where I.INCENTIVE_AMOUNT = (SELECT MAX(I.INCENTIVE_AMOUNT)from incentives );
select salary from employee_details order by salary desc limit 1 offset 1;
select salary from employee_details order by salary desc limit 1;
select salary from employee_details order by salary desc limit 1 offset 1;
select salary from employee_details order by salary desc limit 1 offset 4;
drop database employee;
