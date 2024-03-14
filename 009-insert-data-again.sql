INSERT INTO
    employers (
        company_name,
        company_address,
        yearly_revenue,
        is_hiring
    )
VALUES
    (
        'Learning Inc',
        'Education Street 12, London',
        0.87,
        TRUE
    );
INSERT INTO
    employers (
        company_name,
        company_address,
        yearly_revenue
    )
VALUES
    (
        'Big Oil Inc',
        'Slippery Street 110, Houston',
        112.55
    );
INSERT INTO
    employers (
        company_name,
        company_address,
        yearly_revenue,
        is_hiring
    )
VALUES
    (
        'Hipster Food',
        'Avocado Street 22, Berlin',
        6.12,
        TRUE
    );

INSERT INTO
    conversations(user_name, employer_name, message)
VALUES
    (
        'Jane Doe',
        'Learning Inc',
        'Hi, I like learning!'
    )