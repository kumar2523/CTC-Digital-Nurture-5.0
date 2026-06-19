DROP TABLE IF EXISTS Employee_Audit;
DROP TABLE IF EXISTS Employees_TR;
GO

CREATE TABLE Employees_TR
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT
);
GO

CREATE TABLE Employee_Audit
(
    AuditID INT IDENTITY(1,1),
    EmployeeID INT,
    ActionPerformed VARCHAR(50)
);
GO

CREATE TRIGGER trg_AfterInsertEmployee
ON Employees_TR
AFTER INSERT
AS
BEGIN

    INSERT INTO Employee_Audit
    (
        EmployeeID,
        ActionPerformed
    )
    SELECT
        EmployeeID,
        'INSERT'
    FROM inserted;

END;
GO

INSERT INTO Employees_TR
VALUES
(1,'John',70000);
GO

SELECT * FROM Employee_Audit;
GO