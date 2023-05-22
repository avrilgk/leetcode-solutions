# Write your MySQL query statement below

SELECT Employees.name, employeeuni.unique_id
FROM Employees
left JOIN employeeuni ON Employees.id = Employeeuni.id;