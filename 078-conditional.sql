-- SELECT
--     amount_billed,
--     CASE
--         WHEN amount_billed > 15
--         AND amount_billed <  THEN 'Normal day'
--         WHEN amount_billed > 30 THEN 'Good day'
--         ELSE 'Bad day'
--     END
-- FROM
--     orders;
SELECT
    day_number,
    CASE
        WHEN day_number = 0 THEN 'Monday'
        WHEN day_number = 1 THEN 'Tuesday'
        WHEN day_number = 2 THEN 'Wednesday'
        WHEN day_number = 3 THEN 'Thursday'
        WHEN day_number = 4 THEN 'Friday'
        WHEN day_number = 5 THEN 'Saturday'
        WHEN day_number = 6 THEN 'Sunday'
    END
FROM
    (
        SELECT
            EXTRACT(
                ISODOW
                FROM
                    last_checkin
            ) as day_number
        FROM
            memberships
    ) as weekday_numbers;