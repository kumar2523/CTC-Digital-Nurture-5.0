DROP TABLE IF EXISTS Employees_CS;
GO

CREATE TABLE Employees_CS
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT
);
GO

INSERT INTO Employees_CS VALUES
(1,'John',70000),
(2,'David',50000),
(3,'Smith',60000),
(4,'Alex',80000),
(5,'Mike',45000);
GO

DECLARE @EmployeeName VARCHAR(50);

DECLARE EmployeeCursor CURSOR
FOR
SELECT EmployeeName
FROM Employees_CS;

OPEN EmployeeCursor;

FETCH NEXT FROM EmployeeCursor
INTO @EmployeeName;

WHILE @@FETCH_STATUS = 0
BEGIN

    PRINT @EmployeeName;

    FETCH NEXT FROM EmployeeCursor
    INTO @EmployeeName;

END;

CLOSE EmployeeCursor;

DEALLOCATE EmployeeCursor;
GO