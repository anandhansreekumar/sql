SELECT
    booking_date,
    amount_tipped,
    RANK() OVER(
        PARTITION BY booking_date
        ORDER BY
            amount_tipped DESC
    )
FROM
    bookings