CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    -- email VARCHAR(200) REFERENCES intranet_accounts(email) ON DELETE
    email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts(
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

-- In 1:1 relationship we can place the relationship column in any table unlike 1:n, n:n