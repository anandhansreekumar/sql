SELECT CONCAT(e.first_name, ' ', e.last_name) as "name",
    s.salary
FROM employees as e
    INNER JOIN salaries as s ON s.emp_no = e.emp_no