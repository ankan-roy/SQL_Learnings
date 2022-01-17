-- Create database/schema
CREATE DATABASE "SQL TUTORIAL";

-- Create Table
CREATE TABLE EmployeeDemographics(
    EmployeeID INT,
    Firstname VARCHAR(50),
    Lastname VARCHAR(50),
    Age INT,
    Gender VARCHAR(50)
);

Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
);

-- INSERT DATA
INSERT INTO EmployeeDemographics VALUES 
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

-- Query
Select * FROM EmployeeDemographics;
SELECT * FROM [SQL TUTORIAL].dbo.EmployeeDemographics; -- when we select different database
SELECT top 5 * from EmployeeDemographics;
select distinct (gender) from EmployeeDemographics;
select count (Lastname) from EmployeeDemographics;
SELECT MAX(Salary) from EmployeeSalary; -- MIN AND AVG

/* WHERE Statement
=, <> , < , > , and , or , like , null , not null , in 
*/ 
SELECT * from EmployeeDemographics where age = 30 or gender = 'Male';
SELECT * FROM EmployeeDemographics WHERE Lastname LIKE '%s%o%'; -- % is a wildcard
SELECT * from EmployeeDemographics where Lastname in ('scott','hudson'); -- multiple equal statements
select * from EmployeeDemographics where Lastname = 'scott' or Lastname = 'hudson';

/* Group By and Order By */ 
select gender, count(gender) from EmployeeDemographics group by Gender; -- Count here is a derived column and not a real column
select gender, count(gender) as genderCount from EmployeeDemographics where age > 31 group by gender ;
select gender, count(gender) as genderCount from EmployeeDemographics where age > 31 group by gender order by genderCount desc;

select * from EmployeeDemographics order by age desc , Gender desc ; -- by default it is desc nature
select gender, count(gender) as genderCount from EmployeeDemographics where age > 31 group by gender order by gender ;
select * from EmployeeDemographics order by 1 desc,2; -- 1,2 is the column number. 1 -> EmployeeID and so on. 