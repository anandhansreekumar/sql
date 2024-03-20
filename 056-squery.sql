SELECT
    e1.first_name,
    e1.last_name,
    e2.first_name as supervisor_first_name,
    e2.last_name as supervisor_last_name
FROM
    employees as e1
    INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id