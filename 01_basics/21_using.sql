SELECT e.emp_no,
    e.first_name
FROM employees as e
    INNER JOIN dept_emp as de USING(emp_no)