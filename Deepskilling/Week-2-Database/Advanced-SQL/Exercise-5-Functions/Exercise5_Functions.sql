CREATE TABLE Employees_FN
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT
);

INSERT INTO Employees_FN VALUES
(1,'John',70000),
(2,'David',50000),
(3,'Smith',60000),
(4,'Alex',80000),
(5,'Mike',45000);
CREATE FUNCTION GetAnnualSalary
(
    @MonthlySalary INT
)

RETURNS INT

AS

BEGIN

    RETURN @MonthlySalary * 12

END;