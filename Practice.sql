-- ------------------------ Random Practice-------------------------------------------------------------
select * from atuldb.product;
select product_Id,Product_name,city from atuldb.product;
select * from atuldb.product where country="USA"; 
select product_name from atuldb.product where sales>1000000;
select * from atuldb.product where sales>800000 and sales<1100000;
select * from atuldb.product where not country="USA";
select * from atuldb.product where profit<1150000 or profit>500000;
--- order by
select * from atuldb.product order by product_name asc ;
select * from atuldb.product where profit>300000 order by country asc;
select * from atuldb.product order by sales desc limit 5;
select discount from atuldb.product where country="USA" order by product_name ;
select * from atuldb.product where country="USA" order by product_name desc;
select * from atuldb.product limit 10;
select * from atuldb.product where not country="USA";
select * from atuldb.product where  Country in('UK','USA','Imdia');
select sum(sales) from atuldb.product where country in('India','Bangladesh');
select avg(profit) from atuldb.product;

select * from atuldb.product where country like "U%";
select * from atuldb.product where 
---contains in sql
---Not Null
---Unique
---default
---check
---Primary Key
--- Foreign key
--- create data base 
--- commit , rollback
create database note;
create table note.imp_topic(topic_no int primary key auto_increment, topic_name varchar(100), discription varchar(100),key_point varchar(100));
-------------------------------------------------------------------------------------------------------------------------------------------
select * from atuldb.super_store_sales_data;
select sum(profit) from atuldb.super_store_sales_data;
select country,max(sales) from atuldb.super_store_sales_data group by country;
------------------------------------------------------------------------------------------------------------------------------------------
select * from atuldb.employee_report;
select name,salary from atuldb.employee_report order by salary  desc limit 1;
gifttoatul@g
select min(salary) from atuldb.employee_report;
----------------------------------------------------------------------------------------------------------
select name,salary,rank() over(order by salary desc) from atuldb.employee_report;
 
select * from atuldb.customers;
select 
concat(first_name, ' ', last_name)as full_name, age, city from atuldb.customers;
------------------------------------------------------------------------------------------------------------------------------------------
select * from atuldb.employee_report;
-- show how many employee have a doj is 2023 as a joining year ?
-------------------------------------------------------------------------------------------
-- windows function-- row number, rank, dense_rank,NTile
select * from atuldb.employee_report;
select city,Country,Sales, row_number() over( partition by sales ) from atuldb.super_store_sales_data;
select distinct department ,name from atuldb.employee_report;
-- join-- inner,
describe atuldb.employee_report;
-------------------------------------------------------------------------------------------------------------------------------------------
select * from atuldb.employee_report;
select distinct dayname(doj) as joining_day, count(department) from atuldb.employee_report group by joining_day order by  joining_day;
---------------------------------------------------------------------------------------------------------------------------------------
use atuldb;
select * from employee_report;
-- update salary 2000 when salary lesser than 40000
update employee_report
set salary =salary+2000
where salary <40000;
-- alter table name
alter table employee_report
Rename  employee_detalis;
rename table employee_detalis to employee_report;
alter table employee_report modify name varchar(50 );
------------------------------------------------------------------------------------
use atuldb;

create table students
(
id int not null unique auto_increment,
name varchar(100) not null,
email varchar(100) not null unique,
city_id int null,
primary key (id),
foreign key (city_id)
);
-----------------------------------------------------------------------------------------------------------------------------------------
select name, salary, @var:=@var+salary as cum_salary from atuldb.employee_report, (select @var:=0) as a;
-----------------------------------------------------------------
SELECT e.employee_name  FROM employees e1 JOIN managers m1 ON e1.employee_id = m1.employee_id
WHERE m1.manager_id = 'specific_manager';
-- 
select * from atuldb.employee_report order by salary desc limit 1,1;
select max(salary) as second_highest from atuldb.employee_report  where salary < (select max(salary) from atuldb.employee_report);
select max(salary) as second_highest from atuldb.employee_report where salary not in (select max(salary) from atuldb.employee_report);
select salary as 11th_salary from atuldb.employee_report as e1 where 11-1=(select count(distinct salary) from atuldb.employee_report 
as e2 where e1.salary<e2.salary);
select * from ( select id,name,salary,dense_rank() over(order by salary desc) as salary_rank from atuldb.employee_report) as a where salary_rank=5;
insert into atuldb.employee_report value(1,"Atul","M","2023-12-01","IT",57500,7007289833);
select * from atuldb.employee_report;
use atuldb;
delete e1 from employee_report e1,employee_report e2  where e1.salary=e2.salary and e1.id<e2.id;
select substring(name,1,2) from atuldb.employee_report;
select count(*),gender from employee_report where  year(doj) =2023 group by gender;
select count(*),gender from employee_report where  year(doj) between 2020 and 2023 group by gender;
select * from employee_report where id<(select count(id)/2 from employee_report )order by id ;



