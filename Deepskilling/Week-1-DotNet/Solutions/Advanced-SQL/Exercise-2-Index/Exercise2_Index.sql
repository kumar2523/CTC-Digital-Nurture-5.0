CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);


INSERT INTO Employees VALUES
(1,'John','IT',70000),
(2,'David','HR',50000),
(3,'Smith','Finance',60000),
(4,'Alex','IT',80000),
(5,'Mike','Sales',45000);
CREATE INDEX IX_Employee_Department
ON Employees(Department);
SELECT *
FROM Employees
WHERE Department = 'IT';
EXEC sp_helpindex 'Employees';
