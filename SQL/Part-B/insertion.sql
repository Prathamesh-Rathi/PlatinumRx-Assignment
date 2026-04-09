INSERT INTO clinics VALUES
('c3', 'Care Clinic', 'Delhi', 'DL', 'India'),
('c4', 'Health Plus', 'Bangalore', 'KA', 'India'),
('c5', 'Wellness Center', 'Hyderabad', 'TS', 'India');

INSERT INTO customer VALUES
('u3', 'Rahul', '7777777777'),
('u4', 'Priya', '6666666666'),
('u5', 'Amit', '5555555555'),
('u6', 'Sneha', '4444444444');

INSERT INTO clinic_sales VALUES
('o4', 'u3', 'c3', 8000, '2021-10-05', 'online'),
('o5', 'u4', 'c4', 12000, '2021-10-10', 'offline'),
('o6', 'u5', 'c5', 6000, '2021-10-15', 'online'),
('o7', 'u6', 'c3', 9000, '2021-11-01', 'offline'),
('o8', 'u1', 'c4', 15000, '2021-11-10', 'online'),
('o9', 'u2', 'c5', 7000, '2021-11-20', 'offline'),
('o10', 'u3', 'c3', 5000, '2021-12-01', 'online');

INSERT INTO expenses VALUES
('e3', 'c3', 'Equipment', 3000, '2021-10-06'),
('e4', 'c4', 'Maintenance', 4000, '2021-10-12'),
('e5', 'c5', 'Electricity', 2000, '2021-10-18'),
('e6', 'c3', 'Staff Salary', 5000, '2021-11-05'),
('e7', 'c4', 'Rent', 6000, '2021-11-15'),
('e8', 'c5', 'Supplies', 2500, '2021-11-25'),
('e9', 'c3', 'Marketing', 1500, '2021-12-02');