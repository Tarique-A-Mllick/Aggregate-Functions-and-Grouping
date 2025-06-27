CREATE DATABASE Employee;
USE Employee;

-- Create the Employee table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10,2),
    Age INT
);

-- Insert sample data
INSERT INTO Employee (EmpID, EmpName, Department, Salary, Age) VALUES
(1, 'Alice', 'HR', 55000.00, 30),
(2, 'Bob', 'IT', 70000.00, 28),
(3, 'Charlie', 'Finance', 60000.00, 35),
(4, 'David', 'IT', 72000.00, 32),
(5, 'Eve', 'HR', 53000.00, 45),
(6, 'Frank', 'Finance', 58000.00, 38),
(7, 'Grace', 'IT', 75000.00, 29),
(8, 'Heidi', 'HR', 50000.00, 26),
(9, 'Ivan', 'Marketing', 47000.00, 40),
(10, 'Judy', 'Marketing', 48000.00, 27);

-- 1. Total Salary Paid to All Employees
SELECT SUM(Salary) AS TotalSalary
FROM Employee;

-- 2. Average Salary by Department
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department;

-- 3. Total Number of Employees in Each Department
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department;

-- 4. Total and Average Salary per Department
SELECT Department, SUM(Salary) AS TotalSalary, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY Department;

-- 5. Departments with More Than 2 Employees
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;

-- 6. Departments Where Average Salary > 60000
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 60000;

-- 7. Youngest and Oldest Employee Age in Each Department
SELECT Department, MIN(Age) AS YoungestAge, MAX(Age) AS OldestAge
FROM Employee
GROUP BY Department;

-- 8. Total Salary by Age
SELECT Age, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Age;

-- 9. Number of Employees by Age
SELECT Age, COUNT(*) AS NumberOfEmployees
FROM Employee
GROUP BY Age;

-- 10. Departments Where Total Salary > 150000
SELECT Department, SUM(Salary) AS DepartmentTotalSalary
FROM Employee
GROUP BY Department
HAVING SUM(Salary) > 150000;
