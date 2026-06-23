-- Create the table
CREATE TABLE Employees_SP
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert data
INSERT INTO Employees_SP (EmployeeID, EmployeeName, Department, Salary)
VALUES
(1, 'John', 'IT', 70000),
(2, 'David', 'HR', 50000),
(3, 'Smith', 'Finance', 60000),
(4, 'Alex', 'IT', 80000),
(5, 'Mike', 'Sales', 45000);

-- Create the stored procedure
CREATE PROCEDURE GetEmployeesByDepartment AS
    @DepartmentName VARCHAR(50)
BEGIN
    SELECT
        EmployeeID,
        EmployeeName,
        Department,
        Salary
    FROM Employees_SP
    WHERE Department = @DepartmentName;
END;