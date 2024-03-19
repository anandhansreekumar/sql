-- INSERT INTO
--     cities (name)
-- VALUES
--     ('Berlin'),
--     ('New York'),
--     ('London');
-- INSERT INTO
--     addresses(street, house_number, city_id)
-- VALUES
--     ('Teststreet', '8A', 3),
--     ('Some street', '10A', 1),
--     ('Teststreet', '1', 3),
--     ('My street', '101', 2);

-- INSERT INTO
--     users (first_name, last_name, email, address_id)
-- VALUES
--     ('Max', 'Schwarz', 'max@test.com', 2),
--     ('Manuel', 'Lorez', 'manuel@test.com', 4),
--     ('Julie', 'Barnes', 'julie@test.com', 2);


INSERT INTO cities (name)
VALUES ('Munich'), ('Rome'), ('Tokyo'), ('Washington, D.C.');

INSERT INTO addresses (street, house_number, city_id)
VALUES 
  ('Beerstreet', '91', 4),
  ('Beerstreet', '12', 4),
  ('Pizzastreet', '1', 5),
  ('Burgerstreet', '9', 2),
  ('Anotherstreet', '12', 1),
  ('Smallstreet', '11', 3);


INSERT INTO users (first_name, last_name, email, address_id)
VALUES 
  ('Marina', 'Marks', 'marina@test.com', 2),
  ('Hans', 'Mayer', 'hansm@test.com', 5),
  ('Maria', 'Marionatti', 'maria@test.com', 7),
  ('Michael', 'Smith', 'michael@test.com', 8);