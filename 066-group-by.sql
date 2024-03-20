-- SELECT
--     booking_date,
--     SUM(num_guests)
-- FROM
--     bookings
-- GROUP BY
--     booking_date;
-- SELECT
--     pm.name as payment_name,
--     SUM(num_guests)
-- FROM
--     bookings AS b
--     INNER JOIN payment_methods as pm ON b.payment_id = pm.id
-- GROUP BY
--     pm.name
SELECT
    pm.name as payment_name,
    b.booking_date,
    SUM(num_guests) as total_guests,
    ROUND(AVG(b.amount_tipped)) as avg_amount_tipped
FROM
    bookings AS b
    INNER JOIN payment_methods as pm ON b.payment_id = pm.id
GROUP BY
    pm.name,
    b.booking_date