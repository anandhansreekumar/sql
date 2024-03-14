CREATE TABLE IF NOT EXISTS employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5,2) -- FLOAT(precision, scale) -- approximation
    yearly_revenue NUMERIC(5, 2),
    -- exact
    is_hiring BOOLEAN DEFAULT FALSE
)