CREATE TABLE EmployeeDetails
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);
INSERT INTO EmployeeDetails VALUES
(1,'John','IT',70000),
(2,'David','HR',50000),
(3,'Smith','Finance',60000),
(4,'Alex','IT',80000),
(5,'Mike','Sales',45000);
CREATE VIEW IT_Employees_View AS
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary
FROM EmployeeDetails
WHERE Department = 'IT';
SELECT *
FROM IT_Employees_View;
