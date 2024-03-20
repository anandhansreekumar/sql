-- SELECT
--     COUNT(*) as num_of_bookings
-- FROM
--     bookings
-- SELECT
--     COUNT(amount_tipped)
-- FROM
--     bookings
SELECT
    COUNT(DISTINCT booking_date)
FROM
    bookings