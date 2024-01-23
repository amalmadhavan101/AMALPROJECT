-- Create a database
CREATE DATABASE IF NOT EXISTS amal123;

-- Use the created database
USE amal123;

-- Create a table
CREATE TABLE IF NOT EXISTS amalt (
    id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Insert some data into the table
INSERT INTO amalt (id, username, email) VALUES
(3, 'john_doe', 'john@example.com'),
(4, 'jane_doe', 'jane@example.com');
select * from amalt;
