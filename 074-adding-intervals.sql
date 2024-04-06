-- SELECT
--     membership_start,
--     membership_start + 7
-- FROM
--     memberships;
SELECT
    (membership_start + INTERVAL '7 MONTHS') :: DATE,
    membership_start
FROM
    memberships;