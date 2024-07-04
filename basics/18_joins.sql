-- SELECT e.emp_no,
--     CONCAT(e.first_name, ' ', e.last_name) as "name",
--     s.salary
-- FROM employees as e
--     INNER JOIN salaries as s ON s.emp_no = e.emp_no
-- ORDER BY e.emp_no
SELECT e.emp_no,
    CONCAT(e.first_name, ' ', e.last_name) as "name",
    t.title,
    s.salary,
    t.from_date as "promoted_on"
FROM employees as e
    INNER JOIN salaries as s ON s.emp_no = e.emp_no
    INNER JOIN titles as t on t.emp_no = e.emp_no
    AND t.from_date = s.from_date + INTERVAL '2 days'
ORDER BY e.emp_no