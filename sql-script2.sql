-- Create a database
CREATE DATABASE IF NOT EXISTS amal124;

-- Use the created database
USE amal124;

-- Create a table
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Insert some data into the table
INSERT INTO users (id, username, email) VALUES
(1, 'ama', 'john@example.com'),
(2, 'kic', 'janre@example.com');
select * from users;
