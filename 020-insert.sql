-- INSERT INTO
--     sales(
--         customer_name,
--         product_name,
--         volume,
--         is_recurring
--     )
-- VALUES
--     ('Max Schwarz', 'A Book', 12.99, TRUE)
INSERT INTO
    sales (
        fulfilled_at,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES
    (
        NULL,
        'Learning Inc',
        'Course Bundle',
        4889.32,
        FALSE,
        FALSE
    ),
    (
        '2024-03-16 10:00:00',
        'Big Oil Inc.',
        'Trucks',
        40000.0,
        FALSE,
        TRUE
    );