-- Insert sample users
INSERT INTO Users (username, password, email) 
VALUES 
('shriraj', 'password123', 'shriraj@example.com'), 
('johnDoe', 'mysecurepass', 'john@example.com'),
('janeSmith', 'pass456', 'jane@example.com');

-- Insert sample events
INSERT INTO Events (event_name, event_date, event_location)
VALUES
('Tech Conference', '2024-11-15', 'Mumbai'),
('AI Workshop', '2024-12-10', 'Pune'),
('Blockchain Summit', '2024-12-25', 'Bangalore');

-- Insert sample registrations
INSERT INTO Registrations (user_id, event_id)
VALUES
(1, 1), -- Shriraj registers for Tech Conference
(2, 2), -- JohnDoe registers for AI Workshop
(3, 3); -- JaneSmith registers for Blockchain Summit
