-- SELECT
--     price * billing_frequency as annual_revenue
-- FROM
--     memberships
SELECT
    -- CEIL(consumption)
    -- FLOOR(consumption)
    -- ROUND(consumption)
    TRUNC(consumption)
FROM
    memberships