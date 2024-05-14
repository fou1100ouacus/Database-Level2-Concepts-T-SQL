SELECT 
    EmployeeID,
    CASE DepartmentID
        WHEN 1 THEN 'Engineering'
        WHEN 2 THEN 'Human Resources'
        WHEN 3 THEN 'Sales'
        ELSE 'Other'
    END AS DepartmentName
FROM Employees;
-------------------
select * from Employees
select * from sales
-----
use C21_DB1
---------------------------

-------
SELECT 
   SaleID,
    CASE 
        WHEN SaleAmount <= 30000 THEN 'Entry Level'
        WHEN SaleAmount BETWEEN 30001 AND 60000 THEN 'Mid Level'
        WHEN SaleAmount > 60000 THEN 'Senior Level'
        ELSE 'Not Specified'
    END AS level
FROM Sales;