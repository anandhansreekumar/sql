-- Concat 
SELECT CONCAT(first_name, ' ', last_name) as "full_name"
FROM employees
LIMIT 10;
-- Count
SELECT COUNT(*)
FROM employees;
-- Max
SELECT MAX(salary)
FROM salaries;
-- Count 
SELECT COUNT(*)
FROM salaries;