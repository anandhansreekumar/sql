-- SELECT
--     EXTRACT(
--         MONTH
--         FROM
--             last_checkin
--     )
-- FROM
--     memberships
-- SELECT
--     EXTRACT(
--         DOW
--         FROM
--             last_checkin
--     )
-- FROM
--     memberships
-- SELECT
--     last_checkin :: TIMESTAMP :: DATE,
--     last_checkin :: TIMESTAMP :: TIME
-- FROM
--     memberships
SELECT
    CAST(last_checkin AS DATE),
    CAST(last_checkin AS TIME)
FROM
    memberships;