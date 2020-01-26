-- This page has enough information about JOINS in SQL Server.

Create table tblDepartment
(
     ID int primary key,
     DepartmentName nvarchar(50),
     Location nvarchar(50),
     DepartmentHead nvarchar(50)
)
Go

Insert into tblDepartment values (1, 'IT', 'London', 'Rick')
Insert into tblDepartment values (2, 'Payroll', 'Delhi', 'Ron') 
Insert into tblDepartment values (3, 'HR', 'New York', 'Christie')
Insert into tblDepartment values (4, 'Other Department', 'Sydney', 'Cindrella')
Go

Create table tblEmployee
(
     ID int primary key,
     Name nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     DepartmentId int foreign key references tblDepartment(Id)
)
Go

Insert into tblEmployee values (1, 'Tom', 'Male', 4000, 1)
Insert into tblEmployee values (2, 'Pam', 'Female', 3000, 3)
Insert into tblEmployee values (3, 'John', 'Male', 3500, 1)
Insert into tblEmployee values (4, 'Sam', 'Male', 4500, 2)
Insert into tblEmployee values (5, 'Todd', 'Male', 2800, 2)
Insert into tblEmployee values (6, 'Ben', 'Male', 7000, 1)
Insert into tblEmployee values (7, 'Sara', 'Female', 4800, 3)
Insert into tblEmployee values (8, 'Valarie', 'Female', 5500, 1)
Insert into tblEmployee values (9, 'James', 'Male', 6500, NULL)
Insert into tblEmployee values (10, 'Russell', 'Male', 8800, NULL)
Go

SELECT * FROM tblDepartment
SELECT * FROM tblEmployee

-- CROSS JOIN
-- CROSS JOIN, produces the cartesian product of the 2 tables involved in the join.
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee CROSS JOIN tblDepartment


-- JOIN or INNER JOIN
-- INNER JOIN, returns only the matching rows between both the tables.
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee INNER JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id
-- (OR)
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id


-- LEFT JOIN or LEFT OUTER JOIN
-- LEFT JOIN, returns all the matching rows + non matching rows from the left table.
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee LEFT OUTER JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id
-- (OR)
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee LEFT JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id


-- RIGHT JOIN or RIGHT OUTER JOIN 
-- RIGHT JOIN, returns all the matching rows + non matching rows from the right table.
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee RIGHT OUTER JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id
-- (OR)
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee RIGHT JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id


-- FULL JOIN or FULL OUTER JOIN
-- FULL JOIN, returns all rows from both the left and right tables, including the non matching rows.
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee FULL OUTER JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id
-- (OR)
SELECT Name, Gender, Salary, DepartmentName FROM tblEmployee FULL JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.Id


