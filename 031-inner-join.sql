SELECT
    u.id,
    first_name,
    last_name,
    street,
    house_number,
    city_id
FROM
    users AS u
    INNER JOIN addresses as a ON u.address_id = a.id
    INNER JOIN cities as c ON a.city_id = c.id