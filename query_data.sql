-- Retrieve all users with events they registered for
SELECT u.username, e.event_name, r.registration_date
FROM Registrations r
JOIN Users u ON r.user_id = u.user_id
JOIN Events e ON r.event_id = e.event_id
ORDER BY r.registration_date;

-- Create a view for a simplified user-event registration table
CREATE VIEW UserEventRegistrations AS
SELECT u.username, e.event_name, e.event_date, e.event_location
FROM Registrations r
JOIN Users u ON r.user_id = u.user_id
JOIN Events e ON r.event_id = e.event_id;

-- Trigger: Automatically log event deletion
CREATE TABLE EventLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100),
    action VARCHAR(50),
    log_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER after_event_delete
AFTER DELETE ON Events
FOR EACH ROW
BEGIN
    INSERT INTO EventLogs (event_name, action) 
    VALUES (OLD.event_name, 'DELETED');
END $$

DELIMITER ;

-- Stored procedure to get all events by a particular user
DELIMITER $$

CREATE PROCEDURE GetUserEvents(IN userName VARCHAR(50))
BEGIN
    SELECT e.event_name, e.event_date, e.event_location
    FROM Registrations r
    JOIN Users u ON r.user_id = u.user_id
    JOIN Events e ON r.event_id = e.event_id
    WHERE u.username = userName;
END $$

DELIMITER ;

-- Execute the procedure
CALL GetUserEvents('shriraj');
