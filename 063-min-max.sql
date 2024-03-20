-- SELECT
--     MAX(num_seats)
-- from
--     tables
-- SELECT
--     MAX(amount_billed) as max_billed,
--     MAX(amount_tipped) as max_tipped
-- FROM
--     bookings;
SELECT
    MIN(category),
    MAX(category)
FROM
    tables;