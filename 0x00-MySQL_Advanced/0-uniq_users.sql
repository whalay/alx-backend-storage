-- Create a table "users" with specified attributes
CREATE TABLE IF NOT EXISTS users (
    -- Auto-incrementing primary key
    id SERIAL PRIMARY KEY,
    -- Unique email, not null
    email VARCHAR(255) NOT NULL UNIQUE,
    -- Name field
    name VARCHAR(255)
);
