-- SELECT
--     customer_name,
--     product_name,
--     -- alias  
--     volume AS total_sales,
--     date_created
-- FROM
--     sales
-- SELECT
--     *
-- FROM
--     sales
-- WHERE
--     date_created > '2021-11-01' AND date_created < '2022-05-01';
SELECT
    *
FROM
    sales
WHERE
    date_created BETWEEN '2021-11-01'
    AND '2022-05-01';