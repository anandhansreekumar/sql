-- SELECT
--     e.id as employee_id,
--     e.first_name,
--     e.last_name,
--     p.title
-- FROM
--     employees AS e
--     LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
--     LEFT JOIN projects AS p ON pe.project_id = p.id
-- SELECT
--     e.id as employee_id,
--     e.first_name,
--     e.last_name,
--     t.name as team_name
-- FROM
--     employees AS e
--     INNER JOIN teams AS T ON e.team_id = t.id
-- WHERE
--     t.id = 2;
SELECT
    e.id as employee_id,
    e.first_name,
    e.last_name,
    t.name as t_name,
    cb.name as building_name
FROM
    employees as e
    INNER JOIN teams as t ON e.team_id = t.id
    INNER JOIN company_buildings as cb ON t.building_id = cb.id
WHERE
    cb.id = 3
ORDER BY
    e.id ASC;