-- CREATE DATABASE sales_example;
CREATE TABLE sales(
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_DATE,
    fulfilled_at TIMESTAMP,
    customer_name VARCHAR(300) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volume NUMERIC(10, 3) NOT NULL CHECK (volume >= 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
)