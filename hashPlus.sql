 -- create Database employee_db;
 use employee_db;
-- create table employees(
-- employee_id varchar(10) primary key,
-- employee_name varchar(100) ,
-- department varchar(50),
-- job_title varchar(50),
-- salary decimal(12,4),
-- hire_date date,
-- city varchar(50)
-- );
-- select 1 + 3 as result;
ALTER TABLE employees
ADD COLUMN email varchar(100) null;


use employee_db;

insert into employees (
employee_id,
employee_name,
department,
job_title,
salary,
hire_date,
city,
email
)

values
('EMP1024', 'Ahmed Ali','IT','Software Developer', 8500.00, '2022-03-15', 'Riyadh','ahmed@gmail.com'),
('EMP1178', 'Sara Mohammed','HR','HR Specialist', 6500.00, '2021-07-10', 'Jeddah','sara@gmail.com'),
('EMP1235', 'Khailed Saad','Finance','Accountant', 7200.00, '2020-11-01', 'Dammam','Khailed@gmail.com'),
('EMP1310', 'Mona Fahad','Marketing Speciailist','Software Developer', 6800.00, '2023-01-20', 'Jeddah',null),
('EMP1452', 'Omar Yusuf','IT','Data Analyst', 9200.00, '2019-05-12', 'Riyadh','omar@gmail.com'),
('EMP1537', 'Laila Hassan','Sales','Sales Executive', 6000.00, '2022-09-18', 'Makkah','laila@gmail.com'),
('EMP1689', 'Faisal Nasser','IT','System Administrator', 7800.00, '2020-02-25', 'Riyadh','faisal@gmail.com'),
('EMP1744', 'Aisha Salem','HR','Recruitment Officer', 5900.00, '2024-04-08', 'Jeddah','aisha@gmail.com'),
('EMP1862', 'Mohammed Adel','Finance','Financial Analyst', 8800.00, '2021-12-14', 'Dammam','mohammed@gmail.com'),
('EMP1931', 'Amal Tariq','Marketing','Content Specialist', 5400.00, '2023-06-30', 'Riyadh',null);




use employee_db;

select employee_name as employee, salary as monthly_salary from employees;


use employee_db;
select distinct  department
 from employees;
 
 use employee_db;
select employee_id, employee_name, job_title
from employees;



use employee_db;
 select employee_id , employee_name, email from employees
 where email is null
or employee_id is null
or employee_name is null;



use employee_db;
select count(email) as employees_with_email ,
count(*) - count(email) as employees_without_email
from employees;




use employee_db;
select count(*) as life_in_jeddah
from employees
where city = 'Jeddah'
 ;
 
 
 
 
 use employee_db;

 select * from employees 
 where employee_id = 'EMP1931';
 
 delete from employees 
 where employee_id = 'EMP1931';
 
 select * from employees;
 


