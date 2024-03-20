-- SELECT
--     ROUND(AVG(amount_tipped))
-- FROM
--     bookings
-- WHERE
--     amount_billed > 20
--     AND num_guests > 2
SELECT
    MAX(b.num_guests),
    MAX(t.num_seats)
FROM
    bookings as b
    INNER JOIN tables as t ON b.table_id = t.id
    INNER JOIN payment_methods as p ON b.payment_id = p.id
WHERE
    t.num_seats < 5
    AND p.name = 'Cash'