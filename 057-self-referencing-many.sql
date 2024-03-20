CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300),
    last_name VARCHAR(300)
);

CREATE TABLE users_friends (
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    friend_id INT REFERENCES users(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, friend_id),
    -- composite
    CHECK (user_id < friend_id)
)