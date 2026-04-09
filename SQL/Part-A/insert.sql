INSERT INTO users VALUES
('u3', 'Rahul Sharma', '9000000001', 'rahul@example.com', 'Pune'),
('u4', 'Priya Mehta', '9000000002', 'priya@example.com', 'Mumbai'),
('u5', 'Amit Verma', '9000000003', 'amit@example.com', 'Delhi'),
('u6', 'Sneha Patil', '9000000004', 'sneha@example.com', 'Nagpur'),
('u7', 'Karan Singh', '9000000005', 'karan@example.com', 'Jaipur');

INSERT INTO bookings VALUES
('b4', '2021-10-05 09:00:00', '104', 'u3'),
('b5', '2021-10-15 11:30:00', '105', 'u4'),
('b6', '2021-11-01 10:15:00', '106', 'u5'),
('b7', '2021-11-10 14:00:00', '107', 'u6'),
('b8', '2021-11-25 16:30:00', '108', 'u7'),
('b9', '2021-12-01 12:00:00', '109', 'u3'),
('b10', '2021-12-10 18:00:00', '110', 'u4');

INSERT INTO items VALUES
('i4', 'Paneer Butter Masala', 150),
('i5', 'Jeera Rice', 90),
('i6', 'Butter Naan', 40),
('i7', 'Masala Dosa', 70),
('i8', 'Cold Coffee', 120);

INSERT INTO booking_commercials VALUES
('c5', 'b4', 'bill4', '2021-10-05', 'i4', 2),
('c6', 'b4', 'bill4', '2021-10-05', 'i6', 4),

('c7', 'b5', 'bill5', '2021-10-15', 'i2', 5),
('c8', 'b5', 'bill5', '2021-10-15', 'i5', 3),

('c9', 'b6', 'bill6', '2021-11-01', 'i1', 6),
('c10', 'b6', 'bill6', '2021-11-01', 'i4', 1),

('c11', 'b7', 'bill7', '2021-11-10', 'i7', 4),
('c12', 'b7', 'bill7', '2021-11-10', 'i8', 2),

('c13', 'b8', 'bill8', '2021-11-25', 'i3', 8),
('c14', 'b8', 'bill8', '2021-11-25', 'i5', 2),

('c15', 'b9', 'bill9', '2021-12-01', 'i6', 10),
('c16', 'b10', 'bill10', '2021-12-10', 'i8', 3);