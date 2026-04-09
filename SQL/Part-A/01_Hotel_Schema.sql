-- USERS TABLE
CREATE TABLE users (
    user_id TEXT PRIMARY KEY,
    name TEXT,
    phone_number TEXT,
    mail_id TEXT,
    billing_address TEXT
);

-- BOOKINGS TABLE
CREATE TABLE bookings (
    booking_id TEXT PRIMARY KEY,
    booking_date DATETIME,
    room_no TEXT,
    user_id TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- ITEMS TABLE
CREATE TABLE items (
    item_id TEXT PRIMARY KEY,
    item_name TEXT,
    item_rate REAL
);

-- BOOKING COMMERCIALS
CREATE TABLE booking_commercials (
    id TEXT PRIMARY KEY,
    booking_id TEXT,
    bill_id TEXT,
    bill_date DATETIME,
    item_id TEXT,
    item_quantity REAL,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);