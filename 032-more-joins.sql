SELECT
    c.name as city_name,
    u.first_name,
    u.last_name
FROM
    cities as c
    LEFT JOIN addresses as a ON c.id = a.city_id
    LEFT JOIN users as u ON a.id = u.address_id;