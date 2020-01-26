-- This page will give you information about UNION and UNION ALL in SQL Server

Create Table tblIndiaCustomers
(
	ID INT IDENTITY(1,1) Primary Key,
	Name nvarchar(50),
	Email nvarchar(100)
);

Create Table tblUKCustomers
(
	ID INT IDENTITY(1,1) Primary Key,
	Name nvarchar(50),
	Email nvarchar(100)
);

INSERT INTO tblIndiaCustomers values ('Suneel', 's@s.com'),('Shiva', 'sh@sh.com')
INSERT INTO tblUKCustomers values ('Suneel', 's@s.com'),('Ramu', 'r@r.com')

SELECT * FROM tblIndiaCustomers
SELECT * FROM tblUKCustomers

-- Combining the rows of tblIndiaCustomers and tblUKCustomers using UNION ALL
-- // UNION ALL does not removes duplicate rows //
Select Id, Name, Email from tblIndiaCustomers
UNION ALL
Select Id, Name, Email from tblUKCustomers

-- Combining the rows of tblIndiaCustomers and tblUKCustomers using UNION
-- // UNION removes duplicate rows //
Select Id, Name, Email from tblIndiaCustomers
UNION
Select Id, Name, Email from tblUKCustomers
