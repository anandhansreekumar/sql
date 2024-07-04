SELECT COUNT(*)
FROM employees as e
    LEFT JOIN dept_manager as dm ON e.emp_no = dm.emp_no
WHERE dm.dept_no IS NULL