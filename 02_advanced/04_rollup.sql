-- SELECT EXTRACT(
--         YEAR
--         FROM orderdate
--     ) as "year",
--     EXTRACT(
--         MONTH
--         FROM orderdate
--     ) as "month",
--     EXTRACT(
--         DAY
--         FROM orderdate
--     ) as "day",
--     SUM(ol.quantity)
-- FROM orderlines as ol
-- GROUP BY GROUPING SETS(
--         (
--             EXTRACT (
--                 YEAR
--                 FROM orderdate
--             )
--         ),
--         (
--             EXTRACT (
--                 YEAR
--                 FROM orderdate
--             ),
--             EXTRACT (
--                 MONTH
--                 FROM orderdate
--             ),
--         ),
--         (
--             EXTRACT (
--                 YEAR
--                 FROM orderdate
--             ),
--             EXTRACT (
--                 MONTH
--                 FROM orderdate
--             ),
--             EXTRACT (
--                 DAY
--                 FROM orderdate
--             ),
--         )
--         .
--         .
--         .
--         .
--     )
SELECT EXTRACT(
        YEAR
        FROM orderdate
    ) as "year",
    EXTRACT(
        MONTH
        FROM orderdate
    ) as "month",
    EXTRACT(
        DAY
        FROM orderdate
    ) as "day",
    SUM(ol.quantity)
FROM orderlines as ol
GROUP BY ROLLUP(
        EXTRACT(
            YEAR
            FROM orderdate
        ),
        EXTRACT(
            MONTH
            FROM orderdate
        ),
        EXTRACT(
            DAY
            FROM orderdate
        )
    )