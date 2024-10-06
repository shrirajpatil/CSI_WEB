-- Add data constraints
ALTER TABLE Users
ADD CONSTRAINT chk_username_length CHECK (CHAR_LENGTH(username) >= 3);

ALTER TABLE Events
ADD CONSTRAINT chk_event_name_length CHECK (CHAR_LENGTH(event_name) >= 5);

-- Add foreign key constraint to link a new table for event categories
CREATE TABLE EventCategories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

-- Insert categories
INSERT INTO EventCategories (category_name)
VALUES ('Technology'), ('Business'), ('Education');

-- Alter Events table to include category_id
ALTER TABLE Events
ADD category_id INT,
ADD FOREIGN KEY (category_id) REFERENCES EventCategories(category_id);
