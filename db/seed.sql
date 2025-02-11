TRUNCATE booking_children, bookings, children, events, users RESTART IDENTITY CASCADE;

INSERT INTO users (first_name, last_name, email, password) VALUES 
('Alice', 'Johnson', 'alice@example.com', 'hashedpassword123'),
('Bob', 'Smith', 'bob@example.com', 'hashedpassword456');

INSERT INTO children (user_id, name, dob) VALUES 
(1, 'Emma Johnson', '2020-05-15'),
(1, 'Noah Johnson', '2018-09-22'),
(2, 'Oliver Smith', '2019-02-10');

INSERT INTO events (title, category, date, time, location, price, description, is_accessible) VALUES
('Baby Music Class', 'Music', '2024-03-15', '10:30', 'Central Library', 5.00, 'A fun music session for babies and toddlers.', TRUE),
('Theatre Show: Cinderella', 'Theatre', '2024-03-20', '14:00', 'Royal Theatre', 15.00, 'A magical theatre experience for kids.', TRUE),
('Soft Play Adventure', 'Soft Play', '2024-04-05', '11:00', 'Kids Fun Zone', 8.00, 'An active play session for young children.', FALSE);

INSERT INTO bookings (user_id, event_id, booking_date) VALUES 
(1, 1, '2024-03-01'), 
(1, 2, '2024-03-05'), 
(2, 3, '2024-03-10');

INSERT INTO booking_children (booking_id, child_id) VALUES 
(1, 1), -- Alice booked Emma for Baby Music Class
(1, 2), -- Alice booked Noah for Baby Music Class
(2, 1), -- Alice booked Emma for Cinderella Theatre
(3, 3); -- Bob booked Oliver for Soft Play Adventure