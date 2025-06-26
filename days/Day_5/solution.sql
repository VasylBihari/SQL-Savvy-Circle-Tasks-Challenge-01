SELECT 
	department_name,
    ROUND(AVG(salary),2) AS avg_salary
FROM Employees e
JOIN Departments d ON e.department_id=d.department_id
GROUP BY department_name
HAVING COUNT(employee_id) > 2
ORDER BY avg_salary DESC;
