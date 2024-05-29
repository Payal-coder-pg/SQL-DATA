#1. SQL Query to fetch records that are present in one table but not in another table.
show databases;
use db;
select * from EmployeeSalary;
select * from employeeDetails;
select * from EmployeeSalary
LEFT JOIN employeeDetails on EmployeeSalary.Empid= employeeDetails.Empid;

#2. SQL query to fetch all the employees who are not working on anyproject.
select empname, empjob from tabl where Managerid is null;

#3SQL query to fetch all the Employees from EmployeeDetails who joined in the Year 2020.
select * from employeeDetails where Date_of_Joining between '2020/01/01' AND '2020/12/31';

 #Fetch all employees from EmployeeDetails who have a salary record in EmployeeSalary
 select * from employeeDetails;
 select * from EmployeeSalary;
 select employeeDetails.FullName, EmployeeSalary.Salary from employeeDetails
Inner join EmployeeSalary on employeeDetails.Empid= EmployeeSalary.Empid;
 
  #5. Write an SQL query to fetch a project-wise count of employees. 
 SELECT Project, count(EmpId) EmpProjectCount
FROM EmployeeSalary
GROUP BY Project
ORDER BY EmpProjectCount DESC;
       -- OR
 select Project, count(Empid) as totalporject from EmployeeSalary group by Project order by  totalporject desc;
 
 #6 Fetch employee names and salaries even if the salary value is not present for the employee. 
 select employeedetails.FullName, employeeSalary. Salary 
 from employeeDetails
 inner Join EmployeeSalary on employeedetails.Empid = EmployeeSalary.Empid;
 
#7: find department HR salary 
select Department,max(wages) from customer where Department= 'HR' group by Department;

#8 count of orders in one region
select * from store;
select count(Orders) from store where Region= 'North Asia';

#9.> Can you tell what are the different set operations available in MySQL?
-- set operator allow user to combine multiple quwery and give result in one time. like union, intersect

#10.> Can you tell the order of SQL SELECT statement?
#six operators to orders; select  from where group by having order by

#11> Can you tell how can you display the Maximum salary in SQL?
select max(wages) from customer;

#12  Write a query to fetch the number of employees working in the department ‘HR’;
select count(Custinfo) from customer where Department='HR';

#13 Write a query to get the current date.
select curdate();

# 14. select N top records.
-- select top * from customer; 

# 15 Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. 
select concat ('FName',' ','LNAME') as completename from tablee;
use payal;
#16 Write a query to retrieve Departments who have less than 2 employees working in it.
select  Department, count(*) from customer group by Department having count(*) >1;

#18  What are string data types in MySQL? Explain.
-- CHAR , VARCHAR , BINARY , VARBINARY , BLOB , TEXT , ENUM , and SET .

#19 What is CHAR and VARCHAR in MySQL?
-- CHAR in MySQL stores characters of fixed length. VARCHAR in MySQL stores characters of variable size

#20 How to convert timestamps to date in MySQL?
-- CAST. The CAST() function performs the same way as CONVERT(), i.e., it converts any data types value into the desired data type. 
-- select cast (2.3 as int);

#21. Write a query to get the current time with multiple methods?
select now();

#22. write a query to get the date and time as well?
select now();

#23 SQL Query to find second highest salary of Employee
select max(wages) from customer;

 #24 Write an SQL Query to check whether date passed to Query is date of given format  or not.
select date_format('10/10/2023') as ggo;
SELECT ISDATE('10/1/2020') AS 'MM/DD/YYYY';
use payal;
-- 25  Write a SQL Query to print the name of distinct employee whose DOB is between  01/01/1960 to 31/12/1975
select distinct Custinfo From customer where DOB  between  01/01/1960 and 31/12/1975;

-- 26 Write an SQL Query find number of employees according to gender whose DOB is  between 01/01/1960 to 31/12/1975
select Gender, count(employees) from customer where DOB between  01/01/1960 and 31/12/1975 group by sex;

-- 27 .Write an SQL Query to find employee whose Salary is equal or greater than 10000
select * from customer where wages >=10000;

-- 28.Write an SQL Query to find name of employee whose name Start with ‘M
select * from customer where Custinfo like 'M%';

#29 find all Employee records containing the word "Joe", regardless of whether it was  stored as JOE, Joe, or joe
select * from customer where Custinfo like 'Pay%';
select * from customer where upper(Custinfo) like upper('Pay'); 

# 24 Write a SQL Query to find year from date
select year(curdate()) as years;

#25.Write an SQL query to find the maximum, minimum, and average salary of the employees.
select max(wages), min(wages),avg(wages) from customer;

#26 Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
select Empid,FullName from employeedetails where Managerid='986';

#27. Write an SQL query to fetch the different projects available from the EmployeeSalary table.
select distinct Project from employeesalary;

#Q28  Write an SQL query to fetch the count of employees working in project ‘P1’.
select count(*) from employeesalary where Project='P1';

#q 29. Write an SQL query to find the maximum, minimum, and average salary of the employees.
select max(Salary), min(Salary), avg(Salary) from employeesalary;

#QUE30 Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
select Empid from employeesalary where Salary between 9000 and 15000;

#que 31 Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
select FullName, Managerid, City from employeedetails where Managerid='321' and City='Toronto';

#que 32 Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
select * from employeedetails where City='California' or Managerid='321';

#que 33 Write an SQL query to fetch all those employees who work on Projects other than P1.
Select * from employeesalary where project not like 'P1';
Select * from employeesalary where project <> 'P1';

#qye 34 Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
select  Empid, Salary+ Variable as total_salary  from employeesalary ;

#que 35 Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and 
-- ends with any sequence of characters.
select FullName from employeedetails where FullName like '__hn%';

#que 36 Write an SQL query to fetch all the EmpIds which are present in either of the tables
# – ‘EmployeeDetails’ and ‘EmployeeSalary’.

select Empid from employeesalary
union all
select Empid from employeedetails;

#que 37 Write an SQL query to fetch common records between two tables
select * from employeesalary inner join employeedetails on employeesalary.Empid = employeedetails.Empid;

SELECT EmpId FROM employeedetails
UNION 
SELECT EmpId FROM employeesalary;

 #que 38 Write an SQL query to fetch common records between two tables.
SELECT EmpId FROM employeedetails
intersect;
-- SELECT EmpId FROM employeesalary;
                         #OR
select * from employeesalary where Empid in (select EMpid from employeedetails );

#que 39 Write an SQL query to fetch records that are present in one table but not in another table.
SELECT EmpId FROM employeedetails;
#minus ;
SELECT EmpId FROM employeesalary;

#OR
select * from employeedetails left join employeesalary on employeedetails.Empid = employeesalary.Empid;

SELECT employeesalary.*
FROM employeesalary
LEFT JOIN
employeesalary USING (Empid)
WHERE employeedetails.Empid IS NULL;

#que 40 Write an SQL query to fetch the EmpIds that are present in both the tables –  ‘EmployeeDetails’ and ‘EmployeeSalary.
select Empid from employeedetails
union all
select Empid from employeesalary;

#OR using subquery
select Empid from employeedetails where Empid in (select Empid from employeesalary);

#que 41 Write an SQL query to fetch the EmpIds that are present in EmployeeDetails but not in EmployeeSalary.
select Empid from employeedetails where Empid  not in (select Empid from employeesalary);

#que 42 Write an SQL query to fetch the employee’s full names and replace the space with ‘-’.
select replace(FullName,' ','-') as Names from employeedetails;

#que 43 Write an SQL query to fetch the position of a given character(s) in a field.
-- using instr
select instr(FullName, 'j')
from employeedetails;

#que44 Write an SQL query to display both the EmpId and ManagerId togethe
select concat(Empid,' ',Managerid) as details from employeedetails;

# que 45 Write a query to fetch only the first name(string before space) from the FullName column of the EmployeeDetails table.

#NOTES = In this question, we are required to first fetch the location of the space character in the FullName
 #field and then extract the first name out of the FullName field. For finding the location we will use the 
 #LOCATE method in MySQL and CHARINDEX in SQL SERVER and for fetching the string before space, we will use the SUBSTRING
 #OR MID method.

#using MID
SELECT MID(FullName, 1, LOCATE(' ',FullName)) from employeedetails;

#using substring
SELECT SUBSTRING(FullName, 1, locate(' ',FullName)) 
FROM employeedetails;

#QUE 46 Write an SQL query to uppercase the name of the employee and lowercase the city values.
select upper(FullName) , lower(City) from employeedetails;


#========================================
use db;
select * from mytabel;
 alter table duplicates  rename column  firstn to nam;
 alter table duplicates  rename to mytabel;
 
 select * from employeedetails;
 SELECT SUBSTRING(FullName, 1, locate(' ' ,FullName)) 
FROM employeedetails;

select trim('       Payal     ') as names ;

select rtrim('       Payal     ') as names ;
select ltrim('       Payal     ') as names ;
#=================================================
#Types of JOIN
#Inner JOin - show common values of two tables
#left join - show left table + common values of right table
#right join - show right table + common values of left table
#full outser join - join all values from both the table
#cross join = shows possible combination of each row from the table.

#==================================================
 #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
#SQL RELATIOANL KEYS IN DBMS
#KEYS IS A SET OF ATTRIBUTES THAT UNIQUALLY INDENTIFY ANY RECORD. IT IS ALSO USE TO INDENTIFY THE RELATIONSHIP BETWEEN THE TABLES

#primary key - it contains not null + unique value
#super key - IT IS A COMBINATION OF ALL POSSIBLE ATTRIBUTES THAT CAN UNIQUELY IDENTIFY THE ROW. IT IS A SUBSET OF CANDIDATE KEY 
#AND A TABLE CAN HAVE MANY SUPER KEYS.

#FOREIGN  KEY - IT IS USE TO LINK TWO TABLE , a COLUMN ATTRIBUTE OF ONE TABLE REFERS TO ANOTHER TABLE PRIMARY KEY CALLED
#FOREIGN KEY AND IT CAN TAKE THE NULL VALUES

#COMPOSITE KEY - A KEY MORE THAN HAS ONE ATTRIBUTES CALLED COMPOSITE KEY AND IT ALSO KNOWN AS COMPOUND KEY
#EXAMPLE= PRIMARY KEY + NORMAL COLUMN

#candidate key - IT CONTAINS UNIQUE VALUE LIKE PHONE NUMER , ADHAR NUMBER, ID BUT ONLY ONE KEY SHOULD BE primary key.

#ALTERNATE KEYS - OUT OF ALL CANDIDATE KEY , THE REMAINING KEY CALLED ATLERNATIVE KEY {NOT PRIMARY KEY}
#unique key   

#==========================================================
#Inner Join 
select * from suyal;
select * from projects;

select suyal.employee_name , projects.project_manager, suyal.salary
from suyal
inner join projects on suyal.project = projects.project;






















