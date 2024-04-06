SELECT
    amount_billed,
    CASE
        WHEN amount_billed > 15
        AND amount_billed < 30 THEN 'Normal day'
        WHEN amount_billed > 30 THEN 'Good day'
        ELSE 'Bad day'
    END
FROM
    orders;