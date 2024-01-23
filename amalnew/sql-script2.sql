-- Create a database
CREATE DATABASE IF NOT EXISTS amal123;

-- Use the created database
USE amal123;

-- Create a table
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Insert some data into the table
INSERT INTO users (id, username, email) VALUES
(1, 'john_doe', 'john@example.com'),
(2, 'jane_doe', 'jane@example.com');
select * from users;
