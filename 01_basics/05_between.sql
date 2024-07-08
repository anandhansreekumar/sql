-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
SELECT *
FROM customers
WHERE age BETWEEN 30 AND 50
    AND income < 50000;
-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
SELECT AVG(income)
FROM customers
WHERE age BETWEEN 20 AND 50;
-- SELECT 
--   payment_id, 
--   amount, 
--   payment_date 
-- FROM 
--   payment 
-- WHERE 
--   payment_date BETWEEN '2007-02-15' AND '2007-02-20' 
--   AND amount > 10 
-- ORDER BY 
--   payment_date;
-- NOT BETWEEN