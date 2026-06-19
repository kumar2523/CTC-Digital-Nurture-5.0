Index Exercise Summary

Created an index on Department column of Employees table.

Index Name:
IX_Employee_Department

Purpose:
Improves search performance when filtering employees by department.

Query tested:

SELECT *
FROM Employees
WHERE Department = 'IT';