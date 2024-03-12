CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');
CREATE TABLE IF NOT EXISTS users (
    full_name VARCHAR(200),
    yearly_salary INT,
    -- current_status ENUM('employed', 'self-employed', 'unemployed') // in SQL
    current_status employment_status
);