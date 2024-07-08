SELECT e.emp_no,
    count(t.title) as "amount of titles"
FROM employees as e
    JOIN titles as t USING(emp_no)
WHERE EXTRACT (
        YEAR
        FROM e.hire_date
    ) > 1991
GROUP BY e.emp_no
HAVING count(t.title) > 2
ORDER BY e.emp_no;