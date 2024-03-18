SELECT
    *
FROM
    addresses as a
    LEFT JOIN users as u ON a.id = u.address_id
    LEFT JOIN cities as cc on c.id = a.city_id;