/*
 *  Calculate the total amount of employees per department and the total using grouping sets
 *  Database: Employees
 *  Table: Employees
 */
SELECT dept_no,
    COUNT(emp_no)
FROM dept_emp
GROUP BY GROUPING SETS ((),(dept_no))
ORDER BY dept_no;
/*
 *  Calculate the total average salary per department and the total using grouping sets
 *  Database: Employees
 *  Table: Employees
 */
SELECT dept_no,
    AVG(salary)
FROM salaries
    INNER JOIN dept_emp USING(emp_no)
GROUP BY GROUPING SETS ((),(dept_no))
ORDER BY dept_no