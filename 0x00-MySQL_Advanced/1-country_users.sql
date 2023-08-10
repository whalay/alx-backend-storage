-- Create a table "users" if it doesn't exist
CREATE TABLE IF NOT EXISTS users (
    -- Auto-incrementing primary key
    id SERIAL PRIMARY KEY,
    -- Unique email, not null
    email VARCHAR(255) NOT NULL UNIQUE,
    -- Name field
    name VARCHAR(255),
    -- Country enumeration with default value
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
