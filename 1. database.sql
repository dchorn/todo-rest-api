CREATE DATABASE IF NOT EXISTS todo_api;
USE todo_api;

CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO tasks (title, description, completed) VALUES
('Setup project', 'Initialize REST API structure', TRUE),
('Create endpoints', 'Build CRUD operations', FALSE),
('Write documentation', 'Add README with examples', FALSE);