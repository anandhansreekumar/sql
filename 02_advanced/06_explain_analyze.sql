EXPLAIN ANALYZE
SELECT *
FROM titles
WHERE title IN (
        'Engineer',
        'Senior Engineer',
        'Assistant Engineer'
    )